# homebrew-tap

Homebrew formulas for my command-line tools.

```bash
brew tap iamnikolie/tap

brew install iamnikolie/tap/dziga        # video → LLM-readable context
brew install iamnikolie/tap/fibery-cli   # Fibery from the terminal (binary: fibery)
brew install iamnikolie/tap/gitlab-cli   # GitLab from the terminal (binary: gl)
```

Formulas are published by [GoReleaser](https://goreleaser.com) from each tool's
own repository on every tagged release, so they track the latest version
automatically. Do not edit them by hand — the next release overwrites them.

| Formula | Binary | Source |
|---|---|---|
| `dziga` | `dziga` | [iamnikolie/dziga](https://github.com/iamnikolie/dziga) |
| `fibery-cli` | `fibery` | [iamnikolie/fibery-cli](https://github.com/iamnikolie/fibery-cli) |
| `gitlab-cli` | `gl` | [iamnikolie/gitlab-cli](https://github.com/iamnikolie/gitlab-cli) |

All MIT.
