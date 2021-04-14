# DialyzerActions

Just a demo to show how to setup dialyzer checks with cache via GitHub Actions.

## Notes on verify.yml

- I use this for the cache keys for `dialyzer`, `deps`, and `_build`: `${{ runner.os }}-mix-${{ hashFiles(format('{0}{1}', github.workspace, '/mix.lock')) }}`
  - That specific hash means that any change to the `/mix.lock` *or* to the workspace (i.e. any change to `verify.yml`)
  - To avoid that, you could just invalidate based on `/mix.lock`

## Learn more

  * What github actions uses for Elixir: https://github.com/erlef/setup-beam
  * Where it matches up Elixir to OTP version: https://github.com/erlef/setup-beam/blob/main/src/setup-beam.js#L118
