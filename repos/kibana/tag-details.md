<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:5`](#kibana5)
-	[`kibana:5.6`](#kibana56)
-	[`kibana:5.6.13`](#kibana5613)
-	[`kibana:6.4.3`](#kibana643)

## `kibana:5`

```console
$ docker pull kibana@sha256:6cce2a09a52c288ef8d2aac1bc3597c067c44b7fb9f2ee693a519a2c6a496b5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5` - linux; amd64

```console
$ docker pull kibana@sha256:aac65436023af0c94b46829c69c6205a7aca7512db9392cfa8f88e7fac4eb2df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129710704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79d9640bf2ea4f70dea903f2237c68e1d534fa6adb3352a70e663f20a610dd8e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:26 GMT
ADD file:28906382f13932b8498c715984587f13905a32cc9427fb4f8779b7f159a68580 in / 
# Mon, 15 Oct 2018 23:20:26 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:12:34 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 16 Oct 2018 04:13:09 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 04:13:09 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 04:13:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 16 Oct 2018 04:13:10 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 16 Oct 2018 04:13:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 16 Oct 2018 04:13:18 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 04:13:18 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Fri, 09 Nov 2018 22:27:55 GMT
ENV KIBANA_VERSION=5.6.13
# Fri, 09 Nov 2018 22:28:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Fri, 09 Nov 2018 22:28:33 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 09 Nov 2018 22:28:33 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Fri, 09 Nov 2018 22:28:33 GMT
EXPOSE 5601/tcp
# Fri, 09 Nov 2018 22:28:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 09 Nov 2018 22:28:34 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:61be48634cb9ffcb29c1508fc1c308be81c32f84e95a627de9bdf107a854408c`  
		Last Modified: Mon, 15 Oct 2018 23:28:32 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0680109e7b026202375cec86c021a8b72bc785cef6cace92b78a675eb5fb12`  
		Last Modified: Tue, 16 Oct 2018 04:14:28 GMT  
		Size: 4.4 KB (4408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67a19750ef4cbb16a2ab0f509a1120c7df0027f2cb85edf53113582cb4a8b1b`  
		Last Modified: Tue, 16 Oct 2018 04:14:31 GMT  
		Size: 20.7 MB (20666968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ddcb6be622543a055c5dc64089de5764f78402a48c9816c3627800a200eaf7e`  
		Last Modified: Tue, 16 Oct 2018 04:14:27 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b407108d98bb1bcb1b3970e5253175417606c9108664a261eb6ae43ec10fa26b`  
		Last Modified: Tue, 16 Oct 2018 04:14:27 GMT  
		Size: 7.3 KB (7295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c686ee07a9f68588b67dd6640788db7614f6fc58f3888561ea88309f93487dd2`  
		Last Modified: Tue, 16 Oct 2018 04:14:26 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3eece17b3712924762f1643338b22c12bec075b6571486fe6a0f2370de36abd`  
		Last Modified: Tue, 16 Oct 2018 04:14:26 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8c1db7b87455377d177af5a22937e7ac08fe53611a2ce6ea2c73a6d759b01d`  
		Last Modified: Fri, 09 Nov 2018 22:29:15 GMT  
		Size: 54.3 MB (54277226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7771bc732fb3b7782cfc17a986b721162d4e684037b4ef56ea7dd54cf99d20e`  
		Last Modified: Fri, 09 Nov 2018 22:28:57 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.6`

```console
$ docker pull kibana@sha256:6cce2a09a52c288ef8d2aac1bc3597c067c44b7fb9f2ee693a519a2c6a496b5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5.6` - linux; amd64

```console
$ docker pull kibana@sha256:aac65436023af0c94b46829c69c6205a7aca7512db9392cfa8f88e7fac4eb2df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129710704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79d9640bf2ea4f70dea903f2237c68e1d534fa6adb3352a70e663f20a610dd8e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:26 GMT
ADD file:28906382f13932b8498c715984587f13905a32cc9427fb4f8779b7f159a68580 in / 
# Mon, 15 Oct 2018 23:20:26 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:12:34 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 16 Oct 2018 04:13:09 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 04:13:09 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 04:13:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 16 Oct 2018 04:13:10 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 16 Oct 2018 04:13:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 16 Oct 2018 04:13:18 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 04:13:18 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Fri, 09 Nov 2018 22:27:55 GMT
ENV KIBANA_VERSION=5.6.13
# Fri, 09 Nov 2018 22:28:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Fri, 09 Nov 2018 22:28:33 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 09 Nov 2018 22:28:33 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Fri, 09 Nov 2018 22:28:33 GMT
EXPOSE 5601/tcp
# Fri, 09 Nov 2018 22:28:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 09 Nov 2018 22:28:34 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:61be48634cb9ffcb29c1508fc1c308be81c32f84e95a627de9bdf107a854408c`  
		Last Modified: Mon, 15 Oct 2018 23:28:32 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0680109e7b026202375cec86c021a8b72bc785cef6cace92b78a675eb5fb12`  
		Last Modified: Tue, 16 Oct 2018 04:14:28 GMT  
		Size: 4.4 KB (4408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67a19750ef4cbb16a2ab0f509a1120c7df0027f2cb85edf53113582cb4a8b1b`  
		Last Modified: Tue, 16 Oct 2018 04:14:31 GMT  
		Size: 20.7 MB (20666968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ddcb6be622543a055c5dc64089de5764f78402a48c9816c3627800a200eaf7e`  
		Last Modified: Tue, 16 Oct 2018 04:14:27 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b407108d98bb1bcb1b3970e5253175417606c9108664a261eb6ae43ec10fa26b`  
		Last Modified: Tue, 16 Oct 2018 04:14:27 GMT  
		Size: 7.3 KB (7295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c686ee07a9f68588b67dd6640788db7614f6fc58f3888561ea88309f93487dd2`  
		Last Modified: Tue, 16 Oct 2018 04:14:26 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3eece17b3712924762f1643338b22c12bec075b6571486fe6a0f2370de36abd`  
		Last Modified: Tue, 16 Oct 2018 04:14:26 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8c1db7b87455377d177af5a22937e7ac08fe53611a2ce6ea2c73a6d759b01d`  
		Last Modified: Fri, 09 Nov 2018 22:29:15 GMT  
		Size: 54.3 MB (54277226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7771bc732fb3b7782cfc17a986b721162d4e684037b4ef56ea7dd54cf99d20e`  
		Last Modified: Fri, 09 Nov 2018 22:28:57 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.6.13`

```console
$ docker pull kibana@sha256:6cce2a09a52c288ef8d2aac1bc3597c067c44b7fb9f2ee693a519a2c6a496b5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5.6.13` - linux; amd64

```console
$ docker pull kibana@sha256:aac65436023af0c94b46829c69c6205a7aca7512db9392cfa8f88e7fac4eb2df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129710704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79d9640bf2ea4f70dea903f2237c68e1d534fa6adb3352a70e663f20a610dd8e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:26 GMT
ADD file:28906382f13932b8498c715984587f13905a32cc9427fb4f8779b7f159a68580 in / 
# Mon, 15 Oct 2018 23:20:26 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:12:34 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 16 Oct 2018 04:13:09 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 04:13:09 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 04:13:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 16 Oct 2018 04:13:10 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 16 Oct 2018 04:13:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 16 Oct 2018 04:13:18 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 04:13:18 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Fri, 09 Nov 2018 22:27:55 GMT
ENV KIBANA_VERSION=5.6.13
# Fri, 09 Nov 2018 22:28:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Fri, 09 Nov 2018 22:28:33 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 09 Nov 2018 22:28:33 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Fri, 09 Nov 2018 22:28:33 GMT
EXPOSE 5601/tcp
# Fri, 09 Nov 2018 22:28:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 09 Nov 2018 22:28:34 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:61be48634cb9ffcb29c1508fc1c308be81c32f84e95a627de9bdf107a854408c`  
		Last Modified: Mon, 15 Oct 2018 23:28:32 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0680109e7b026202375cec86c021a8b72bc785cef6cace92b78a675eb5fb12`  
		Last Modified: Tue, 16 Oct 2018 04:14:28 GMT  
		Size: 4.4 KB (4408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67a19750ef4cbb16a2ab0f509a1120c7df0027f2cb85edf53113582cb4a8b1b`  
		Last Modified: Tue, 16 Oct 2018 04:14:31 GMT  
		Size: 20.7 MB (20666968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ddcb6be622543a055c5dc64089de5764f78402a48c9816c3627800a200eaf7e`  
		Last Modified: Tue, 16 Oct 2018 04:14:27 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b407108d98bb1bcb1b3970e5253175417606c9108664a261eb6ae43ec10fa26b`  
		Last Modified: Tue, 16 Oct 2018 04:14:27 GMT  
		Size: 7.3 KB (7295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c686ee07a9f68588b67dd6640788db7614f6fc58f3888561ea88309f93487dd2`  
		Last Modified: Tue, 16 Oct 2018 04:14:26 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3eece17b3712924762f1643338b22c12bec075b6571486fe6a0f2370de36abd`  
		Last Modified: Tue, 16 Oct 2018 04:14:26 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8c1db7b87455377d177af5a22937e7ac08fe53611a2ce6ea2c73a6d759b01d`  
		Last Modified: Fri, 09 Nov 2018 22:29:15 GMT  
		Size: 54.3 MB (54277226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7771bc732fb3b7782cfc17a986b721162d4e684037b4ef56ea7dd54cf99d20e`  
		Last Modified: Fri, 09 Nov 2018 22:28:57 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:6.4.3`

```console
$ docker pull kibana@sha256:88fbd401278b51878df0b7338d9a25cd1520aacb7ad13a3ea3824e3af6e3ca06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:6.4.3` - linux; amd64

```console
$ docker pull kibana@sha256:7547d6c2ead76f1925702cbfd47503dad82cbee9d928bb1c8e7d2b99d9186138
```

-	Docker Version: 18.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.4 MB (317353832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69271c2e80d6e23c8afae43f6fdffe5b152cb7ac18cdca2646a1d430b0cc7739`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Tue, 09 Oct 2018 18:19:47 GMT
ADD file:fbe9badfd2790f0747a25fbe5c94a6daa78969511ca08c8d4ac654f3442570de in / 
# Tue, 09 Oct 2018 18:19:48 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181006
# Tue, 09 Oct 2018 18:19:48 GMT
CMD ["/bin/bash"]
# Wed, 31 Oct 2018 00:13:59 GMT
EXPOSE 5601
# Wed, 31 Oct 2018 00:14:09 GMT
RUN yum update -y && yum install -y fontconfig freetype && yum clean all
# Wed, 31 Oct 2018 00:14:10 GMT
WORKDIR /usr/share/kibana
# Wed, 31 Oct 2018 00:14:53 GMT
RUN curl -Ls http://localhost:8000/kibana/target/kibana-6.4.3-linux-x86_64.tar.gz | tar --strip-components=1 -zxf - &&     ln -s /usr/share/kibana /opt/kibana &&     chown -R 1000:0 . &&     chmod -R g=u /usr/share/kibana &&     find /usr/share/kibana -type d -exec chmod g+s {} \;
# Wed, 31 Oct 2018 00:14:55 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 31 Oct 2018 00:14:55 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Oct 2018 00:14:55 GMT
COPY --chown=1000:0file:2c9b351c7512ff200b350310fe751b2d52ed3bb748386081bbc89592fdf7eff2 in /usr/share/kibana/config/kibana.yml 
# Wed, 31 Oct 2018 00:14:55 GMT
COPY --chown=1000:0file:2eb59b508b11d19b10134c842d6196001a8ba4414d07367b2991800b4614d47b in /usr/local/bin/ 
# Wed, 31 Oct 2018 00:14:55 GMT
COPY --chown=1000:0multi:ec65c62d6619069c5768a37a923aff3bc5da64ee746fe458069d0826e9e080cf in /usr/share/kibana/config/ 
# Wed, 31 Oct 2018 00:14:56 GMT
RUN find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \;
# Wed, 31 Oct 2018 00:14:57 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000       --home-dir /usr/share/kibana --no-create-home       kibana
# Wed, 31 Oct 2018 00:14:57 GMT
USER kibana
# Wed, 31 Oct 2018 00:14:57 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.label-schema.name=kibana org.label-schema.version=6.4.3 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.vcs-url=https://github.com/elastic/kibana-docker license=Elastic License
# Wed, 31 Oct 2018 00:14:57 GMT
CMD ["/usr/local/bin/kibana-docker"]
```

-	Layers:
	-	`sha256:aeb7866da422acc7e93dcf7323f38d7646f6269af33bcdb6647f2094fc4b3bf7`  
		Last Modified: Tue, 09 Oct 2018 18:24:50 GMT  
		Size: 74.7 MB (74703002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28fa30926a4626f3fb8e5ad16c10e4fcb2dbdf2238bdff386a25f0d6449f7c5d`  
		Last Modified: Tue, 06 Nov 2018 16:50:39 GMT  
		Size: 7.7 MB (7695870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a9640037dac500bfbb1be91d61c522d24643e1788cbce306c315f932fd3f7c`  
		Last Modified: Tue, 06 Nov 2018 16:50:37 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0b7298fc99a86d384ee3052a6afb036e4a3cd0759f49dc787c15966e91a946`  
		Last Modified: Tue, 06 Nov 2018 16:51:18 GMT  
		Size: 234.9 MB (234945808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77875c5546acb2361df3dff44aaffaa3066d879a609200ded41f571a3bcb3895`  
		Last Modified: Tue, 06 Nov 2018 16:50:34 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59811213966525a6e3de48469d4f8a24500c34d71d3f66acd2d7ce81b965688a`  
		Last Modified: Tue, 06 Nov 2018 16:50:34 GMT  
		Size: 2.0 KB (1993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ebea56d1a912cff093de9efe405273b8b5fe649e5022bc0a4c1825ccc362284`  
		Last Modified: Tue, 06 Nov 2018 16:50:34 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c6ed316342c99d5818c5367e66830b02e9e4207b18184ee9c581d1d59abe50`  
		Last Modified: Tue, 06 Nov 2018 16:50:33 GMT  
		Size: 2.6 KB (2623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b934aa60620eec625943e1c864de1593adf47cade5a3eca07281ac16f067d6`  
		Last Modified: Tue, 06 Nov 2018 16:50:33 GMT  
		Size: 1.6 KB (1601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
