# Homebrew tap for MADS and related utilities

## MADS

Homebrew formula for [MADS](https://github.com/pbosetti/MADS) (macOS, Apple Silicon and Intel).

```sh
brew install pbosetti/mads/mads
```

Configuration and keys are stored in `$(brew --prefix)/etc/mads` and are kept across upgrades.
Plugins and custom agents must be rebuilt after `brew upgrade mads`.

### Updating to a new MADS release

The formula installs the `Mads-<tag>-Darwin-universal.tar.gz` asset published by the MADS CI.

```sh
./update.sh v2.5.1   # bumps url + sha256 in Formula/mads.rb
```


## complot

[complot](https://github.com/pbosetti/complot): real-time plots from the shell
(macOS and Linux).

    brew install pbosetti/mads/complot

`Formula/complot.rb` is updated automatically by complot's release workflow.
