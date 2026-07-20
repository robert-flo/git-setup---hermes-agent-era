# git-setup Distribution

This context defines the terms used to distribute git-setup independently from
its source repository.

## Language

**Source repository**:
The repository that owns git-setup's executable, templates, tests, and release
versions.
_Avoid_: Package repository, installer repository

**Package repository**:
The separate Arch Linux packaging repository that builds and distributes a
released version of git-setup.
_Avoid_: Source repository, application repository

**Installed payload**:
The private executable, helpers, templates, and resources installed under
`/opt/git-setup` by the Arch package.
_Avoid_: User command, development checkout

**Launcher**:
The small executable installed in `/usr/bin/git-setup` that delegates to the
installed payload.
_Avoid_: Installed payload, package repository

**Command module**:
An executable in `scripts/` that implements one git-setup operation and is
selected by the dispatcher, such as `config` or `verify`.
_Avoid_: Helper, launcher

**Release archive**:
The GitHub source tarball for a version tag that the Arch package verifies and
installs.
_Avoid_: Development checkout, live master branch
