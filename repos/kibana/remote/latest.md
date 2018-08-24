## `kibana:latest`

```console
$ docker pull kibana@sha256:b5dfced938a2eb12ae9b556b2a6c676f7bbd5dc66cd3c7c4a415dd27c469ffec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:latest` - linux; amd64

```console
$ docker pull kibana@sha256:8ab5774649a7a16b858cfd694c491819971afbd9cef4be62ae7a136bc7f80e9a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.2 MB (129199100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f30aec345e3aa735990402690eadd941185cda0b9fa64005f98af9eabd5c2c1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:16:46 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 17 Jul 2018 03:17:32 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:17:44 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 03:17:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 17 Jul 2018 03:17:48 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 17 Jul 2018 03:17:50 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 17 Jul 2018 03:18:00 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 03:18:00 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Fri, 24 Aug 2018 01:29:16 GMT
ENV KIBANA_VERSION=5.6.11
# Fri, 24 Aug 2018 01:30:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Fri, 24 Aug 2018 01:30:18 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Aug 2018 01:30:19 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Fri, 24 Aug 2018 01:30:19 GMT
EXPOSE 5601/tcp
# Fri, 24 Aug 2018 01:30:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 Aug 2018 01:30:20 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247a867a2053057dca2b21ccef4757ed5be7d53e2d65cd1db6baa777858b2f38`  
		Last Modified: Tue, 17 Jul 2018 03:21:53 GMT  
		Size: 4.4 KB (4402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba528f2f5301e769a32778e82fb6dee48d99de11b4bb1573e96282ce7e11c962`  
		Last Modified: Tue, 17 Jul 2018 03:21:59 GMT  
		Size: 20.7 MB (20666285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cefbf93b58720427edc0fdb7be942d0a699b96f86642869a2c87e4ed9473459`  
		Last Modified: Tue, 17 Jul 2018 03:21:53 GMT  
		Size: 500.7 KB (500663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bb3b4c3671702c26e35af153a3dd18558673be7c52361ae61b3316c687cbf03`  
		Last Modified: Tue, 17 Jul 2018 03:21:51 GMT  
		Size: 7.3 KB (7295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914e6e1dcce5a45e73e257912bffd48404218c1549b755e707c30d8915b9900f`  
		Last Modified: Tue, 17 Jul 2018 03:21:50 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b52099d3855e3229e4539890fcf159a5960bc2d9e6844651171ca5937f21eaa3`  
		Last Modified: Tue, 17 Jul 2018 03:21:50 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87138730495df298b3daf3b4042238a66293336be7eec3a6dd65d8ac2d16c7fb`  
		Last Modified: Fri, 24 Aug 2018 01:31:22 GMT  
		Size: 53.8 MB (53766316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e9d378d3ae545cbf8479161156d7f65ffafb7e44e0493bc7a297f16eeba91f3`  
		Last Modified: Fri, 24 Aug 2018 01:30:54 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
