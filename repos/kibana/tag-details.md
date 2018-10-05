<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:5`](#kibana5)
-	[`kibana:5.6`](#kibana56)
-	[`kibana:5.6.12`](#kibana5612)
-	[`kibana:6.4.0`](#kibana640)
-	[`kibana:6.4.1`](#kibana641)
-	[`kibana:6.4.2`](#kibana642)
-	[`kibana:latest`](#kibanalatest)

## `kibana:5`

```console
$ docker pull kibana@sha256:8b3ea5e4974be2e916d5a5e7fbe2bd3a8f229c374525361372192736459083f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5` - linux; amd64

```console
$ docker pull kibana@sha256:4cb8ceb5315dc92b78ac3407daa89eb25de7142b86a2e0f5fb74807523c41e8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.9 MB (128872365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a674d23325b02611f19c1dc1fa73d9e4570d06cb8701cfb0350db3d24f9d0113`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:12:36 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Wed, 05 Sep 2018 00:13:11 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:13:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 00:13:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 05 Sep 2018 00:13:13 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 05 Sep 2018 00:13:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 05 Sep 2018 00:13:21 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 00:13:21 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Thu, 20 Sep 2018 20:21:53 GMT
ENV KIBANA_VERSION=5.6.12
# Thu, 20 Sep 2018 20:22:27 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Thu, 20 Sep 2018 20:22:29 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Sep 2018 20:22:29 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Thu, 20 Sep 2018 20:22:29 GMT
EXPOSE 5601/tcp
# Thu, 20 Sep 2018 20:22:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 20 Sep 2018 20:22:30 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4c00d0a2f120e9c8d90b2772a9cd8273096cf815d2281a31d68dfe98ddf249`  
		Last Modified: Wed, 05 Sep 2018 00:15:55 GMT  
		Size: 4.4 KB (4404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae50ad228104138b9d0d1440c19d221d2401b144aa61b672a18d6b15bbfb1fa5`  
		Last Modified: Wed, 05 Sep 2018 00:16:00 GMT  
		Size: 20.7 MB (20667116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228a7a369ee922b996352ccc2ddf1619462d6b7d911e1ba20c978ef6f0c95826`  
		Last Modified: Wed, 05 Sep 2018 00:15:55 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5272eb2224c2b908e82d10eedc8cb3870d7ea28b5b446a761ebaecaee86331fc`  
		Last Modified: Wed, 05 Sep 2018 00:15:54 GMT  
		Size: 7.3 KB (7296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a91590498c3bec427fe86ae2af418f4ce0b667dd0f6a61b856e4a9d6cc4584`  
		Last Modified: Wed, 05 Sep 2018 00:15:54 GMT  
		Size: 1.4 KB (1450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b8a31943945127ab0e9cb91c65104981b4b843e9a24ac3ea09a5967ed1653f9`  
		Last Modified: Wed, 05 Sep 2018 00:15:54 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df84b481e4617535d5da2b8b178d00210e0c0620f6f37c4607bf0dd07db9c6a8`  
		Last Modified: Thu, 20 Sep 2018 20:23:07 GMT  
		Size: 53.4 MB (53438665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0863f2e045e05c021267fb5a5b3de541231988fe145bb8ab6cc15c90718e4287`  
		Last Modified: Thu, 20 Sep 2018 20:22:50 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.6`

```console
$ docker pull kibana@sha256:8b3ea5e4974be2e916d5a5e7fbe2bd3a8f229c374525361372192736459083f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5.6` - linux; amd64

```console
$ docker pull kibana@sha256:4cb8ceb5315dc92b78ac3407daa89eb25de7142b86a2e0f5fb74807523c41e8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.9 MB (128872365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a674d23325b02611f19c1dc1fa73d9e4570d06cb8701cfb0350db3d24f9d0113`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:12:36 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Wed, 05 Sep 2018 00:13:11 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:13:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 00:13:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 05 Sep 2018 00:13:13 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 05 Sep 2018 00:13:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 05 Sep 2018 00:13:21 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 00:13:21 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Thu, 20 Sep 2018 20:21:53 GMT
ENV KIBANA_VERSION=5.6.12
# Thu, 20 Sep 2018 20:22:27 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Thu, 20 Sep 2018 20:22:29 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Sep 2018 20:22:29 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Thu, 20 Sep 2018 20:22:29 GMT
EXPOSE 5601/tcp
# Thu, 20 Sep 2018 20:22:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 20 Sep 2018 20:22:30 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4c00d0a2f120e9c8d90b2772a9cd8273096cf815d2281a31d68dfe98ddf249`  
		Last Modified: Wed, 05 Sep 2018 00:15:55 GMT  
		Size: 4.4 KB (4404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae50ad228104138b9d0d1440c19d221d2401b144aa61b672a18d6b15bbfb1fa5`  
		Last Modified: Wed, 05 Sep 2018 00:16:00 GMT  
		Size: 20.7 MB (20667116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228a7a369ee922b996352ccc2ddf1619462d6b7d911e1ba20c978ef6f0c95826`  
		Last Modified: Wed, 05 Sep 2018 00:15:55 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5272eb2224c2b908e82d10eedc8cb3870d7ea28b5b446a761ebaecaee86331fc`  
		Last Modified: Wed, 05 Sep 2018 00:15:54 GMT  
		Size: 7.3 KB (7296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a91590498c3bec427fe86ae2af418f4ce0b667dd0f6a61b856e4a9d6cc4584`  
		Last Modified: Wed, 05 Sep 2018 00:15:54 GMT  
		Size: 1.4 KB (1450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b8a31943945127ab0e9cb91c65104981b4b843e9a24ac3ea09a5967ed1653f9`  
		Last Modified: Wed, 05 Sep 2018 00:15:54 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df84b481e4617535d5da2b8b178d00210e0c0620f6f37c4607bf0dd07db9c6a8`  
		Last Modified: Thu, 20 Sep 2018 20:23:07 GMT  
		Size: 53.4 MB (53438665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0863f2e045e05c021267fb5a5b3de541231988fe145bb8ab6cc15c90718e4287`  
		Last Modified: Thu, 20 Sep 2018 20:22:50 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.6.12`

```console
$ docker pull kibana@sha256:8b3ea5e4974be2e916d5a5e7fbe2bd3a8f229c374525361372192736459083f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5.6.12` - linux; amd64

```console
$ docker pull kibana@sha256:4cb8ceb5315dc92b78ac3407daa89eb25de7142b86a2e0f5fb74807523c41e8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.9 MB (128872365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a674d23325b02611f19c1dc1fa73d9e4570d06cb8701cfb0350db3d24f9d0113`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:12:36 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Wed, 05 Sep 2018 00:13:11 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:13:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 00:13:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 05 Sep 2018 00:13:13 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 05 Sep 2018 00:13:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 05 Sep 2018 00:13:21 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 00:13:21 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Thu, 20 Sep 2018 20:21:53 GMT
ENV KIBANA_VERSION=5.6.12
# Thu, 20 Sep 2018 20:22:27 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Thu, 20 Sep 2018 20:22:29 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Sep 2018 20:22:29 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Thu, 20 Sep 2018 20:22:29 GMT
EXPOSE 5601/tcp
# Thu, 20 Sep 2018 20:22:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 20 Sep 2018 20:22:30 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4c00d0a2f120e9c8d90b2772a9cd8273096cf815d2281a31d68dfe98ddf249`  
		Last Modified: Wed, 05 Sep 2018 00:15:55 GMT  
		Size: 4.4 KB (4404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae50ad228104138b9d0d1440c19d221d2401b144aa61b672a18d6b15bbfb1fa5`  
		Last Modified: Wed, 05 Sep 2018 00:16:00 GMT  
		Size: 20.7 MB (20667116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228a7a369ee922b996352ccc2ddf1619462d6b7d911e1ba20c978ef6f0c95826`  
		Last Modified: Wed, 05 Sep 2018 00:15:55 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5272eb2224c2b908e82d10eedc8cb3870d7ea28b5b446a761ebaecaee86331fc`  
		Last Modified: Wed, 05 Sep 2018 00:15:54 GMT  
		Size: 7.3 KB (7296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a91590498c3bec427fe86ae2af418f4ce0b667dd0f6a61b856e4a9d6cc4584`  
		Last Modified: Wed, 05 Sep 2018 00:15:54 GMT  
		Size: 1.4 KB (1450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b8a31943945127ab0e9cb91c65104981b4b843e9a24ac3ea09a5967ed1653f9`  
		Last Modified: Wed, 05 Sep 2018 00:15:54 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df84b481e4617535d5da2b8b178d00210e0c0620f6f37c4607bf0dd07db9c6a8`  
		Last Modified: Thu, 20 Sep 2018 20:23:07 GMT  
		Size: 53.4 MB (53438665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0863f2e045e05c021267fb5a5b3de541231988fe145bb8ab6cc15c90718e4287`  
		Last Modified: Thu, 20 Sep 2018 20:22:50 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:6.4.0`

```console
$ docker pull kibana@sha256:8e27f3f6051acc8542ff87b42a48cebfc0289514143aeb9db025a855712dabb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:6.4.0` - linux; amd64

```console
$ docker pull kibana@sha256:e61c1122d9bc8dc8a113c79a035cf3c34d09674685f550ec842afc2d923ad568
```

-	Docker Version: 18.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.4 MB (269389034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7e4cd1a7b45f212b918b8dd9d70a13226a27dc01656620dbf6f9d3a73c2e386`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Mon, 06 Aug 2018 19:21:47 GMT
ADD file:6340c690b08865d7eb84a36050a0ab0e8effc2b010a4ccb20b810153a97a9228 in / 
# Mon, 06 Aug 2018 19:21:47 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20180804
# Mon, 06 Aug 2018 19:21:48 GMT
CMD ["/bin/bash"]
# Sat, 18 Aug 2018 00:19:41 GMT
EXPOSE 5601
# Sat, 18 Aug 2018 00:19:55 GMT
RUN yum update -y && yum install -y fontconfig freetype && yum clean all
# Sat, 18 Aug 2018 00:19:55 GMT
WORKDIR /usr/share/kibana
# Sat, 18 Aug 2018 00:20:44 GMT
RUN curl -Ls http://localhost:8000/kibana/target/kibana-6.4.0-linux-x86_64.tar.gz | tar --strip-components=1 -zxf - &&     ln -s /usr/share/kibana /opt/kibana &&     chown -R 1000:0 . &&     chmod -R g=u /usr/share/kibana &&     find /usr/share/kibana -type d -exec chmod g+s {} \;
# Sat, 18 Aug 2018 00:20:45 GMT
ENV ELASTIC_CONTAINER=true
# Sat, 18 Aug 2018 00:20:46 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 18 Aug 2018 00:20:46 GMT
COPY --chown=1000:0file:2c9b351c7512ff200b350310fe751b2d52ed3bb748386081bbc89592fdf7eff2 in /usr/share/kibana/config/kibana.yml 
# Sat, 18 Aug 2018 00:20:46 GMT
COPY --chown=1000:0file:2179089d30ce2b530b75dcf2b0d5ae228b039ceb6a206a0c5c11f97d45c55090 in /usr/local/bin/ 
# Sat, 18 Aug 2018 00:20:46 GMT
COPY --chown=1000:0multi:ec65c62d6619069c5768a37a923aff3bc5da64ee746fe458069d0826e9e080cf in /usr/share/kibana/config/ 
# Sat, 18 Aug 2018 00:20:47 GMT
RUN find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \;
# Sat, 18 Aug 2018 00:20:48 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000       --home-dir /usr/share/kibana --no-create-home       kibana
# Sat, 18 Aug 2018 00:20:48 GMT
USER kibana
# Sat, 18 Aug 2018 00:20:48 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.label-schema.name=kibana org.label-schema.version=6.4.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.vcs-url=https://github.com/elastic/kibana-docker license=Elastic License
# Sat, 18 Aug 2018 00:20:48 GMT
CMD ["/usr/local/bin/kibana-docker"]
```

-	Layers:
	-	`sha256:256b176beaff7815db2a93ee2071621ae88f451bb1e198ca73010ed5bba79b65`  
		Last Modified: Mon, 06 Aug 2018 19:33:53 GMT  
		Size: 74.7 MB (74694681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88643bded09cc5ee0dfc2a88542fc3feff19c04f238e05d2346798466fac7a46`  
		Last Modified: Thu, 23 Aug 2018 17:43:33 GMT  
		Size: 7.1 MB (7114481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5ecb9cf4fd5e0c50e0b8f016c35d2b2f202b42716cb83975b496aaee3fb9dbd`  
		Last Modified: Thu, 23 Aug 2018 17:43:31 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac1b01213c5c8df421a365fb46db25e332d64f1ecd1d33f3384d3683167bb54f`  
		Last Modified: Thu, 23 Aug 2018 17:44:07 GMT  
		Size: 187.6 MB (187570750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a29336659e0d48835ec9fa9d156cdecace21fa95fcf74f65da4c2be63513b57`  
		Last Modified: Thu, 23 Aug 2018 17:43:27 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b8cd0c698d46a126f6388c4d5d7a05286b123b2e04519e825a89304c890dd2`  
		Last Modified: Thu, 23 Aug 2018 17:43:27 GMT  
		Size: 2.0 KB (1954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13c336562991fefb253f90b0fedde25e56c265835d93205b8b24c5594a550bc4`  
		Last Modified: Thu, 23 Aug 2018 17:43:27 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f61543bfc8783b1e38784f30a4ccc817552f0c07e31d9bf9aa3247776c5477e`  
		Last Modified: Thu, 23 Aug 2018 17:43:27 GMT  
		Size: 2.6 KB (2625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90e0671f02053d0559c9fb814fbf835335e074383931ad2b7de4e4efaf8cc69d`  
		Last Modified: Thu, 23 Aug 2018 17:43:27 GMT  
		Size: 1.6 KB (1603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:6.4.1`

```console
$ docker pull kibana@sha256:d889dd71a557d321fee2c4f190efbdc1ac6a4064c03758630b74c7d52005ce4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:6.4.1` - linux; amd64

```console
$ docker pull kibana@sha256:e78521b699a843ae7c07d5d0e046b2822bc46470ae5de543216420443dd6ac39
```

-	Docker Version: 18.03.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.9 MB (282937830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55cc7d1256435e2ab93fe671c56a86d14c5f759d2667b8e0bb6547f1e2298236`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Mon, 06 Aug 2018 19:21:47 GMT
ADD file:6340c690b08865d7eb84a36050a0ab0e8effc2b010a4ccb20b810153a97a9228 in / 
# Mon, 06 Aug 2018 19:21:47 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20180804
# Mon, 06 Aug 2018 19:21:48 GMT
CMD ["/bin/bash"]
# Thu, 13 Sep 2018 23:12:12 GMT
EXPOSE 5601
# Thu, 13 Sep 2018 23:12:40 GMT
RUN yum update -y && yum install -y fontconfig freetype && yum clean all
# Thu, 13 Sep 2018 23:12:41 GMT
WORKDIR /usr/share/kibana
# Thu, 13 Sep 2018 23:13:20 GMT
RUN curl -Ls http://localhost:8000/kibana/target/kibana-6.4.1-linux-x86_64.tar.gz | tar --strip-components=1 -zxf - &&     ln -s /usr/share/kibana /opt/kibana &&     chown -R 1000:0 . &&     chmod -R g=u /usr/share/kibana &&     find /usr/share/kibana -type d -exec chmod g+s {} \;
# Thu, 13 Sep 2018 23:13:22 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 13 Sep 2018 23:13:22 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Sep 2018 23:13:22 GMT
COPY --chown=1000:0file:2c9b351c7512ff200b350310fe751b2d52ed3bb748386081bbc89592fdf7eff2 in /usr/share/kibana/config/kibana.yml 
# Thu, 13 Sep 2018 23:13:22 GMT
COPY --chown=1000:0file:2eb59b508b11d19b10134c842d6196001a8ba4414d07367b2991800b4614d47b in /usr/local/bin/ 
# Thu, 13 Sep 2018 23:13:22 GMT
COPY --chown=1000:0multi:ec65c62d6619069c5768a37a923aff3bc5da64ee746fe458069d0826e9e080cf in /usr/share/kibana/config/ 
# Thu, 13 Sep 2018 23:13:23 GMT
RUN find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \;
# Thu, 13 Sep 2018 23:13:24 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000       --home-dir /usr/share/kibana --no-create-home       kibana
# Thu, 13 Sep 2018 23:13:24 GMT
USER kibana
# Thu, 13 Sep 2018 23:13:24 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.label-schema.name=kibana org.label-schema.version=6.4.1 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.vcs-url=https://github.com/elastic/kibana-docker license=Elastic License
# Thu, 13 Sep 2018 23:13:24 GMT
CMD ["/usr/local/bin/kibana-docker"]
```

-	Layers:
	-	`sha256:256b176beaff7815db2a93ee2071621ae88f451bb1e198ca73010ed5bba79b65`  
		Last Modified: Mon, 06 Aug 2018 19:33:53 GMT  
		Size: 74.7 MB (74694681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cb8dcd12279ebccf23e88d4e4691e326b69167e92e03964a9530380ffc26205`  
		Last Modified: Tue, 18 Sep 2018 18:36:03 GMT  
		Size: 20.6 MB (20626558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a76ace278a85f8c1449441bc0f1b9f9c0b1e8872cc5748a17cb286c38dafb70`  
		Last Modified: Tue, 18 Sep 2018 18:35:59 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791c897c39750b6fef348981137a37d865893461618a32930468e261613987e5`  
		Last Modified: Tue, 18 Sep 2018 18:36:36 GMT  
		Size: 187.6 MB (187607421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7a88da3b8502512ab691a1ee308458b0e3c57e2cffd5d7b284f744b9ef9082`  
		Last Modified: Tue, 18 Sep 2018 18:35:55 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b43790d04b98f32ff46aed1c76e82e70333f29dec73eb88e2dd048957236334`  
		Last Modified: Tue, 18 Sep 2018 18:35:55 GMT  
		Size: 2.0 KB (1995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2633b296dfd774f251bc0e2e6b5d5120a359f0e46c98f4b8a3e762c6cbf549`  
		Last Modified: Tue, 18 Sep 2018 18:35:55 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:495b81a7f18b8352de0876e52d71d182b5613ad5fcdb3aad5c6b41dd8582db99`  
		Last Modified: Tue, 18 Sep 2018 18:35:56 GMT  
		Size: 2.6 KB (2628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1372abb9f036201775bebd4ecad5633ea2cdf30ce9cc3e06f399a409990e3944`  
		Last Modified: Tue, 18 Sep 2018 18:35:55 GMT  
		Size: 1.6 KB (1606 bytes)  
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

## `kibana:latest`

```console
$ docker pull kibana@sha256:8b3ea5e4974be2e916d5a5e7fbe2bd3a8f229c374525361372192736459083f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:latest` - linux; amd64

```console
$ docker pull kibana@sha256:4cb8ceb5315dc92b78ac3407daa89eb25de7142b86a2e0f5fb74807523c41e8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.9 MB (128872365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a674d23325b02611f19c1dc1fa73d9e4570d06cb8701cfb0350db3d24f9d0113`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:12:36 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Wed, 05 Sep 2018 00:13:11 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:13:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 00:13:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 05 Sep 2018 00:13:13 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 05 Sep 2018 00:13:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 05 Sep 2018 00:13:21 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 00:13:21 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Thu, 20 Sep 2018 20:21:53 GMT
ENV KIBANA_VERSION=5.6.12
# Thu, 20 Sep 2018 20:22:27 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Thu, 20 Sep 2018 20:22:29 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Sep 2018 20:22:29 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Thu, 20 Sep 2018 20:22:29 GMT
EXPOSE 5601/tcp
# Thu, 20 Sep 2018 20:22:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 20 Sep 2018 20:22:30 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4c00d0a2f120e9c8d90b2772a9cd8273096cf815d2281a31d68dfe98ddf249`  
		Last Modified: Wed, 05 Sep 2018 00:15:55 GMT  
		Size: 4.4 KB (4404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae50ad228104138b9d0d1440c19d221d2401b144aa61b672a18d6b15bbfb1fa5`  
		Last Modified: Wed, 05 Sep 2018 00:16:00 GMT  
		Size: 20.7 MB (20667116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228a7a369ee922b996352ccc2ddf1619462d6b7d911e1ba20c978ef6f0c95826`  
		Last Modified: Wed, 05 Sep 2018 00:15:55 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5272eb2224c2b908e82d10eedc8cb3870d7ea28b5b446a761ebaecaee86331fc`  
		Last Modified: Wed, 05 Sep 2018 00:15:54 GMT  
		Size: 7.3 KB (7296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a91590498c3bec427fe86ae2af418f4ce0b667dd0f6a61b856e4a9d6cc4584`  
		Last Modified: Wed, 05 Sep 2018 00:15:54 GMT  
		Size: 1.4 KB (1450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b8a31943945127ab0e9cb91c65104981b4b843e9a24ac3ea09a5967ed1653f9`  
		Last Modified: Wed, 05 Sep 2018 00:15:54 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df84b481e4617535d5da2b8b178d00210e0c0620f6f37c4607bf0dd07db9c6a8`  
		Last Modified: Thu, 20 Sep 2018 20:23:07 GMT  
		Size: 53.4 MB (53438665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0863f2e045e05c021267fb5a5b3de541231988fe145bb8ab6cc15c90718e4287`  
		Last Modified: Thu, 20 Sep 2018 20:22:50 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
