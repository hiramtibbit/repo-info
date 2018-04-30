<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:4`](#kibana4)
-	[`kibana:4.6`](#kibana46)
-	[`kibana:4.6.6`](#kibana466)
-	[`kibana:5`](#kibana5)
-	[`kibana:5.6`](#kibana56)
-	[`kibana:5.6.9`](#kibana569)
-	[`kibana:latest`](#kibanalatest)

## `kibana:4`

```console
$ docker pull kibana@sha256:41e492271805bd452ac94bd4dabc838b870ee472c6bac88082338647662d7efa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:4` - linux; amd64

```console
$ docker pull kibana@sha256:8e5c41ea6cdd7994efb08991b629579174d707608c7d40696836ca430b12b6d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110352866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37f35e3c4bf73f487721b05f80009e1e11d24624d470d9720cca43981056acd6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 14:59:13 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Mon, 30 Apr 2018 15:17:43 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 15:17:43 GMT
ENV GOSU_VERSION=1.10
# Mon, 30 Apr 2018 15:17:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 30 Apr 2018 15:17:47 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 30 Apr 2018 15:17:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 30 Apr 2018 15:17:54 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 15:17:54 GMT
ENV KIBANA_MAJOR=4.6
# Mon, 30 Apr 2018 15:17:54 GMT
ENV KIBANA_VERSION=4.6.6
# Mon, 30 Apr 2018 15:17:55 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Mon, 30 Apr 2018 15:18:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Mon, 30 Apr 2018 15:18:17 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 30 Apr 2018 15:18:18 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Mon, 30 Apr 2018 15:18:18 GMT
EXPOSE 5601/tcp
# Mon, 30 Apr 2018 15:18:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 30 Apr 2018 15:18:19 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36513e21ff25d4ecaac25eed1bb6c64c3553e8ff42557711270dfb869bc2a6de`  
		Last Modified: Mon, 30 Apr 2018 15:18:55 GMT  
		Size: 4.4 KB (4407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1537d931aa517a59202b574f2dc250518fed76123dd99b3f7a0e665dab23825`  
		Last Modified: Mon, 30 Apr 2018 15:35:17 GMT  
		Size: 18.8 MB (18822558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c09b1fc1e3b13f3617cfd5f2848f1c494370dbfc0c7e1228f4594161072beb`  
		Last Modified: Mon, 30 Apr 2018 15:35:14 GMT  
		Size: 500.7 KB (500666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b11085de5772143eeaa2b9774f5893a23ca9580f56b8c67aa6e3a0fd2a7951cf`  
		Last Modified: Mon, 30 Apr 2018 15:35:11 GMT  
		Size: 7.3 KB (7296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b5576fdf01a47d4848586b18490f5b47279fa1ea09f673a692e1583d8e9e512`  
		Last Modified: Mon, 30 Apr 2018 15:35:10 GMT  
		Size: 1.5 KB (1454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:653e41927d2ff87c9baa217de87b0c43eb401489657aef70f7a390dcde35bc72`  
		Last Modified: Mon, 30 Apr 2018 15:35:10 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6984a4aed6c7422f7a8511985440cbdd7fee4138846e83deb6e6f0a7ea12254e`  
		Last Modified: Mon, 30 Apr 2018 15:35:32 GMT  
		Size: 36.8 MB (36753353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8475f1f0d4529a107ede5617af65cec1b3f0831041595453b88b916107037253`  
		Last Modified: Mon, 30 Apr 2018 15:35:10 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.6`

```console
$ docker pull kibana@sha256:41e492271805bd452ac94bd4dabc838b870ee472c6bac88082338647662d7efa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:4.6` - linux; amd64

```console
$ docker pull kibana@sha256:8e5c41ea6cdd7994efb08991b629579174d707608c7d40696836ca430b12b6d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110352866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37f35e3c4bf73f487721b05f80009e1e11d24624d470d9720cca43981056acd6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 14:59:13 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Mon, 30 Apr 2018 15:17:43 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 15:17:43 GMT
ENV GOSU_VERSION=1.10
# Mon, 30 Apr 2018 15:17:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 30 Apr 2018 15:17:47 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 30 Apr 2018 15:17:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 30 Apr 2018 15:17:54 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 15:17:54 GMT
ENV KIBANA_MAJOR=4.6
# Mon, 30 Apr 2018 15:17:54 GMT
ENV KIBANA_VERSION=4.6.6
# Mon, 30 Apr 2018 15:17:55 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Mon, 30 Apr 2018 15:18:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Mon, 30 Apr 2018 15:18:17 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 30 Apr 2018 15:18:18 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Mon, 30 Apr 2018 15:18:18 GMT
EXPOSE 5601/tcp
# Mon, 30 Apr 2018 15:18:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 30 Apr 2018 15:18:19 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36513e21ff25d4ecaac25eed1bb6c64c3553e8ff42557711270dfb869bc2a6de`  
		Last Modified: Mon, 30 Apr 2018 15:18:55 GMT  
		Size: 4.4 KB (4407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1537d931aa517a59202b574f2dc250518fed76123dd99b3f7a0e665dab23825`  
		Last Modified: Mon, 30 Apr 2018 15:35:17 GMT  
		Size: 18.8 MB (18822558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c09b1fc1e3b13f3617cfd5f2848f1c494370dbfc0c7e1228f4594161072beb`  
		Last Modified: Mon, 30 Apr 2018 15:35:14 GMT  
		Size: 500.7 KB (500666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b11085de5772143eeaa2b9774f5893a23ca9580f56b8c67aa6e3a0fd2a7951cf`  
		Last Modified: Mon, 30 Apr 2018 15:35:11 GMT  
		Size: 7.3 KB (7296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b5576fdf01a47d4848586b18490f5b47279fa1ea09f673a692e1583d8e9e512`  
		Last Modified: Mon, 30 Apr 2018 15:35:10 GMT  
		Size: 1.5 KB (1454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:653e41927d2ff87c9baa217de87b0c43eb401489657aef70f7a390dcde35bc72`  
		Last Modified: Mon, 30 Apr 2018 15:35:10 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6984a4aed6c7422f7a8511985440cbdd7fee4138846e83deb6e6f0a7ea12254e`  
		Last Modified: Mon, 30 Apr 2018 15:35:32 GMT  
		Size: 36.8 MB (36753353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8475f1f0d4529a107ede5617af65cec1b3f0831041595453b88b916107037253`  
		Last Modified: Mon, 30 Apr 2018 15:35:10 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.6.6`

```console
$ docker pull kibana@sha256:41e492271805bd452ac94bd4dabc838b870ee472c6bac88082338647662d7efa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:4.6.6` - linux; amd64

```console
$ docker pull kibana@sha256:8e5c41ea6cdd7994efb08991b629579174d707608c7d40696836ca430b12b6d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110352866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37f35e3c4bf73f487721b05f80009e1e11d24624d470d9720cca43981056acd6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 14:59:13 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Mon, 30 Apr 2018 15:17:43 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 15:17:43 GMT
ENV GOSU_VERSION=1.10
# Mon, 30 Apr 2018 15:17:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 30 Apr 2018 15:17:47 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 30 Apr 2018 15:17:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 30 Apr 2018 15:17:54 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 15:17:54 GMT
ENV KIBANA_MAJOR=4.6
# Mon, 30 Apr 2018 15:17:54 GMT
ENV KIBANA_VERSION=4.6.6
# Mon, 30 Apr 2018 15:17:55 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Mon, 30 Apr 2018 15:18:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Mon, 30 Apr 2018 15:18:17 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 30 Apr 2018 15:18:18 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Mon, 30 Apr 2018 15:18:18 GMT
EXPOSE 5601/tcp
# Mon, 30 Apr 2018 15:18:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 30 Apr 2018 15:18:19 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36513e21ff25d4ecaac25eed1bb6c64c3553e8ff42557711270dfb869bc2a6de`  
		Last Modified: Mon, 30 Apr 2018 15:18:55 GMT  
		Size: 4.4 KB (4407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1537d931aa517a59202b574f2dc250518fed76123dd99b3f7a0e665dab23825`  
		Last Modified: Mon, 30 Apr 2018 15:35:17 GMT  
		Size: 18.8 MB (18822558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c09b1fc1e3b13f3617cfd5f2848f1c494370dbfc0c7e1228f4594161072beb`  
		Last Modified: Mon, 30 Apr 2018 15:35:14 GMT  
		Size: 500.7 KB (500666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b11085de5772143eeaa2b9774f5893a23ca9580f56b8c67aa6e3a0fd2a7951cf`  
		Last Modified: Mon, 30 Apr 2018 15:35:11 GMT  
		Size: 7.3 KB (7296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b5576fdf01a47d4848586b18490f5b47279fa1ea09f673a692e1583d8e9e512`  
		Last Modified: Mon, 30 Apr 2018 15:35:10 GMT  
		Size: 1.5 KB (1454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:653e41927d2ff87c9baa217de87b0c43eb401489657aef70f7a390dcde35bc72`  
		Last Modified: Mon, 30 Apr 2018 15:35:10 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6984a4aed6c7422f7a8511985440cbdd7fee4138846e83deb6e6f0a7ea12254e`  
		Last Modified: Mon, 30 Apr 2018 15:35:32 GMT  
		Size: 36.8 MB (36753353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8475f1f0d4529a107ede5617af65cec1b3f0831041595453b88b916107037253`  
		Last Modified: Mon, 30 Apr 2018 15:35:10 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5`

```console
$ docker pull kibana@sha256:e9b38331b39b40ced625b23fe1827b4b4df6a76b496434e224b41ac8eae4c128
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5` - linux; amd64

```console
$ docker pull kibana@sha256:6c2173de516c2daa519127163af8ad4cca9913fa744a80f9cd6a62a7444e62d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.0 MB (128978784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:006eb7921543985081cfbab9637131f95e234a8c27128aa625ce1c4897bd158c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 14:59:13 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Mon, 30 Apr 2018 14:59:40 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 14:59:40 GMT
ENV GOSU_VERSION=1.10
# Mon, 30 Apr 2018 14:59:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 30 Apr 2018 14:59:45 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 30 Apr 2018 14:59:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 30 Apr 2018 14:59:52 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 14:59:53 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Mon, 30 Apr 2018 14:59:53 GMT
ENV KIBANA_VERSION=5.6.9
# Mon, 30 Apr 2018 15:00:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Mon, 30 Apr 2018 15:00:26 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 30 Apr 2018 15:00:26 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Mon, 30 Apr 2018 15:00:27 GMT
EXPOSE 5601/tcp
# Mon, 30 Apr 2018 15:00:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 30 Apr 2018 15:00:27 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36513e21ff25d4ecaac25eed1bb6c64c3553e8ff42557711270dfb869bc2a6de`  
		Last Modified: Mon, 30 Apr 2018 15:18:55 GMT  
		Size: 4.4 KB (4407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1933f8abb624d1e31d50091c3434eded27c6917207bcbef31e33c03ac66a3a28`  
		Last Modified: Mon, 30 Apr 2018 15:18:58 GMT  
		Size: 20.7 MB (20711530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d83ffd8e8a5a087b9d4cd3e9c3732c8e8601fc5cd5f4db39690017f97ac363`  
		Last Modified: Mon, 30 Apr 2018 15:18:55 GMT  
		Size: 500.7 KB (500663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7e42b844c171541e162a35f4e46d09b4f5cb30ba2c5290bfb9a24df032bfabc`  
		Last Modified: Mon, 30 Apr 2018 15:18:53 GMT  
		Size: 7.3 KB (7295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d05e7a59f3dc68ba3e22ffdb5d3449bba60f3fbd49d139a920a1b5911aaa3507`  
		Last Modified: Mon, 30 Apr 2018 15:18:52 GMT  
		Size: 1.5 KB (1453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e1f2bd78998fefa317c89cbadbf98b9d6e4d6766bb98d1d458c19bdec28699`  
		Last Modified: Mon, 30 Apr 2018 15:18:52 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd913ce4cc9f36bdc0b5d6c30a140f8fc441f61e448540265a96493a753ab965`  
		Last Modified: Mon, 30 Apr 2018 15:19:06 GMT  
		Size: 53.5 MB (53490311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99e64b079ffa611031c2d80400cf79e8d371559d125352f16e131fdef82ffa52`  
		Last Modified: Mon, 30 Apr 2018 15:18:52 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.6`

```console
$ docker pull kibana@sha256:e9b38331b39b40ced625b23fe1827b4b4df6a76b496434e224b41ac8eae4c128
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5.6` - linux; amd64

```console
$ docker pull kibana@sha256:6c2173de516c2daa519127163af8ad4cca9913fa744a80f9cd6a62a7444e62d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.0 MB (128978784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:006eb7921543985081cfbab9637131f95e234a8c27128aa625ce1c4897bd158c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 14:59:13 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Mon, 30 Apr 2018 14:59:40 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 14:59:40 GMT
ENV GOSU_VERSION=1.10
# Mon, 30 Apr 2018 14:59:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 30 Apr 2018 14:59:45 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 30 Apr 2018 14:59:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 30 Apr 2018 14:59:52 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 14:59:53 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Mon, 30 Apr 2018 14:59:53 GMT
ENV KIBANA_VERSION=5.6.9
# Mon, 30 Apr 2018 15:00:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Mon, 30 Apr 2018 15:00:26 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 30 Apr 2018 15:00:26 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Mon, 30 Apr 2018 15:00:27 GMT
EXPOSE 5601/tcp
# Mon, 30 Apr 2018 15:00:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 30 Apr 2018 15:00:27 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36513e21ff25d4ecaac25eed1bb6c64c3553e8ff42557711270dfb869bc2a6de`  
		Last Modified: Mon, 30 Apr 2018 15:18:55 GMT  
		Size: 4.4 KB (4407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1933f8abb624d1e31d50091c3434eded27c6917207bcbef31e33c03ac66a3a28`  
		Last Modified: Mon, 30 Apr 2018 15:18:58 GMT  
		Size: 20.7 MB (20711530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d83ffd8e8a5a087b9d4cd3e9c3732c8e8601fc5cd5f4db39690017f97ac363`  
		Last Modified: Mon, 30 Apr 2018 15:18:55 GMT  
		Size: 500.7 KB (500663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7e42b844c171541e162a35f4e46d09b4f5cb30ba2c5290bfb9a24df032bfabc`  
		Last Modified: Mon, 30 Apr 2018 15:18:53 GMT  
		Size: 7.3 KB (7295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d05e7a59f3dc68ba3e22ffdb5d3449bba60f3fbd49d139a920a1b5911aaa3507`  
		Last Modified: Mon, 30 Apr 2018 15:18:52 GMT  
		Size: 1.5 KB (1453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e1f2bd78998fefa317c89cbadbf98b9d6e4d6766bb98d1d458c19bdec28699`  
		Last Modified: Mon, 30 Apr 2018 15:18:52 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd913ce4cc9f36bdc0b5d6c30a140f8fc441f61e448540265a96493a753ab965`  
		Last Modified: Mon, 30 Apr 2018 15:19:06 GMT  
		Size: 53.5 MB (53490311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99e64b079ffa611031c2d80400cf79e8d371559d125352f16e131fdef82ffa52`  
		Last Modified: Mon, 30 Apr 2018 15:18:52 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.6.9`

```console
$ docker pull kibana@sha256:e9b38331b39b40ced625b23fe1827b4b4df6a76b496434e224b41ac8eae4c128
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5.6.9` - linux; amd64

```console
$ docker pull kibana@sha256:6c2173de516c2daa519127163af8ad4cca9913fa744a80f9cd6a62a7444e62d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.0 MB (128978784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:006eb7921543985081cfbab9637131f95e234a8c27128aa625ce1c4897bd158c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 14:59:13 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Mon, 30 Apr 2018 14:59:40 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 14:59:40 GMT
ENV GOSU_VERSION=1.10
# Mon, 30 Apr 2018 14:59:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 30 Apr 2018 14:59:45 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 30 Apr 2018 14:59:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 30 Apr 2018 14:59:52 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 14:59:53 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Mon, 30 Apr 2018 14:59:53 GMT
ENV KIBANA_VERSION=5.6.9
# Mon, 30 Apr 2018 15:00:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Mon, 30 Apr 2018 15:00:26 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 30 Apr 2018 15:00:26 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Mon, 30 Apr 2018 15:00:27 GMT
EXPOSE 5601/tcp
# Mon, 30 Apr 2018 15:00:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 30 Apr 2018 15:00:27 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36513e21ff25d4ecaac25eed1bb6c64c3553e8ff42557711270dfb869bc2a6de`  
		Last Modified: Mon, 30 Apr 2018 15:18:55 GMT  
		Size: 4.4 KB (4407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1933f8abb624d1e31d50091c3434eded27c6917207bcbef31e33c03ac66a3a28`  
		Last Modified: Mon, 30 Apr 2018 15:18:58 GMT  
		Size: 20.7 MB (20711530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d83ffd8e8a5a087b9d4cd3e9c3732c8e8601fc5cd5f4db39690017f97ac363`  
		Last Modified: Mon, 30 Apr 2018 15:18:55 GMT  
		Size: 500.7 KB (500663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7e42b844c171541e162a35f4e46d09b4f5cb30ba2c5290bfb9a24df032bfabc`  
		Last Modified: Mon, 30 Apr 2018 15:18:53 GMT  
		Size: 7.3 KB (7295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d05e7a59f3dc68ba3e22ffdb5d3449bba60f3fbd49d139a920a1b5911aaa3507`  
		Last Modified: Mon, 30 Apr 2018 15:18:52 GMT  
		Size: 1.5 KB (1453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e1f2bd78998fefa317c89cbadbf98b9d6e4d6766bb98d1d458c19bdec28699`  
		Last Modified: Mon, 30 Apr 2018 15:18:52 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd913ce4cc9f36bdc0b5d6c30a140f8fc441f61e448540265a96493a753ab965`  
		Last Modified: Mon, 30 Apr 2018 15:19:06 GMT  
		Size: 53.5 MB (53490311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99e64b079ffa611031c2d80400cf79e8d371559d125352f16e131fdef82ffa52`  
		Last Modified: Mon, 30 Apr 2018 15:18:52 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:latest`

```console
$ docker pull kibana@sha256:e9b38331b39b40ced625b23fe1827b4b4df6a76b496434e224b41ac8eae4c128
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:latest` - linux; amd64

```console
$ docker pull kibana@sha256:6c2173de516c2daa519127163af8ad4cca9913fa744a80f9cd6a62a7444e62d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.0 MB (128978784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:006eb7921543985081cfbab9637131f95e234a8c27128aa625ce1c4897bd158c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 14:59:13 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Mon, 30 Apr 2018 14:59:40 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 14:59:40 GMT
ENV GOSU_VERSION=1.10
# Mon, 30 Apr 2018 14:59:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 30 Apr 2018 14:59:45 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 30 Apr 2018 14:59:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 30 Apr 2018 14:59:52 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 14:59:53 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Mon, 30 Apr 2018 14:59:53 GMT
ENV KIBANA_VERSION=5.6.9
# Mon, 30 Apr 2018 15:00:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Mon, 30 Apr 2018 15:00:26 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 30 Apr 2018 15:00:26 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Mon, 30 Apr 2018 15:00:27 GMT
EXPOSE 5601/tcp
# Mon, 30 Apr 2018 15:00:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 30 Apr 2018 15:00:27 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36513e21ff25d4ecaac25eed1bb6c64c3553e8ff42557711270dfb869bc2a6de`  
		Last Modified: Mon, 30 Apr 2018 15:18:55 GMT  
		Size: 4.4 KB (4407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1933f8abb624d1e31d50091c3434eded27c6917207bcbef31e33c03ac66a3a28`  
		Last Modified: Mon, 30 Apr 2018 15:18:58 GMT  
		Size: 20.7 MB (20711530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d83ffd8e8a5a087b9d4cd3e9c3732c8e8601fc5cd5f4db39690017f97ac363`  
		Last Modified: Mon, 30 Apr 2018 15:18:55 GMT  
		Size: 500.7 KB (500663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7e42b844c171541e162a35f4e46d09b4f5cb30ba2c5290bfb9a24df032bfabc`  
		Last Modified: Mon, 30 Apr 2018 15:18:53 GMT  
		Size: 7.3 KB (7295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d05e7a59f3dc68ba3e22ffdb5d3449bba60f3fbd49d139a920a1b5911aaa3507`  
		Last Modified: Mon, 30 Apr 2018 15:18:52 GMT  
		Size: 1.5 KB (1453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e1f2bd78998fefa317c89cbadbf98b9d6e4d6766bb98d1d458c19bdec28699`  
		Last Modified: Mon, 30 Apr 2018 15:18:52 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd913ce4cc9f36bdc0b5d6c30a140f8fc441f61e448540265a96493a753ab965`  
		Last Modified: Mon, 30 Apr 2018 15:19:06 GMT  
		Size: 53.5 MB (53490311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99e64b079ffa611031c2d80400cf79e8d371559d125352f16e131fdef82ffa52`  
		Last Modified: Mon, 30 Apr 2018 15:18:52 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
