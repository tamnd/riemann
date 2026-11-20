#!/bin/sh
# Download the records that manifests/records.yaml names, check the SHA-256, and unpack them into a directory. The directory then has records/index and records/spine, which rh site build reads with -index and -spine.
#
# Usage: scripts/fetch-records.sh CONTENT_DIR OUT_DIR. The script does nothing when OUT_DIR already has the records with the same hash.
set -eu

content=$1
out=$2
manifest="$content/manifests/records.yaml"
url=$(sed -n 's/^url: *//p' "$manifest")
sum=$(sed -n 's/^sha256: *//p' "$manifest")
if [ -f "$out/records.sha256" ] && [ "$(cat "$out/records.sha256")" = "$sum" ]; then
	exit 0
fi
mkdir -p "$out"
curl -fsSL --retry 3 -o "$out/records.tar" "$url"
if command -v sha256sum >/dev/null; then
	got=$(sha256sum "$out/records.tar" | cut -d' ' -f1)
else
	got=$(shasum -a 256 "$out/records.tar" | cut -d' ' -f1)
fi
if [ "$got" != "$sum" ]; then
	echo "records.tar: the SHA-256 is $got, and manifests/records.yaml says $sum" >&2
	exit 1
fi
rm -rf "$out/records"
tar -xf "$out/records.tar" -C "$out"
rm "$out/records.tar"
echo "$sum" >"$out/records.sha256"
