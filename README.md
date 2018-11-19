<div align="center">
<img src="logo.png" width="60%"/>
</div>

Nexus CLI for Docker Registry

## Usage

<div align="center">
<img src="example.png"/>
</div>

## Build

This is a docker based build, so you do not need any dependencies beside docker

```console
make build-docker
```

you find the binaries in `./dist`

## Download

Pick a release from https://github.com/EugenMayer/nexus-cli/releases

## Available Commands

Configurate nexus-cli with your credentials and endpoint
```
$ nexus-cli configure
```

List all available images
```
$ nexus-cli image ls
```

Show all tags of a specific image
```
$ nexus-cli image tags -name dockernamespace/yourimage
```

Get information of a specific tag
```
$ nexus-cli image info -name dockernamespace/yourimage -tag 1.2.0
```

Delete a specific tag
```
$ nexus-cli image delete -name dockernamespace/yourimage -tag 1.2.0
```

Run a dry-run test prior deleting
```
$ nexus-cli image delete -name dockernamespace/yourimage -keep 4 -dry-run
```


Delete all tags, but keep the most recent 4. Be aware, `latest` does also count and is considered "the most recent".
```
$ nexus-cli image delete -name dockernamespace/yourimage -keep 4
```


## Tutorials

* [Cleanup old Docker images from Nexus Repository](http://www.blog.labouardy.com/cleanup-old-docker-images-from-nexus-repository/)

## Credits

This is a long time fork of https://github.com/mlabouardy/nexus-cli since the old project seems to be stalling / is dead.
Of course, thank you for the work you already have put into that Mohamed Labouardy