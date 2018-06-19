<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:4`](#kibana4)
-	[`kibana:4.6`](#kibana46)
-	[`kibana:4.6.6`](#kibana466)
-	[`kibana:5`](#kibana5)
-	[`kibana:5.6`](#kibana56)
-	[`kibana:5.6.10`](#kibana5610)
-	[`kibana:latest`](#kibanalatest)

## `kibana:4`

```console
$ docker pull kibana@sha256:a5b339def8444f4fc1be11085280eec20b1d1be41a241677793aeffe8a111123
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:4` - linux; amd64

```console
$ docker pull kibana@sha256:4edf8d58bd369c5da12e40d1a993463383e5fe548237e735b3a81f70956a35a9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110353135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad4ace8340163839c88bbf755b1ea1bd4a728637387ff606451eb78cac8b67ba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Mon, 18 Jun 2018 23:19:41 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Mon, 18 Jun 2018 23:23:37 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 18 Jun 2018 23:23:37 GMT
ENV GOSU_VERSION=1.10
# Mon, 18 Jun 2018 23:23:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 18 Jun 2018 23:23:42 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 18 Jun 2018 23:23:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 18 Jun 2018 23:23:51 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 18 Jun 2018 23:23:51 GMT
ENV KIBANA_MAJOR=4.6
# Mon, 18 Jun 2018 23:23:52 GMT
ENV KIBANA_VERSION=4.6.6
# Mon, 18 Jun 2018 23:23:52 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Mon, 18 Jun 2018 23:25:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Mon, 18 Jun 2018 23:25:13 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 18 Jun 2018 23:25:13 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Mon, 18 Jun 2018 23:25:13 GMT
EXPOSE 5601/tcp
# Mon, 18 Jun 2018 23:25:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 18 Jun 2018 23:25:14 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ad0806860ea3478a6eac015723ad34190596e85b81903b77fd4cc415441fdd`  
		Last Modified: Mon, 18 Jun 2018 23:25:30 GMT  
		Size: 4.4 KB (4406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12c3507894734e12b851c11cd6de401797d5f4efcec5049e3a124d449a9a953`  
		Last Modified: Mon, 18 Jun 2018 23:26:40 GMT  
		Size: 18.8 MB (18822638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4f0140d510f61b5d8eeb1b281fb41e40a09546fa09d064f8e901b289dead95e`  
		Last Modified: Mon, 18 Jun 2018 23:26:34 GMT  
		Size: 500.7 KB (500668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a03ab463d445de8f64ab13f62ef3a0a91277cc26b9085db82e8062054abecfd`  
		Last Modified: Mon, 18 Jun 2018 23:26:31 GMT  
		Size: 7.3 KB (7293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1546935b13855b9e2dfbc05f72a609df0fa42db1ae88b47078227f28d5899d2d`  
		Last Modified: Mon, 18 Jun 2018 23:26:31 GMT  
		Size: 1.5 KB (1451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6fa9101b287a5e8f42de07ae7327acdba1839ac261ade0f7473804c5833447`  
		Last Modified: Mon, 18 Jun 2018 23:26:34 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97da3c544ae267ce9ea11feb149de0f6775eb08ac1dd124fab243dcb2dc36a62`  
		Last Modified: Mon, 18 Jun 2018 23:26:50 GMT  
		Size: 36.8 MB (36753548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96d7218757fa7fa12e7a088faffa91b11c0cce37d6602208fb8de15924e3785`  
		Last Modified: Mon, 18 Jun 2018 23:26:32 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.6`

```console
$ docker pull kibana@sha256:a5b339def8444f4fc1be11085280eec20b1d1be41a241677793aeffe8a111123
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:4.6` - linux; amd64

```console
$ docker pull kibana@sha256:4edf8d58bd369c5da12e40d1a993463383e5fe548237e735b3a81f70956a35a9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110353135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad4ace8340163839c88bbf755b1ea1bd4a728637387ff606451eb78cac8b67ba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Mon, 18 Jun 2018 23:19:41 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Mon, 18 Jun 2018 23:23:37 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 18 Jun 2018 23:23:37 GMT
ENV GOSU_VERSION=1.10
# Mon, 18 Jun 2018 23:23:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 18 Jun 2018 23:23:42 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 18 Jun 2018 23:23:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 18 Jun 2018 23:23:51 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 18 Jun 2018 23:23:51 GMT
ENV KIBANA_MAJOR=4.6
# Mon, 18 Jun 2018 23:23:52 GMT
ENV KIBANA_VERSION=4.6.6
# Mon, 18 Jun 2018 23:23:52 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Mon, 18 Jun 2018 23:25:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Mon, 18 Jun 2018 23:25:13 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 18 Jun 2018 23:25:13 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Mon, 18 Jun 2018 23:25:13 GMT
EXPOSE 5601/tcp
# Mon, 18 Jun 2018 23:25:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 18 Jun 2018 23:25:14 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ad0806860ea3478a6eac015723ad34190596e85b81903b77fd4cc415441fdd`  
		Last Modified: Mon, 18 Jun 2018 23:25:30 GMT  
		Size: 4.4 KB (4406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12c3507894734e12b851c11cd6de401797d5f4efcec5049e3a124d449a9a953`  
		Last Modified: Mon, 18 Jun 2018 23:26:40 GMT  
		Size: 18.8 MB (18822638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4f0140d510f61b5d8eeb1b281fb41e40a09546fa09d064f8e901b289dead95e`  
		Last Modified: Mon, 18 Jun 2018 23:26:34 GMT  
		Size: 500.7 KB (500668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a03ab463d445de8f64ab13f62ef3a0a91277cc26b9085db82e8062054abecfd`  
		Last Modified: Mon, 18 Jun 2018 23:26:31 GMT  
		Size: 7.3 KB (7293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1546935b13855b9e2dfbc05f72a609df0fa42db1ae88b47078227f28d5899d2d`  
		Last Modified: Mon, 18 Jun 2018 23:26:31 GMT  
		Size: 1.5 KB (1451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6fa9101b287a5e8f42de07ae7327acdba1839ac261ade0f7473804c5833447`  
		Last Modified: Mon, 18 Jun 2018 23:26:34 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97da3c544ae267ce9ea11feb149de0f6775eb08ac1dd124fab243dcb2dc36a62`  
		Last Modified: Mon, 18 Jun 2018 23:26:50 GMT  
		Size: 36.8 MB (36753548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96d7218757fa7fa12e7a088faffa91b11c0cce37d6602208fb8de15924e3785`  
		Last Modified: Mon, 18 Jun 2018 23:26:32 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.6.6`

```console
$ docker pull kibana@sha256:a5b339def8444f4fc1be11085280eec20b1d1be41a241677793aeffe8a111123
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:4.6.6` - linux; amd64

```console
$ docker pull kibana@sha256:4edf8d58bd369c5da12e40d1a993463383e5fe548237e735b3a81f70956a35a9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110353135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad4ace8340163839c88bbf755b1ea1bd4a728637387ff606451eb78cac8b67ba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Mon, 18 Jun 2018 23:19:41 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Mon, 18 Jun 2018 23:23:37 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 18 Jun 2018 23:23:37 GMT
ENV GOSU_VERSION=1.10
# Mon, 18 Jun 2018 23:23:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 18 Jun 2018 23:23:42 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 18 Jun 2018 23:23:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 18 Jun 2018 23:23:51 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 18 Jun 2018 23:23:51 GMT
ENV KIBANA_MAJOR=4.6
# Mon, 18 Jun 2018 23:23:52 GMT
ENV KIBANA_VERSION=4.6.6
# Mon, 18 Jun 2018 23:23:52 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Mon, 18 Jun 2018 23:25:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Mon, 18 Jun 2018 23:25:13 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 18 Jun 2018 23:25:13 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Mon, 18 Jun 2018 23:25:13 GMT
EXPOSE 5601/tcp
# Mon, 18 Jun 2018 23:25:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 18 Jun 2018 23:25:14 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ad0806860ea3478a6eac015723ad34190596e85b81903b77fd4cc415441fdd`  
		Last Modified: Mon, 18 Jun 2018 23:25:30 GMT  
		Size: 4.4 KB (4406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12c3507894734e12b851c11cd6de401797d5f4efcec5049e3a124d449a9a953`  
		Last Modified: Mon, 18 Jun 2018 23:26:40 GMT  
		Size: 18.8 MB (18822638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4f0140d510f61b5d8eeb1b281fb41e40a09546fa09d064f8e901b289dead95e`  
		Last Modified: Mon, 18 Jun 2018 23:26:34 GMT  
		Size: 500.7 KB (500668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a03ab463d445de8f64ab13f62ef3a0a91277cc26b9085db82e8062054abecfd`  
		Last Modified: Mon, 18 Jun 2018 23:26:31 GMT  
		Size: 7.3 KB (7293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1546935b13855b9e2dfbc05f72a609df0fa42db1ae88b47078227f28d5899d2d`  
		Last Modified: Mon, 18 Jun 2018 23:26:31 GMT  
		Size: 1.5 KB (1451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6fa9101b287a5e8f42de07ae7327acdba1839ac261ade0f7473804c5833447`  
		Last Modified: Mon, 18 Jun 2018 23:26:34 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97da3c544ae267ce9ea11feb149de0f6775eb08ac1dd124fab243dcb2dc36a62`  
		Last Modified: Mon, 18 Jun 2018 23:26:50 GMT  
		Size: 36.8 MB (36753548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96d7218757fa7fa12e7a088faffa91b11c0cce37d6602208fb8de15924e3785`  
		Last Modified: Mon, 18 Jun 2018 23:26:32 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5`

```console
$ docker pull kibana@sha256:27718e6dab730fdc126aa846b1ca01c32863f4222fd4aeb95c9b6e7078a681d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5` - linux; amd64

```console
$ docker pull kibana@sha256:1ec7b192c7c2e750279ec976c4003dacc6e33cb736f37abac74c92f72f7e392a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.1 MB (129144758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9b287fc0125fc9612caa8878994f5e53535444fdbf39b81a6865b662f22f56c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Mon, 18 Jun 2018 23:19:41 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Mon, 18 Jun 2018 23:20:32 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 18 Jun 2018 23:20:33 GMT
ENV GOSU_VERSION=1.10
# Mon, 18 Jun 2018 23:20:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 18 Jun 2018 23:20:37 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 18 Jun 2018 23:20:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 18 Jun 2018 23:20:48 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 18 Jun 2018 23:20:48 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Mon, 18 Jun 2018 23:20:48 GMT
ENV KIBANA_VERSION=5.6.10
# Mon, 18 Jun 2018 23:22:45 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Mon, 18 Jun 2018 23:22:46 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 18 Jun 2018 23:22:47 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Mon, 18 Jun 2018 23:22:47 GMT
EXPOSE 5601/tcp
# Mon, 18 Jun 2018 23:22:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 18 Jun 2018 23:22:47 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ad0806860ea3478a6eac015723ad34190596e85b81903b77fd4cc415441fdd`  
		Last Modified: Mon, 18 Jun 2018 23:25:30 GMT  
		Size: 4.4 KB (4406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09623fadaa9f92017264368871b621a1a5508bd34498983896899a9b8cff1c27`  
		Last Modified: Mon, 18 Jun 2018 23:25:36 GMT  
		Size: 20.7 MB (20711603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b35b54a432cce7437457e5110f098229c84b9917563b4dcb68fffa88e121afbb`  
		Last Modified: Mon, 18 Jun 2018 23:25:30 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:714f7df85006e9b5aa05bc9f0f5c42722763d24eba3c8370973ccd26231f5026`  
		Last Modified: Mon, 18 Jun 2018 23:25:27 GMT  
		Size: 7.3 KB (7298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616c3ed9974134884c76425a057488b56c518a38e6d020872ef8f2c43431b08b`  
		Last Modified: Mon, 18 Jun 2018 23:25:27 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e8f10db303a99501a8ea09a814703943c76cf36da21dc54f99d4d262d936175`  
		Last Modified: Mon, 18 Jun 2018 23:25:27 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fccab1f92971f99022a49b9c81c7484e1231cb4a21394de3a13dcff2452931`  
		Last Modified: Mon, 18 Jun 2018 23:25:56 GMT  
		Size: 53.7 MB (53656210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be8a880267077d5ce2487f313c340f0777b5a0761a248fd14bb5c604fe31d12e`  
		Last Modified: Mon, 18 Jun 2018 23:25:27 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.6`

```console
$ docker pull kibana@sha256:27718e6dab730fdc126aa846b1ca01c32863f4222fd4aeb95c9b6e7078a681d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5.6` - linux; amd64

```console
$ docker pull kibana@sha256:1ec7b192c7c2e750279ec976c4003dacc6e33cb736f37abac74c92f72f7e392a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.1 MB (129144758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9b287fc0125fc9612caa8878994f5e53535444fdbf39b81a6865b662f22f56c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Mon, 18 Jun 2018 23:19:41 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Mon, 18 Jun 2018 23:20:32 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 18 Jun 2018 23:20:33 GMT
ENV GOSU_VERSION=1.10
# Mon, 18 Jun 2018 23:20:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 18 Jun 2018 23:20:37 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 18 Jun 2018 23:20:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 18 Jun 2018 23:20:48 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 18 Jun 2018 23:20:48 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Mon, 18 Jun 2018 23:20:48 GMT
ENV KIBANA_VERSION=5.6.10
# Mon, 18 Jun 2018 23:22:45 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Mon, 18 Jun 2018 23:22:46 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 18 Jun 2018 23:22:47 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Mon, 18 Jun 2018 23:22:47 GMT
EXPOSE 5601/tcp
# Mon, 18 Jun 2018 23:22:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 18 Jun 2018 23:22:47 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ad0806860ea3478a6eac015723ad34190596e85b81903b77fd4cc415441fdd`  
		Last Modified: Mon, 18 Jun 2018 23:25:30 GMT  
		Size: 4.4 KB (4406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09623fadaa9f92017264368871b621a1a5508bd34498983896899a9b8cff1c27`  
		Last Modified: Mon, 18 Jun 2018 23:25:36 GMT  
		Size: 20.7 MB (20711603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b35b54a432cce7437457e5110f098229c84b9917563b4dcb68fffa88e121afbb`  
		Last Modified: Mon, 18 Jun 2018 23:25:30 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:714f7df85006e9b5aa05bc9f0f5c42722763d24eba3c8370973ccd26231f5026`  
		Last Modified: Mon, 18 Jun 2018 23:25:27 GMT  
		Size: 7.3 KB (7298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616c3ed9974134884c76425a057488b56c518a38e6d020872ef8f2c43431b08b`  
		Last Modified: Mon, 18 Jun 2018 23:25:27 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e8f10db303a99501a8ea09a814703943c76cf36da21dc54f99d4d262d936175`  
		Last Modified: Mon, 18 Jun 2018 23:25:27 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fccab1f92971f99022a49b9c81c7484e1231cb4a21394de3a13dcff2452931`  
		Last Modified: Mon, 18 Jun 2018 23:25:56 GMT  
		Size: 53.7 MB (53656210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be8a880267077d5ce2487f313c340f0777b5a0761a248fd14bb5c604fe31d12e`  
		Last Modified: Mon, 18 Jun 2018 23:25:27 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.6.10`

```console
$ docker pull kibana@sha256:27718e6dab730fdc126aa846b1ca01c32863f4222fd4aeb95c9b6e7078a681d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5.6.10` - linux; amd64

```console
$ docker pull kibana@sha256:1ec7b192c7c2e750279ec976c4003dacc6e33cb736f37abac74c92f72f7e392a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.1 MB (129144758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9b287fc0125fc9612caa8878994f5e53535444fdbf39b81a6865b662f22f56c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Mon, 18 Jun 2018 23:19:41 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Mon, 18 Jun 2018 23:20:32 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 18 Jun 2018 23:20:33 GMT
ENV GOSU_VERSION=1.10
# Mon, 18 Jun 2018 23:20:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 18 Jun 2018 23:20:37 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 18 Jun 2018 23:20:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 18 Jun 2018 23:20:48 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 18 Jun 2018 23:20:48 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Mon, 18 Jun 2018 23:20:48 GMT
ENV KIBANA_VERSION=5.6.10
# Mon, 18 Jun 2018 23:22:45 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Mon, 18 Jun 2018 23:22:46 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 18 Jun 2018 23:22:47 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Mon, 18 Jun 2018 23:22:47 GMT
EXPOSE 5601/tcp
# Mon, 18 Jun 2018 23:22:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 18 Jun 2018 23:22:47 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ad0806860ea3478a6eac015723ad34190596e85b81903b77fd4cc415441fdd`  
		Last Modified: Mon, 18 Jun 2018 23:25:30 GMT  
		Size: 4.4 KB (4406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09623fadaa9f92017264368871b621a1a5508bd34498983896899a9b8cff1c27`  
		Last Modified: Mon, 18 Jun 2018 23:25:36 GMT  
		Size: 20.7 MB (20711603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b35b54a432cce7437457e5110f098229c84b9917563b4dcb68fffa88e121afbb`  
		Last Modified: Mon, 18 Jun 2018 23:25:30 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:714f7df85006e9b5aa05bc9f0f5c42722763d24eba3c8370973ccd26231f5026`  
		Last Modified: Mon, 18 Jun 2018 23:25:27 GMT  
		Size: 7.3 KB (7298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616c3ed9974134884c76425a057488b56c518a38e6d020872ef8f2c43431b08b`  
		Last Modified: Mon, 18 Jun 2018 23:25:27 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e8f10db303a99501a8ea09a814703943c76cf36da21dc54f99d4d262d936175`  
		Last Modified: Mon, 18 Jun 2018 23:25:27 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fccab1f92971f99022a49b9c81c7484e1231cb4a21394de3a13dcff2452931`  
		Last Modified: Mon, 18 Jun 2018 23:25:56 GMT  
		Size: 53.7 MB (53656210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be8a880267077d5ce2487f313c340f0777b5a0761a248fd14bb5c604fe31d12e`  
		Last Modified: Mon, 18 Jun 2018 23:25:27 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:latest`

```console
$ docker pull kibana@sha256:27718e6dab730fdc126aa846b1ca01c32863f4222fd4aeb95c9b6e7078a681d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:latest` - linux; amd64

```console
$ docker pull kibana@sha256:1ec7b192c7c2e750279ec976c4003dacc6e33cb736f37abac74c92f72f7e392a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.1 MB (129144758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9b287fc0125fc9612caa8878994f5e53535444fdbf39b81a6865b662f22f56c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Mon, 18 Jun 2018 23:19:41 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Mon, 18 Jun 2018 23:20:32 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 18 Jun 2018 23:20:33 GMT
ENV GOSU_VERSION=1.10
# Mon, 18 Jun 2018 23:20:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 18 Jun 2018 23:20:37 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 18 Jun 2018 23:20:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 18 Jun 2018 23:20:48 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 18 Jun 2018 23:20:48 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Mon, 18 Jun 2018 23:20:48 GMT
ENV KIBANA_VERSION=5.6.10
# Mon, 18 Jun 2018 23:22:45 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Mon, 18 Jun 2018 23:22:46 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 18 Jun 2018 23:22:47 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Mon, 18 Jun 2018 23:22:47 GMT
EXPOSE 5601/tcp
# Mon, 18 Jun 2018 23:22:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 18 Jun 2018 23:22:47 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ad0806860ea3478a6eac015723ad34190596e85b81903b77fd4cc415441fdd`  
		Last Modified: Mon, 18 Jun 2018 23:25:30 GMT  
		Size: 4.4 KB (4406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09623fadaa9f92017264368871b621a1a5508bd34498983896899a9b8cff1c27`  
		Last Modified: Mon, 18 Jun 2018 23:25:36 GMT  
		Size: 20.7 MB (20711603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b35b54a432cce7437457e5110f098229c84b9917563b4dcb68fffa88e121afbb`  
		Last Modified: Mon, 18 Jun 2018 23:25:30 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:714f7df85006e9b5aa05bc9f0f5c42722763d24eba3c8370973ccd26231f5026`  
		Last Modified: Mon, 18 Jun 2018 23:25:27 GMT  
		Size: 7.3 KB (7298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616c3ed9974134884c76425a057488b56c518a38e6d020872ef8f2c43431b08b`  
		Last Modified: Mon, 18 Jun 2018 23:25:27 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e8f10db303a99501a8ea09a814703943c76cf36da21dc54f99d4d262d936175`  
		Last Modified: Mon, 18 Jun 2018 23:25:27 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fccab1f92971f99022a49b9c81c7484e1231cb4a21394de3a13dcff2452931`  
		Last Modified: Mon, 18 Jun 2018 23:25:56 GMT  
		Size: 53.7 MB (53656210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be8a880267077d5ce2487f313c340f0777b5a0761a248fd14bb5c604fe31d12e`  
		Last Modified: Mon, 18 Jun 2018 23:25:27 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
