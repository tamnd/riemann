#!/bin/sh
# Check the writing rules that a script can check: no em dash and no en dash in the text files of the repository.
# Run it from the root of the repository. It exits with code 1 when it finds a problem.
set -eu

status=0
files=$(git ls-files '*.md' '*.yaml' '*.yml' '*.cff' | grep -v '^LICENSES/' || true)
for f in $files; do
	if grep -n "$(printf '\342\200\224')" "$f"; then
		echo "$f: has an em dash. Use a full stop, a comma or parentheses."
		status=1
	fi
done
exit "$status"
