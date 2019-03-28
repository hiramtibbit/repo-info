<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:5`](#kibana5)
-	[`kibana:5.6`](#kibana56)
-	[`kibana:5.6.16`](#kibana5616)
-	[`kibana:6.7.0`](#kibana670)

## `kibana:5`

```console
$ docker pull kibana@sha256:d7704a4bf6d294234cc4fe3740ace7f15a989c3ee032ce0a6b8a0ad95f7f9c84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5` - linux; amd64

```console
$ docker pull kibana@sha256:961c189702acc122d4d1b9bcf41b8e0f634351a15cd37663724272c0c692926e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.0 MB (129985439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62079cf74c2332f55496c2423f5397dd92b037bb79e3ea543a13d85350f4eb1e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 26 Mar 2019 22:39:37 GMT
ADD file:ca3bf06a040bfe3d0d727326698ec36f9578bf9c8f6fe1050b7d85a3dd241112 in / 
# Tue, 26 Mar 2019 22:39:37 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:38:16 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Wed, 27 Mar 2019 00:40:08 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:40:08 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 00:40:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Mar 2019 00:40:09 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 27 Mar 2019 00:40:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Mar 2019 00:40:41 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 27 Mar 2019 00:40:41 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Wed, 27 Mar 2019 00:40:42 GMT
ENV KIBANA_VERSION=5.6.16
# Wed, 27 Mar 2019 00:42:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Wed, 27 Mar 2019 00:42:37 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 00:42:38 GMT
COPY file:f6ce7cbdcbcd38cf6fa747d74a0c868682ca02deaf474def026b8dec2a9e66e5 in / 
# Wed, 27 Mar 2019 00:42:38 GMT
EXPOSE 5601
# Wed, 27 Mar 2019 00:42:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 00:42:39 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:bf295113f40dde5826c75de78b0aaa190302b3b467a3d6a3f222498b0ad1cea3`  
		Last Modified: Tue, 26 Mar 2019 22:43:06 GMT  
		Size: 54.4 MB (54382913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666e111c3ff7264435004fa152a90863b3063a930858c1b3bb37cbc07990e57e`  
		Last Modified: Wed, 27 Mar 2019 00:42:51 GMT  
		Size: 4.4 KB (4406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4e77341df25e602bed1de51febcb20e1990dcd2134dfa454fc0d32fc0e5a1c`  
		Last Modified: Wed, 27 Mar 2019 00:42:54 GMT  
		Size: 20.7 MB (20671902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b925c32a2a069cd690fb5899ba22de860327bafb21beea875a0bfc43b5208ae6`  
		Last Modified: Wed, 27 Mar 2019 00:42:50 GMT  
		Size: 500.7 KB (500666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f181e41ee890a4d3cbbfd0d012fc5600f8621707e514fb9de8308b56e1b7164b`  
		Last Modified: Wed, 27 Mar 2019 00:42:50 GMT  
		Size: 7.3 KB (7294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf79a17cf94aafd5a4c1b0bbd889be821abe18bdf70f818e185441356f3b267`  
		Last Modified: Wed, 27 Mar 2019 00:42:50 GMT  
		Size: 1.4 KB (1450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55ea02fe76246fe00575e575ae0c757c94b1aa1db0cc7cca0a36f5210084c8c`  
		Last Modified: Wed, 27 Mar 2019 00:42:50 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b97082e60d1761a6fe488d3aa5dece3f60d294422dfa510452c21c4f4f5da57`  
		Last Modified: Wed, 27 Mar 2019 00:43:08 GMT  
		Size: 54.4 MB (54416245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bbd3b0f0d21545621f0b7c8d6b643563e8c751629aaa67b6a2309a025ed55a8`  
		Last Modified: Wed, 27 Mar 2019 00:42:50 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.6`

```console
$ docker pull kibana@sha256:d7704a4bf6d294234cc4fe3740ace7f15a989c3ee032ce0a6b8a0ad95f7f9c84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5.6` - linux; amd64

```console
$ docker pull kibana@sha256:961c189702acc122d4d1b9bcf41b8e0f634351a15cd37663724272c0c692926e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.0 MB (129985439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62079cf74c2332f55496c2423f5397dd92b037bb79e3ea543a13d85350f4eb1e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 26 Mar 2019 22:39:37 GMT
ADD file:ca3bf06a040bfe3d0d727326698ec36f9578bf9c8f6fe1050b7d85a3dd241112 in / 
# Tue, 26 Mar 2019 22:39:37 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:38:16 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Wed, 27 Mar 2019 00:40:08 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:40:08 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 00:40:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Mar 2019 00:40:09 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 27 Mar 2019 00:40:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Mar 2019 00:40:41 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 27 Mar 2019 00:40:41 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Wed, 27 Mar 2019 00:40:42 GMT
ENV KIBANA_VERSION=5.6.16
# Wed, 27 Mar 2019 00:42:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Wed, 27 Mar 2019 00:42:37 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 00:42:38 GMT
COPY file:f6ce7cbdcbcd38cf6fa747d74a0c868682ca02deaf474def026b8dec2a9e66e5 in / 
# Wed, 27 Mar 2019 00:42:38 GMT
EXPOSE 5601
# Wed, 27 Mar 2019 00:42:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 00:42:39 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:bf295113f40dde5826c75de78b0aaa190302b3b467a3d6a3f222498b0ad1cea3`  
		Last Modified: Tue, 26 Mar 2019 22:43:06 GMT  
		Size: 54.4 MB (54382913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666e111c3ff7264435004fa152a90863b3063a930858c1b3bb37cbc07990e57e`  
		Last Modified: Wed, 27 Mar 2019 00:42:51 GMT  
		Size: 4.4 KB (4406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4e77341df25e602bed1de51febcb20e1990dcd2134dfa454fc0d32fc0e5a1c`  
		Last Modified: Wed, 27 Mar 2019 00:42:54 GMT  
		Size: 20.7 MB (20671902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b925c32a2a069cd690fb5899ba22de860327bafb21beea875a0bfc43b5208ae6`  
		Last Modified: Wed, 27 Mar 2019 00:42:50 GMT  
		Size: 500.7 KB (500666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f181e41ee890a4d3cbbfd0d012fc5600f8621707e514fb9de8308b56e1b7164b`  
		Last Modified: Wed, 27 Mar 2019 00:42:50 GMT  
		Size: 7.3 KB (7294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf79a17cf94aafd5a4c1b0bbd889be821abe18bdf70f818e185441356f3b267`  
		Last Modified: Wed, 27 Mar 2019 00:42:50 GMT  
		Size: 1.4 KB (1450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55ea02fe76246fe00575e575ae0c757c94b1aa1db0cc7cca0a36f5210084c8c`  
		Last Modified: Wed, 27 Mar 2019 00:42:50 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b97082e60d1761a6fe488d3aa5dece3f60d294422dfa510452c21c4f4f5da57`  
		Last Modified: Wed, 27 Mar 2019 00:43:08 GMT  
		Size: 54.4 MB (54416245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bbd3b0f0d21545621f0b7c8d6b643563e8c751629aaa67b6a2309a025ed55a8`  
		Last Modified: Wed, 27 Mar 2019 00:42:50 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.6.16`

```console
$ docker pull kibana@sha256:d7704a4bf6d294234cc4fe3740ace7f15a989c3ee032ce0a6b8a0ad95f7f9c84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5.6.16` - linux; amd64

```console
$ docker pull kibana@sha256:961c189702acc122d4d1b9bcf41b8e0f634351a15cd37663724272c0c692926e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.0 MB (129985439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62079cf74c2332f55496c2423f5397dd92b037bb79e3ea543a13d85350f4eb1e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 26 Mar 2019 22:39:37 GMT
ADD file:ca3bf06a040bfe3d0d727326698ec36f9578bf9c8f6fe1050b7d85a3dd241112 in / 
# Tue, 26 Mar 2019 22:39:37 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:38:16 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Wed, 27 Mar 2019 00:40:08 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:40:08 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Mar 2019 00:40:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Mar 2019 00:40:09 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 27 Mar 2019 00:40:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Mar 2019 00:40:41 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 27 Mar 2019 00:40:41 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Wed, 27 Mar 2019 00:40:42 GMT
ENV KIBANA_VERSION=5.6.16
# Wed, 27 Mar 2019 00:42:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Wed, 27 Mar 2019 00:42:37 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 00:42:38 GMT
COPY file:f6ce7cbdcbcd38cf6fa747d74a0c868682ca02deaf474def026b8dec2a9e66e5 in / 
# Wed, 27 Mar 2019 00:42:38 GMT
EXPOSE 5601
# Wed, 27 Mar 2019 00:42:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 00:42:39 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:bf295113f40dde5826c75de78b0aaa190302b3b467a3d6a3f222498b0ad1cea3`  
		Last Modified: Tue, 26 Mar 2019 22:43:06 GMT  
		Size: 54.4 MB (54382913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666e111c3ff7264435004fa152a90863b3063a930858c1b3bb37cbc07990e57e`  
		Last Modified: Wed, 27 Mar 2019 00:42:51 GMT  
		Size: 4.4 KB (4406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4e77341df25e602bed1de51febcb20e1990dcd2134dfa454fc0d32fc0e5a1c`  
		Last Modified: Wed, 27 Mar 2019 00:42:54 GMT  
		Size: 20.7 MB (20671902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b925c32a2a069cd690fb5899ba22de860327bafb21beea875a0bfc43b5208ae6`  
		Last Modified: Wed, 27 Mar 2019 00:42:50 GMT  
		Size: 500.7 KB (500666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f181e41ee890a4d3cbbfd0d012fc5600f8621707e514fb9de8308b56e1b7164b`  
		Last Modified: Wed, 27 Mar 2019 00:42:50 GMT  
		Size: 7.3 KB (7294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf79a17cf94aafd5a4c1b0bbd889be821abe18bdf70f818e185441356f3b267`  
		Last Modified: Wed, 27 Mar 2019 00:42:50 GMT  
		Size: 1.4 KB (1450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55ea02fe76246fe00575e575ae0c757c94b1aa1db0cc7cca0a36f5210084c8c`  
		Last Modified: Wed, 27 Mar 2019 00:42:50 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b97082e60d1761a6fe488d3aa5dece3f60d294422dfa510452c21c4f4f5da57`  
		Last Modified: Wed, 27 Mar 2019 00:43:08 GMT  
		Size: 54.4 MB (54416245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bbd3b0f0d21545621f0b7c8d6b643563e8c751629aaa67b6a2309a025ed55a8`  
		Last Modified: Wed, 27 Mar 2019 00:42:50 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:6.7.0`

```console
$ docker pull kibana@sha256:895fbf795f7ef529c050b66ef7e4695e238b24df3b8949abc4f7921be13489c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:6.7.0` - linux; amd64

```console
$ docker pull kibana@sha256:84718c5dfaad5cd8949f2c8129d033730218f7af4f3ffd15acdb2e84b523caab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.6 MB (277624552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a19f604cd838e789a8ff8c083855f2411b6fbbd42dd366b330152a97c1222148`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 21 Mar 2019 16:03:31 GMT
EXPOSE 5601
# Thu, 21 Mar 2019 16:03:44 GMT
RUN yum update -y && yum install -y fontconfig freetype && yum clean all
# Thu, 21 Mar 2019 16:04:03 GMT
COPY --chown=1000:0dir:d6211c58db310e6a4d8d5928c74bf8c4669b4d22828ca655b5d0c649e4c555cf in /usr/share/kibana 
# Thu, 21 Mar 2019 16:04:05 GMT
WORKDIR /usr/share/kibana
# Thu, 21 Mar 2019 16:04:05 GMT
RUN ln -s /usr/share/kibana /opt/kibana
# Thu, 21 Mar 2019 16:04:05 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 21 Mar 2019 16:04:06 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 21 Mar 2019 16:04:06 GMT
COPY --chown=1000:0file:60b6181f28c99b362092ea6139b6d4112ddd0bef32d52563c33b26bdc2b51318 in /usr/share/kibana/config/kibana.yml 
# Thu, 21 Mar 2019 16:04:06 GMT
COPY --chown=1000:0file:4d37b531a7f31e19c4e85c261237e19e58151c316123245b24071f8bb51575ea in /usr/local/bin/ 
# Thu, 21 Mar 2019 16:04:07 GMT
RUN chmod g+ws /usr/share/kibana && find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \;
# Thu, 21 Mar 2019 16:04:08 GMT
RUN groupadd --gid 1000 kibana && useradd --uid 1000 --gid 1000 --home-dir /usr/share/kibana --no-create-home kibana
# Thu, 21 Mar 2019 16:04:09 GMT
USER kibana
# Thu, 21 Mar 2019 16:04:09 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.label-schema.name=kibana org.label-schema.version=6.7.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.vcs-url=https://github.com/elastic/kibana license=Elastic License
# Thu, 21 Mar 2019 16:04:09 GMT
CMD ["/usr/local/bin/kibana-docker"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e64ae7e6d2c7154cc86eaba362d30a95f605c48ae91e9765ccae42b9d7cf6e4`  
		Last Modified: Tue, 26 Mar 2019 16:10:57 GMT  
		Size: 14.2 MB (14213894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef1e0e16b16190b9d2c04f224a101bde234eca4e6d76fe73a56aa214ef7813e`  
		Last Modified: Tue, 26 Mar 2019 16:11:23 GMT  
		Size: 188.0 MB (188002483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27232d48b8e132154abe28fbb4a0202e59298395a0fd38ee1863f1bfdb6d1088`  
		Last Modified: Tue, 26 Mar 2019 16:10:52 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b7370796631edc5f898e02a0a80b0f969c75ee369cbb5c8bd4183f34bd1dbf1`  
		Last Modified: Tue, 26 Mar 2019 16:10:51 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b78de8d43df62ccbfed293de36a8ef11d07964b1486d0636a6d563580e79664`  
		Last Modified: Tue, 26 Mar 2019 16:10:52 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f521c616edb85f58d5cf3252fb22a5ec27afa43a231414a9851dee3c40ba14d8`  
		Last Modified: Tue, 26 Mar 2019 16:10:52 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51433302226cbd8ef486516726f355d4759a281b7c41e00111d6f5211c9b24d4`  
		Last Modified: Tue, 26 Mar 2019 16:10:51 GMT  
		Size: 1.6 KB (1607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
