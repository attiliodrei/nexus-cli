FROM eugenmayer/golang-builder AS go-build-env
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