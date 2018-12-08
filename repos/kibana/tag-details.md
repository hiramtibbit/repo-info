<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:5`](#kibana5)
-	[`kibana:5.6`](#kibana56)
-	[`kibana:5.6.13`](#kibana5613)
-	[`kibana:6.5.2`](#kibana652)

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

## `kibana:6.5.2`

```console
$ docker pull kibana@sha256:083c73cdfca4f0a157c5a8f7afb0e445372f37c594bfcd754e62dd382527f4cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:6.5.2` - linux; amd64

```console
$ docker pull kibana@sha256:e7c0a8817550a5e6f0be27f29684f9e476279bf63e62c641ea53876c0a0cef3c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.3 MB (288255877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:553e0f2ad5748cc119ecc4187e876b4c910ef2facded078bc80b232bbbc5bca1`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Tue, 09 Oct 2018 18:19:47 GMT
ADD file:fbe9badfd2790f0747a25fbe5c94a6daa78969511ca08c8d4ac654f3442570de in / 
# Tue, 09 Oct 2018 18:19:48 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181006
# Tue, 09 Oct 2018 18:19:48 GMT
CMD ["/bin/bash"]
# Fri, 30 Nov 2018 00:41:08 GMT
EXPOSE 5601
# Fri, 30 Nov 2018 00:41:15 GMT
RUN yum update -y && yum install -y fontconfig freetype && yum clean all
# Fri, 30 Nov 2018 00:41:15 GMT
WORKDIR /usr/share/kibana
# Fri, 30 Nov 2018 00:41:52 GMT
RUN curl -Ls http://localhost:8000/kibana/target/kibana-6.5.2-linux-x86_64.tar.gz | tar --strip-components=1 -zxf - &&     ln -s /usr/share/kibana /opt/kibana &&     chown -R 1000:0 . &&     chmod -R g=u /usr/share/kibana &&     find /usr/share/kibana -type d -exec chmod g+s {} \;
# Fri, 30 Nov 2018 00:41:53 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 30 Nov 2018 00:41:53 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 30 Nov 2018 00:41:53 GMT
COPY --chown=1000:0file:2c9b351c7512ff200b350310fe751b2d52ed3bb748386081bbc89592fdf7eff2 in /usr/share/kibana/config/kibana.yml 
# Fri, 30 Nov 2018 00:41:53 GMT
COPY --chown=1000:0file:c85732e778311deac5a266a8d4144b3cd633263715920f796973739ae3f07ab0 in /usr/local/bin/ 
# Fri, 30 Nov 2018 00:41:54 GMT
COPY --chown=1000:0multi:ec65c62d6619069c5768a37a923aff3bc5da64ee746fe458069d0826e9e080cf in /usr/share/kibana/config/ 
# Fri, 30 Nov 2018 00:41:54 GMT
RUN find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \;
# Fri, 30 Nov 2018 00:41:55 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000       --home-dir /usr/share/kibana --no-create-home       kibana
# Fri, 30 Nov 2018 00:41:55 GMT
USER 1000
# Fri, 30 Nov 2018 00:41:55 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.label-schema.name=kibana org.label-schema.version=6.5.2 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.vcs-url=https://github.com/elastic/kibana-docker license=Elastic License
# Fri, 30 Nov 2018 00:41:55 GMT
CMD ["/usr/local/bin/kibana-docker"]
```

-	Layers:
	-	`sha256:aeb7866da422acc7e93dcf7323f38d7646f6269af33bcdb6647f2094fc4b3bf7`  
		Last Modified: Tue, 09 Oct 2018 18:24:50 GMT  
		Size: 74.7 MB (74703002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9353d5cac9be2985eb9f2495ef5a23bbc98174300cbd32aa5ed829d0d94a93`  
		Last Modified: Wed, 05 Dec 2018 15:49:39 GMT  
		Size: 7.7 MB (7694917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c95cf06d9b5deb1de49b8a572b8d10cdcdd5238615046c376a7ef7991b9f3d7`  
		Last Modified: Wed, 05 Dec 2018 15:49:33 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02afe4385c2a8f3c31ab78ca78715ad6bdea06e1024868afb3cb8dbf5b868378`  
		Last Modified: Wed, 05 Dec 2018 15:50:06 GMT  
		Size: 205.8 MB (205848788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1d9d647b530d1d5f8c17c383d1082bfa8e98202a9b1fce460b8bbf62565501`  
		Last Modified: Wed, 05 Dec 2018 15:49:29 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2705cba093ce70dd3f9bd2b200ef9abe8e6ff5a94b325e085bb972dba81cf3f4`  
		Last Modified: Wed, 05 Dec 2018 15:49:29 GMT  
		Size: 2.0 KB (2007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef603e12d0aac65752de95e3489401e0ba0c620ff7901ef3adc4f925bf314326`  
		Last Modified: Wed, 05 Dec 2018 15:49:29 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ab5fa11e7eb19950b7e7f80b0931a45f5079e1468b3072fb3f4bf0bb856df6`  
		Last Modified: Wed, 05 Dec 2018 15:49:29 GMT  
		Size: 2.6 KB (2623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83117f7a89363720322700096fb92ab6d97325f45a8a0f1ac8e5a132550cba01`  
		Last Modified: Wed, 05 Dec 2018 15:49:29 GMT  
		Size: 1.6 KB (1606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
