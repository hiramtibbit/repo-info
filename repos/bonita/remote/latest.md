## `bonita:latest`

```console
$ docker pull bonita@sha256:f51c1d8c79eb4a59b570bf93d6e3b8332f2c7160d442d6fb0394ead971d933d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `bonita:latest` - linux; amd64

```console
$ docker pull bonita@sha256:a4f702e1b02adcf69300f2e7cc4aa040979a80c5065224468aa2e14d1a9ff27d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.6 MB (214567477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95f1bc296d42912eccff6af3c4cacb8dbb7d74adf096ce4bc0203f0aab36973d`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:55 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 05 Sep 2018 22:20:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:57 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 22:39:35 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 05 Sep 2018 22:40:20 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:40:21 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 05 Sep 2018 22:40:21 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 05 Sep 2018 22:40:22 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Sep 2018 22:40:24 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 05 Sep 2018 22:40:24 GMT
ARG BONITA_VERSION
# Wed, 05 Sep 2018 22:40:24 GMT
ARG TOMCAT_VERSION
# Wed, 05 Sep 2018 22:40:24 GMT
ARG BONITA_SHA256
# Wed, 05 Sep 2018 22:40:24 GMT
ARG BONITA_URL
# Tue, 09 Oct 2018 19:19:25 GMT
ENV BONITA_VERSION=7.7.4
# Tue, 09 Oct 2018 19:19:25 GMT
ENV TOMCAT_VERSION=8.5.31
# Tue, 09 Oct 2018 19:19:26 GMT
ENV BONITA_SHA256=eff9030475c01e5493f66683fbf7beecfde4c618d82f9911f1a3aa21c0294671
# Tue, 09 Oct 2018 19:19:26 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.4-Tomcat-8.5.31.zip
# Tue, 09 Oct 2018 19:19:37 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 09 Oct 2018 19:19:38 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 09 Oct 2018 19:19:39 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Tue, 09 Oct 2018 19:19:39 GMT
VOLUME [/opt/bonita]
# Tue, 09 Oct 2018 19:19:39 GMT
COPY dir:54e2aa3a901daf192e4916306de581c3b5abe3185f3c0ef0386107f80837ec74 in /opt/files 
# Tue, 09 Oct 2018 19:19:40 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Tue, 09 Oct 2018 19:19:40 GMT
EXPOSE 8080/tcp
# Tue, 09 Oct 2018 19:19:40 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504facff238fde83f1ca8f9f54520b4219c5b8f80be9616ddc52d31448a044bd`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbcacd28e101968415b0c812b2d2dc60f969e36b0b08c073bf796e12b1bb449`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fb3351ecad291a88b92b600037e2435c84a347683d540042086fe72c902b8a`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3debadcbf7e542e2aefbce1b64a358b1931fb403b3e4aeca27cb4d809d56c2`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b588ae445f9bab168b906985cb68842f1285d23a719c47a9afe6063faf466a7`  
		Last Modified: Wed, 05 Sep 2018 23:12:48 GMT  
		Size: 82.8 MB (82837334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13336ee4b6767837efdd12f397fc0f1ba93072f2fe326645c755f8948cf6ec89`  
		Last Modified: Wed, 05 Sep 2018 23:12:32 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6152fe88088153525e4a1e690113d89c9c49c3032d6009c72a2c537edab9c86`  
		Last Modified: Wed, 05 Sep 2018 23:12:31 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f805847ed8e67a1b7a070432aec892fd6ecee4c970edc39b3d7406c9357685f`  
		Last Modified: Wed, 05 Sep 2018 23:12:30 GMT  
		Size: 140.6 KB (140588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9313090bbccd196fec306018f9595be942b309ecfb3eb22b7d6b00e66a89ecc1`  
		Last Modified: Wed, 05 Sep 2018 23:12:31 GMT  
		Size: 500.7 KB (500741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a6846704089f7ce3b760cecaaaf16ae68e70939b6e084d62c4f2d41de99a03f`  
		Last Modified: Tue, 09 Oct 2018 19:19:58 GMT  
		Size: 87.8 MB (87823579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d365673a537261b24c46552683a32c2b7fe666c20c5fafe6f2647852bab8c505`  
		Last Modified: Tue, 09 Oct 2018 19:19:52 GMT  
		Size: 6.4 KB (6400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:639d7bb26adb0daeecfe83faa56bcf80a73755dffabb01912cfca31aa395669e`  
		Last Modified: Tue, 09 Oct 2018 19:19:52 GMT  
		Size: 1.7 KB (1684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:latest` - linux; ppc64le

```console
$ docker pull bonita@sha256:71eb8c55b23eb1224e63ecb201f40013aa126589f3dbdd5d845c4bd717ba904d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.3 MB (211341563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:226df8c0d7699b8005c97f9c7f541d593e4f90057971b352879fcb06cf06af84`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Thu, 23 Aug 2018 12:50:13 GMT
ADD file:b09779db95ed098d4ff481c60f9070c9855d49079531c872f7f306766b31a320 in / 
# Thu, 23 Aug 2018 12:50:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:50:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:50:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:50:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:50:31 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:54:12 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Thu, 23 Aug 2018 16:01:33 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 16:02:03 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 23 Aug 2018 16:02:14 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Thu, 23 Aug 2018 16:02:24 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 23 Aug 2018 16:02:34 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Thu, 23 Aug 2018 16:02:36 GMT
ARG BONITA_VERSION
# Thu, 23 Aug 2018 16:02:39 GMT
ARG TOMCAT_VERSION
# Thu, 23 Aug 2018 16:02:44 GMT
ARG BONITA_SHA256
# Thu, 23 Aug 2018 16:02:47 GMT
ARG BONITA_URL
# Wed, 10 Oct 2018 08:23:06 GMT
ENV BONITA_VERSION=7.7.4
# Wed, 10 Oct 2018 08:23:07 GMT
ENV TOMCAT_VERSION=8.5.31
# Wed, 10 Oct 2018 08:23:07 GMT
ENV BONITA_SHA256=eff9030475c01e5493f66683fbf7beecfde4c618d82f9911f1a3aa21c0294671
# Wed, 10 Oct 2018 08:23:08 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.4-Tomcat-8.5.31.zip
# Wed, 10 Oct 2018 08:24:04 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 10 Oct 2018 08:24:07 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 10 Oct 2018 08:24:22 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 10 Oct 2018 08:24:33 GMT
VOLUME [/opt/bonita]
# Wed, 10 Oct 2018 08:24:34 GMT
COPY dir:54e2aa3a901daf192e4916306de581c3b5abe3185f3c0ef0386107f80837ec74 in /opt/files 
# Wed, 10 Oct 2018 08:24:36 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Wed, 10 Oct 2018 08:24:36 GMT
EXPOSE 8080/tcp
# Wed, 10 Oct 2018 08:24:37 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:0d0dbb9a021cbff2129dab2bc36f95d25c2bde53c72d61c87f45f4b14b810ebc`  
		Last Modified: Thu, 23 Aug 2018 12:53:07 GMT  
		Size: 45.6 MB (45595505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5cb08b3a0bd0961e0ecbe16b6c544124a22f1beca9f3621f59e5cd5e2346d49`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10066c30deaec81ef942231f5f84b5782b7cf7bcf78c389453617b7265465be2`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d604dc40c1d1c57ec0ba6faed21bc3b4e8ea4fa54eb547fbc134e7c73d468203`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b9507f41bb4395530111a162394310249dfe8f51e0682c9c17747c09ff12f6`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75e673f0cae40f078ff4c0bcfbca227aa9d334d42e80076c32c305d2ebb0440`  
		Last Modified: Thu, 23 Aug 2018 16:09:52 GMT  
		Size: 77.3 MB (77299108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9afea67a042db7e888ebbe0b4edb1e1af872e22ecadd4eea989f79546b5f8e1`  
		Last Modified: Thu, 23 Aug 2018 16:09:29 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ae3f536d5e73d2c4a09b14f647aa3c6aeabaf4e319d36a6c990f53c612f346`  
		Last Modified: Thu, 23 Aug 2018 16:09:26 GMT  
		Size: 2.1 KB (2055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b73165c62a51426107c72136a92a5d65a1666fefa9bc816280d1b129a890e5ef`  
		Last Modified: Thu, 23 Aug 2018 16:09:09 GMT  
		Size: 140.6 KB (140608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa6822e1a23a13369ff5ab3f4f09c1fd6a66f63b8182460410f568ddefb248c`  
		Last Modified: Thu, 23 Aug 2018 16:09:08 GMT  
		Size: 469.9 KB (469926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6999f0006bbc4299a562a4747b24ade08f2cf75bbc921266e1ac27c892784dc7`  
		Last Modified: Wed, 10 Oct 2018 08:25:07 GMT  
		Size: 87.8 MB (87823606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b665ceb6e792e409d486a899e10eba442d12756fe4d66afa9fba6c21e7ebd1`  
		Last Modified: Wed, 10 Oct 2018 08:24:58 GMT  
		Size: 6.4 KB (6430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31d6c004b67a2140b61f94695e2c9b15b566ec0ab8670e82387ec1def7b2126d`  
		Last Modified: Wed, 10 Oct 2018 08:24:58 GMT  
		Size: 1.7 KB (1711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
