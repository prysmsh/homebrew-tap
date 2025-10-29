# Prysm Homebrew Tap

This directory mirrors the contents of the `prysmsh/homebrew-tap` repository.  
After running `scripts/release_artifacts.sh` and `scripts/update_homebrew_formula.sh`, copy or push the updated files to that repository so Homebrew users can install the latest CLI:

```bash
brew install prysm/tap/prysm-cli
```

The primary formula lives in `Formula/prysm-cli.rb` and references release artifacts published to `https://github.com/prysmsh/prysm/releases`.
