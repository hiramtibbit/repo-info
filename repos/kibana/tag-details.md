<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:5`](#kibana5)
-	[`kibana:5.6`](#kibana56)
-	[`kibana:5.6.14`](#kibana5614)
-	[`kibana:6.5.4`](#kibana654)

## `kibana:5`

```console
$ docker pull kibana@sha256:6f9231ff1445eb09b69a59ef587e156fb3fb8ec41c1ce4d2eb86b8db61c5345f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5` - linux; amd64

```console
$ docker pull kibana@sha256:e661ba02705b2cd1194e2988bd24a89f259d9d73131edd422b4e711ee9d3519a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.9 MB (129877167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e429ed92aebb3a87725c09b3297abf443309e8bc6098d933163cbb1e438ae80`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Thu, 15 Nov 2018 22:33:25 GMT
ADD file:0b25d0012989e20b95dd0702d9491fdc4a4d40d0994690df7ec502cf163590fe in / 
# Thu, 15 Nov 2018 22:33:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 00:13:09 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Fri, 16 Nov 2018 00:13:52 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 00:13:52 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 00:13:54 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 16 Nov 2018 00:13:54 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 16 Nov 2018 00:13:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 16 Nov 2018 00:14:03 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 00:14:04 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Wed, 12 Dec 2018 19:29:54 GMT
ENV KIBANA_VERSION=5.6.14
# Wed, 12 Dec 2018 19:30:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Wed, 12 Dec 2018 19:30:37 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Dec 2018 19:30:37 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Wed, 12 Dec 2018 19:30:38 GMT
EXPOSE 5601/tcp
# Wed, 12 Dec 2018 19:30:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Dec 2018 19:30:39 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:4b105072aa89afc93b7238396c7ca2951308666854da2fb399c4ca362c93b445`  
		Last Modified: Thu, 15 Nov 2018 22:53:33 GMT  
		Size: 54.4 MB (54357843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93c5bad4372797d58488732d3cc2aa019b2c1add249ce681d7fa963cf413454`  
		Last Modified: Fri, 16 Nov 2018 00:17:09 GMT  
		Size: 4.4 KB (4409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b109a97a4d9e63e5d704e2341001b4e480e8e76722565705a9c342678fa7573e`  
		Last Modified: Fri, 16 Nov 2018 00:17:14 GMT  
		Size: 20.7 MB (20667293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2018d64a2122cd008d9632844f3ce9043e5c72efd62d9706a01f84cc15e128e2`  
		Last Modified: Fri, 16 Nov 2018 00:17:10 GMT  
		Size: 500.7 KB (500659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f9295ee771aa5451aa3711cdfe2d60e072905e3c620239f79ec5830ed79136`  
		Last Modified: Fri, 16 Nov 2018 00:17:08 GMT  
		Size: 7.3 KB (7295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c8ed2d86df16f77fb748a4c821f9dde84cd8e82e59ddad8e6f4c47cabeb4f92`  
		Last Modified: Fri, 16 Nov 2018 00:17:08 GMT  
		Size: 1.4 KB (1450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e06752bed38a83a69308fa67b904ab8b71a3ce7dc85fc3e9c5c5472c43a1a455`  
		Last Modified: Fri, 16 Nov 2018 00:17:08 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a1a4a9b6ab452baaa4c4d4a98cb428d17a27528fb3283a084e38873258ded9e`  
		Last Modified: Wed, 12 Dec 2018 19:33:21 GMT  
		Size: 54.3 MB (54337654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8285048608b4b6502f409f69dfc88bb7bf25744d54703e6de9507c63d2914b`  
		Last Modified: Wed, 12 Dec 2018 19:33:04 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.6`

```console
$ docker pull kibana@sha256:6f9231ff1445eb09b69a59ef587e156fb3fb8ec41c1ce4d2eb86b8db61c5345f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5.6` - linux; amd64

```console
$ docker pull kibana@sha256:e661ba02705b2cd1194e2988bd24a89f259d9d73131edd422b4e711ee9d3519a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.9 MB (129877167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e429ed92aebb3a87725c09b3297abf443309e8bc6098d933163cbb1e438ae80`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Thu, 15 Nov 2018 22:33:25 GMT
ADD file:0b25d0012989e20b95dd0702d9491fdc4a4d40d0994690df7ec502cf163590fe in / 
# Thu, 15 Nov 2018 22:33:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 00:13:09 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Fri, 16 Nov 2018 00:13:52 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 00:13:52 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 00:13:54 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 16 Nov 2018 00:13:54 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 16 Nov 2018 00:13:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 16 Nov 2018 00:14:03 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 00:14:04 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Wed, 12 Dec 2018 19:29:54 GMT
ENV KIBANA_VERSION=5.6.14
# Wed, 12 Dec 2018 19:30:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Wed, 12 Dec 2018 19:30:37 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Dec 2018 19:30:37 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Wed, 12 Dec 2018 19:30:38 GMT
EXPOSE 5601/tcp
# Wed, 12 Dec 2018 19:30:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Dec 2018 19:30:39 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:4b105072aa89afc93b7238396c7ca2951308666854da2fb399c4ca362c93b445`  
		Last Modified: Thu, 15 Nov 2018 22:53:33 GMT  
		Size: 54.4 MB (54357843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93c5bad4372797d58488732d3cc2aa019b2c1add249ce681d7fa963cf413454`  
		Last Modified: Fri, 16 Nov 2018 00:17:09 GMT  
		Size: 4.4 KB (4409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b109a97a4d9e63e5d704e2341001b4e480e8e76722565705a9c342678fa7573e`  
		Last Modified: Fri, 16 Nov 2018 00:17:14 GMT  
		Size: 20.7 MB (20667293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2018d64a2122cd008d9632844f3ce9043e5c72efd62d9706a01f84cc15e128e2`  
		Last Modified: Fri, 16 Nov 2018 00:17:10 GMT  
		Size: 500.7 KB (500659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f9295ee771aa5451aa3711cdfe2d60e072905e3c620239f79ec5830ed79136`  
		Last Modified: Fri, 16 Nov 2018 00:17:08 GMT  
		Size: 7.3 KB (7295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c8ed2d86df16f77fb748a4c821f9dde84cd8e82e59ddad8e6f4c47cabeb4f92`  
		Last Modified: Fri, 16 Nov 2018 00:17:08 GMT  
		Size: 1.4 KB (1450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e06752bed38a83a69308fa67b904ab8b71a3ce7dc85fc3e9c5c5472c43a1a455`  
		Last Modified: Fri, 16 Nov 2018 00:17:08 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a1a4a9b6ab452baaa4c4d4a98cb428d17a27528fb3283a084e38873258ded9e`  
		Last Modified: Wed, 12 Dec 2018 19:33:21 GMT  
		Size: 54.3 MB (54337654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8285048608b4b6502f409f69dfc88bb7bf25744d54703e6de9507c63d2914b`  
		Last Modified: Wed, 12 Dec 2018 19:33:04 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.6.14`

```console
$ docker pull kibana@sha256:6f9231ff1445eb09b69a59ef587e156fb3fb8ec41c1ce4d2eb86b8db61c5345f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5.6.14` - linux; amd64

```console
$ docker pull kibana@sha256:e661ba02705b2cd1194e2988bd24a89f259d9d73131edd422b4e711ee9d3519a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.9 MB (129877167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e429ed92aebb3a87725c09b3297abf443309e8bc6098d933163cbb1e438ae80`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Thu, 15 Nov 2018 22:33:25 GMT
ADD file:0b25d0012989e20b95dd0702d9491fdc4a4d40d0994690df7ec502cf163590fe in / 
# Thu, 15 Nov 2018 22:33:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 00:13:09 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Fri, 16 Nov 2018 00:13:52 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 00:13:52 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Nov 2018 00:13:54 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 16 Nov 2018 00:13:54 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 16 Nov 2018 00:13:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 16 Nov 2018 00:14:03 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 16 Nov 2018 00:14:04 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Wed, 12 Dec 2018 19:29:54 GMT
ENV KIBANA_VERSION=5.6.14
# Wed, 12 Dec 2018 19:30:35 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Wed, 12 Dec 2018 19:30:37 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Dec 2018 19:30:37 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Wed, 12 Dec 2018 19:30:38 GMT
EXPOSE 5601/tcp
# Wed, 12 Dec 2018 19:30:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Dec 2018 19:30:39 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:4b105072aa89afc93b7238396c7ca2951308666854da2fb399c4ca362c93b445`  
		Last Modified: Thu, 15 Nov 2018 22:53:33 GMT  
		Size: 54.4 MB (54357843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93c5bad4372797d58488732d3cc2aa019b2c1add249ce681d7fa963cf413454`  
		Last Modified: Fri, 16 Nov 2018 00:17:09 GMT  
		Size: 4.4 KB (4409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b109a97a4d9e63e5d704e2341001b4e480e8e76722565705a9c342678fa7573e`  
		Last Modified: Fri, 16 Nov 2018 00:17:14 GMT  
		Size: 20.7 MB (20667293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2018d64a2122cd008d9632844f3ce9043e5c72efd62d9706a01f84cc15e128e2`  
		Last Modified: Fri, 16 Nov 2018 00:17:10 GMT  
		Size: 500.7 KB (500659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f9295ee771aa5451aa3711cdfe2d60e072905e3c620239f79ec5830ed79136`  
		Last Modified: Fri, 16 Nov 2018 00:17:08 GMT  
		Size: 7.3 KB (7295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c8ed2d86df16f77fb748a4c821f9dde84cd8e82e59ddad8e6f4c47cabeb4f92`  
		Last Modified: Fri, 16 Nov 2018 00:17:08 GMT  
		Size: 1.4 KB (1450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e06752bed38a83a69308fa67b904ab8b71a3ce7dc85fc3e9c5c5472c43a1a455`  
		Last Modified: Fri, 16 Nov 2018 00:17:08 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a1a4a9b6ab452baaa4c4d4a98cb428d17a27528fb3283a084e38873258ded9e`  
		Last Modified: Wed, 12 Dec 2018 19:33:21 GMT  
		Size: 54.3 MB (54337654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8285048608b4b6502f409f69dfc88bb7bf25744d54703e6de9507c63d2914b`  
		Last Modified: Wed, 12 Dec 2018 19:33:04 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:6.5.4`

```console
$ docker pull kibana@sha256:106ff4a8c691936d4de7e2aba289939624ec75b26746d5660201f47c0afe2d73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:6.5.4` - linux; amd64

```console
$ docker pull kibana@sha256:632ecebdf89a36052e3eba281fdfa621a2afe5cd6b8061ad380ba3b3f0b25c01
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.6 MB (290637845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c8a8603d365bd820a86fc0341f939e665584c33f9571f5b0e04f12eea6a11e8`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Mon, 17 Dec 2018 22:00:22 GMT
EXPOSE 5601
# Mon, 17 Dec 2018 22:00:27 GMT
RUN yum update -y && yum install -y fontconfig freetype && yum clean all
# Mon, 17 Dec 2018 22:00:27 GMT
WORKDIR /usr/share/kibana
# Mon, 17 Dec 2018 22:01:03 GMT
RUN curl -Ls http://localhost:8000/kibana/target/kibana-6.5.4-linux-x86_64.tar.gz | tar --strip-components=1 -zxf - &&     ln -s /usr/share/kibana /opt/kibana &&     chown -R 1000:0 . &&     chmod -R g=u /usr/share/kibana &&     find /usr/share/kibana -type d -exec chmod g+s {} \;
# Mon, 17 Dec 2018 22:01:05 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 17 Dec 2018 22:01:05 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Dec 2018 22:01:05 GMT
COPY --chown=1000:0file:2c9b351c7512ff200b350310fe751b2d52ed3bb748386081bbc89592fdf7eff2 in /usr/share/kibana/config/kibana.yml 
# Mon, 17 Dec 2018 22:01:05 GMT
COPY --chown=1000:0file:c85732e778311deac5a266a8d4144b3cd633263715920f796973739ae3f07ab0 in /usr/local/bin/ 
# Mon, 17 Dec 2018 22:01:05 GMT
COPY --chown=1000:0multi:ec65c62d6619069c5768a37a923aff3bc5da64ee746fe458069d0826e9e080cf in /usr/share/kibana/config/ 
# Mon, 17 Dec 2018 22:01:06 GMT
RUN find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \;
# Mon, 17 Dec 2018 22:01:06 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000       --home-dir /usr/share/kibana --no-create-home       kibana
# Mon, 17 Dec 2018 22:01:07 GMT
USER 1000
# Mon, 17 Dec 2018 22:01:07 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.label-schema.name=kibana org.label-schema.version=6.5.4 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.vcs-url=https://github.com/elastic/kibana-docker license=Elastic License
# Mon, 17 Dec 2018 22:01:07 GMT
CMD ["/usr/local/bin/kibana-docker"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39999a66d2b5ccf24827cb1f62d053a4a0ecd0163c46a9db812eb5fc98299798`  
		Last Modified: Wed, 19 Dec 2018 16:53:21 GMT  
		Size: 9.6 MB (9615162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2aeb7c30c9caecf11b49da5e6fe74084c9759a57d4e2875c4b2568e849835e`  
		Last Modified: Wed, 19 Dec 2018 16:53:18 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00616cdd3c09c7062fdf17afb5a73fc8b085dc09e2c92b235f96e3e4f46a51dd`  
		Last Modified: Wed, 19 Dec 2018 16:54:03 GMT  
		Size: 205.8 MB (205847984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98987d4a5bab122d57e211ea9476d4d699e1a0aa8fb9e252c064e0bbd8c4696`  
		Last Modified: Wed, 19 Dec 2018 16:53:15 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfef65737c664a398da6a36f61d1760670ef79e446ba2b36b2bcb56f3c2a518`  
		Last Modified: Wed, 19 Dec 2018 16:53:15 GMT  
		Size: 2.0 KB (2002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8d538f84d1a52304ac99dd72ba8dce05610af234259277dd0f48368175b5dc8`  
		Last Modified: Wed, 19 Dec 2018 16:53:15 GMT  
		Size: 2.5 KB (2459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961861c10f7a171539564cd2d0bb2f7bf5e83e5070a16c311699b0ef860a932e`  
		Last Modified: Wed, 19 Dec 2018 16:53:15 GMT  
		Size: 2.6 KB (2625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccab4bdbc0279fdfcfdd614101ed29276d9f845a8992589d4a36c8da1848721`  
		Last Modified: Wed, 19 Dec 2018 16:53:15 GMT  
		Size: 1.6 KB (1604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
