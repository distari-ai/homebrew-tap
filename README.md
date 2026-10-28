# Distari Homebrew tap

[Distari](https://distari.com) for macOS, the signed and notarized app from `downloads.distari.com`.

```sh
brew install --cask distari-ai/tap/distari
```

Distari updates itself with Sparkle, so `brew upgrade` leaves it alone unless you pass `--greedy`. `brew uninstall --cask distari` removes the app; add `--zap` to remove its local data too. Your account stays on the server, and sign-in keys in the Keychain are left in place.

The cask is bumped from Distari's macOS release run.
