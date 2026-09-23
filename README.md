# TachyCloud Homebrew tap

```sh
brew install tachycloud/tap/tachycloud
```

`tachycloud` is the command-line client for [TachyCloud](https://tachy.cloud)
sandboxes.

The formula downloads the release archives from `https://get.tachy.cloud/cli/`
and pins each one's SHA-256. The TachyCloud release pipeline writes
`Formula/tachycloud.rb` at every release, so a change made here by hand lasts
until the next one.

Without Homebrew:

```sh
curl -fsSL https://tachy.cloud/install.sh | sh
```
