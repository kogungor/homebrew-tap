# Homebrew tap for Popoli

[Popoli](https://github.com/kogungor/popoli) is a Liquid Glass action bar for the text you select on macOS, with a Finder right-click menu and extensions in any language.

```bash
brew install --cask kogungor/tap/popoli
```

Requires macOS 26 (Tahoe) or later on Apple silicon.

- **Updates:** Popoli updates itself, so Homebrew leaves it alone. `brew upgrade --cask --greedy popoli` updates it through Homebrew instead.
- **Uninstalling:** `brew uninstall --cask popoli`. Adding `--zap` also removes Popoli's settings and caches. Your extensions in `~/.config/popoli` stay; delete that folder yourself if you no longer want them.

The cask is updated by Popoli's release script with each release.
