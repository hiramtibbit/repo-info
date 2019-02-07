<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:5`](#kibana5)
-	[`kibana:5.6`](#kibana56)
-	[`kibana:5.6.14`](#kibana5614)
-	[`kibana:6.6.0`](#kibana660)

## `kibana:5`

```console
$ docker pull kibana@sha256:548e06487d67aa7c62d04e70df7c404f45878ca5edd91b72df207ca95eaa27db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5` - linux; amd64

```console
$ docker pull kibana@sha256:515a47d036d4439fbadfb692d1c397663f066cd50c41b2c0b9083a67bef8170c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.8 MB (129802137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9de10dbac628fd5f7550a01890c863bdb5157621a56a3ecb6227d88bfb5e6614`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Wed, 06 Feb 2019 03:27:30 GMT
ADD file:3a1c24c30fbdad1dd44e5f38c66b10a2ddbeb517b2e441dbcf82c221b45b143b in / 
# Wed, 06 Feb 2019 03:27:31 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 06:04:33 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Wed, 06 Feb 2019 06:06:30 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 06:06:31 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 06:06:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Feb 2019 06:06:34 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 06 Feb 2019 06:06:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 06 Feb 2019 06:07:07 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 06 Feb 2019 06:07:09 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Wed, 06 Feb 2019 06:07:09 GMT
ENV KIBANA_VERSION=5.6.14
# Wed, 06 Feb 2019 06:09:08 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Wed, 06 Feb 2019 06:09:09 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 06:09:10 GMT
COPY file:f6ce7cbdcbcd38cf6fa747d74a0c868682ca02deaf474def026b8dec2a9e66e5 in / 
# Wed, 06 Feb 2019 06:09:10 GMT
EXPOSE 5601
# Wed, 06 Feb 2019 06:09:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 06 Feb 2019 06:09:11 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:ff42297909573059acb8e981efbc12eff68641f8449f04470a4f218e53a1e80e`  
		Last Modified: Wed, 06 Feb 2019 03:33:25 GMT  
		Size: 54.4 MB (54384652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a320c16a86d07af50ef25a101a0265e5a35a99549a6a8700a309266e00909f`  
		Last Modified: Wed, 06 Feb 2019 06:09:22 GMT  
		Size: 4.4 KB (4402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da6379c48b5963c3e2ccf16b064ed7957617ee64e39ef6a934a969f8d4178f8`  
		Last Modified: Wed, 06 Feb 2019 06:09:27 GMT  
		Size: 20.7 MB (20668054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a152d646a157f950071b912b9fc1bc04bd07f68208f6410a2482f6cf000ec6`  
		Last Modified: Wed, 06 Feb 2019 06:09:22 GMT  
		Size: 500.7 KB (500663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c25d6ecc6fe3f3a4dfd8db0a301160d0b87e1dc978fd0ebdef0a098a488a910`  
		Last Modified: Wed, 06 Feb 2019 06:09:21 GMT  
		Size: 7.3 KB (7295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff99301616248cafa2909caaeac9a5a15534e7aa6c89409b31051cd5af3f1abc`  
		Last Modified: Wed, 06 Feb 2019 06:09:21 GMT  
		Size: 1.5 KB (1454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30747dc13635377c8263af426ae10b4a303abc853effbd6f7e8770221bf2ade4`  
		Last Modified: Wed, 06 Feb 2019 06:09:22 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe8ba49acaa677846e1991e465b6a07334480f70ae1aa7579e203cc746fe0b5b`  
		Last Modified: Wed, 06 Feb 2019 06:09:39 GMT  
		Size: 54.2 MB (54235050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c3a45b2e1f06b7b27d9446421cd399771f15c7dfbddc0c1b5b488906c1122fa`  
		Last Modified: Wed, 06 Feb 2019 06:09:21 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.6`

```console
$ docker pull kibana@sha256:548e06487d67aa7c62d04e70df7c404f45878ca5edd91b72df207ca95eaa27db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5.6` - linux; amd64

```console
$ docker pull kibana@sha256:515a47d036d4439fbadfb692d1c397663f066cd50c41b2c0b9083a67bef8170c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.8 MB (129802137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9de10dbac628fd5f7550a01890c863bdb5157621a56a3ecb6227d88bfb5e6614`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Wed, 06 Feb 2019 03:27:30 GMT
ADD file:3a1c24c30fbdad1dd44e5f38c66b10a2ddbeb517b2e441dbcf82c221b45b143b in / 
# Wed, 06 Feb 2019 03:27:31 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 06:04:33 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Wed, 06 Feb 2019 06:06:30 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 06:06:31 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 06:06:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Feb 2019 06:06:34 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 06 Feb 2019 06:06:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 06 Feb 2019 06:07:07 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 06 Feb 2019 06:07:09 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Wed, 06 Feb 2019 06:07:09 GMT
ENV KIBANA_VERSION=5.6.14
# Wed, 06 Feb 2019 06:09:08 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Wed, 06 Feb 2019 06:09:09 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 06:09:10 GMT
COPY file:f6ce7cbdcbcd38cf6fa747d74a0c868682ca02deaf474def026b8dec2a9e66e5 in / 
# Wed, 06 Feb 2019 06:09:10 GMT
EXPOSE 5601
# Wed, 06 Feb 2019 06:09:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 06 Feb 2019 06:09:11 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:ff42297909573059acb8e981efbc12eff68641f8449f04470a4f218e53a1e80e`  
		Last Modified: Wed, 06 Feb 2019 03:33:25 GMT  
		Size: 54.4 MB (54384652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a320c16a86d07af50ef25a101a0265e5a35a99549a6a8700a309266e00909f`  
		Last Modified: Wed, 06 Feb 2019 06:09:22 GMT  
		Size: 4.4 KB (4402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da6379c48b5963c3e2ccf16b064ed7957617ee64e39ef6a934a969f8d4178f8`  
		Last Modified: Wed, 06 Feb 2019 06:09:27 GMT  
		Size: 20.7 MB (20668054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a152d646a157f950071b912b9fc1bc04bd07f68208f6410a2482f6cf000ec6`  
		Last Modified: Wed, 06 Feb 2019 06:09:22 GMT  
		Size: 500.7 KB (500663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c25d6ecc6fe3f3a4dfd8db0a301160d0b87e1dc978fd0ebdef0a098a488a910`  
		Last Modified: Wed, 06 Feb 2019 06:09:21 GMT  
		Size: 7.3 KB (7295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff99301616248cafa2909caaeac9a5a15534e7aa6c89409b31051cd5af3f1abc`  
		Last Modified: Wed, 06 Feb 2019 06:09:21 GMT  
		Size: 1.5 KB (1454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30747dc13635377c8263af426ae10b4a303abc853effbd6f7e8770221bf2ade4`  
		Last Modified: Wed, 06 Feb 2019 06:09:22 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe8ba49acaa677846e1991e465b6a07334480f70ae1aa7579e203cc746fe0b5b`  
		Last Modified: Wed, 06 Feb 2019 06:09:39 GMT  
		Size: 54.2 MB (54235050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c3a45b2e1f06b7b27d9446421cd399771f15c7dfbddc0c1b5b488906c1122fa`  
		Last Modified: Wed, 06 Feb 2019 06:09:21 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.6.14`

```console
$ docker pull kibana@sha256:548e06487d67aa7c62d04e70df7c404f45878ca5edd91b72df207ca95eaa27db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5.6.14` - linux; amd64

```console
$ docker pull kibana@sha256:515a47d036d4439fbadfb692d1c397663f066cd50c41b2c0b9083a67bef8170c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.8 MB (129802137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9de10dbac628fd5f7550a01890c863bdb5157621a56a3ecb6227d88bfb5e6614`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Wed, 06 Feb 2019 03:27:30 GMT
ADD file:3a1c24c30fbdad1dd44e5f38c66b10a2ddbeb517b2e441dbcf82c221b45b143b in / 
# Wed, 06 Feb 2019 03:27:31 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 06:04:33 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Wed, 06 Feb 2019 06:06:30 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 06:06:31 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 06:06:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 06 Feb 2019 06:06:34 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 06 Feb 2019 06:06:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 06 Feb 2019 06:07:07 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 06 Feb 2019 06:07:09 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Wed, 06 Feb 2019 06:07:09 GMT
ENV KIBANA_VERSION=5.6.14
# Wed, 06 Feb 2019 06:09:08 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Wed, 06 Feb 2019 06:09:09 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 06:09:10 GMT
COPY file:f6ce7cbdcbcd38cf6fa747d74a0c868682ca02deaf474def026b8dec2a9e66e5 in / 
# Wed, 06 Feb 2019 06:09:10 GMT
EXPOSE 5601
# Wed, 06 Feb 2019 06:09:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 06 Feb 2019 06:09:11 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:ff42297909573059acb8e981efbc12eff68641f8449f04470a4f218e53a1e80e`  
		Last Modified: Wed, 06 Feb 2019 03:33:25 GMT  
		Size: 54.4 MB (54384652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a320c16a86d07af50ef25a101a0265e5a35a99549a6a8700a309266e00909f`  
		Last Modified: Wed, 06 Feb 2019 06:09:22 GMT  
		Size: 4.4 KB (4402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da6379c48b5963c3e2ccf16b064ed7957617ee64e39ef6a934a969f8d4178f8`  
		Last Modified: Wed, 06 Feb 2019 06:09:27 GMT  
		Size: 20.7 MB (20668054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a152d646a157f950071b912b9fc1bc04bd07f68208f6410a2482f6cf000ec6`  
		Last Modified: Wed, 06 Feb 2019 06:09:22 GMT  
		Size: 500.7 KB (500663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c25d6ecc6fe3f3a4dfd8db0a301160d0b87e1dc978fd0ebdef0a098a488a910`  
		Last Modified: Wed, 06 Feb 2019 06:09:21 GMT  
		Size: 7.3 KB (7295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff99301616248cafa2909caaeac9a5a15534e7aa6c89409b31051cd5af3f1abc`  
		Last Modified: Wed, 06 Feb 2019 06:09:21 GMT  
		Size: 1.5 KB (1454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30747dc13635377c8263af426ae10b4a303abc853effbd6f7e8770221bf2ade4`  
		Last Modified: Wed, 06 Feb 2019 06:09:22 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe8ba49acaa677846e1991e465b6a07334480f70ae1aa7579e203cc746fe0b5b`  
		Last Modified: Wed, 06 Feb 2019 06:09:39 GMT  
		Size: 54.2 MB (54235050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c3a45b2e1f06b7b27d9446421cd399771f15c7dfbddc0c1b5b488906c1122fa`  
		Last Modified: Wed, 06 Feb 2019 06:09:21 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:6.6.0`

```console
$ docker pull kibana@sha256:6bf8be73f870a8e0a94e29c3ab7d300d8c1510c496b8581710abd812d4176523
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:6.6.0` - linux; amd64

```console
$ docker pull kibana@sha256:7c6eadb13667e36d21b7e96809a02d14527c15bbfc5b92631168a58ed5f9fd33
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.0 MB (279016615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfc685453eaa13426483628b123b65dec0b84eaba7fd5e1c1ac988218ea71e06`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 24 Jan 2019 12:09:29 GMT
EXPOSE 5601
# Thu, 24 Jan 2019 12:09:38 GMT
RUN yum update -y && yum install -y fontconfig freetype && yum clean all
# Thu, 24 Jan 2019 12:09:39 GMT
WORKDIR /usr/share/kibana
# Thu, 24 Jan 2019 12:10:10 GMT
RUN curl -Ls http://localhost:8000/kibana/target/kibana-6.6.0-linux-x86_64.tar.gz | tar --strip-components=1 -zxf - &&     ln -s /usr/share/kibana /opt/kibana &&     chown -R 1000:0 . &&     chmod -R g=u /usr/share/kibana &&     find /usr/share/kibana -type d -exec chmod g+s {} \;
# Thu, 24 Jan 2019 12:10:12 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 24 Jan 2019 12:10:12 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 24 Jan 2019 12:10:12 GMT
COPY --chown=1000:0file:2c9b351c7512ff200b350310fe751b2d52ed3bb748386081bbc89592fdf7eff2 in /usr/share/kibana/config/kibana.yml 
# Thu, 24 Jan 2019 12:10:12 GMT
COPY --chown=1000:0file:2922d7173905acc734cf06c924272c4aaccae400642541e832c086c1f0cd424e in /usr/local/bin/ 
# Thu, 24 Jan 2019 12:10:12 GMT
COPY --chown=1000:0multi:ec65c62d6619069c5768a37a923aff3bc5da64ee746fe458069d0826e9e080cf in /usr/share/kibana/config/ 
# Thu, 24 Jan 2019 12:10:13 GMT
RUN find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \;
# Thu, 24 Jan 2019 12:10:13 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000       --home-dir /usr/share/kibana --no-create-home       kibana
# Thu, 24 Jan 2019 12:10:13 GMT
USER 1000
# Thu, 24 Jan 2019 12:10:14 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.label-schema.name=kibana org.label-schema.version=6.6.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.vcs-url=https://github.com/elastic/kibana-docker license=Elastic License
# Thu, 24 Jan 2019 12:10:14 GMT
CMD ["/usr/local/bin/kibana-docker"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a27675b8c29d30b8b8f14558fed648abc4509cecd368fe5ea59cf7563e5d4d`  
		Last Modified: Tue, 29 Jan 2019 12:58:04 GMT  
		Size: 21.6 MB (21562676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51e9e0f40535c2778fea8dbbeabfcb479c689ff24daadd6cb28218a330646064`  
		Last Modified: Tue, 29 Jan 2019 12:58:00 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e85e39792643549beb3787f3bcc0e0f0ba086f8eebf54de406b8afe72fbdaf7`  
		Last Modified: Tue, 29 Jan 2019 12:58:27 GMT  
		Size: 182.3 MB (182279192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453163abee954a897f24e4cb8d992f771b38affeb87c06e4043eb1e06241fb56`  
		Last Modified: Tue, 29 Jan 2019 12:57:57 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0743a8e7a687ffa3bb87b25c0cbba9c38d1665b51ba3fed0b4da2a3924569c5d`  
		Last Modified: Tue, 29 Jan 2019 12:57:58 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37c2716e7fb8c523a9bee9a1e60b1483a8b30d57e75ce0bf7fb0689e8d718d4`  
		Last Modified: Tue, 29 Jan 2019 12:57:57 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81893483caebd60baf38f5eff8846feb821d19e9b09149616032220cec388b5f`  
		Last Modified: Tue, 29 Jan 2019 12:57:57 GMT  
		Size: 2.6 KB (2626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1ef1f071043b59766a2d28e5cd9ea8e2ff8d691f1e4bc8c9c4d6fd4b751973`  
		Last Modified: Tue, 29 Jan 2019 12:57:57 GMT  
		Size: 1.6 KB (1605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
