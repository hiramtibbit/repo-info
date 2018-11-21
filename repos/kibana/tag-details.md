<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:5`](#kibana5)
-	[`kibana:5.6`](#kibana56)
-	[`kibana:5.6.13`](#kibana5613)
-	[`kibana:6.5.1`](#kibana651)

## `kibana:5`

```console
$ docker pull kibana@sha256:c8dcf2f85f62809900a44f703dee6e1278a7c1757c8623fc2a1c75e66a4e27d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5` - linux; amd64

```console
$ docker pull kibana@sha256:784b282d9b9865bef7b13af9115a0d648360b24c3b770df1cfef436da054c89f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.8 MB (129816734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3f21b6b1b9ce3e3322b0862156662dc1e48bd1be9ea73bf9cb133ede94c263f`
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
# Fri, 16 Nov 2018 00:14:04 GMT
ENV KIBANA_VERSION=5.6.13
# Fri, 16 Nov 2018 00:14:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Fri, 16 Nov 2018 00:14:58 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 00:14:58 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Fri, 16 Nov 2018 00:14:59 GMT
EXPOSE 5601/tcp
# Fri, 16 Nov 2018 00:14:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Nov 2018 00:14:59 GMT
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
	-	`sha256:ce9567158344af1a9539d097d9006940a70bfdfef999750ae074edc345278ba0`  
		Last Modified: Fri, 16 Nov 2018 00:17:40 GMT  
		Size: 54.3 MB (54277221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6043e616cfc990706d53817482d5169b0cab0acf903db1445d59266c6816f1f`  
		Last Modified: Fri, 16 Nov 2018 00:17:08 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.6`

```console
$ docker pull kibana@sha256:c8dcf2f85f62809900a44f703dee6e1278a7c1757c8623fc2a1c75e66a4e27d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5.6` - linux; amd64

```console
$ docker pull kibana@sha256:784b282d9b9865bef7b13af9115a0d648360b24c3b770df1cfef436da054c89f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.8 MB (129816734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3f21b6b1b9ce3e3322b0862156662dc1e48bd1be9ea73bf9cb133ede94c263f`
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
# Fri, 16 Nov 2018 00:14:04 GMT
ENV KIBANA_VERSION=5.6.13
# Fri, 16 Nov 2018 00:14:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Fri, 16 Nov 2018 00:14:58 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 00:14:58 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Fri, 16 Nov 2018 00:14:59 GMT
EXPOSE 5601/tcp
# Fri, 16 Nov 2018 00:14:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Nov 2018 00:14:59 GMT
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
	-	`sha256:ce9567158344af1a9539d097d9006940a70bfdfef999750ae074edc345278ba0`  
		Last Modified: Fri, 16 Nov 2018 00:17:40 GMT  
		Size: 54.3 MB (54277221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6043e616cfc990706d53817482d5169b0cab0acf903db1445d59266c6816f1f`  
		Last Modified: Fri, 16 Nov 2018 00:17:08 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.6.13`

```console
$ docker pull kibana@sha256:c8dcf2f85f62809900a44f703dee6e1278a7c1757c8623fc2a1c75e66a4e27d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5.6.13` - linux; amd64

```console
$ docker pull kibana@sha256:784b282d9b9865bef7b13af9115a0d648360b24c3b770df1cfef436da054c89f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.8 MB (129816734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3f21b6b1b9ce3e3322b0862156662dc1e48bd1be9ea73bf9cb133ede94c263f`
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
# Fri, 16 Nov 2018 00:14:04 GMT
ENV KIBANA_VERSION=5.6.13
# Fri, 16 Nov 2018 00:14:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Fri, 16 Nov 2018 00:14:58 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 00:14:58 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Fri, 16 Nov 2018 00:14:59 GMT
EXPOSE 5601/tcp
# Fri, 16 Nov 2018 00:14:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Nov 2018 00:14:59 GMT
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
	-	`sha256:ce9567158344af1a9539d097d9006940a70bfdfef999750ae074edc345278ba0`  
		Last Modified: Fri, 16 Nov 2018 00:17:40 GMT  
		Size: 54.3 MB (54277221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6043e616cfc990706d53817482d5169b0cab0acf903db1445d59266c6816f1f`  
		Last Modified: Fri, 16 Nov 2018 00:17:08 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:6.5.1`

```console
$ docker pull kibana@sha256:7e611ece071fa36127dae39179aaaecf34d79a824f234362c949ee58cd9cb5be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:6.5.1` - linux; amd64

```console
$ docker pull kibana@sha256:d93241f18c258c5c4fb3a84754576f445279e572d6137cf673e132242867800b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.2 MB (288173417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afcfde4729b0319b8bed991fe5b4b102e29837f91688c054e3dca00939a71b2e`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Tue, 09 Oct 2018 18:19:47 GMT
ADD file:fbe9badfd2790f0747a25fbe5c94a6daa78969511ca08c8d4ac654f3442570de in / 
# Tue, 09 Oct 2018 18:19:48 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181006
# Tue, 09 Oct 2018 18:19:48 GMT
CMD ["/bin/bash"]
# Fri, 16 Nov 2018 03:05:09 GMT
EXPOSE 5601
# Fri, 16 Nov 2018 03:05:19 GMT
RUN yum update -y && yum install -y fontconfig freetype && yum clean all
# Fri, 16 Nov 2018 03:05:19 GMT
WORKDIR /usr/share/kibana
# Fri, 16 Nov 2018 03:05:55 GMT
RUN curl -Ls http://localhost:8000/kibana/target/kibana-6.5.1-linux-x86_64.tar.gz | tar --strip-components=1 -zxf - &&     ln -s /usr/share/kibana /opt/kibana &&     chown -R 1000:0 . &&     chmod -R g=u /usr/share/kibana &&     find /usr/share/kibana -type d -exec chmod g+s {} \;
# Fri, 16 Nov 2018 03:05:56 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 16 Nov 2018 03:05:56 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 03:05:56 GMT
COPY --chown=1000:0file:2c9b351c7512ff200b350310fe751b2d52ed3bb748386081bbc89592fdf7eff2 in /usr/share/kibana/config/kibana.yml 
# Fri, 16 Nov 2018 03:05:56 GMT
COPY --chown=1000:0file:2eb59b508b11d19b10134c842d6196001a8ba4414d07367b2991800b4614d47b in /usr/local/bin/ 
# Fri, 16 Nov 2018 03:05:56 GMT
COPY --chown=1000:0multi:ec65c62d6619069c5768a37a923aff3bc5da64ee746fe458069d0826e9e080cf in /usr/share/kibana/config/ 
# Fri, 16 Nov 2018 03:05:57 GMT
RUN find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \;
# Fri, 16 Nov 2018 03:05:58 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000       --home-dir /usr/share/kibana --no-create-home       kibana
# Fri, 16 Nov 2018 03:05:58 GMT
USER 1000
# Fri, 16 Nov 2018 03:05:58 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.label-schema.name=kibana org.label-schema.version=6.5.1 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.vcs-url=https://github.com/elastic/kibana-docker license=Elastic License
# Fri, 16 Nov 2018 03:05:58 GMT
CMD ["/usr/local/bin/kibana-docker"]
```

-	Layers:
	-	`sha256:aeb7866da422acc7e93dcf7323f38d7646f6269af33bcdb6647f2094fc4b3bf7`  
		Last Modified: Tue, 09 Oct 2018 18:24:50 GMT  
		Size: 74.7 MB (74703002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec3e6d433400d010653d0086186c42468b28f3275b05b4385fa09c00a54803f`  
		Last Modified: Tue, 20 Nov 2018 16:54:23 GMT  
		Size: 7.7 MB (7694871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06fc0469a68e57c66fc0667addd8c8c801c034ad54082b8b51d15fed0a1b35e0`  
		Last Modified: Tue, 20 Nov 2018 16:54:20 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35cea25b6650ece969a47d761d7db8399916a6d3df14c3b4a84db8fdb0cd2db1`  
		Last Modified: Tue, 20 Nov 2018 16:54:52 GMT  
		Size: 205.8 MB (205766379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d34a123996fdb0afc5c46d8b590d7e6af523923c715fc9ef5fbd21e433c3f41`  
		Last Modified: Tue, 20 Nov 2018 16:54:17 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b8a4230a60d88af18ca2669fb5599a66067bbaddcf8a177c6e2a36eca78722`  
		Last Modified: Tue, 20 Nov 2018 16:54:17 GMT  
		Size: 2.0 KB (1995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7f109f799d6a63b06edbebdafc4fa4b48e013cbec5e61d60c51fea60ca7b63`  
		Last Modified: Tue, 20 Nov 2018 16:54:17 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c659c58cf556b9c927e0a7f12eb27c807e31ae76a133bcfcb84bd60689dec76`  
		Last Modified: Tue, 20 Nov 2018 16:54:17 GMT  
		Size: 2.6 KB (2627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf67fa453a4ed94024f2f22d9a2834449b172e07c936f2e8788e98e1cd393ede`  
		Last Modified: Tue, 20 Nov 2018 16:54:17 GMT  
		Size: 1.6 KB (1602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
