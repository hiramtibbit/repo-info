<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:5`](#kibana5)
-	[`kibana:5.6`](#kibana56)
-	[`kibana:5.6.15`](#kibana5615)
-	[`kibana:6.6.1`](#kibana661)

## `kibana:5`

```console
$ docker pull kibana@sha256:e17881be57f8f8646d2eaf422c0c5424bf8b7a2ca80831ef1bbc93afda58576e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5` - linux; amd64

```console
$ docker pull kibana@sha256:d83bd21568d5108cd66c55ec16cccfdcfea0f241681b1057f51d56fd68bf51bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.0 MB (129962471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2ddac696516cf17bad268851a49b04f2bb5049073d7d190b0e7e0f66e0683d8`
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
# Thu, 21 Feb 2019 22:21:50 GMT
ENV KIBANA_VERSION=5.6.15
# Thu, 21 Feb 2019 22:23:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Thu, 21 Feb 2019 22:23:52 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 21 Feb 2019 22:23:52 GMT
COPY file:f6ce7cbdcbcd38cf6fa747d74a0c868682ca02deaf474def026b8dec2a9e66e5 in / 
# Thu, 21 Feb 2019 22:23:52 GMT
EXPOSE 5601
# Thu, 21 Feb 2019 22:23:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Feb 2019 22:23:53 GMT
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
	-	`sha256:4f66fed7414546b694f167b1c243fb9a4c76c8ac95b48d262011c25f4f96578e`  
		Last Modified: Thu, 21 Feb 2019 22:24:56 GMT  
		Size: 54.4 MB (54395384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1f0d6e4eed6801ff09d00c46a7f0e23894800f3f5e71912b194b992ab11117`  
		Last Modified: Thu, 21 Feb 2019 22:24:40 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.6`

```console
$ docker pull kibana@sha256:e17881be57f8f8646d2eaf422c0c5424bf8b7a2ca80831ef1bbc93afda58576e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5.6` - linux; amd64

```console
$ docker pull kibana@sha256:d83bd21568d5108cd66c55ec16cccfdcfea0f241681b1057f51d56fd68bf51bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.0 MB (129962471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2ddac696516cf17bad268851a49b04f2bb5049073d7d190b0e7e0f66e0683d8`
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
# Thu, 21 Feb 2019 22:21:50 GMT
ENV KIBANA_VERSION=5.6.15
# Thu, 21 Feb 2019 22:23:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Thu, 21 Feb 2019 22:23:52 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 21 Feb 2019 22:23:52 GMT
COPY file:f6ce7cbdcbcd38cf6fa747d74a0c868682ca02deaf474def026b8dec2a9e66e5 in / 
# Thu, 21 Feb 2019 22:23:52 GMT
EXPOSE 5601
# Thu, 21 Feb 2019 22:23:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Feb 2019 22:23:53 GMT
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
	-	`sha256:4f66fed7414546b694f167b1c243fb9a4c76c8ac95b48d262011c25f4f96578e`  
		Last Modified: Thu, 21 Feb 2019 22:24:56 GMT  
		Size: 54.4 MB (54395384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1f0d6e4eed6801ff09d00c46a7f0e23894800f3f5e71912b194b992ab11117`  
		Last Modified: Thu, 21 Feb 2019 22:24:40 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.6.15`

```console
$ docker pull kibana@sha256:e17881be57f8f8646d2eaf422c0c5424bf8b7a2ca80831ef1bbc93afda58576e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5.6.15` - linux; amd64

```console
$ docker pull kibana@sha256:d83bd21568d5108cd66c55ec16cccfdcfea0f241681b1057f51d56fd68bf51bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.0 MB (129962471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2ddac696516cf17bad268851a49b04f2bb5049073d7d190b0e7e0f66e0683d8`
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
# Thu, 21 Feb 2019 22:21:50 GMT
ENV KIBANA_VERSION=5.6.15
# Thu, 21 Feb 2019 22:23:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Thu, 21 Feb 2019 22:23:52 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 21 Feb 2019 22:23:52 GMT
COPY file:f6ce7cbdcbcd38cf6fa747d74a0c868682ca02deaf474def026b8dec2a9e66e5 in / 
# Thu, 21 Feb 2019 22:23:52 GMT
EXPOSE 5601
# Thu, 21 Feb 2019 22:23:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Feb 2019 22:23:53 GMT
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
	-	`sha256:4f66fed7414546b694f167b1c243fb9a4c76c8ac95b48d262011c25f4f96578e`  
		Last Modified: Thu, 21 Feb 2019 22:24:56 GMT  
		Size: 54.4 MB (54395384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1f0d6e4eed6801ff09d00c46a7f0e23894800f3f5e71912b194b992ab11117`  
		Last Modified: Thu, 21 Feb 2019 22:24:40 GMT  
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
