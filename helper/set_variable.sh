#!/usr/bin/env bash

# Shared runtime paths for the root dispatcher and future command modules.
helper_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
readonly GIT_SETUP_ROOT="${GIT_SETUP_ROOT:-$(cd "$helper_dir/.." && pwd)}"
readonly GIT_SETUP_LEGACY_ENTRYPOINT="$GIT_SETUP_ROOT/bin/git-setup"

export GIT_SETUP_ROOT
export GIT_SETUP_LEGACY_ENTRYPOINT
