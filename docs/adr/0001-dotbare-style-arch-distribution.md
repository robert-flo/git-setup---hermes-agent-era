# Use a dotbare-style Arch distribution layout

git-setup will keep its source repository separate from its Arch package
repository. The source tree will use a root dispatcher with `helper/` and
internal `scripts/config`, `scripts/verify`, `scripts/setup`, `scripts/test`,
and `scripts/clean` modules. `helper/` will contain only git-setup's shared
presentation and configuration helpers; dotbare-specific helpers will not be
copied. The Arch package will install the private payload in `/opt/git-setup`
and expose `/usr/bin/git-setup` as its launcher. This follows the established
dotbare model and keeps distribution concerns outside the source project.
