
# Build the Planutils image and install the selected packages
FROM aiplanning/planutils:latest


RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y \
        build-essential \
        flex \
        bison \
    && rm -rf /var/lib/apt/lists/*


COPY install-ff.sh .
RUN bash install-ff.sh

WORKDIR /root

# default command to execute when container starts
CMD /bin/bash


