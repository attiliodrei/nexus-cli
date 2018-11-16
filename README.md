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

```
$ nexus-cli configure
```

```
$ nexus-cli image ls
```

```
$ nexus-cli image tags -name mlabouardy/nginx
```

```
$ nexus-cli image tags -name mlabouardy/nginx -sort semver
```

```
$ nexus-cli image info -name mlabouardy/nginx -tag 1.2.0
```

```
$ nexus-cli image delete -name mlabouardy/nginx -tag 1.2.0
```

```
$ nexus-cli image delete -name mlabouardy/nginx -keep 4
```

```
$ nexus-cli image delete -name mlabouardy/nginx -keep 4 -sort semver
```

```
$ nexus-cli image delete -name mlabouardy/nginx -keep 4 -sort semver -dry-run
```

## Tutorials

* [Cleanup old Docker images from Nexus Repository](http://www.blog.labouardy.com/cleanup-old-docker-images-from-nexus-repository/)
