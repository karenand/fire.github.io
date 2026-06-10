# Fire — FIRE calculators

Retirement planning tools — drawdown analysis, Monte Carlo simulation, and
early withdrawal strategies.

## Pages

- [`burn.html`](./burn.html) — retirement drawdown analysis. Enter your
  portfolio, withdrawal rate, and time horizon to see if your savings last.
- [`burn2.html`](./burn2.html) — Monte Carlo burndown simulator. Runs
  thousands of randomized sequences to show the probability of portfolio
  survival.
- [`sepp.html`](./sepp.html) — SEPP / 72(t) early retirement strategy.
  Calculates Substantially Equal Periodic Payment amounts.
- [`sepp.jsx`](./sepp.jsx) — JSX source for the SEPP calculator (pre-compiled).

## Shared libraries

- `observers/` — `ObserverClass.js` and `binder.js`: reactive observable
  library (same code used by Finance).
- `tax-code/` — `constants.js` and `tax-rules.js`: shared tax bracket and
  deduction data (from `github.com/karenand/tax-code`).

## Scripts

- `scripts/sync-tax-code.sh` — pulls the latest `constants.js` and
  `tax-rules.js` from the `tax-code` repository and commits them here.
- `scripts/sync-observers.sh` — pulls the latest observer library.

## Keeping tax-code up to date

```bash
./scripts/sync-tax-code.sh
```

This copies the latest versions from
[github.com/karenand/tax-code](https://github.com/karenand/tax-code) into
`tax-code/` and creates a commit.

## License

MIT — see [LICENSE](./LICENSE).
