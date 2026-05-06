# meridian-algo-flow-mark

`meridian-algo-flow-mark` is a compact OCaml repository for algorithms, centered on this goal: Package an OCaml local lab for flow analysis with bounded scenario files, conflict explanations, and documented operating limits.

## Why I Keep It Small

The point is to make a small domain rule concrete enough that a reader can change it and immediately see what broke.

## Meridian Algo Flow Mark Review Notes

For a quick review, compare `boundary pressure` with `input width` before reading the middle cases.

## Included Behavior

- `fixtures/domain_review.csv` adds cases for input width and search depth.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/meridian-algo-flow-walkthrough.md` walks through the case spread.
- The OCaml code includes a review path for `boundary pressure` and `input width`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Internal Model

The core code exposes a scoring path and the added review layer uses `signal`, `slack`, `drag`, and `confidence`. The domain terms are `input width`, `search depth`, `boundary pressure`, and `complexity`.

The OCaml addition stays small enough to inspect in one sitting.

## Try It Locally

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Validation

The verifier is intentionally local. It should fail if the fixture score math, lane assignment, or language-specific test drifts.

## Scope

The repository is intentionally scoped to local checks. I would expand it by adding adversarial fixtures before adding features.
