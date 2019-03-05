<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:5`](#kibana5)
-	[`kibana:5.6`](#kibana56)
-	[`kibana:5.6.15`](#kibana5615)
-	[`kibana:6.6.1`](#kibana661)

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

## `kibana:6.6.1`

```console
$ docker pull kibana@sha256:a2b329d8903978069632da8aa85cc5199c5ab2cf289c48b7851bafd6ee58bbea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:6.6.1` - linux; amd64

```console
$ docker pull kibana@sha256:237e44f395b21fc285985a65ba373228d07ccfa1971ebac3a4dc851a573f149f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.3 MB (293332954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b94222148a00695eb94bcf9fe5cce02547ffd963531709de15187bf8ade13ea0`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Wed, 13 Feb 2019 17:51:32 GMT
EXPOSE 5601
# Wed, 13 Feb 2019 17:51:50 GMT
RUN yum update -y && yum install -y fontconfig freetype && yum clean all
# Wed, 13 Feb 2019 17:51:50 GMT
WORKDIR /usr/share/kibana
# Wed, 13 Feb 2019 17:52:21 GMT
RUN curl -Ls http://localhost:8000/kibana/target/kibana-6.6.1-linux-x86_64.tar.gz | tar --strip-components=1 -zxf - &&     ln -s /usr/share/kibana /opt/kibana &&     chown -R 1000:0 . &&     chmod -R g=u /usr/share/kibana &&     find /usr/share/kibana -type d -exec chmod g+s {} \;
# Wed, 13 Feb 2019 17:52:22 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 13 Feb 2019 17:52:22 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Feb 2019 17:52:22 GMT
COPY --chown=1000:0file:2c9b351c7512ff200b350310fe751b2d52ed3bb748386081bbc89592fdf7eff2 in /usr/share/kibana/config/kibana.yml 
# Wed, 13 Feb 2019 17:52:22 GMT
COPY --chown=1000:0file:04dd00303d08e90e6a81ef274b85e816aceb0885c13647a8492be2b3ad2e2c43 in /usr/local/bin/ 
# Wed, 13 Feb 2019 17:52:22 GMT
COPY --chown=1000:0multi:ec65c62d6619069c5768a37a923aff3bc5da64ee746fe458069d0826e9e080cf in /usr/share/kibana/config/ 
# Wed, 13 Feb 2019 17:52:23 GMT
RUN find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \;
# Wed, 13 Feb 2019 17:52:24 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000       --home-dir /usr/share/kibana --no-create-home       kibana
# Wed, 13 Feb 2019 17:52:24 GMT
USER 1000
# Wed, 13 Feb 2019 17:52:24 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.label-schema.name=kibana org.label-schema.version=6.6.1 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.vcs-url=https://github.com/elastic/kibana-docker license=Elastic License
# Wed, 13 Feb 2019 17:52:24 GMT
CMD ["/usr/local/bin/kibana-docker"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da0615e1cc5337b04bb0c56d4e27472f2af8061d72c01cff1c02b69df492c7b4`  
		Last Modified: Tue, 19 Feb 2019 16:53:53 GMT  
		Size: 35.9 MB (35908429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4522b01dba6a289ed8c18a99ca68ac0aba4721fd26e0a33b2c02cbcc32a24748`  
		Last Modified: Tue, 19 Feb 2019 16:53:47 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780e59a523d35fac8a83cddefd15beb7a1c3a254b1fe9f2350c5f8ce27a67954`  
		Last Modified: Tue, 19 Feb 2019 16:54:15 GMT  
		Size: 182.2 MB (182249709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:140f46bdd220eeb3269114013faa067853a341cafc5e0c4c939d4e35e62f1d06`  
		Last Modified: Tue, 19 Feb 2019 16:53:44 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c658b2adc946e6584e39d74c442b49f789a68f1802d1dd96804631a7db634be`  
		Last Modified: Tue, 19 Feb 2019 16:53:44 GMT  
		Size: 2.1 KB (2117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed1122146b3f8279cfb6cb263a1d18ca45d1765b7f8f5e338c02e34343b046f`  
		Last Modified: Tue, 19 Feb 2019 16:53:44 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e467a9fa9889438f7701e53b6eeb9fa8e28b348aabe98bd65d215391cf8aa09`  
		Last Modified: Tue, 19 Feb 2019 16:53:44 GMT  
		Size: 2.6 KB (2626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dee60abed464358d0ed0c41a5d1c59eb2175eac57df824541859d137ca6153d`  
		Last Modified: Tue, 19 Feb 2019 16:53:44 GMT  
		Size: 1.6 KB (1603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
