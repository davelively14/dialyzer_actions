# DialyzerActions

Just a demo to show how to setup dialyzer checks with cache via GitHub Actions. 

## Notes on cache invalidation

I chose to use this common pattern for hashing keys: 

```yml
${{ hashFiles(format('{0}{1}', github.workspace, '[FILE THAT CHANGES AND INVALIDATES CACHE]')) }}
```

It ties the cache key to the workspace (the project name, `davelively14/dialyzer_actions` in this case) and any changes to whatever file the cache is based on. So for frontend assets it's `/assets/yarn.lock`, for dialyzer, deps, and the build files it's `/mix.lock`.

I will only ever fetch deps or rebuild the code if the lock files change. 

## Learn more

  * What github actions uses for Elixir: https://github.com/erlef/setup-beam
  * Where it matches up Elixir to OTP version: https://github.com/erlef/setup-beam/blob/main/src/setup-beam.js#L118
