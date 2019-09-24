# semver-docker
Docker container for running semver CLI utility. This container will increment a given version by the change level you require.

# Usage

To run this container, simply pass in the environment variables to increment the version you pass in to the semver command.

You need these environment variables:
* *VERSION*
* *CHANGE_LEVEL*: (`major`, `minor`, `patch` or `prerelease`)
* *ARGS* (optional): Any extra arguments you want to pass to semver (eg. `--preid beta`)

`docker run --env VERSION=1.0.0 --env CHANGE_LEVEL=minor|major|patch|prerelease --env ARGS="<args>" semver-docker:latest`

You can also suffix the command with `>` or `>>` to overwrite or append respectively the output of the container to a file. Useful for updating versions files in situ.
