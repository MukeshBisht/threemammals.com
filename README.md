# threemammals.com

This repo has the source code for threemammals.com

## build and release

1. Run `build.sh` to build a docker image named threemammals-com.
2. Incrememt DOCKER_TAG according to semver in `publish.sh`
3. Run `publish.sh` to push the images to the registry

## run locally

Run `run.sh` after `build.sh`