# homebrew-tap

Homebrew formulas for my command-line tools.

```bash
brew trust iamnikolie/tap   # Homebrew 6 refuses to load third-party taps until trusted
brew tap iamnikolie/tap

brew install iamnikolie/tap/dziga        # video → LLM-readable context
brew install iamnikolie/tap/fibery-cli   # Fibery from the terminal (binary: fibery)
brew install iamnikolie/tap/gitlab-cli   # GitLab from the terminal (binary: gl)
brew install iamnikolie/tap/slack-cli    # Slack from the terminal (binary: slk)
brew install iamnikolie/tap/svidoq       # read-only SQL for agents
```

The `brew trust` step is not optional on Homebrew 6 — without it `brew tap`
fails with *"Refusing to load formula from untrusted tap"*. It is Homebrew
asking you to confirm you meant to run code from outside homebrew-core; read
the formulas here first if you like, they are twenty lines each.

Formulas are published by [GoReleaser](https://goreleaser.com) from each tool's
own repository on every tagged release, so they track the latest version
automatically. Do not edit them by hand — the next release overwrites them.

| Formula | Binary | Source |
|---|---|---|
| `dziga` | `dziga` | [iamnikolie/dziga](https://github.com/iamnikolie/dziga) |
| `fibery-cli` | `fibery` | [iamnikolie/fibery-cli](https://github.com/iamnikolie/fibery-cli) |
| `gitlab-cli` | `gl` | [iamnikolie/gitlab-cli](https://github.com/iamnikolie/gitlab-cli) |
| `slack-cli` | `slk` | [iamnikolie/slack-cli](https://github.com/iamnikolie/slack-cli) |
| `svidoq` | `svidoq` | [iamnikolie/svidoq](https://github.com/iamnikolie/svidoq) |

All MIT.
