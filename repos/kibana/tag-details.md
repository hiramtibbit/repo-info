<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:4`](#kibana4)
-	[`kibana:4.6`](#kibana46)
-	[`kibana:4.6.6`](#kibana466)
-	[`kibana:5`](#kibana5)
-	[`kibana:5.6`](#kibana56)
-	[`kibana:5.6.7`](#kibana567)
-	[`kibana:latest`](#kibanalatest)

## `kibana:4`

```console
$ docker pull kibana@sha256:6dd3e6f086dae70c65a86111163f30a972af633755d171da07465809f7e7ccb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:4` - linux; amd64

```console
$ docker pull kibana@sha256:7ea34ed75fdf58dfb12595a5cf31ae6b9620221e339b4819a958dcaa5f1b9af4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110393012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c8fc3900a62c6c39ef6dc4346dbae8d2689cf440baa73935ac6c05f6f9e711c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:17:07 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 12 Dec 2017 02:18:34 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:18:34 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 02:18:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 12 Dec 2017 02:18:44 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 12 Dec 2017 02:18:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 12 Dec 2017 02:18:49 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 02:18:49 GMT
ENV KIBANA_MAJOR=4.6
# Tue, 12 Dec 2017 02:18:49 GMT
ENV KIBANA_VERSION=4.6.6
# Tue, 12 Dec 2017 02:18:50 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Tue, 12 Dec 2017 02:19:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 12 Dec 2017 02:19:07 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 02:19:07 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Tue, 12 Dec 2017 02:19:07 GMT
EXPOSE 5601/tcp
# Tue, 12 Dec 2017 02:19:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Dec 2017 02:19:08 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8acb2289dd361eed17251ca684daf0ab1e69d64e943084b3769a4cc3fbee69`  
		Last Modified: Tue, 12 Dec 2017 02:19:29 GMT  
		Size: 4.4 KB (4404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f1adf92cef9599c501cf6fa9dcbf2178945088df583b5518a31adb94ebc915`  
		Last Modified: Tue, 12 Dec 2017 02:21:54 GMT  
		Size: 20.5 MB (20524610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d800f041b26f6a0a49b4501a906264f94b8a72f6d05acef65060af02f4f439d1`  
		Last Modified: Tue, 12 Dec 2017 02:21:49 GMT  
		Size: 500.7 KB (500666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2715316cc3a5339fc75030aa65032ea50b13c1c5f103d14ec40c92d3eb31e9`  
		Last Modified: Tue, 12 Dec 2017 02:21:47 GMT  
		Size: 7.3 KB (7292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221abdde1f4dfb6af2f9383dc83f1b060f3f6ca6505f8ad28654d64100b155eb`  
		Last Modified: Tue, 12 Dec 2017 02:21:47 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3b2eff845f72c186da47f5cef72737922eebac377f60516906b6efb7e13b1be`  
		Last Modified: Tue, 12 Dec 2017 02:21:47 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcfe2df842252ccd3552e75f016faede00f22c0256d32ee5fbd6de4b769298c2`  
		Last Modified: Tue, 12 Dec 2017 02:22:04 GMT  
		Size: 36.8 MB (36754329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b55423b1569b0057a811d6cb2c1eda71f7480541ee44b71da863f22d0fd1f61`  
		Last Modified: Tue, 12 Dec 2017 02:21:47 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.6`

```console
$ docker pull kibana@sha256:6dd3e6f086dae70c65a86111163f30a972af633755d171da07465809f7e7ccb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:4.6` - linux; amd64

```console
$ docker pull kibana@sha256:7ea34ed75fdf58dfb12595a5cf31ae6b9620221e339b4819a958dcaa5f1b9af4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110393012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c8fc3900a62c6c39ef6dc4346dbae8d2689cf440baa73935ac6c05f6f9e711c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:17:07 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 12 Dec 2017 02:18:34 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:18:34 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 02:18:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 12 Dec 2017 02:18:44 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 12 Dec 2017 02:18:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 12 Dec 2017 02:18:49 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 02:18:49 GMT
ENV KIBANA_MAJOR=4.6
# Tue, 12 Dec 2017 02:18:49 GMT
ENV KIBANA_VERSION=4.6.6
# Tue, 12 Dec 2017 02:18:50 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Tue, 12 Dec 2017 02:19:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 12 Dec 2017 02:19:07 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 02:19:07 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Tue, 12 Dec 2017 02:19:07 GMT
EXPOSE 5601/tcp
# Tue, 12 Dec 2017 02:19:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Dec 2017 02:19:08 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8acb2289dd361eed17251ca684daf0ab1e69d64e943084b3769a4cc3fbee69`  
		Last Modified: Tue, 12 Dec 2017 02:19:29 GMT  
		Size: 4.4 KB (4404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f1adf92cef9599c501cf6fa9dcbf2178945088df583b5518a31adb94ebc915`  
		Last Modified: Tue, 12 Dec 2017 02:21:54 GMT  
		Size: 20.5 MB (20524610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d800f041b26f6a0a49b4501a906264f94b8a72f6d05acef65060af02f4f439d1`  
		Last Modified: Tue, 12 Dec 2017 02:21:49 GMT  
		Size: 500.7 KB (500666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2715316cc3a5339fc75030aa65032ea50b13c1c5f103d14ec40c92d3eb31e9`  
		Last Modified: Tue, 12 Dec 2017 02:21:47 GMT  
		Size: 7.3 KB (7292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221abdde1f4dfb6af2f9383dc83f1b060f3f6ca6505f8ad28654d64100b155eb`  
		Last Modified: Tue, 12 Dec 2017 02:21:47 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3b2eff845f72c186da47f5cef72737922eebac377f60516906b6efb7e13b1be`  
		Last Modified: Tue, 12 Dec 2017 02:21:47 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcfe2df842252ccd3552e75f016faede00f22c0256d32ee5fbd6de4b769298c2`  
		Last Modified: Tue, 12 Dec 2017 02:22:04 GMT  
		Size: 36.8 MB (36754329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b55423b1569b0057a811d6cb2c1eda71f7480541ee44b71da863f22d0fd1f61`  
		Last Modified: Tue, 12 Dec 2017 02:21:47 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.6.6`

```console
$ docker pull kibana@sha256:6dd3e6f086dae70c65a86111163f30a972af633755d171da07465809f7e7ccb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:4.6.6` - linux; amd64

```console
$ docker pull kibana@sha256:7ea34ed75fdf58dfb12595a5cf31ae6b9620221e339b4819a958dcaa5f1b9af4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110393012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c8fc3900a62c6c39ef6dc4346dbae8d2689cf440baa73935ac6c05f6f9e711c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:17:07 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 12 Dec 2017 02:18:34 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:18:34 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 02:18:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 12 Dec 2017 02:18:44 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 12 Dec 2017 02:18:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 12 Dec 2017 02:18:49 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 02:18:49 GMT
ENV KIBANA_MAJOR=4.6
# Tue, 12 Dec 2017 02:18:49 GMT
ENV KIBANA_VERSION=4.6.6
# Tue, 12 Dec 2017 02:18:50 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Tue, 12 Dec 2017 02:19:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 12 Dec 2017 02:19:07 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 02:19:07 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Tue, 12 Dec 2017 02:19:07 GMT
EXPOSE 5601/tcp
# Tue, 12 Dec 2017 02:19:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Dec 2017 02:19:08 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8acb2289dd361eed17251ca684daf0ab1e69d64e943084b3769a4cc3fbee69`  
		Last Modified: Tue, 12 Dec 2017 02:19:29 GMT  
		Size: 4.4 KB (4404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f1adf92cef9599c501cf6fa9dcbf2178945088df583b5518a31adb94ebc915`  
		Last Modified: Tue, 12 Dec 2017 02:21:54 GMT  
		Size: 20.5 MB (20524610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d800f041b26f6a0a49b4501a906264f94b8a72f6d05acef65060af02f4f439d1`  
		Last Modified: Tue, 12 Dec 2017 02:21:49 GMT  
		Size: 500.7 KB (500666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2715316cc3a5339fc75030aa65032ea50b13c1c5f103d14ec40c92d3eb31e9`  
		Last Modified: Tue, 12 Dec 2017 02:21:47 GMT  
		Size: 7.3 KB (7292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221abdde1f4dfb6af2f9383dc83f1b060f3f6ca6505f8ad28654d64100b155eb`  
		Last Modified: Tue, 12 Dec 2017 02:21:47 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3b2eff845f72c186da47f5cef72737922eebac377f60516906b6efb7e13b1be`  
		Last Modified: Tue, 12 Dec 2017 02:21:47 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcfe2df842252ccd3552e75f016faede00f22c0256d32ee5fbd6de4b769298c2`  
		Last Modified: Tue, 12 Dec 2017 02:22:04 GMT  
		Size: 36.8 MB (36754329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b55423b1569b0057a811d6cb2c1eda71f7480541ee44b71da863f22d0fd1f61`  
		Last Modified: Tue, 12 Dec 2017 02:21:47 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5`

```console
$ docker pull kibana@sha256:c1fc1b298c71418d0485bb00ff1c829a6bbae2b401dfb0ba6e6799624a65fc2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5` - linux; amd64

```console
$ docker pull kibana@sha256:82876f24d69ebc3710adab63225362aae71a6740daeb82871eda0e2bd70200ee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.5 MB (128545793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ef680b9e227a0c0e3818adb5393284f825a907c46b8c06a7b9f6dab093e3491`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:17:07 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 12 Dec 2017 02:17:29 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:17:29 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 02:17:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 12 Dec 2017 02:17:34 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 12 Dec 2017 02:17:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 12 Dec 2017 02:17:39 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 02:17:40 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Tue, 06 Feb 2018 00:12:35 GMT
ENV KIBANA_VERSION=5.6.7
# Tue, 06 Feb 2018 00:13:01 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Tue, 06 Feb 2018 00:13:02 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Feb 2018 00:13:02 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Tue, 06 Feb 2018 00:13:02 GMT
EXPOSE 5601/tcp
# Tue, 06 Feb 2018 00:13:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 06 Feb 2018 00:13:03 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8acb2289dd361eed17251ca684daf0ab1e69d64e943084b3769a4cc3fbee69`  
		Last Modified: Tue, 12 Dec 2017 02:19:29 GMT  
		Size: 4.4 KB (4404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d495c79e5bf4b4520dd83263bc19e532cef5dac7a3b42017422152f618a91027`  
		Last Modified: Tue, 12 Dec 2017 02:19:34 GMT  
		Size: 22.4 MB (22405928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c8b36796225fe238e52a9370d7bb38890b788ff8a47526265afcbf27ee6776`  
		Last Modified: Tue, 12 Dec 2017 02:19:28 GMT  
		Size: 500.7 KB (500663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a4eff393768ebbebb5da20b195e1fd324c5e874dd755311ab525e2a59c9af5b`  
		Last Modified: Tue, 12 Dec 2017 02:19:26 GMT  
		Size: 7.3 KB (7289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fa4e981b17da66cbc702a13821b838737fc18691ec9363d06031320fb29dfc2`  
		Last Modified: Tue, 12 Dec 2017 02:19:26 GMT  
		Size: 1.4 KB (1450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23852241c5bc05b36b6bd619199f95f18c1857d157c24de2cd1fe8e9473990a`  
		Last Modified: Tue, 12 Dec 2017 02:19:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b299cfe0c41fb2303cfd7b89054afb5da24f2f731214f93bfd8028df956c9ff4`  
		Last Modified: Tue, 06 Feb 2018 00:27:02 GMT  
		Size: 53.0 MB (53025801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6214f0c37767d3dcd2fc0a5c7732ce89a536ace1636ac3234de95e3fc4fa9dcb`  
		Last Modified: Tue, 06 Feb 2018 00:26:29 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.6`

```console
$ docker pull kibana@sha256:c1fc1b298c71418d0485bb00ff1c829a6bbae2b401dfb0ba6e6799624a65fc2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5.6` - linux; amd64

```console
$ docker pull kibana@sha256:82876f24d69ebc3710adab63225362aae71a6740daeb82871eda0e2bd70200ee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.5 MB (128545793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ef680b9e227a0c0e3818adb5393284f825a907c46b8c06a7b9f6dab093e3491`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:17:07 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 12 Dec 2017 02:17:29 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:17:29 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 02:17:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 12 Dec 2017 02:17:34 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 12 Dec 2017 02:17:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 12 Dec 2017 02:17:39 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 02:17:40 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Tue, 06 Feb 2018 00:12:35 GMT
ENV KIBANA_VERSION=5.6.7
# Tue, 06 Feb 2018 00:13:01 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Tue, 06 Feb 2018 00:13:02 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Feb 2018 00:13:02 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Tue, 06 Feb 2018 00:13:02 GMT
EXPOSE 5601/tcp
# Tue, 06 Feb 2018 00:13:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 06 Feb 2018 00:13:03 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8acb2289dd361eed17251ca684daf0ab1e69d64e943084b3769a4cc3fbee69`  
		Last Modified: Tue, 12 Dec 2017 02:19:29 GMT  
		Size: 4.4 KB (4404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d495c79e5bf4b4520dd83263bc19e532cef5dac7a3b42017422152f618a91027`  
		Last Modified: Tue, 12 Dec 2017 02:19:34 GMT  
		Size: 22.4 MB (22405928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c8b36796225fe238e52a9370d7bb38890b788ff8a47526265afcbf27ee6776`  
		Last Modified: Tue, 12 Dec 2017 02:19:28 GMT  
		Size: 500.7 KB (500663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a4eff393768ebbebb5da20b195e1fd324c5e874dd755311ab525e2a59c9af5b`  
		Last Modified: Tue, 12 Dec 2017 02:19:26 GMT  
		Size: 7.3 KB (7289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fa4e981b17da66cbc702a13821b838737fc18691ec9363d06031320fb29dfc2`  
		Last Modified: Tue, 12 Dec 2017 02:19:26 GMT  
		Size: 1.4 KB (1450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23852241c5bc05b36b6bd619199f95f18c1857d157c24de2cd1fe8e9473990a`  
		Last Modified: Tue, 12 Dec 2017 02:19:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b299cfe0c41fb2303cfd7b89054afb5da24f2f731214f93bfd8028df956c9ff4`  
		Last Modified: Tue, 06 Feb 2018 00:27:02 GMT  
		Size: 53.0 MB (53025801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6214f0c37767d3dcd2fc0a5c7732ce89a536ace1636ac3234de95e3fc4fa9dcb`  
		Last Modified: Tue, 06 Feb 2018 00:26:29 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.6.7`

```console
$ docker pull kibana@sha256:c1fc1b298c71418d0485bb00ff1c829a6bbae2b401dfb0ba6e6799624a65fc2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5.6.7` - linux; amd64

```console
$ docker pull kibana@sha256:82876f24d69ebc3710adab63225362aae71a6740daeb82871eda0e2bd70200ee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.5 MB (128545793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ef680b9e227a0c0e3818adb5393284f825a907c46b8c06a7b9f6dab093e3491`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:17:07 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 12 Dec 2017 02:17:29 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:17:29 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 02:17:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 12 Dec 2017 02:17:34 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 12 Dec 2017 02:17:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 12 Dec 2017 02:17:39 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 02:17:40 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Tue, 06 Feb 2018 00:12:35 GMT
ENV KIBANA_VERSION=5.6.7
# Tue, 06 Feb 2018 00:13:01 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Tue, 06 Feb 2018 00:13:02 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Feb 2018 00:13:02 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Tue, 06 Feb 2018 00:13:02 GMT
EXPOSE 5601/tcp
# Tue, 06 Feb 2018 00:13:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 06 Feb 2018 00:13:03 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8acb2289dd361eed17251ca684daf0ab1e69d64e943084b3769a4cc3fbee69`  
		Last Modified: Tue, 12 Dec 2017 02:19:29 GMT  
		Size: 4.4 KB (4404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d495c79e5bf4b4520dd83263bc19e532cef5dac7a3b42017422152f618a91027`  
		Last Modified: Tue, 12 Dec 2017 02:19:34 GMT  
		Size: 22.4 MB (22405928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c8b36796225fe238e52a9370d7bb38890b788ff8a47526265afcbf27ee6776`  
		Last Modified: Tue, 12 Dec 2017 02:19:28 GMT  
		Size: 500.7 KB (500663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a4eff393768ebbebb5da20b195e1fd324c5e874dd755311ab525e2a59c9af5b`  
		Last Modified: Tue, 12 Dec 2017 02:19:26 GMT  
		Size: 7.3 KB (7289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fa4e981b17da66cbc702a13821b838737fc18691ec9363d06031320fb29dfc2`  
		Last Modified: Tue, 12 Dec 2017 02:19:26 GMT  
		Size: 1.4 KB (1450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23852241c5bc05b36b6bd619199f95f18c1857d157c24de2cd1fe8e9473990a`  
		Last Modified: Tue, 12 Dec 2017 02:19:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b299cfe0c41fb2303cfd7b89054afb5da24f2f731214f93bfd8028df956c9ff4`  
		Last Modified: Tue, 06 Feb 2018 00:27:02 GMT  
		Size: 53.0 MB (53025801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6214f0c37767d3dcd2fc0a5c7732ce89a536ace1636ac3234de95e3fc4fa9dcb`  
		Last Modified: Tue, 06 Feb 2018 00:26:29 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:latest`

```console
$ docker pull kibana@sha256:c1fc1b298c71418d0485bb00ff1c829a6bbae2b401dfb0ba6e6799624a65fc2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:latest` - linux; amd64

```console
$ docker pull kibana@sha256:82876f24d69ebc3710adab63225362aae71a6740daeb82871eda0e2bd70200ee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.5 MB (128545793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ef680b9e227a0c0e3818adb5393284f825a907c46b8c06a7b9f6dab093e3491`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:17:07 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 12 Dec 2017 02:17:29 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:17:29 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 02:17:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 12 Dec 2017 02:17:34 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 12 Dec 2017 02:17:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 12 Dec 2017 02:17:39 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 02:17:40 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Tue, 06 Feb 2018 00:12:35 GMT
ENV KIBANA_VERSION=5.6.7
# Tue, 06 Feb 2018 00:13:01 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Tue, 06 Feb 2018 00:13:02 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Feb 2018 00:13:02 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Tue, 06 Feb 2018 00:13:02 GMT
EXPOSE 5601/tcp
# Tue, 06 Feb 2018 00:13:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 06 Feb 2018 00:13:03 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8acb2289dd361eed17251ca684daf0ab1e69d64e943084b3769a4cc3fbee69`  
		Last Modified: Tue, 12 Dec 2017 02:19:29 GMT  
		Size: 4.4 KB (4404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d495c79e5bf4b4520dd83263bc19e532cef5dac7a3b42017422152f618a91027`  
		Last Modified: Tue, 12 Dec 2017 02:19:34 GMT  
		Size: 22.4 MB (22405928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c8b36796225fe238e52a9370d7bb38890b788ff8a47526265afcbf27ee6776`  
		Last Modified: Tue, 12 Dec 2017 02:19:28 GMT  
		Size: 500.7 KB (500663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a4eff393768ebbebb5da20b195e1fd324c5e874dd755311ab525e2a59c9af5b`  
		Last Modified: Tue, 12 Dec 2017 02:19:26 GMT  
		Size: 7.3 KB (7289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fa4e981b17da66cbc702a13821b838737fc18691ec9363d06031320fb29dfc2`  
		Last Modified: Tue, 12 Dec 2017 02:19:26 GMT  
		Size: 1.4 KB (1450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23852241c5bc05b36b6bd619199f95f18c1857d157c24de2cd1fe8e9473990a`  
		Last Modified: Tue, 12 Dec 2017 02:19:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b299cfe0c41fb2303cfd7b89054afb5da24f2f731214f93bfd8028df956c9ff4`  
		Last Modified: Tue, 06 Feb 2018 00:27:02 GMT  
		Size: 53.0 MB (53025801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6214f0c37767d3dcd2fc0a5c7732ce89a536ace1636ac3234de95e3fc4fa9dcb`  
		Last Modified: Tue, 06 Feb 2018 00:26:29 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
