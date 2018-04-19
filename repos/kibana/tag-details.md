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
$ docker pull kibana@sha256:ffc75e485df38d9fb8a56c735a5e4a4f7ea6ccccef1c6f4378ff2a9ba909aa49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:4` - linux; amd64

```console
$ docker pull kibana@sha256:24ce7bac6bc46683f36479fd720f922e0350d7436ca7942c93e520951a7e3c8f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110401898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93eecec947b2abf323724ad571544aaac5ca506c9e6a2c410117f3ac067424c6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:02:58 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Wed, 14 Mar 2018 06:05:00 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:05:01 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 06:05:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Mar 2018 06:05:05 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 14 Mar 2018 06:05:08 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Mar 2018 06:05:13 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 06:05:13 GMT
ENV KIBANA_MAJOR=4.6
# Wed, 14 Mar 2018 06:05:13 GMT
ENV KIBANA_VERSION=4.6.6
# Wed, 14 Mar 2018 06:05:14 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Wed, 14 Mar 2018 06:05:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Wed, 14 Mar 2018 06:05:37 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 06:05:37 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Wed, 14 Mar 2018 06:05:38 GMT
EXPOSE 5601/tcp
# Wed, 14 Mar 2018 06:05:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 06:05:38 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25438344b5cbbc5626d4875d9bad4a94598dbfc05a437dfb5f801474f4e2100d`  
		Last Modified: Wed, 14 Mar 2018 06:19:02 GMT  
		Size: 4.4 KB (4406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0367b212c7cc8ef5286f95f7118390be8aa5f28a26f0692b2faaf02f7a7ec387`  
		Last Modified: Wed, 14 Mar 2018 06:21:03 GMT  
		Size: 20.5 MB (20524608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dfe1c565ef97f2f8018961fadbee928e5d5e4a073ce94bf9dbec3458ed49ec9`  
		Last Modified: Wed, 14 Mar 2018 06:21:00 GMT  
		Size: 500.7 KB (500659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c0876c8d8afc486eb8dfbc90b96478e015f91e6debe7b38d8163deb93c1e42e`  
		Last Modified: Wed, 14 Mar 2018 06:20:57 GMT  
		Size: 7.3 KB (7294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc2e6823ed906652c9b298f38074333e266a068eebd8aa0f8e3b092e3fdade9a`  
		Last Modified: Wed, 14 Mar 2018 06:20:58 GMT  
		Size: 1.4 KB (1450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82aaac55ff0e8b074e824ce50056d99fb81930d8170bdc902a8116d662de5c6`  
		Last Modified: Wed, 14 Mar 2018 06:20:57 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46765b2bab635d379207d9d1160628bfc1442e651a7ae806b5b092bf9627d098`  
		Last Modified: Wed, 14 Mar 2018 06:21:06 GMT  
		Size: 36.8 MB (36754395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e7318d483997a2cd09dfaac5485631ed634b4a4f19f3b34b7f8b7d5d00f6817`  
		Last Modified: Wed, 14 Mar 2018 06:20:58 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.6`

```console
$ docker pull kibana@sha256:ffc75e485df38d9fb8a56c735a5e4a4f7ea6ccccef1c6f4378ff2a9ba909aa49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:4.6` - linux; amd64

```console
$ docker pull kibana@sha256:24ce7bac6bc46683f36479fd720f922e0350d7436ca7942c93e520951a7e3c8f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110401898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93eecec947b2abf323724ad571544aaac5ca506c9e6a2c410117f3ac067424c6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:02:58 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Wed, 14 Mar 2018 06:05:00 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:05:01 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 06:05:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Mar 2018 06:05:05 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 14 Mar 2018 06:05:08 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Mar 2018 06:05:13 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 06:05:13 GMT
ENV KIBANA_MAJOR=4.6
# Wed, 14 Mar 2018 06:05:13 GMT
ENV KIBANA_VERSION=4.6.6
# Wed, 14 Mar 2018 06:05:14 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Wed, 14 Mar 2018 06:05:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Wed, 14 Mar 2018 06:05:37 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 06:05:37 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Wed, 14 Mar 2018 06:05:38 GMT
EXPOSE 5601/tcp
# Wed, 14 Mar 2018 06:05:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 06:05:38 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25438344b5cbbc5626d4875d9bad4a94598dbfc05a437dfb5f801474f4e2100d`  
		Last Modified: Wed, 14 Mar 2018 06:19:02 GMT  
		Size: 4.4 KB (4406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0367b212c7cc8ef5286f95f7118390be8aa5f28a26f0692b2faaf02f7a7ec387`  
		Last Modified: Wed, 14 Mar 2018 06:21:03 GMT  
		Size: 20.5 MB (20524608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dfe1c565ef97f2f8018961fadbee928e5d5e4a073ce94bf9dbec3458ed49ec9`  
		Last Modified: Wed, 14 Mar 2018 06:21:00 GMT  
		Size: 500.7 KB (500659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c0876c8d8afc486eb8dfbc90b96478e015f91e6debe7b38d8163deb93c1e42e`  
		Last Modified: Wed, 14 Mar 2018 06:20:57 GMT  
		Size: 7.3 KB (7294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc2e6823ed906652c9b298f38074333e266a068eebd8aa0f8e3b092e3fdade9a`  
		Last Modified: Wed, 14 Mar 2018 06:20:58 GMT  
		Size: 1.4 KB (1450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82aaac55ff0e8b074e824ce50056d99fb81930d8170bdc902a8116d662de5c6`  
		Last Modified: Wed, 14 Mar 2018 06:20:57 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46765b2bab635d379207d9d1160628bfc1442e651a7ae806b5b092bf9627d098`  
		Last Modified: Wed, 14 Mar 2018 06:21:06 GMT  
		Size: 36.8 MB (36754395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e7318d483997a2cd09dfaac5485631ed634b4a4f19f3b34b7f8b7d5d00f6817`  
		Last Modified: Wed, 14 Mar 2018 06:20:58 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.6.6`

```console
$ docker pull kibana@sha256:ffc75e485df38d9fb8a56c735a5e4a4f7ea6ccccef1c6f4378ff2a9ba909aa49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:4.6.6` - linux; amd64

```console
$ docker pull kibana@sha256:24ce7bac6bc46683f36479fd720f922e0350d7436ca7942c93e520951a7e3c8f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110401898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93eecec947b2abf323724ad571544aaac5ca506c9e6a2c410117f3ac067424c6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:02:58 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Wed, 14 Mar 2018 06:05:00 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:05:01 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 06:05:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Mar 2018 06:05:05 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 14 Mar 2018 06:05:08 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Mar 2018 06:05:13 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 06:05:13 GMT
ENV KIBANA_MAJOR=4.6
# Wed, 14 Mar 2018 06:05:13 GMT
ENV KIBANA_VERSION=4.6.6
# Wed, 14 Mar 2018 06:05:14 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Wed, 14 Mar 2018 06:05:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Wed, 14 Mar 2018 06:05:37 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 06:05:37 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Wed, 14 Mar 2018 06:05:38 GMT
EXPOSE 5601/tcp
# Wed, 14 Mar 2018 06:05:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Mar 2018 06:05:38 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25438344b5cbbc5626d4875d9bad4a94598dbfc05a437dfb5f801474f4e2100d`  
		Last Modified: Wed, 14 Mar 2018 06:19:02 GMT  
		Size: 4.4 KB (4406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0367b212c7cc8ef5286f95f7118390be8aa5f28a26f0692b2faaf02f7a7ec387`  
		Last Modified: Wed, 14 Mar 2018 06:21:03 GMT  
		Size: 20.5 MB (20524608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dfe1c565ef97f2f8018961fadbee928e5d5e4a073ce94bf9dbec3458ed49ec9`  
		Last Modified: Wed, 14 Mar 2018 06:21:00 GMT  
		Size: 500.7 KB (500659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c0876c8d8afc486eb8dfbc90b96478e015f91e6debe7b38d8163deb93c1e42e`  
		Last Modified: Wed, 14 Mar 2018 06:20:57 GMT  
		Size: 7.3 KB (7294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc2e6823ed906652c9b298f38074333e266a068eebd8aa0f8e3b092e3fdade9a`  
		Last Modified: Wed, 14 Mar 2018 06:20:58 GMT  
		Size: 1.4 KB (1450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82aaac55ff0e8b074e824ce50056d99fb81930d8170bdc902a8116d662de5c6`  
		Last Modified: Wed, 14 Mar 2018 06:20:57 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46765b2bab635d379207d9d1160628bfc1442e651a7ae806b5b092bf9627d098`  
		Last Modified: Wed, 14 Mar 2018 06:21:06 GMT  
		Size: 36.8 MB (36754395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e7318d483997a2cd09dfaac5485631ed634b4a4f19f3b34b7f8b7d5d00f6817`  
		Last Modified: Wed, 14 Mar 2018 06:20:58 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5`

```console
$ docker pull kibana@sha256:1317ac0cc00c705d2b7b755f720c0b3cd93a2e41703abcabc14bcb5301b2fad3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5` - linux; amd64

```console
$ docker pull kibana@sha256:4faf9b41a75042c90d7bdf90d918622605f4fb58e5ce61b44f650c7a8269c9f4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.0 MB (129021103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35db47ed9296213bdcbe2be7db705cbc4553dcc092bb9dc1cbd359befd46e166`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:02:58 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Wed, 14 Mar 2018 06:03:29 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:03:29 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 06:03:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Mar 2018 06:03:34 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 14 Mar 2018 06:03:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Mar 2018 06:03:41 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 06:03:42 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Thu, 19 Apr 2018 20:44:28 GMT
ENV KIBANA_VERSION=5.6.9
# Thu, 19 Apr 2018 20:44:57 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Thu, 19 Apr 2018 20:44:58 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Apr 2018 20:44:59 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Thu, 19 Apr 2018 20:44:59 GMT
EXPOSE 5601/tcp
# Thu, 19 Apr 2018 20:44:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 19 Apr 2018 20:45:00 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25438344b5cbbc5626d4875d9bad4a94598dbfc05a437dfb5f801474f4e2100d`  
		Last Modified: Wed, 14 Mar 2018 06:19:02 GMT  
		Size: 4.4 KB (4406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c180a7dc6e5e4f28718be1090b3ee08524eb682a981a808c2aa77e15f33e3e9`  
		Last Modified: Wed, 14 Mar 2018 06:19:06 GMT  
		Size: 22.4 MB (22406009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15eebeb999953ca65f7761e39718abd216d977120804c34d319e1c1fb86e97c9`  
		Last Modified: Wed, 14 Mar 2018 06:19:02 GMT  
		Size: 500.7 KB (500668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd57b310c1a9f32ed8aa4c16298d29a249705829669df444728748a16b996b3`  
		Last Modified: Wed, 14 Mar 2018 06:18:59 GMT  
		Size: 7.3 KB (7293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2077588c6ba19121a6a51c0ff74a9f71cf42e217b750f2a55bb25331c4383090`  
		Last Modified: Wed, 14 Mar 2018 06:18:59 GMT  
		Size: 1.5 KB (1453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b9d2ee9bb5050306fdb8d4eb831f32b0ee8de31c4a247478f79b1c296aee446`  
		Last Modified: Wed, 14 Mar 2018 06:18:59 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814f933a1b670a63aa6062fa855bf6c2156f314e5abd1ca75f8ae21b2b2d882f`  
		Last Modified: Thu, 19 Apr 2018 21:00:05 GMT  
		Size: 53.5 MB (53492192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba919c3638920c5d5934a5c79cecacc98ad40ca2bb85076cb1c82f36946bf46c`  
		Last Modified: Thu, 19 Apr 2018 20:59:43 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.6`

```console
$ docker pull kibana@sha256:1317ac0cc00c705d2b7b755f720c0b3cd93a2e41703abcabc14bcb5301b2fad3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5.6` - linux; amd64

```console
$ docker pull kibana@sha256:4faf9b41a75042c90d7bdf90d918622605f4fb58e5ce61b44f650c7a8269c9f4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.0 MB (129021103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35db47ed9296213bdcbe2be7db705cbc4553dcc092bb9dc1cbd359befd46e166`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:02:58 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Wed, 14 Mar 2018 06:03:29 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:03:29 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 06:03:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Mar 2018 06:03:34 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 14 Mar 2018 06:03:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Mar 2018 06:03:41 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 06:03:42 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Thu, 19 Apr 2018 20:44:28 GMT
ENV KIBANA_VERSION=5.6.9
# Thu, 19 Apr 2018 20:44:57 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Thu, 19 Apr 2018 20:44:58 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Apr 2018 20:44:59 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Thu, 19 Apr 2018 20:44:59 GMT
EXPOSE 5601/tcp
# Thu, 19 Apr 2018 20:44:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 19 Apr 2018 20:45:00 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25438344b5cbbc5626d4875d9bad4a94598dbfc05a437dfb5f801474f4e2100d`  
		Last Modified: Wed, 14 Mar 2018 06:19:02 GMT  
		Size: 4.4 KB (4406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c180a7dc6e5e4f28718be1090b3ee08524eb682a981a808c2aa77e15f33e3e9`  
		Last Modified: Wed, 14 Mar 2018 06:19:06 GMT  
		Size: 22.4 MB (22406009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15eebeb999953ca65f7761e39718abd216d977120804c34d319e1c1fb86e97c9`  
		Last Modified: Wed, 14 Mar 2018 06:19:02 GMT  
		Size: 500.7 KB (500668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd57b310c1a9f32ed8aa4c16298d29a249705829669df444728748a16b996b3`  
		Last Modified: Wed, 14 Mar 2018 06:18:59 GMT  
		Size: 7.3 KB (7293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2077588c6ba19121a6a51c0ff74a9f71cf42e217b750f2a55bb25331c4383090`  
		Last Modified: Wed, 14 Mar 2018 06:18:59 GMT  
		Size: 1.5 KB (1453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b9d2ee9bb5050306fdb8d4eb831f32b0ee8de31c4a247478f79b1c296aee446`  
		Last Modified: Wed, 14 Mar 2018 06:18:59 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814f933a1b670a63aa6062fa855bf6c2156f314e5abd1ca75f8ae21b2b2d882f`  
		Last Modified: Thu, 19 Apr 2018 21:00:05 GMT  
		Size: 53.5 MB (53492192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba919c3638920c5d5934a5c79cecacc98ad40ca2bb85076cb1c82f36946bf46c`  
		Last Modified: Thu, 19 Apr 2018 20:59:43 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.6.9`

```console
$ docker pull kibana@sha256:1317ac0cc00c705d2b7b755f720c0b3cd93a2e41703abcabc14bcb5301b2fad3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5.6.9` - linux; amd64

```console
$ docker pull kibana@sha256:4faf9b41a75042c90d7bdf90d918622605f4fb58e5ce61b44f650c7a8269c9f4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.0 MB (129021103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35db47ed9296213bdcbe2be7db705cbc4553dcc092bb9dc1cbd359befd46e166`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:02:58 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Wed, 14 Mar 2018 06:03:29 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:03:29 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 06:03:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Mar 2018 06:03:34 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 14 Mar 2018 06:03:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Mar 2018 06:03:41 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 06:03:42 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Thu, 19 Apr 2018 20:44:28 GMT
ENV KIBANA_VERSION=5.6.9
# Thu, 19 Apr 2018 20:44:57 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Thu, 19 Apr 2018 20:44:58 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Apr 2018 20:44:59 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Thu, 19 Apr 2018 20:44:59 GMT
EXPOSE 5601/tcp
# Thu, 19 Apr 2018 20:44:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 19 Apr 2018 20:45:00 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25438344b5cbbc5626d4875d9bad4a94598dbfc05a437dfb5f801474f4e2100d`  
		Last Modified: Wed, 14 Mar 2018 06:19:02 GMT  
		Size: 4.4 KB (4406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c180a7dc6e5e4f28718be1090b3ee08524eb682a981a808c2aa77e15f33e3e9`  
		Last Modified: Wed, 14 Mar 2018 06:19:06 GMT  
		Size: 22.4 MB (22406009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15eebeb999953ca65f7761e39718abd216d977120804c34d319e1c1fb86e97c9`  
		Last Modified: Wed, 14 Mar 2018 06:19:02 GMT  
		Size: 500.7 KB (500668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd57b310c1a9f32ed8aa4c16298d29a249705829669df444728748a16b996b3`  
		Last Modified: Wed, 14 Mar 2018 06:18:59 GMT  
		Size: 7.3 KB (7293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2077588c6ba19121a6a51c0ff74a9f71cf42e217b750f2a55bb25331c4383090`  
		Last Modified: Wed, 14 Mar 2018 06:18:59 GMT  
		Size: 1.5 KB (1453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b9d2ee9bb5050306fdb8d4eb831f32b0ee8de31c4a247478f79b1c296aee446`  
		Last Modified: Wed, 14 Mar 2018 06:18:59 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814f933a1b670a63aa6062fa855bf6c2156f314e5abd1ca75f8ae21b2b2d882f`  
		Last Modified: Thu, 19 Apr 2018 21:00:05 GMT  
		Size: 53.5 MB (53492192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba919c3638920c5d5934a5c79cecacc98ad40ca2bb85076cb1c82f36946bf46c`  
		Last Modified: Thu, 19 Apr 2018 20:59:43 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:latest`

```console
$ docker pull kibana@sha256:1317ac0cc00c705d2b7b755f720c0b3cd93a2e41703abcabc14bcb5301b2fad3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:latest` - linux; amd64

```console
$ docker pull kibana@sha256:4faf9b41a75042c90d7bdf90d918622605f4fb58e5ce61b44f650c7a8269c9f4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.0 MB (129021103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35db47ed9296213bdcbe2be7db705cbc4553dcc092bb9dc1cbd359befd46e166`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:02:58 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Wed, 14 Mar 2018 06:03:29 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:03:29 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 06:03:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Mar 2018 06:03:34 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 14 Mar 2018 06:03:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Mar 2018 06:03:41 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 06:03:42 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Thu, 19 Apr 2018 20:44:28 GMT
ENV KIBANA_VERSION=5.6.9
# Thu, 19 Apr 2018 20:44:57 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Thu, 19 Apr 2018 20:44:58 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Apr 2018 20:44:59 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Thu, 19 Apr 2018 20:44:59 GMT
EXPOSE 5601/tcp
# Thu, 19 Apr 2018 20:44:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 19 Apr 2018 20:45:00 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25438344b5cbbc5626d4875d9bad4a94598dbfc05a437dfb5f801474f4e2100d`  
		Last Modified: Wed, 14 Mar 2018 06:19:02 GMT  
		Size: 4.4 KB (4406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c180a7dc6e5e4f28718be1090b3ee08524eb682a981a808c2aa77e15f33e3e9`  
		Last Modified: Wed, 14 Mar 2018 06:19:06 GMT  
		Size: 22.4 MB (22406009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15eebeb999953ca65f7761e39718abd216d977120804c34d319e1c1fb86e97c9`  
		Last Modified: Wed, 14 Mar 2018 06:19:02 GMT  
		Size: 500.7 KB (500668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd57b310c1a9f32ed8aa4c16298d29a249705829669df444728748a16b996b3`  
		Last Modified: Wed, 14 Mar 2018 06:18:59 GMT  
		Size: 7.3 KB (7293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2077588c6ba19121a6a51c0ff74a9f71cf42e217b750f2a55bb25331c4383090`  
		Last Modified: Wed, 14 Mar 2018 06:18:59 GMT  
		Size: 1.5 KB (1453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b9d2ee9bb5050306fdb8d4eb831f32b0ee8de31c4a247478f79b1c296aee446`  
		Last Modified: Wed, 14 Mar 2018 06:18:59 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814f933a1b670a63aa6062fa855bf6c2156f314e5abd1ca75f8ae21b2b2d882f`  
		Last Modified: Thu, 19 Apr 2018 21:00:05 GMT  
		Size: 53.5 MB (53492192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba919c3638920c5d5934a5c79cecacc98ad40ca2bb85076cb1c82f36946bf46c`  
		Last Modified: Thu, 19 Apr 2018 20:59:43 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
