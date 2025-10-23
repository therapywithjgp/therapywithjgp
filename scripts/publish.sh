#!/bin/bash

# PART 1. Make sure the command is run from the right place.
repo_root="$(git rev-parse --show-toplevel 2>/dev/null)" || {
    echo "Failed to determine git repository root, are you in the right directory?"
    exit 1
}
cwd="$(pwd -P)"
root_p="$(cd "$repo_root" && pwd -P)"
if [ "$cwd" != "$root_p" ]; then
    echo "Please run this script from the repository root: $root_p"
    exit 1
fi
if [ "$(git rev-parse --abbrev-ref HEAD)" != "main" ]; then
    echo "Not on main branch"
    exit 1
fi

# PART 2. Commit changes and push.
git add .
git commit -m "Publish changes"
git push
