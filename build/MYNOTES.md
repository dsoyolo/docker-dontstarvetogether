# USEFUL COMMANDS

You can simply 'cat' the dst_containerid file to quickly automate and include the container ID for docker commands. Example:
`docker stop (cat .\dst_containerid)`

You can create a volume ahead of time
`docker volume create my-vol`
Or, you can set one at runtime. If you start a container with a volume that does not yet exist, Docker creates the volume for you.
`docker run -d --name devtest --mount source=myvol2,target=/app nginx:latest`

Add 'test' to a docker run to Inspect envioronment variables loaded in Docker Desktop
`docker run -d --name devtest --mount source=myvol2,target=/app nginx:latest test`