# we need to use 1.10 due to
# https://stackoverflow.com/q/53023222/3625317
FROM eugenmayer/golang-builder:1.10 AS go-build-env
# /go/src/ is mandatory due to the package format of go (lookup path )
# kontextwork.de due to our package name
# manifest_docker_packer our lib name
# usually you only change manifest_docker_packer for something else if its a kw project
ENV BUILDFOLDER=/go/src/github.com/eugenmayer/nexus-cli
ENV DISTFOLDER=${BUILDFOLDER}/dist
RUN mkdir -p ${BUILDFOLDER}
WORKDIR ${BUILDFOLDER}
ADD . ${BUILDFOLDER}

# this simulates concourses input structure
ENV CI_BASE=/ci
RUN mkdir -p ${CI_BASE}/inputartifact
# rout make task
RUN make ci-build