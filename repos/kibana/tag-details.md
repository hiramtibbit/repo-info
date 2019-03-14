<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:5`](#kibana5)
-	[`kibana:5.6`](#kibana56)
-	[`kibana:5.6.15`](#kibana5615)
-	[`kibana:6.6.2`](#kibana662)

## `kibana:5`

```console
$ docker pull kibana@sha256:ab6ff5f6fa97f8aa059389cc60afeacb267b812df730e8e14076c17c1f01018f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5` - linux; amd64

```console
$ docker pull kibana@sha256:b9d6345d39fc6f2fea74cc936d7004d08f88d9064205e501ab3373e9d0adceef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.0 MB (129961544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac929d40a77485fde4b25c5cbf4281e08693dd08433e5976744b919c53a4257e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 04 Mar 2019 23:20:17 GMT
ADD file:e044496893d9e2cbf5a4b69ccfbb7d2997209962a78a52b6fc091c5b004cc33f in / 
# Mon, 04 Mar 2019 23:20:18 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:19:55 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 05 Mar 2019 03:22:10 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:22:10 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 03:22:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 05 Mar 2019 03:22:12 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 05 Mar 2019 03:22:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 05 Mar 2019 03:22:49 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 05 Mar 2019 03:22:50 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Tue, 05 Mar 2019 03:22:50 GMT
ENV KIBANA_VERSION=5.6.15
# Tue, 05 Mar 2019 03:24:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Tue, 05 Mar 2019 03:24:55 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 03:24:55 GMT
COPY file:f6ce7cbdcbcd38cf6fa747d74a0c868682ca02deaf474def026b8dec2a9e66e5 in / 
# Tue, 05 Mar 2019 03:24:55 GMT
EXPOSE 5601
# Tue, 05 Mar 2019 03:24:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Mar 2019 03:24:56 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:85199fa09ec1510ee053da666286c385d07b8fab9fa61ae73a5b8c454e1b3397`  
		Last Modified: Mon, 04 Mar 2019 23:24:27 GMT  
		Size: 54.4 MB (54381658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a5f07f1a641343fb3e1ac7a0afd8409bea49b0d1009c8b24d5f2e19b9d93b7`  
		Last Modified: Tue, 05 Mar 2019 03:25:16 GMT  
		Size: 4.4 KB (4403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453442e57e1d273a430197bb86647a98e0bba5d57bb40b754c7a7da164a5a22e`  
		Last Modified: Tue, 05 Mar 2019 03:25:19 GMT  
		Size: 20.7 MB (20669964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b13a6b83be4bf9b98ab896c41a53c3866bb5e36a0a39baad3147b83c31c4641`  
		Last Modified: Tue, 05 Mar 2019 03:25:15 GMT  
		Size: 500.7 KB (500666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6085d72184e7718cc7636fa69c733992dc468981f11d5d88f8591ba27f48f1`  
		Last Modified: Tue, 05 Mar 2019 03:25:15 GMT  
		Size: 7.3 KB (7294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5d6ef480121ef21a9976b68d6b138bae4d13e97c25414c0c1ad77af129ee1a6`  
		Last Modified: Tue, 05 Mar 2019 03:25:15 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b41d4bc9b16c701298eef588c687d4e03c578bc3d23082545f02f784832ed3d2`  
		Last Modified: Tue, 05 Mar 2019 03:25:15 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6919924bdf78c3bc4256d533a43424f5a7632c8b69110b5708d6cbd58f88f095`  
		Last Modified: Tue, 05 Mar 2019 03:25:32 GMT  
		Size: 54.4 MB (54395546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8d62a29b366bb5d7470890635c2011604ac1120de2daf965f26f8789856010`  
		Last Modified: Tue, 05 Mar 2019 03:25:15 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.6`

```console
$ docker pull kibana@sha256:ab6ff5f6fa97f8aa059389cc60afeacb267b812df730e8e14076c17c1f01018f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5.6` - linux; amd64

```console
$ docker pull kibana@sha256:b9d6345d39fc6f2fea74cc936d7004d08f88d9064205e501ab3373e9d0adceef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.0 MB (129961544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac929d40a77485fde4b25c5cbf4281e08693dd08433e5976744b919c53a4257e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 04 Mar 2019 23:20:17 GMT
ADD file:e044496893d9e2cbf5a4b69ccfbb7d2997209962a78a52b6fc091c5b004cc33f in / 
# Mon, 04 Mar 2019 23:20:18 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:19:55 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 05 Mar 2019 03:22:10 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:22:10 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 03:22:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 05 Mar 2019 03:22:12 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 05 Mar 2019 03:22:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 05 Mar 2019 03:22:49 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 05 Mar 2019 03:22:50 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Tue, 05 Mar 2019 03:22:50 GMT
ENV KIBANA_VERSION=5.6.15
# Tue, 05 Mar 2019 03:24:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Tue, 05 Mar 2019 03:24:55 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 03:24:55 GMT
COPY file:f6ce7cbdcbcd38cf6fa747d74a0c868682ca02deaf474def026b8dec2a9e66e5 in / 
# Tue, 05 Mar 2019 03:24:55 GMT
EXPOSE 5601
# Tue, 05 Mar 2019 03:24:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Mar 2019 03:24:56 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:85199fa09ec1510ee053da666286c385d07b8fab9fa61ae73a5b8c454e1b3397`  
		Last Modified: Mon, 04 Mar 2019 23:24:27 GMT  
		Size: 54.4 MB (54381658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a5f07f1a641343fb3e1ac7a0afd8409bea49b0d1009c8b24d5f2e19b9d93b7`  
		Last Modified: Tue, 05 Mar 2019 03:25:16 GMT  
		Size: 4.4 KB (4403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453442e57e1d273a430197bb86647a98e0bba5d57bb40b754c7a7da164a5a22e`  
		Last Modified: Tue, 05 Mar 2019 03:25:19 GMT  
		Size: 20.7 MB (20669964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b13a6b83be4bf9b98ab896c41a53c3866bb5e36a0a39baad3147b83c31c4641`  
		Last Modified: Tue, 05 Mar 2019 03:25:15 GMT  
		Size: 500.7 KB (500666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6085d72184e7718cc7636fa69c733992dc468981f11d5d88f8591ba27f48f1`  
		Last Modified: Tue, 05 Mar 2019 03:25:15 GMT  
		Size: 7.3 KB (7294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5d6ef480121ef21a9976b68d6b138bae4d13e97c25414c0c1ad77af129ee1a6`  
		Last Modified: Tue, 05 Mar 2019 03:25:15 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b41d4bc9b16c701298eef588c687d4e03c578bc3d23082545f02f784832ed3d2`  
		Last Modified: Tue, 05 Mar 2019 03:25:15 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6919924bdf78c3bc4256d533a43424f5a7632c8b69110b5708d6cbd58f88f095`  
		Last Modified: Tue, 05 Mar 2019 03:25:32 GMT  
		Size: 54.4 MB (54395546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8d62a29b366bb5d7470890635c2011604ac1120de2daf965f26f8789856010`  
		Last Modified: Tue, 05 Mar 2019 03:25:15 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.6.15`

```console
$ docker pull kibana@sha256:ab6ff5f6fa97f8aa059389cc60afeacb267b812df730e8e14076c17c1f01018f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5.6.15` - linux; amd64

```console
$ docker pull kibana@sha256:b9d6345d39fc6f2fea74cc936d7004d08f88d9064205e501ab3373e9d0adceef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.0 MB (129961544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac929d40a77485fde4b25c5cbf4281e08693dd08433e5976744b919c53a4257e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 04 Mar 2019 23:20:17 GMT
ADD file:e044496893d9e2cbf5a4b69ccfbb7d2997209962a78a52b6fc091c5b004cc33f in / 
# Mon, 04 Mar 2019 23:20:18 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:19:55 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 05 Mar 2019 03:22:10 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:22:10 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Mar 2019 03:22:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 05 Mar 2019 03:22:12 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 05 Mar 2019 03:22:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 05 Mar 2019 03:22:49 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 05 Mar 2019 03:22:50 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Tue, 05 Mar 2019 03:22:50 GMT
ENV KIBANA_VERSION=5.6.15
# Tue, 05 Mar 2019 03:24:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Tue, 05 Mar 2019 03:24:55 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 03:24:55 GMT
COPY file:f6ce7cbdcbcd38cf6fa747d74a0c868682ca02deaf474def026b8dec2a9e66e5 in / 
# Tue, 05 Mar 2019 03:24:55 GMT
EXPOSE 5601
# Tue, 05 Mar 2019 03:24:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Mar 2019 03:24:56 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:85199fa09ec1510ee053da666286c385d07b8fab9fa61ae73a5b8c454e1b3397`  
		Last Modified: Mon, 04 Mar 2019 23:24:27 GMT  
		Size: 54.4 MB (54381658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a5f07f1a641343fb3e1ac7a0afd8409bea49b0d1009c8b24d5f2e19b9d93b7`  
		Last Modified: Tue, 05 Mar 2019 03:25:16 GMT  
		Size: 4.4 KB (4403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453442e57e1d273a430197bb86647a98e0bba5d57bb40b754c7a7da164a5a22e`  
		Last Modified: Tue, 05 Mar 2019 03:25:19 GMT  
		Size: 20.7 MB (20669964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b13a6b83be4bf9b98ab896c41a53c3866bb5e36a0a39baad3147b83c31c4641`  
		Last Modified: Tue, 05 Mar 2019 03:25:15 GMT  
		Size: 500.7 KB (500666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6085d72184e7718cc7636fa69c733992dc468981f11d5d88f8591ba27f48f1`  
		Last Modified: Tue, 05 Mar 2019 03:25:15 GMT  
		Size: 7.3 KB (7294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5d6ef480121ef21a9976b68d6b138bae4d13e97c25414c0c1ad77af129ee1a6`  
		Last Modified: Tue, 05 Mar 2019 03:25:15 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b41d4bc9b16c701298eef588c687d4e03c578bc3d23082545f02f784832ed3d2`  
		Last Modified: Tue, 05 Mar 2019 03:25:15 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6919924bdf78c3bc4256d533a43424f5a7632c8b69110b5708d6cbd58f88f095`  
		Last Modified: Tue, 05 Mar 2019 03:25:32 GMT  
		Size: 54.4 MB (54395546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8d62a29b366bb5d7470890635c2011604ac1120de2daf965f26f8789856010`  
		Last Modified: Tue, 05 Mar 2019 03:25:15 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:6.6.2`

```console
$ docker pull kibana@sha256:80e6f3b9ad20ce9d7a48c6c72828bc5b00369d77fa8208ed4bae1b9c8dc6e1ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:6.6.2` - linux; amd64

```console
$ docker pull kibana@sha256:df44cab5fb54f4c696907c06424eeb01b073b13c4d3a116ea47c6f5131f2f649
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.3 MB (293331691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f7d261cfc6718dcc99204ad17eb5666ecb2e208f07f456b9fd18ccb398807fa`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Wed, 06 Mar 2019 15:59:03 GMT
EXPOSE 5601
# Wed, 06 Mar 2019 15:59:19 GMT
RUN yum update -y && yum install -y fontconfig freetype && yum clean all
# Wed, 06 Mar 2019 15:59:19 GMT
WORKDIR /usr/share/kibana
# Wed, 06 Mar 2019 15:59:50 GMT
RUN curl -Ls http://localhost:8000/kibana/target/kibana-6.6.2-linux-x86_64.tar.gz | tar --strip-components=1 -zxf - &&     ln -s /usr/share/kibana /opt/kibana &&     chown -R 1000:0 . &&     chmod -R g=u /usr/share/kibana &&     find /usr/share/kibana -type d -exec chmod g+s {} \;
# Wed, 06 Mar 2019 15:59:51 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 06 Mar 2019 15:59:51 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Mar 2019 15:59:51 GMT
COPY --chown=1000:0file:6e6da5ac09554c02a182e44cd15baf337a9c1f22e0991a7905b1ca2f704ba11b in /usr/share/kibana/config/kibana.yml 
# Wed, 06 Mar 2019 15:59:51 GMT
COPY --chown=1000:0file:04dd00303d08e90e6a81ef274b85e816aceb0885c13647a8492be2b3ad2e2c43 in /usr/local/bin/ 
# Wed, 06 Mar 2019 15:59:51 GMT
COPY --chown=1000:0multi:ec65c62d6619069c5768a37a923aff3bc5da64ee746fe458069d0826e9e080cf in /usr/share/kibana/config/ 
# Wed, 06 Mar 2019 15:59:52 GMT
RUN find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \;
# Wed, 06 Mar 2019 15:59:53 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000       --home-dir /usr/share/kibana --no-create-home       kibana
# Wed, 06 Mar 2019 15:59:53 GMT
USER 1000
# Wed, 06 Mar 2019 15:59:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.label-schema.name=kibana org.label-schema.version=6.6.2 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.vcs-url=https://github.com/elastic/kibana-docker license=Elastic License
# Wed, 06 Mar 2019 15:59:53 GMT
CMD ["/usr/local/bin/kibana-docker"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f1e1d65b9951cda700914be0360354e6aee332582bf27130ec6da55bb0b356`  
		Last Modified: Tue, 12 Mar 2019 16:38:09 GMT  
		Size: 35.9 MB (35911061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8399b0dccaae968f9fa521e0a7ea1fc6592ef6fe2ce40fe75b504b741f85e811`  
		Last Modified: Tue, 12 Mar 2019 16:38:04 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d6ee7bbfdff187a4eb0e0da22cd6b5840388fd99a3b67ba0bde9961d290108`  
		Last Modified: Tue, 12 Mar 2019 16:38:30 GMT  
		Size: 182.2 MB (182245810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50469d7f6116c9b3d89b6477b4c36cf8d6a776e29294417655b98b59d7c0460`  
		Last Modified: Tue, 12 Mar 2019 16:38:01 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f19d3a3f3de4a74ed4ee15e5875f8c5216ae80dbf4276a31d7cec70ba1c525`  
		Last Modified: Tue, 12 Mar 2019 16:38:01 GMT  
		Size: 2.1 KB (2116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ec0f99056a363bfdaa7abf5711a9cd33bca6a85a2c6690c9cfb0140a7d3eeb`  
		Last Modified: Tue, 12 Mar 2019 16:38:01 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a2d4b1fd5412005f531f591928c755799a1cecfd7cf1bbb904973102efe6ee5`  
		Last Modified: Tue, 12 Mar 2019 16:38:01 GMT  
		Size: 2.6 KB (2626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fdf10b69d0b5d3d0dfc81bf04496d20c57cad48430fc1a87bbd8e8c6f4da09b`  
		Last Modified: Tue, 12 Mar 2019 16:38:01 GMT  
		Size: 1.6 KB (1606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
