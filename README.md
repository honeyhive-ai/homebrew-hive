# homebrew-hive

Homebrew tap for the [Hive](https://github.com/honeyhive-ai/hive) desktop app.

```bash
brew tap honeyhive-ai/hive
brew install --cask hive
```

Upgrade with `brew upgrade --cask hive`. The cask is **Apple-Silicon-only** and
the DMGs are signed + notarized, so it opens normally.

The canonical cask is edited in the main repo at
[`deploy/homebrew/Casks/hive.rb`](https://github.com/honeyhive-ai/hive/blob/main/deploy/homebrew/Casks/hive.rb);
each Hive release updates `Casks/hive.rb` here (version + sha256) automatically.
