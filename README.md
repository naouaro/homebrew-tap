# naouaro/homebrew-tap

Homebrew tap for [Perch](https://github.com/naouaro/Perch) — a floating panel
that reads your Slack and tells you who's waiting on you.

## Status

**The `perch` cask activates with the first release (v0.1.0).** Until a signed,
notarized `Perch.dmg` is attached to a GitHub release, `brew install` here will
fail at the download step — that's expected, not broken.

In the meantime, Perch builds from source in one command (needs Xcode):

```sh
git clone https://github.com/naouaro/Perch.git
cd Perch
./scripts/dev-build.sh
```

## Once releases ship

```sh
brew install --cask naouaro/tap/perch
```
