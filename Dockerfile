FROM demoregistry.dataman-inc.com/library/centos7-build-marathon

RUN git clone https://github.com/mesosphere/marathon-pkg.git \
	&& cd marathon-pkg \
	&& git clone https://github.com/mesosphere/marathon.git \
	&& git submodule init \
	&& git submodule update \
	&& cd marathon \
	&& git checkout v1.4.5 \
	&& cd .. \
        && make el
