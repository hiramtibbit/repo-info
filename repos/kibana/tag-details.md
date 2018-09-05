<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:4`](#kibana4)
-	[`kibana:4.6`](#kibana46)
-	[`kibana:4.6.6`](#kibana466)
-	[`kibana:5`](#kibana5)
-	[`kibana:5.6`](#kibana56)
-	[`kibana:5.6.11`](#kibana5611)
-	[`kibana:latest`](#kibanalatest)

## `kibana:4`

```console
$ docker pull kibana@sha256:ec3a858b11a4cf29972c3439b019ae92aad56b16538a79bba776ce3e87ac0434
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:4` - linux; amd64

```console
$ docker pull kibana@sha256:3b7712598c30a5497a7c64dcbec714ef10bc9ab86e5dbb1e87c1c4ab69cd6eff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.3 MB (110294785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56e302005264fd07daa199aafce74d4ed67aa6f705d7380ccda02edeb7446c96`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:12:36 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Wed, 05 Sep 2018 00:14:52 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:14:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 00:14:54 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 05 Sep 2018 00:14:54 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 05 Sep 2018 00:14:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 05 Sep 2018 00:15:02 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 00:15:02 GMT
ENV KIBANA_MAJOR=4.6
# Wed, 05 Sep 2018 00:15:02 GMT
ENV KIBANA_VERSION=4.6.6
# Wed, 05 Sep 2018 00:15:03 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Wed, 05 Sep 2018 00:15:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Wed, 05 Sep 2018 00:15:36 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 00:15:37 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Wed, 05 Sep 2018 00:15:37 GMT
EXPOSE 5601/tcp
# Wed, 05 Sep 2018 00:15:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 00:15:37 GMT
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
	-	`sha256:293984bcf4afb5c55460527597aa970a4f3fca4faf1c86b04c74e3cd347d8aa7`  
		Last Modified: Wed, 05 Sep 2018 00:16:41 GMT  
		Size: 18.8 MB (18774832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6dd51f15f3725a899c4ee78af64fa37592ef3d73baa13885c829dc822f9ae6d`  
		Last Modified: Wed, 05 Sep 2018 00:16:38 GMT  
		Size: 500.7 KB (500658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa68f5b7292314b52dd6878fd7eb8f1fca35e99fdf2f81b99cced5cd1bbf715d`  
		Last Modified: Wed, 05 Sep 2018 00:16:36 GMT  
		Size: 7.3 KB (7294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61fcc54b8613e2862c981e58e790f6685bdaa7b3c42bfc7ad7c243911cfae822`  
		Last Modified: Wed, 05 Sep 2018 00:16:36 GMT  
		Size: 1.5 KB (1457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb8570ac72f27821d32bdfd81bb439a79736b94b0e41f4fd7837428681c43ad`  
		Last Modified: Wed, 05 Sep 2018 00:16:36 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5f27fefcd7eb7818426f7df572cd86f7ce584fa0d6ad229b9788c617bb0b23c`  
		Last Modified: Wed, 05 Sep 2018 00:16:50 GMT  
		Size: 36.8 MB (36753364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e84909dd9edaafbf9ea0c41d8ed26f75193f99df85d8fba9a41066ff3cb2de8b`  
		Last Modified: Wed, 05 Sep 2018 00:16:36 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.6`

```console
$ docker pull kibana@sha256:ec3a858b11a4cf29972c3439b019ae92aad56b16538a79bba776ce3e87ac0434
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:4.6` - linux; amd64

```console
$ docker pull kibana@sha256:3b7712598c30a5497a7c64dcbec714ef10bc9ab86e5dbb1e87c1c4ab69cd6eff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.3 MB (110294785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56e302005264fd07daa199aafce74d4ed67aa6f705d7380ccda02edeb7446c96`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:12:36 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Wed, 05 Sep 2018 00:14:52 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:14:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 00:14:54 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 05 Sep 2018 00:14:54 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 05 Sep 2018 00:14:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 05 Sep 2018 00:15:02 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 00:15:02 GMT
ENV KIBANA_MAJOR=4.6
# Wed, 05 Sep 2018 00:15:02 GMT
ENV KIBANA_VERSION=4.6.6
# Wed, 05 Sep 2018 00:15:03 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Wed, 05 Sep 2018 00:15:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Wed, 05 Sep 2018 00:15:36 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 00:15:37 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Wed, 05 Sep 2018 00:15:37 GMT
EXPOSE 5601/tcp
# Wed, 05 Sep 2018 00:15:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 00:15:37 GMT
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
	-	`sha256:293984bcf4afb5c55460527597aa970a4f3fca4faf1c86b04c74e3cd347d8aa7`  
		Last Modified: Wed, 05 Sep 2018 00:16:41 GMT  
		Size: 18.8 MB (18774832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6dd51f15f3725a899c4ee78af64fa37592ef3d73baa13885c829dc822f9ae6d`  
		Last Modified: Wed, 05 Sep 2018 00:16:38 GMT  
		Size: 500.7 KB (500658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa68f5b7292314b52dd6878fd7eb8f1fca35e99fdf2f81b99cced5cd1bbf715d`  
		Last Modified: Wed, 05 Sep 2018 00:16:36 GMT  
		Size: 7.3 KB (7294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61fcc54b8613e2862c981e58e790f6685bdaa7b3c42bfc7ad7c243911cfae822`  
		Last Modified: Wed, 05 Sep 2018 00:16:36 GMT  
		Size: 1.5 KB (1457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb8570ac72f27821d32bdfd81bb439a79736b94b0e41f4fd7837428681c43ad`  
		Last Modified: Wed, 05 Sep 2018 00:16:36 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5f27fefcd7eb7818426f7df572cd86f7ce584fa0d6ad229b9788c617bb0b23c`  
		Last Modified: Wed, 05 Sep 2018 00:16:50 GMT  
		Size: 36.8 MB (36753364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e84909dd9edaafbf9ea0c41d8ed26f75193f99df85d8fba9a41066ff3cb2de8b`  
		Last Modified: Wed, 05 Sep 2018 00:16:36 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.6.6`

```console
$ docker pull kibana@sha256:ec3a858b11a4cf29972c3439b019ae92aad56b16538a79bba776ce3e87ac0434
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:4.6.6` - linux; amd64

```console
$ docker pull kibana@sha256:3b7712598c30a5497a7c64dcbec714ef10bc9ab86e5dbb1e87c1c4ab69cd6eff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.3 MB (110294785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56e302005264fd07daa199aafce74d4ed67aa6f705d7380ccda02edeb7446c96`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:12:36 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Wed, 05 Sep 2018 00:14:52 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:14:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 00:14:54 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 05 Sep 2018 00:14:54 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 05 Sep 2018 00:14:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 05 Sep 2018 00:15:02 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 00:15:02 GMT
ENV KIBANA_MAJOR=4.6
# Wed, 05 Sep 2018 00:15:02 GMT
ENV KIBANA_VERSION=4.6.6
# Wed, 05 Sep 2018 00:15:03 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Wed, 05 Sep 2018 00:15:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Wed, 05 Sep 2018 00:15:36 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 00:15:37 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Wed, 05 Sep 2018 00:15:37 GMT
EXPOSE 5601/tcp
# Wed, 05 Sep 2018 00:15:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 00:15:37 GMT
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
	-	`sha256:293984bcf4afb5c55460527597aa970a4f3fca4faf1c86b04c74e3cd347d8aa7`  
		Last Modified: Wed, 05 Sep 2018 00:16:41 GMT  
		Size: 18.8 MB (18774832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6dd51f15f3725a899c4ee78af64fa37592ef3d73baa13885c829dc822f9ae6d`  
		Last Modified: Wed, 05 Sep 2018 00:16:38 GMT  
		Size: 500.7 KB (500658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa68f5b7292314b52dd6878fd7eb8f1fca35e99fdf2f81b99cced5cd1bbf715d`  
		Last Modified: Wed, 05 Sep 2018 00:16:36 GMT  
		Size: 7.3 KB (7294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61fcc54b8613e2862c981e58e790f6685bdaa7b3c42bfc7ad7c243911cfae822`  
		Last Modified: Wed, 05 Sep 2018 00:16:36 GMT  
		Size: 1.5 KB (1457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb8570ac72f27821d32bdfd81bb439a79736b94b0e41f4fd7837428681c43ad`  
		Last Modified: Wed, 05 Sep 2018 00:16:36 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5f27fefcd7eb7818426f7df572cd86f7ce584fa0d6ad229b9788c617bb0b23c`  
		Last Modified: Wed, 05 Sep 2018 00:16:50 GMT  
		Size: 36.8 MB (36753364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e84909dd9edaafbf9ea0c41d8ed26f75193f99df85d8fba9a41066ff3cb2de8b`  
		Last Modified: Wed, 05 Sep 2018 00:16:36 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5`

```console
$ docker pull kibana@sha256:8626cece76a1069348a65fc40b7da7eeeded9e03648be9fbd25274725e445740
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5` - linux; amd64

```console
$ docker pull kibana@sha256:20f65aae93a5e675d3532824ff22a1fd74b92a1b5bcf2e0154ca0b9f98c0ea63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.2 MB (129199306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:388661dcd03e01784f48c05437c46044da3d70ba8189318fcfc8da91bfc8e4b2`
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
# Wed, 05 Sep 2018 00:13:22 GMT
ENV KIBANA_VERSION=5.6.11
# Wed, 05 Sep 2018 00:14:05 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Wed, 05 Sep 2018 00:14:06 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 00:14:07 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Wed, 05 Sep 2018 00:14:07 GMT
EXPOSE 5601/tcp
# Wed, 05 Sep 2018 00:14:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 00:14:08 GMT
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
	-	`sha256:947aca9219b275cbc1bac9a5551da95ae3525ca0ae84d21a3e3a0498d33c9e11`  
		Last Modified: Wed, 05 Sep 2018 00:16:16 GMT  
		Size: 53.8 MB (53765605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21f771aee97e0d1aa5905d958d45c3dc793a3d246b884a8cdb99ef7d7e70cb7`  
		Last Modified: Wed, 05 Sep 2018 00:15:54 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.6`

```console
$ docker pull kibana@sha256:8626cece76a1069348a65fc40b7da7eeeded9e03648be9fbd25274725e445740
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5.6` - linux; amd64

```console
$ docker pull kibana@sha256:20f65aae93a5e675d3532824ff22a1fd74b92a1b5bcf2e0154ca0b9f98c0ea63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.2 MB (129199306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:388661dcd03e01784f48c05437c46044da3d70ba8189318fcfc8da91bfc8e4b2`
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
# Wed, 05 Sep 2018 00:13:22 GMT
ENV KIBANA_VERSION=5.6.11
# Wed, 05 Sep 2018 00:14:05 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Wed, 05 Sep 2018 00:14:06 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 00:14:07 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Wed, 05 Sep 2018 00:14:07 GMT
EXPOSE 5601/tcp
# Wed, 05 Sep 2018 00:14:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 00:14:08 GMT
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
	-	`sha256:947aca9219b275cbc1bac9a5551da95ae3525ca0ae84d21a3e3a0498d33c9e11`  
		Last Modified: Wed, 05 Sep 2018 00:16:16 GMT  
		Size: 53.8 MB (53765605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21f771aee97e0d1aa5905d958d45c3dc793a3d246b884a8cdb99ef7d7e70cb7`  
		Last Modified: Wed, 05 Sep 2018 00:15:54 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.6.11`

```console
$ docker pull kibana@sha256:8626cece76a1069348a65fc40b7da7eeeded9e03648be9fbd25274725e445740
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5.6.11` - linux; amd64

```console
$ docker pull kibana@sha256:20f65aae93a5e675d3532824ff22a1fd74b92a1b5bcf2e0154ca0b9f98c0ea63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.2 MB (129199306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:388661dcd03e01784f48c05437c46044da3d70ba8189318fcfc8da91bfc8e4b2`
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
# Wed, 05 Sep 2018 00:13:22 GMT
ENV KIBANA_VERSION=5.6.11
# Wed, 05 Sep 2018 00:14:05 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Wed, 05 Sep 2018 00:14:06 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 00:14:07 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Wed, 05 Sep 2018 00:14:07 GMT
EXPOSE 5601/tcp
# Wed, 05 Sep 2018 00:14:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 00:14:08 GMT
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
	-	`sha256:947aca9219b275cbc1bac9a5551da95ae3525ca0ae84d21a3e3a0498d33c9e11`  
		Last Modified: Wed, 05 Sep 2018 00:16:16 GMT  
		Size: 53.8 MB (53765605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21f771aee97e0d1aa5905d958d45c3dc793a3d246b884a8cdb99ef7d7e70cb7`  
		Last Modified: Wed, 05 Sep 2018 00:15:54 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:latest`

```console
$ docker pull kibana@sha256:8626cece76a1069348a65fc40b7da7eeeded9e03648be9fbd25274725e445740
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:latest` - linux; amd64

```console
$ docker pull kibana@sha256:20f65aae93a5e675d3532824ff22a1fd74b92a1b5bcf2e0154ca0b9f98c0ea63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.2 MB (129199306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:388661dcd03e01784f48c05437c46044da3d70ba8189318fcfc8da91bfc8e4b2`
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
# Wed, 05 Sep 2018 00:13:22 GMT
ENV KIBANA_VERSION=5.6.11
# Wed, 05 Sep 2018 00:14:05 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Wed, 05 Sep 2018 00:14:06 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 00:14:07 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Wed, 05 Sep 2018 00:14:07 GMT
EXPOSE 5601/tcp
# Wed, 05 Sep 2018 00:14:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 00:14:08 GMT
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
	-	`sha256:947aca9219b275cbc1bac9a5551da95ae3525ca0ae84d21a3e3a0498d33c9e11`  
		Last Modified: Wed, 05 Sep 2018 00:16:16 GMT  
		Size: 53.8 MB (53765605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21f771aee97e0d1aa5905d958d45c3dc793a3d246b884a8cdb99ef7d7e70cb7`  
		Last Modified: Wed, 05 Sep 2018 00:15:54 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
