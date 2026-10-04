# homebrew-tap

Homebrew formulas for my command-line tools.

```bash
brew trust iamnikolie/tap   # Homebrew 6 refuses to load third-party taps until trusted
brew tap iamnikolie/tap

brew install iamnikolie/tap/dziga        # video → LLM-readable context
brew install iamnikolie/tap/exa-cli      # Exa web search from the terminal (binary: exa)
brew install iamnikolie/tap/oko          # browser CLI for coding agents (Chrome over CDP)
brew install iamnikolie/tap/fibery-cli   # Fibery from the terminal (binary: fibery)
brew install iamnikolie/tap/gengoya          # image, video, music and speech generation (OpenAI + Gemini)
brew install iamnikolie/tap/gitlab-cli   # GitLab from the terminal (binary: gl)
brew install iamnikolie/tap/mcpcli       # any remote MCP server as a CLI
brew install iamnikolie/tap/slack-cli    # Slack from the terminal (binary: slk)
brew install iamnikolie/tap/svidoq       # read-only SQL for agents
brew install iamnikolie/tap/wispr-cli    # Wispr Flow dictations & meeting notes (binary: wispr)
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
| `exa-cli` | `exa` | [iamnikolie/exa-cli](https://github.com/iamnikolie/exa-cli) |
| `oko` | `oko` | [iamnikolie/oko](https://github.com/iamnikolie/oko) |
| `fibery-cli` | `fibery` | [iamnikolie/fibery-cli](https://github.com/iamnikolie/fibery-cli) |
| `gengoya` | `gengoya` | [iamnikolie/gengoya](https://github.com/iamnikolie/gengoya) |
| `gitlab-cli` | `gl` | [iamnikolie/gitlab-cli](https://github.com/iamnikolie/gitlab-cli) |
| `mcpcli` | `mcpcli` | [iamnikolie/mcpcli](https://github.com/iamnikolie/mcpcli) |
| `slack-cli` | `slk` | [iamnikolie/slack-cli](https://github.com/iamnikolie/slack-cli) |
| `svidoq` | `svidoq` | [iamnikolie/svidoq](https://github.com/iamnikolie/svidoq) |
| `wispr-cli` | `wispr` | [iamnikolie/wispr-cli](https://github.com/iamnikolie/wispr-cli) |

All MIT.
