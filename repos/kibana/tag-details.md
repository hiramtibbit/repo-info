<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:5`](#kibana5)
-	[`kibana:5.6`](#kibana56)
-	[`kibana:5.6.14`](#kibana5614)
-	[`kibana:6.5.4`](#kibana654)

## `kibana:5`

```console
$ docker pull kibana@sha256:ba04df22f89ae5027b5b412b4ce9e9ff5e4c589d9d46b4899aae42e045f19389
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5` - linux; amd64

```console
$ docker pull kibana@sha256:71dd0f0c85964d918785b5b4efe5f65e21c86196c51e06a09df1e1599ebcd3d7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.8 MB (129802346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f86bed9384634b19a20380583543efa9690c09a395f4e71f1a30483f7ab48dc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 22 Jan 2019 19:23:31 GMT
ADD file:3392f08cefaf93484868c5183e810a29e7cc370d21dae7cff10b856b2b21d072 in / 
# Tue, 22 Jan 2019 19:23:31 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 22:48:11 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 22 Jan 2019 22:50:27 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:50:27 GMT
ENV GOSU_VERSION=1.10
# Tue, 22 Jan 2019 22:50:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 22 Jan 2019 22:50:29 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 22 Jan 2019 22:50:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 22 Jan 2019 22:51:07 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 22 Jan 2019 22:51:08 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Tue, 22 Jan 2019 22:51:09 GMT
ENV KIBANA_VERSION=5.6.14
# Tue, 22 Jan 2019 22:53:37 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Tue, 22 Jan 2019 22:53:39 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Jan 2019 22:53:39 GMT
COPY file:f6ce7cbdcbcd38cf6fa747d74a0c868682ca02deaf474def026b8dec2a9e66e5 in / 
# Tue, 22 Jan 2019 22:53:39 GMT
EXPOSE 5601
# Tue, 22 Jan 2019 22:53:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 22 Jan 2019 22:53:40 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:8ac9f5ca4429ff58493e4cb486b7a5eaa6af0a4711e9bda1ce4671732e25d1d1`  
		Last Modified: Tue, 22 Jan 2019 19:34:35 GMT  
		Size: 54.4 MB (54385768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e8b0816b4ece0815867aef3d5ab89ac105e9dedaaca6f66916d38c7a3ab8e3`  
		Last Modified: Tue, 22 Jan 2019 22:53:51 GMT  
		Size: 4.4 KB (4407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f67be34acf5be4c1953d2c7c466d470dd2abd13697bf42c7aa6c3f4701207e`  
		Last Modified: Tue, 22 Jan 2019 22:53:55 GMT  
		Size: 20.7 MB (20667370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b620291eef7cef04302282c5e75ba1534b6a064e40d2356bfe9e499505633348`  
		Last Modified: Tue, 22 Jan 2019 22:53:51 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbd5963652d6e49f13590c4f1190a7f99a0f93b3b54d0572f85dcaa327cf59d`  
		Last Modified: Tue, 22 Jan 2019 22:53:50 GMT  
		Size: 7.3 KB (7294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77d16ca0dcb8ab96b9fa9d2bcdd1028d7c85836fe44507c8f0b5d4758503218a`  
		Last Modified: Tue, 22 Jan 2019 22:53:50 GMT  
		Size: 1.5 KB (1455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2944cbf7dcd5e422c25c6627e67725db0cdddab86dfa18f04e1184a8d03a691d`  
		Last Modified: Tue, 22 Jan 2019 22:53:50 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26147e94ef58e062d999ea6a708f79fe0e875d9861d5968f0e5dc2884c61b43b`  
		Last Modified: Tue, 22 Jan 2019 22:54:09 GMT  
		Size: 54.2 MB (54234826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2442a798c77d7fee3153a9daff70e11303a3fcc0c96fa2a31c4e86a3704ffed`  
		Last Modified: Tue, 22 Jan 2019 22:53:50 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.6`

```console
$ docker pull kibana@sha256:ba04df22f89ae5027b5b412b4ce9e9ff5e4c589d9d46b4899aae42e045f19389
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5.6` - linux; amd64

```console
$ docker pull kibana@sha256:71dd0f0c85964d918785b5b4efe5f65e21c86196c51e06a09df1e1599ebcd3d7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.8 MB (129802346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f86bed9384634b19a20380583543efa9690c09a395f4e71f1a30483f7ab48dc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 22 Jan 2019 19:23:31 GMT
ADD file:3392f08cefaf93484868c5183e810a29e7cc370d21dae7cff10b856b2b21d072 in / 
# Tue, 22 Jan 2019 19:23:31 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 22:48:11 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 22 Jan 2019 22:50:27 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:50:27 GMT
ENV GOSU_VERSION=1.10
# Tue, 22 Jan 2019 22:50:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 22 Jan 2019 22:50:29 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 22 Jan 2019 22:50:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 22 Jan 2019 22:51:07 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 22 Jan 2019 22:51:08 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Tue, 22 Jan 2019 22:51:09 GMT
ENV KIBANA_VERSION=5.6.14
# Tue, 22 Jan 2019 22:53:37 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Tue, 22 Jan 2019 22:53:39 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Jan 2019 22:53:39 GMT
COPY file:f6ce7cbdcbcd38cf6fa747d74a0c868682ca02deaf474def026b8dec2a9e66e5 in / 
# Tue, 22 Jan 2019 22:53:39 GMT
EXPOSE 5601
# Tue, 22 Jan 2019 22:53:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 22 Jan 2019 22:53:40 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:8ac9f5ca4429ff58493e4cb486b7a5eaa6af0a4711e9bda1ce4671732e25d1d1`  
		Last Modified: Tue, 22 Jan 2019 19:34:35 GMT  
		Size: 54.4 MB (54385768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e8b0816b4ece0815867aef3d5ab89ac105e9dedaaca6f66916d38c7a3ab8e3`  
		Last Modified: Tue, 22 Jan 2019 22:53:51 GMT  
		Size: 4.4 KB (4407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f67be34acf5be4c1953d2c7c466d470dd2abd13697bf42c7aa6c3f4701207e`  
		Last Modified: Tue, 22 Jan 2019 22:53:55 GMT  
		Size: 20.7 MB (20667370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b620291eef7cef04302282c5e75ba1534b6a064e40d2356bfe9e499505633348`  
		Last Modified: Tue, 22 Jan 2019 22:53:51 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbd5963652d6e49f13590c4f1190a7f99a0f93b3b54d0572f85dcaa327cf59d`  
		Last Modified: Tue, 22 Jan 2019 22:53:50 GMT  
		Size: 7.3 KB (7294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77d16ca0dcb8ab96b9fa9d2bcdd1028d7c85836fe44507c8f0b5d4758503218a`  
		Last Modified: Tue, 22 Jan 2019 22:53:50 GMT  
		Size: 1.5 KB (1455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2944cbf7dcd5e422c25c6627e67725db0cdddab86dfa18f04e1184a8d03a691d`  
		Last Modified: Tue, 22 Jan 2019 22:53:50 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26147e94ef58e062d999ea6a708f79fe0e875d9861d5968f0e5dc2884c61b43b`  
		Last Modified: Tue, 22 Jan 2019 22:54:09 GMT  
		Size: 54.2 MB (54234826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2442a798c77d7fee3153a9daff70e11303a3fcc0c96fa2a31c4e86a3704ffed`  
		Last Modified: Tue, 22 Jan 2019 22:53:50 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.6.14`

```console
$ docker pull kibana@sha256:ba04df22f89ae5027b5b412b4ce9e9ff5e4c589d9d46b4899aae42e045f19389
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5.6.14` - linux; amd64

```console
$ docker pull kibana@sha256:71dd0f0c85964d918785b5b4efe5f65e21c86196c51e06a09df1e1599ebcd3d7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.8 MB (129802346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f86bed9384634b19a20380583543efa9690c09a395f4e71f1a30483f7ab48dc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 22 Jan 2019 19:23:31 GMT
ADD file:3392f08cefaf93484868c5183e810a29e7cc370d21dae7cff10b856b2b21d072 in / 
# Tue, 22 Jan 2019 19:23:31 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 22:48:11 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 22 Jan 2019 22:50:27 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:50:27 GMT
ENV GOSU_VERSION=1.10
# Tue, 22 Jan 2019 22:50:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 22 Jan 2019 22:50:29 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 22 Jan 2019 22:50:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 22 Jan 2019 22:51:07 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 22 Jan 2019 22:51:08 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Tue, 22 Jan 2019 22:51:09 GMT
ENV KIBANA_VERSION=5.6.14
# Tue, 22 Jan 2019 22:53:37 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Tue, 22 Jan 2019 22:53:39 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Jan 2019 22:53:39 GMT
COPY file:f6ce7cbdcbcd38cf6fa747d74a0c868682ca02deaf474def026b8dec2a9e66e5 in / 
# Tue, 22 Jan 2019 22:53:39 GMT
EXPOSE 5601
# Tue, 22 Jan 2019 22:53:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 22 Jan 2019 22:53:40 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:8ac9f5ca4429ff58493e4cb486b7a5eaa6af0a4711e9bda1ce4671732e25d1d1`  
		Last Modified: Tue, 22 Jan 2019 19:34:35 GMT  
		Size: 54.4 MB (54385768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e8b0816b4ece0815867aef3d5ab89ac105e9dedaaca6f66916d38c7a3ab8e3`  
		Last Modified: Tue, 22 Jan 2019 22:53:51 GMT  
		Size: 4.4 KB (4407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f67be34acf5be4c1953d2c7c466d470dd2abd13697bf42c7aa6c3f4701207e`  
		Last Modified: Tue, 22 Jan 2019 22:53:55 GMT  
		Size: 20.7 MB (20667370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b620291eef7cef04302282c5e75ba1534b6a064e40d2356bfe9e499505633348`  
		Last Modified: Tue, 22 Jan 2019 22:53:51 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbd5963652d6e49f13590c4f1190a7f99a0f93b3b54d0572f85dcaa327cf59d`  
		Last Modified: Tue, 22 Jan 2019 22:53:50 GMT  
		Size: 7.3 KB (7294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77d16ca0dcb8ab96b9fa9d2bcdd1028d7c85836fe44507c8f0b5d4758503218a`  
		Last Modified: Tue, 22 Jan 2019 22:53:50 GMT  
		Size: 1.5 KB (1455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2944cbf7dcd5e422c25c6627e67725db0cdddab86dfa18f04e1184a8d03a691d`  
		Last Modified: Tue, 22 Jan 2019 22:53:50 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26147e94ef58e062d999ea6a708f79fe0e875d9861d5968f0e5dc2884c61b43b`  
		Last Modified: Tue, 22 Jan 2019 22:54:09 GMT  
		Size: 54.2 MB (54234826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2442a798c77d7fee3153a9daff70e11303a3fcc0c96fa2a31c4e86a3704ffed`  
		Last Modified: Tue, 22 Jan 2019 22:53:50 GMT  
		Size: 339.0 B  
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
