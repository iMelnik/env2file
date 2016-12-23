# env2file

## Why?

Sometimes you need a file in your container, but creating yet another docker repo for storing a file is useless.

You can always use a "starter script" for your own container, but why customise if you can do this Unix way?

This image would be most useful for DockerCloud-like setups, when you do not have kubernetes secrets or local filesystem

## How

```

$ docker run -v /output -e FILE_output_myfile="First line\nSecond Line" --name=data-container imelnik/env2file

$ docker run --volumes-from=data-container alpine cat /output/myfile
First line
Second Line

```