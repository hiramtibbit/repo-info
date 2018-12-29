<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:5`](#kibana5)
-	[`kibana:5.6`](#kibana56)
-	[`kibana:5.6.14`](#kibana5614)
-	[`kibana:6.5.4`](#kibana654)

## `kibana:5`

```console
$ docker pull kibana@sha256:edd784aded73c4f7f7da6a2570447ad2652f820a673b2aa17ceacca1c868c993
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5` - linux; amd64

```console
$ docker pull kibana@sha256:95d2c00dbd3ba8f20f57956c3dbb4b4734f5b085d47fc3b2c7bba8dda4e79013
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.8 MB (129803694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:923f094f146cea9ed6b2f26fb2989a5502a4db2f1dbe449deaf651648ca0c8f1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Fri, 28 Dec 2018 23:23:43 GMT
ADD file:7f32b46e26b56ebbde417db4d539757b8e852c62bab15978db092ce24d2420d1 in / 
# Fri, 28 Dec 2018 23:23:43 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 04:10:27 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Sat, 29 Dec 2018 04:12:36 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 04:12:36 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 04:12:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 29 Dec 2018 04:12:38 GMT
ENV TINI_VERSION=v0.9.0
# Sat, 29 Dec 2018 04:12:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 29 Dec 2018 04:13:13 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 04:13:14 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Sat, 29 Dec 2018 04:13:14 GMT
ENV KIBANA_VERSION=5.6.14
# Sat, 29 Dec 2018 04:15:29 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Sat, 29 Dec 2018 04:15:31 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 04:15:31 GMT
COPY file:f6ce7cbdcbcd38cf6fa747d74a0c868682ca02deaf474def026b8dec2a9e66e5 in / 
# Sat, 29 Dec 2018 04:15:31 GMT
EXPOSE 5601
# Sat, 29 Dec 2018 04:15:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 04:15:32 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:ff144d3c0ab1033159cf082f681c9f51b09cd701d907e3bad65b1411fa1585a9`  
		Last Modified: Fri, 28 Dec 2018 23:33:45 GMT  
		Size: 54.4 MB (54387117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d253757c4ec014141fb27ecc2d4696b0c6aa7cfea13b1cee63bb614e15c49602`  
		Last Modified: Sat, 29 Dec 2018 04:15:50 GMT  
		Size: 4.4 KB (4407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c581bb5b3a192eb4cfbd9786942e1e5e7c0aa16bf8fae8e4f6f8bef38ca0f14`  
		Last Modified: Sat, 29 Dec 2018 04:15:54 GMT  
		Size: 20.7 MB (20667188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171be9b30ef330e78fdc93842c8cabe80191865076e9817f7a9ba3f3ea7c9c8e`  
		Last Modified: Sat, 29 Dec 2018 04:15:49 GMT  
		Size: 500.7 KB (500667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b57a4899e93a93f60ee39fe7bc40392d305e0b31191feae3a6ea6a3b26a3b8`  
		Last Modified: Sat, 29 Dec 2018 04:15:48 GMT  
		Size: 7.3 KB (7296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1014912724b6a92e5e39603a72dede1dae7069e76075c66eb8970554ffb74fab`  
		Last Modified: Sat, 29 Dec 2018 04:15:49 GMT  
		Size: 1.5 KB (1454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee346939974b744429e8750eb7106456c774c4da4be0061d1e99f42c27040997`  
		Last Modified: Sat, 29 Dec 2018 04:15:48 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6d9cd2a9e41144231bb8eb27f16aa94371133d8fb64db21133c3fa52e7c7b5`  
		Last Modified: Sat, 29 Dec 2018 04:16:11 GMT  
		Size: 54.2 MB (54235003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccbe475d34a95f982e81f80785807d7dfd1492cd0ebfef754eeda4a9e3ee9f55`  
		Last Modified: Sat, 29 Dec 2018 04:15:48 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.6`

```console
$ docker pull kibana@sha256:edd784aded73c4f7f7da6a2570447ad2652f820a673b2aa17ceacca1c868c993
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5.6` - linux; amd64

```console
$ docker pull kibana@sha256:95d2c00dbd3ba8f20f57956c3dbb4b4734f5b085d47fc3b2c7bba8dda4e79013
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.8 MB (129803694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:923f094f146cea9ed6b2f26fb2989a5502a4db2f1dbe449deaf651648ca0c8f1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Fri, 28 Dec 2018 23:23:43 GMT
ADD file:7f32b46e26b56ebbde417db4d539757b8e852c62bab15978db092ce24d2420d1 in / 
# Fri, 28 Dec 2018 23:23:43 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 04:10:27 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Sat, 29 Dec 2018 04:12:36 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 04:12:36 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 04:12:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 29 Dec 2018 04:12:38 GMT
ENV TINI_VERSION=v0.9.0
# Sat, 29 Dec 2018 04:12:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 29 Dec 2018 04:13:13 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 04:13:14 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Sat, 29 Dec 2018 04:13:14 GMT
ENV KIBANA_VERSION=5.6.14
# Sat, 29 Dec 2018 04:15:29 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Sat, 29 Dec 2018 04:15:31 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 04:15:31 GMT
COPY file:f6ce7cbdcbcd38cf6fa747d74a0c868682ca02deaf474def026b8dec2a9e66e5 in / 
# Sat, 29 Dec 2018 04:15:31 GMT
EXPOSE 5601
# Sat, 29 Dec 2018 04:15:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 04:15:32 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:ff144d3c0ab1033159cf082f681c9f51b09cd701d907e3bad65b1411fa1585a9`  
		Last Modified: Fri, 28 Dec 2018 23:33:45 GMT  
		Size: 54.4 MB (54387117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d253757c4ec014141fb27ecc2d4696b0c6aa7cfea13b1cee63bb614e15c49602`  
		Last Modified: Sat, 29 Dec 2018 04:15:50 GMT  
		Size: 4.4 KB (4407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c581bb5b3a192eb4cfbd9786942e1e5e7c0aa16bf8fae8e4f6f8bef38ca0f14`  
		Last Modified: Sat, 29 Dec 2018 04:15:54 GMT  
		Size: 20.7 MB (20667188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171be9b30ef330e78fdc93842c8cabe80191865076e9817f7a9ba3f3ea7c9c8e`  
		Last Modified: Sat, 29 Dec 2018 04:15:49 GMT  
		Size: 500.7 KB (500667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b57a4899e93a93f60ee39fe7bc40392d305e0b31191feae3a6ea6a3b26a3b8`  
		Last Modified: Sat, 29 Dec 2018 04:15:48 GMT  
		Size: 7.3 KB (7296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1014912724b6a92e5e39603a72dede1dae7069e76075c66eb8970554ffb74fab`  
		Last Modified: Sat, 29 Dec 2018 04:15:49 GMT  
		Size: 1.5 KB (1454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee346939974b744429e8750eb7106456c774c4da4be0061d1e99f42c27040997`  
		Last Modified: Sat, 29 Dec 2018 04:15:48 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6d9cd2a9e41144231bb8eb27f16aa94371133d8fb64db21133c3fa52e7c7b5`  
		Last Modified: Sat, 29 Dec 2018 04:16:11 GMT  
		Size: 54.2 MB (54235003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccbe475d34a95f982e81f80785807d7dfd1492cd0ebfef754eeda4a9e3ee9f55`  
		Last Modified: Sat, 29 Dec 2018 04:15:48 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.6.14`

```console
$ docker pull kibana@sha256:edd784aded73c4f7f7da6a2570447ad2652f820a673b2aa17ceacca1c868c993
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5.6.14` - linux; amd64

```console
$ docker pull kibana@sha256:95d2c00dbd3ba8f20f57956c3dbb4b4734f5b085d47fc3b2c7bba8dda4e79013
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.8 MB (129803694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:923f094f146cea9ed6b2f26fb2989a5502a4db2f1dbe449deaf651648ca0c8f1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Fri, 28 Dec 2018 23:23:43 GMT
ADD file:7f32b46e26b56ebbde417db4d539757b8e852c62bab15978db092ce24d2420d1 in / 
# Fri, 28 Dec 2018 23:23:43 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 04:10:27 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Sat, 29 Dec 2018 04:12:36 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 04:12:36 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 04:12:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 29 Dec 2018 04:12:38 GMT
ENV TINI_VERSION=v0.9.0
# Sat, 29 Dec 2018 04:12:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 29 Dec 2018 04:13:13 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 29 Dec 2018 04:13:14 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Sat, 29 Dec 2018 04:13:14 GMT
ENV KIBANA_VERSION=5.6.14
# Sat, 29 Dec 2018 04:15:29 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Sat, 29 Dec 2018 04:15:31 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 04:15:31 GMT
COPY file:f6ce7cbdcbcd38cf6fa747d74a0c868682ca02deaf474def026b8dec2a9e66e5 in / 
# Sat, 29 Dec 2018 04:15:31 GMT
EXPOSE 5601
# Sat, 29 Dec 2018 04:15:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 04:15:32 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:ff144d3c0ab1033159cf082f681c9f51b09cd701d907e3bad65b1411fa1585a9`  
		Last Modified: Fri, 28 Dec 2018 23:33:45 GMT  
		Size: 54.4 MB (54387117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d253757c4ec014141fb27ecc2d4696b0c6aa7cfea13b1cee63bb614e15c49602`  
		Last Modified: Sat, 29 Dec 2018 04:15:50 GMT  
		Size: 4.4 KB (4407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c581bb5b3a192eb4cfbd9786942e1e5e7c0aa16bf8fae8e4f6f8bef38ca0f14`  
		Last Modified: Sat, 29 Dec 2018 04:15:54 GMT  
		Size: 20.7 MB (20667188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171be9b30ef330e78fdc93842c8cabe80191865076e9817f7a9ba3f3ea7c9c8e`  
		Last Modified: Sat, 29 Dec 2018 04:15:49 GMT  
		Size: 500.7 KB (500667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b57a4899e93a93f60ee39fe7bc40392d305e0b31191feae3a6ea6a3b26a3b8`  
		Last Modified: Sat, 29 Dec 2018 04:15:48 GMT  
		Size: 7.3 KB (7296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1014912724b6a92e5e39603a72dede1dae7069e76075c66eb8970554ffb74fab`  
		Last Modified: Sat, 29 Dec 2018 04:15:49 GMT  
		Size: 1.5 KB (1454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee346939974b744429e8750eb7106456c774c4da4be0061d1e99f42c27040997`  
		Last Modified: Sat, 29 Dec 2018 04:15:48 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6d9cd2a9e41144231bb8eb27f16aa94371133d8fb64db21133c3fa52e7c7b5`  
		Last Modified: Sat, 29 Dec 2018 04:16:11 GMT  
		Size: 54.2 MB (54235003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccbe475d34a95f982e81f80785807d7dfd1492cd0ebfef754eeda4a9e3ee9f55`  
		Last Modified: Sat, 29 Dec 2018 04:15:48 GMT  
		Size: 336.0 B  
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
