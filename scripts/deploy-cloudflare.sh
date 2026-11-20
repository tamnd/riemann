#!/bin/sh
# Build riemann.tamnd.com and deploy it to the Cloudflare Worker riemann. This is the second deploy method. The first is the workflow deploy.
#
# Run it from cron on a build server, for example every 5 minutes: */5 * * * * $HOME/riemann-deploy/deploy-cloudflare.sh >> $HOME/riemann-deploy/deploy.log 2>&1. The server needs git, Go, Node and flock. The script fetches main of tamnd/riemann and tamnd/riemann-agent, and it does nothing when the two commits are the same as at the last deploy. Use -f to deploy again.
#
# The file $RH_DEPLOY/cloudflare.env must set CLOUDFLARE_API_TOKEN and CLOUDFLARE_ACCOUNT_ID. Keep it at mode 600.
set -eu

dir=${RH_DEPLOY:-$HOME/riemann-deploy}
url=${RH_SITE_URL:-https://riemann.tamnd.com}
force=${1:-}

mkdir -p "$dir"
exec 9>"$dir/lock"
flock -n 9 || { echo "another deploy is running"; exit 0; }

set -a
. "$dir/cloudflare.env"
set +a

# sync fetches main of a repository into a directory and prints the commit.
sync() {
	if [ -d "$dir/$1/.git" ]; then
		git -C "$dir/$1" fetch -q --depth 1 origin main
		git -C "$dir/$1" reset -q --hard FETCH_HEAD
	else
		git clone -q --depth 1 "https://github.com/tamnd/$2.git" "$dir/$1"
	fi
	git -C "$dir/$1" rev-parse HEAD
}

content=$(sync content riemann)
toolchain=$(sync toolchain riemann-agent)
state="$content $toolchain"
if [ "$force" != "-f" ] && [ -f "$dir/deployed" ] && [ "$(cat "$dir/deployed")" = "$state" ]; then
	exit 0
fi

echo "$(date -u +%FT%TZ) deploy riemann $content, riemann-agent $toolchain"
(cd "$dir/toolchain" && go build -trimpath -o "$dir/rh" ./cmd/rh)
# wrangler.jsonc reads the files from public/ next to it.
rm -rf "$dir/content/public"
"$dir/rh" site build -content "$dir/content" -out "$dir/content/public" -url "$url" -commit "$content" -date now -strict
"$dir/rh" site check -dir "$dir/content/public"
(cd "$dir/content" && npx --yes wrangler@4 deploy --message "riemann $content")
echo "$state" >"$dir/deployed"
