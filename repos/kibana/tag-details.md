<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:5`](#kibana5)
-	[`kibana:5.6`](#kibana56)
-	[`kibana:5.6.12`](#kibana5612)
-	[`kibana:6.4.2`](#kibana642)

## `kibana:5`

```console
$ docker pull kibana@sha256:6c8463b4bf6a6d30af8e3f8e262e5a069af9bdcd0906a9fe1057f997f2cbe077
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5` - linux; amd64

```console
$ docker pull kibana@sha256:d64f711708cd981361c7214f6a3543aa4dedfd3c1f1c48f2d157e4f8dac58e6f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.9 MB (128873118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3def5c0423ff06b9633cba5568758aabbe78a66b7e9191008325f9b9e19690a9`
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
# Tue, 16 Oct 2018 04:13:19 GMT
ENV KIBANA_VERSION=5.6.12
# Tue, 16 Oct 2018 04:13:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Tue, 16 Oct 2018 04:13:56 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 04:14:03 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Tue, 16 Oct 2018 04:14:03 GMT
EXPOSE 5601/tcp
# Tue, 16 Oct 2018 04:14:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 04:14:04 GMT
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
	-	`sha256:da4e89036b1405a60206ce7a379d6b906c474b37b0632187165ccf9b60bdb13a`  
		Last Modified: Tue, 16 Oct 2018 04:14:42 GMT  
		Size: 53.4 MB (53439638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac0747c803858d55b216b2e1b80fde672548092817d48f8f474de6d66b06c87e`  
		Last Modified: Tue, 16 Oct 2018 04:14:26 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.6`

```console
$ docker pull kibana@sha256:6c8463b4bf6a6d30af8e3f8e262e5a069af9bdcd0906a9fe1057f997f2cbe077
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5.6` - linux; amd64

```console
$ docker pull kibana@sha256:d64f711708cd981361c7214f6a3543aa4dedfd3c1f1c48f2d157e4f8dac58e6f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.9 MB (128873118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3def5c0423ff06b9633cba5568758aabbe78a66b7e9191008325f9b9e19690a9`
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
# Tue, 16 Oct 2018 04:13:19 GMT
ENV KIBANA_VERSION=5.6.12
# Tue, 16 Oct 2018 04:13:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Tue, 16 Oct 2018 04:13:56 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 04:14:03 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Tue, 16 Oct 2018 04:14:03 GMT
EXPOSE 5601/tcp
# Tue, 16 Oct 2018 04:14:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 04:14:04 GMT
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
	-	`sha256:da4e89036b1405a60206ce7a379d6b906c474b37b0632187165ccf9b60bdb13a`  
		Last Modified: Tue, 16 Oct 2018 04:14:42 GMT  
		Size: 53.4 MB (53439638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac0747c803858d55b216b2e1b80fde672548092817d48f8f474de6d66b06c87e`  
		Last Modified: Tue, 16 Oct 2018 04:14:26 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.6.12`

```console
$ docker pull kibana@sha256:6c8463b4bf6a6d30af8e3f8e262e5a069af9bdcd0906a9fe1057f997f2cbe077
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5.6.12` - linux; amd64

```console
$ docker pull kibana@sha256:d64f711708cd981361c7214f6a3543aa4dedfd3c1f1c48f2d157e4f8dac58e6f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.9 MB (128873118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3def5c0423ff06b9633cba5568758aabbe78a66b7e9191008325f9b9e19690a9`
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
# Tue, 16 Oct 2018 04:13:19 GMT
ENV KIBANA_VERSION=5.6.12
# Tue, 16 Oct 2018 04:13:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Tue, 16 Oct 2018 04:13:56 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 04:14:03 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Tue, 16 Oct 2018 04:14:03 GMT
EXPOSE 5601/tcp
# Tue, 16 Oct 2018 04:14:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 04:14:04 GMT
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
	-	`sha256:da4e89036b1405a60206ce7a379d6b906c474b37b0632187165ccf9b60bdb13a`  
		Last Modified: Tue, 16 Oct 2018 04:14:42 GMT  
		Size: 53.4 MB (53439638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac0747c803858d55b216b2e1b80fde672548092817d48f8f474de6d66b06c87e`  
		Last Modified: Tue, 16 Oct 2018 04:14:26 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:6.4.2`

```console
$ docker pull kibana@sha256:989164ee9d20dfc5ba2d65339a7cf9309e75f6aaf92392fc875a47de8a733f97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:6.4.2` - linux; amd64

```console
$ docker pull kibana@sha256:0729944a83a75353867c4a0703396d47ffebb043d08e6de696719bd474ac5622
```

-	Docker Version: 18.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.9 MB (282940085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f64d082f5f08fc464be0c198658f0901e26573601246d2f9039dba25d26cf8dc`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Mon, 06 Aug 2018 19:21:47 GMT
ADD file:6340c690b08865d7eb84a36050a0ab0e8effc2b010a4ccb20b810153a97a9228 in / 
# Mon, 06 Aug 2018 19:21:47 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20180804
# Mon, 06 Aug 2018 19:21:48 GMT
CMD ["/bin/bash"]
# Wed, 26 Sep 2018 14:27:02 GMT
EXPOSE 5601
# Wed, 26 Sep 2018 14:27:32 GMT
RUN yum update -y && yum install -y fontconfig freetype && yum clean all
# Wed, 26 Sep 2018 14:27:33 GMT
WORKDIR /usr/share/kibana
# Wed, 26 Sep 2018 14:28:13 GMT
RUN curl -Ls http://localhost:8000/kibana/target/kibana-6.4.2-linux-x86_64.tar.gz | tar --strip-components=1 -zxf - &&     ln -s /usr/share/kibana /opt/kibana &&     chown -R 1000:0 . &&     chmod -R g=u /usr/share/kibana &&     find /usr/share/kibana -type d -exec chmod g+s {} \;
# Wed, 26 Sep 2018 14:28:14 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 26 Sep 2018 14:28:14 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Sep 2018 14:28:15 GMT
COPY --chown=1000:0file:2c9b351c7512ff200b350310fe751b2d52ed3bb748386081bbc89592fdf7eff2 in /usr/share/kibana/config/kibana.yml 
# Wed, 26 Sep 2018 14:28:15 GMT
COPY --chown=1000:0file:2eb59b508b11d19b10134c842d6196001a8ba4414d07367b2991800b4614d47b in /usr/local/bin/ 
# Wed, 26 Sep 2018 14:28:15 GMT
COPY --chown=1000:0multi:ec65c62d6619069c5768a37a923aff3bc5da64ee746fe458069d0826e9e080cf in /usr/share/kibana/config/ 
# Wed, 26 Sep 2018 14:28:16 GMT
RUN find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \;
# Wed, 26 Sep 2018 14:28:17 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000       --home-dir /usr/share/kibana --no-create-home       kibana
# Wed, 26 Sep 2018 14:28:17 GMT
USER kibana
# Wed, 26 Sep 2018 14:28:17 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.label-schema.name=kibana org.label-schema.version=6.4.2 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.vcs-url=https://github.com/elastic/kibana-docker license=Elastic License
# Wed, 26 Sep 2018 14:28:17 GMT
CMD ["/usr/local/bin/kibana-docker"]
```

-	Layers:
	-	`sha256:256b176beaff7815db2a93ee2071621ae88f451bb1e198ca73010ed5bba79b65`  
		Last Modified: Mon, 06 Aug 2018 19:33:53 GMT  
		Size: 74.7 MB (74694681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55bb918492c02575883c081aafab5a584a2824e51da8d38043956d24137d69c8`  
		Last Modified: Tue, 02 Oct 2018 15:12:01 GMT  
		Size: 20.6 MB (20626546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1679c7358d0461346ebddcdfac268f1ba1aadfa3ab1ba6227b28d1ca4be2f324`  
		Last Modified: Tue, 02 Oct 2018 15:11:57 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:697d3c22355041f4023c8beefb18f7295e95c14f92115b40622548a6df7c6fe8`  
		Last Modified: Tue, 02 Oct 2018 15:12:25 GMT  
		Size: 187.6 MB (187609699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:804a725232bd3d4d988653c5c45457fbcf5a63f533dc9fe3c8838e7f26f421f6`  
		Last Modified: Tue, 02 Oct 2018 15:11:53 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b8e59711aec6fbf951a9639e1bbedf119666cf3246788db2b73667b085cd8ba`  
		Last Modified: Tue, 02 Oct 2018 15:11:53 GMT  
		Size: 2.0 KB (1994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3955ac7623aaac639c7a865dc523bb12914f480bf3cda972edc7c1aacd1169e`  
		Last Modified: Tue, 02 Oct 2018 15:11:53 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2652d78598cef85a8d274648e638306b59ec8296a9ca9b8c17ee42582d63af7`  
		Last Modified: Tue, 02 Oct 2018 15:11:55 GMT  
		Size: 2.6 KB (2622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a51530e1fd014d48644113af05d03a9049ff61586d455b869452ba5b50ab12c`  
		Last Modified: Tue, 02 Oct 2018 15:11:53 GMT  
		Size: 1.6 KB (1605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
