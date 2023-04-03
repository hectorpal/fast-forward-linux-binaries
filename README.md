# FF linux binary for planutils

[Fast-Forward](https://fai.cs.uni-saarland.de/hoffmann/ff.html) Linux binaries for planutils.

## Content

`./ff.gz` is a compressed binary that should run in planutils, https://github.com/AI-Planning/planutils

## Updating this repo

Current binary was done using the current Dockerfile of planutils:
https://github.com/AI-Planning/planutils/commit/f17aff4215229470eb437be5fe6eaa7365362c6e

To update `./ff.gz`, you need `docker` installed. Then:
```bash
make
```

That will:

1. Build docker image based on `planutils`, building `ff`
2. Copy and compressing `ff` from that image into this repo.

After that, commit `ff.gz` to this repo.
