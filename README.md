# homebrew-tap

Homebrew tap for [Keploy](https://keploy.io) on macOS (Apple Silicon).

## Install

```sh
brew install keploy/tap/keploy
```

That single command taps this repo and installs the latest Keploy. It is free to use: `keploy login` signs you in, and your plan decides which additional features are available.

Always use the full name, `keploy/tap/keploy`. On its own, `keploy` resolves to a different formula in homebrew-core, which cannot record apps running natively on your Mac:

```sh
brew upgrade keploy/tap/keploy   # move to the latest release
```

## What gets installed

An Apple Silicon (arm64) macOS binary pulled from `https://keploy.io/ent/dl/<version>/enterprise_darwin_arm64` and placed at `$(brew --prefix)/bin/keploy`.

Intel Macs are not supported by this formula (`brew` refuses with an arch requirement error). On an Intel Mac, run Keploy inside Lima: https://keploy.io/docs/installation/macos-installation/#option-2-install-keploy-with-lima

Releases here are bumped automatically by the Keploy release pipeline on every tagged version — the formula's `version` and `sha256` track each `vX.Y.Z` tag.

## Linux

Not supported via Homebrew. Use the install script:

```sh
curl --silent -O -L https://keploy.io/install.sh && source install.sh
```

Brew formulae can't `sudo`, mount `debugfs`, or set up the Keploy Docker network — all required by the Linux install — so the curl installer stays the supported path there.

## License

The formula itself (the `.rb` file) is MIT-licensed; see [LICENSE](LICENSE). The Keploy binary that the formula downloads is governed by its own commercial terms.
