# Changelog

All notable changes to this project are documented in this file, driven by
[Conventional Commits](https://www.conventionalcommits.org/) and generated
via [GoReleaser](https://goreleaser.com/) on every tagged release.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/).

## [0.3.4](https://github.com/Wikid82/Hermes/compare/v0.3.3...v0.3.4) (2026-10-30)


### Bug Fixes

* **deps:** update golang.org/x/net to v0.62.0 ([3e22b71](https://github.com/Wikid82/Hermes/commit/3e22b7152e1d0f8ea17c42d1bbd9ea40c9427756))
* rename go_notify_yourself to hermes across the codebase ([7a535af](https://github.com/Wikid82/Hermes/commit/7a535af7e7370df69e6d333ca8d102dddc30b2aa))

## [0.3.3](https://github.com/Wikid82/hermes/compare/v0.3.2...v0.3.3) (2026-10-26)


### Bug Fixes

* **deps:** update charmbracelet/ultraviolet ([c70fe3b](https://github.com/Wikid82/Hermes/commit/c70fe3b977fb840a53d64103f2ca1eb0e17fd24c))
* **deps:** update github.com/bmatcuk/doublestar to v4.10.4 ([00b3c31](https://github.com/Wikid82/Hermes/commit/00b3c31a859b845a8654cfb15fbac6b086814752))
* **go.mod:** update Go version to 1.27.3 ([696b2b1](https://github.com/Wikid82/Hermes/commit/696b2b1a12e610c0617b7d649c7cbc482d14019b))

## [0.3.2](https://github.com/Wikid82/Hermes/compare/v0.3.1...v0.3.2) (2026-10-19)


### Bug Fixes

* **deps:** update doublestar to v4.10.3 and staticcheck to master ([1509cae](https://github.com/Wikid82/Hermes/commit/1509caee3892e834fb2b7ffd3be4f2b027dc941b))
* **deps:** update gabriel-vasile/mimetype to v1.4.16 ([f7074d2](https://github.com/Wikid82/Hermes/commit/f7074d2416f557095f24ad83da03fa122252d710))
* **deps:** update Go version to 1.27.2 and bump dependencies ([cf7a730](https://github.com/Wikid82/Hermes/commit/cf7a7308d52cbe0bec93e1aa20e1b0617dfdf721))
* **deps:** update koanf to v2.4.0 ([15c3972](https://github.com/Wikid82/Hermes/commit/15c39728409c85b7a89e10b77fbd084badd5b0e4))
* **deps:** update koanf to v2.4.1 ([d05ac8c](https://github.com/Wikid82/Hermes/commit/d05ac8ce5b393efde83f34f8f85d43fbf4e32d69))
* **deps:** update lefthook to v2.2.2 ([a768215](https://github.com/Wikid82/Hermes/commit/a768215746cebf4eeaf80d771bbda9a903401a6f))

## [0.3.1](https://github.com/Wikid82/Hermes/compare/v0.3.0...v0.3.1) (2026-10-05)


### Bug Fixes

* **deps:** update lefthook to v2.1.15 and remove old version ([a62e86b](https://github.com/Wikid82/Hermes/commit/a62e86b638a38755fc781dc033ccf13f73b0187c))
* update propagation logic to check for file-level differences instead of commit count ([9130f77](https://github.com/Wikid82/Hermes/commit/9130f7734089f858ed18352b842f7d427bd5f088))

## [0.3.0](https://github.com/Wikid82/Hermes/compare/v0.2.3...v0.3.0) (2026-09-14)


### Features

* add Charon-style agent pipeline and lefthook pre-commit gate ([447cc61](https://github.com/Wikid82/Hermes/commit/447cc613d2a8ddc0171da4a487abea4e932565c0))
* **regconfig:** add IntField helper ([1205a98](https://github.com/Wikid82/Hermes/commit/1205a98e2e85e089edb08063e543bb3793806379))
* **transport:** allow Content-Encoding/TTL/Urgency/Topic outbound headers ([99549d1](https://github.com/Wikid82/Hermes/commit/99549d17b7e03e28d2e7fbe25c84d5ff75f30db0))
* **webpush:** add Config/Client/New/Send ([87bb57a](https://github.com/Wikid82/Hermes/commit/87bb57ac1309b13b02b82710f7594bb534706172))
* **webpush:** add RFC 8291 aes128gcm payload encryption ([a2159c2](https://github.com/Wikid82/Hermes/commit/a2159c2167015c68cf74358edb065e55903799b8))
* **webpush:** add VAPID JWT signing (RFC 8292) and GenerateVAPIDKeyPair ([bf6bd65](https://github.com/Wikid82/Hermes/commit/bf6bd6574f68fb52629039490a40a77f5db9e3c2))
* **webpush:** add Web Push (VAPID) provider ([#30](https://github.com/Wikid82/Hermes/issues/30)) ([9411a45](https://github.com/Wikid82/Hermes/commit/9411a45a74fb6923b1e6d1fdfc880227311725f4))
* **webpush:** register provider and wire into providers/all ([3b4d574](https://github.com/Wikid82/Hermes/commit/3b4d57484d54f07b00a26735d9f63899554740fd))


### Bug Fixes

* **webpush:** don't echo raw endpoint in VAPID audience-parse error ([8f71f4b](https://github.com/Wikid82/Hermes/commit/8f71f4b256ec803a4128a21e4b235dc69e214c33))

## [0.2.3](https://github.com/Wikid82/Hermes/compare/v0.2.2...v0.2.3) (2026-09-14)


### Bug Fixes

* trigger CI on development instead of blocking promotion ([18bb144](https://github.com/Wikid82/Hermes/commit/18bb144d8fe2564196e6a950390d8ee882f86616))

## [0.2.2](https://github.com/Wikid82/Hermes/compare/v0.2.1...v0.2.2) (2026-09-10)


### Bug Fixes

* always reinstall staticcheck/govulncheck after toolchain bump ([937d855](https://github.com/Wikid82/Hermes/commit/937d8556e03e91cb5694c7ee7daa00df8d9e25ef))
* **ci:** drop broken CodeQL extraction-failure detector, note gap plainly ([905bbb6](https://github.com/Wikid82/Hermes/commit/905bbb669766d64cdf8f7b522b0ce78b288a3225))
* **ci:** repair CodeQL workflow for this repo's flat Go layout ([210cb5d](https://github.com/Wikid82/Hermes/commit/210cb5d25b98e6cc97fe6bac5d63547b86506df6))

## [0.2.1](https://github.com/Wikid82/Hermes/compare/v0.2.0...v0.2.1) (2026-08-17)


### Bug Fixes

* **release:** use go release-type for release-please ([8c6636b](https://github.com/Wikid82/Hermes/commit/8c6636b03c6aa1be50b2a2535d10379e90cc98ec))

## [Unreleased]

## [0.2.0] - 2026-08-17

Self-registering provider factory registry, matching the `database/sql`
driver idiom:

- `notify.Register`, `notify.New`, `notify.RegisteredTypes` (`factory.go`):
  a thread-safe, name-keyed factory registry at the module root. `Register`
  panics on a nil factory or duplicate name (programmer error, caught at
  `init()` time); `New` returns an error — never panics — for an
  unregistered provider type.
- All eight existing provider packages (`discord`, `slack`, `gotify`,
  `pushover`, `ntfy`, `telegram`, `webhook`, `email`) now self-register via
  `init()` in a new `register.go`, adapting a generic `map[string]any`
  config into each package's typed `Config`. `email`'s factory takes its
  non-serializable `Mailer`/`TemplateRenderer`/`TemplateName` values
  directly out of the map rather than JSON-decoding them.
- `providers/all`: a new blank-import bundle package
  (`import _ ".../providers/all"`) that registers all eight built-in
  providers in one line, for consumers wanting zero-touch discovery.
- `ARCHITECTURE.md` (new), a new README "Provider registry" section, and
  `docs/INTEGRATION.md` (new): documentation for adding a provider to the
  registry and for integrating this module into another project.

**Behavior change, not just an addition**: importing any provider package
now has an `init()`-time side effect (registering into the global
`notify` registry) it didn't have before, and two packages registering the
same provider name in one binary now panics at startup. No existing
exported signature (`Config`, `New(cfg, w)`, `Send`) changed — this is why
the bump is `v0.2.0`, a minor rather than a patch release, despite being
purely additive at the Go-API level.

## [0.1.0] - 2026-08-14

Initial extraction of the notification delivery engine into a standalone
module:

- `transport.Wrapper`: SSRF-safe outbound HTTP dispatch with retry/backoff,
  redirect re-validation, response-size caps, and a conservative built-in
  default `URLValidator`.
- `notify.Message` / `notify.Sender`: the generic, provider-agnostic
  notification API.
- Seven HTTP provider packages: `providers/discord`, `providers/slack`,
  `providers/gotify`, `providers/pushover`, `providers/ntfy`,
  `providers/telegram`, `providers/webhook`.
- `providers/email`: `Mailer`/`TemplateRenderer` interfaces with one
  neutral, unbranded built-in HTML template.
