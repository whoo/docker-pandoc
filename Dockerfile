FROM debian:12
ENV DEBIAN_FRONTEND=noninteractive
RUN apt -y update && apt -y upgrade && apt -y install wget
RUN 	cd /tmp/ ; \
	wget https://github.com/jgm/pandoc/releases/download/2.3.1/pandoc-2.3.1-1-amd64.deb; \
	dpkg -i *.deb
RUN rm /tmp/*deb ; \
	apt-get clean && rm -rf /var/lib/apt/lists/*
