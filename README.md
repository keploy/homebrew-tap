# homebrew-tap

Homebrew tap for [Keploy Enterprise](https://keploy.io) on macOS.

## Install

```sh
brew install keploy/tap/keploy
```

That single command taps this repo and installs the latest Keploy Enterprise build. The binary runs in the free Community Edition tier by default — `keploy login` unlocks the rest.

After the first install, use the short name:

```sh
brew install keploy        # short name (after tapping once)
brew upgrade keploy        # move to the latest release
```

## What gets installed

A universal macOS binary (Apple Silicon + Intel) pulled from `https://keploy.io/ent/dl/<version>/enterprise_darwin_all` and placed at `$(brew --prefix)/bin/keploy`.

Releases here are bumped automatically by the Keploy Enterprise release pipeline on every tagged version — the formula's `version` and `sha256` track each `vX.Y.Z` tag.

## Linux

Not supported via Homebrew. Use the install script:

```sh
curl --silent -O -L https://keploy.io/install.sh && source install.sh
```

Brew formulae can't `sudo`, mount `debugfs`, or set up the Keploy Docker network — all required by the Linux install — so the curl installer stays the supported path there.

## License

The formula itself (the `.rb` file) is MIT-licensed; see [LICENSE](LICENSE). The Keploy Enterprise binary that the formula downloads is governed by its own commercial terms.
