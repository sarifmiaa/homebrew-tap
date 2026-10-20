# sarifmiaa/homebrew-tap

Homebrew tap for apps by [@sarifmiaa](https://github.com/sarifmiaa).

## Install

```bash
brew install --cask sarifmiaa/tap/grammarbar
```

## Casks

| Cask | Description |
| --- | --- |
| [`grammarbar`](Casks/grammarbar.rb) | [GrammarBar](https://github.com/sarifmiaa/GrammarBar) — fix, polish and translate text from the macOS menu bar with Claude Code |

## Updating a cask

After publishing a new GrammarBar release:

```bash
brew bump-cask-pr --version <new-version> sarifmiaa/tap/grammarbar
```

or edit `version` and `sha256` in `Casks/grammarbar.rb` (the release includes a `GrammarBar.zip.sha256` file).
