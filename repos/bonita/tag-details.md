<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `bonita`

-	[`bonita:7.5.4`](#bonita754)
-	[`bonita:7.6.2`](#bonita762)
-	[`bonita:latest`](#bonitalatest)

## `bonita:7.5.4`

```console
$ docker pull bonita@sha256:3f38e9ff28ce1695b6e887ecbfdca8a0c9599954737b759d23f55a166783e38d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `bonita:7.5.4` - linux; amd64

```console
$ docker pull bonita@sha256:0c6b41705e005c8fdcc132be9970a54d15cf4a40d2f5a430dbd4432f43499651
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.0 MB (214004174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db5e3e13d05f7608718e3e3551def96f594e38d18f1eb2a53e006c2fd2e1a565`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Thu, 25 Jan 2018 18:23:30 GMT
ADD file:a3344b835ea6fdc5692df23826c970403656c6947342e117b2ac1a05956679af in / 
# Thu, 25 Jan 2018 18:23:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:23:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:23:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:23:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:23:51 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 22:31:38 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Thu, 25 Jan 2018 22:32:12 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 22:32:13 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 25 Jan 2018 22:32:14 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Thu, 25 Jan 2018 22:32:16 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 25 Jan 2018 22:32:20 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Thu, 25 Jan 2018 22:32:20 GMT
ARG BONITA_VERSION
# Thu, 25 Jan 2018 22:32:20 GMT
ARG TOMCAT_VERSION
# Thu, 25 Jan 2018 22:32:20 GMT
ARG BONITA_SHA256
# Thu, 25 Jan 2018 22:32:21 GMT
ARG BONITA_URL
# Thu, 25 Jan 2018 22:32:21 GMT
ENV BONITA_VERSION=7.5.4
# Thu, 25 Jan 2018 22:32:21 GMT
ENV TOMCAT_VERSION=7.0.76
# Thu, 25 Jan 2018 22:32:21 GMT
ENV BONITA_SHA256=b7ccec231d9083b1b532b0aeaa4de3d38d91cae12df1725f8a802be5be170d21
# Thu, 25 Jan 2018 22:32:32 GMT
ENV BONITA_URL=https://download.forge.ow2.org/bonita/BonitaBPMCommunity-7.5.4-Tomcat-7.0.76.zip
# Thu, 25 Jan 2018 22:32:44 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 25 Jan 2018 22:32:47 GMT
RUN sha256sum /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 25 Jan 2018 22:32:48 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Thu, 25 Jan 2018 22:32:48 GMT
VOLUME [/opt/bonita]
# Thu, 25 Jan 2018 22:32:49 GMT
COPY dir:67158d50f6a23f242c6ece683aa22b62bf43e8403082c8a4b4c012ca3a3a0ac5 in /opt/files 
# Thu, 25 Jan 2018 22:32:59 GMT
COPY dir:9e855bbda97f640b6f8a3bf683a8ededee121c2f7673879b001ba4ea3a53d38b in /opt/templates 
# Thu, 25 Jan 2018 22:33:00 GMT
EXPOSE 8080/tcp
# Thu, 25 Jan 2018 22:33:00 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:1be7f2b886e89a58e59c4e685fcc5905a26ddef3201f290b96f1eff7d778e122`  
		Last Modified: Wed, 24 Jan 2018 23:46:22 GMT  
		Size: 42.9 MB (42863496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbc4a21b806838b63b774b338c6ad19d696a9e655f50b4e358cc4006c3baa79`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71a6f8e13782fed125f2247931c3eb20cc0e6428a5d79edb546f1f1405f0e49`  
		Last Modified: Thu, 25 Jan 2018 18:27:27 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be3072e5a37392e32f632bb234c0b461ff5675ab7e362afad6359fbd36884af`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c6d2f5970057aef3aef6da60f0fde280db1c077f0cd88ca33ec1a70a9c7b58`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0469603e16fe27e6e5fc24bbff10e1217eec4133c63a0e2c23b2aec319e39fbe`  
		Last Modified: Thu, 25 Jan 2018 22:34:32 GMT  
		Size: 82.7 MB (82672632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078a7dba7664510641efa1b8673baaf2d1163a69d7d7720760bfcba951061cc7`  
		Last Modified: Thu, 25 Jan 2018 22:34:20 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c7a42083acfd867256b71f2924e56baa201e6288041cee66394016d562820f`  
		Last Modified: Thu, 25 Jan 2018 22:34:18 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7db4a73d21ba9839984bad6b36ca3a9a1c26c132ce5fd655b9b22c269f1a4d`  
		Last Modified: Thu, 25 Jan 2018 22:34:19 GMT  
		Size: 133.2 KB (133183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c3c9892cf6dc9ee30933d529cc723caf21b6e400ad1e5ff18195c58812201bc`  
		Last Modified: Thu, 25 Jan 2018 22:34:17 GMT  
		Size: 818.6 KB (818566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9409121047a8ba101e643d7f7d6f56071e1eea9d19649064349f45eb5658237c`  
		Last Modified: Thu, 25 Jan 2018 22:34:21 GMT  
		Size: 87.5 MB (87503857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4104a3e3e6dfe41109372589191bafc211848ac1e11e89decd9544e7e5c64b82`  
		Last Modified: Thu, 25 Jan 2018 22:34:16 GMT  
		Size: 6.2 KB (6172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a60465b2b3705610a66730bb3886bf036a79441239639a862e1b722fdeab3e`  
		Last Modified: Thu, 25 Jan 2018 22:34:16 GMT  
		Size: 1.6 KB (1610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.6.2`

**does not exist** (yet?)

## `bonita:latest`

```console
$ docker pull bonita@sha256:1338cc6ce1ca30d9014e480f809da6278286a7abeb178cdc882488315dbd1879
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `bonita:latest` - linux; amd64

```console
$ docker pull bonita@sha256:420c06e9e41b291ab37d420fe5af843259e09d72e5d573d5efdb3351507a8bf3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.8 MB (214816446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5b09ee38b710fd21cdd65a8166ef494f70483c72668efa770a2587f96ac74fc`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Thu, 25 Jan 2018 18:23:30 GMT
ADD file:a3344b835ea6fdc5692df23826c970403656c6947342e117b2ac1a05956679af in / 
# Thu, 25 Jan 2018 18:23:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:23:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:23:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:23:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:23:51 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 22:31:38 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Thu, 25 Jan 2018 22:32:12 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 22:32:13 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 25 Jan 2018 22:32:14 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Thu, 25 Jan 2018 22:32:16 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 25 Jan 2018 22:32:20 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Thu, 25 Jan 2018 22:32:20 GMT
ARG BONITA_VERSION
# Thu, 25 Jan 2018 22:32:20 GMT
ARG TOMCAT_VERSION
# Thu, 25 Jan 2018 22:32:20 GMT
ARG BONITA_SHA256
# Thu, 25 Jan 2018 22:32:21 GMT
ARG BONITA_URL
# Thu, 25 Jan 2018 22:33:37 GMT
ENV BONITA_VERSION=7.6.1
# Thu, 25 Jan 2018 22:33:37 GMT
ENV TOMCAT_VERSION=8.5.23
# Thu, 25 Jan 2018 22:33:37 GMT
ENV BONITA_SHA256=a35359dbaf4ea4bebeb520a22d733d93625281080f4cbad581b0ff7581b94785
# Thu, 25 Jan 2018 22:33:37 GMT
ENV BONITA_URL=https://download.forge.ow2.org/bonita/BonitaCommunity-7.6.1-Tomcat-8.5.23.zip
# Thu, 25 Jan 2018 22:33:49 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 25 Jan 2018 22:33:52 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 25 Jan 2018 22:33:53 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Thu, 25 Jan 2018 22:33:53 GMT
VOLUME [/opt/bonita]
# Thu, 25 Jan 2018 22:33:54 GMT
COPY dir:922ea6ebf17819d868d6aee25bb5f7606ee9d4422a9d433bf71ce223d52a3f98 in /opt/files 
# Thu, 25 Jan 2018 22:33:54 GMT
COPY dir:8ca85ca324e0aeed811c4bd64a86bf6cebd3e105fb39fa3cf3c232fd56be7323 in /opt/templates 
# Thu, 25 Jan 2018 22:33:54 GMT
EXPOSE 8080/tcp
# Thu, 25 Jan 2018 22:33:55 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:1be7f2b886e89a58e59c4e685fcc5905a26ddef3201f290b96f1eff7d778e122`  
		Last Modified: Wed, 24 Jan 2018 23:46:22 GMT  
		Size: 42.9 MB (42863496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbc4a21b806838b63b774b338c6ad19d696a9e655f50b4e358cc4006c3baa79`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71a6f8e13782fed125f2247931c3eb20cc0e6428a5d79edb546f1f1405f0e49`  
		Last Modified: Thu, 25 Jan 2018 18:27:27 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be3072e5a37392e32f632bb234c0b461ff5675ab7e362afad6359fbd36884af`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c6d2f5970057aef3aef6da60f0fde280db1c077f0cd88ca33ec1a70a9c7b58`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0469603e16fe27e6e5fc24bbff10e1217eec4133c63a0e2c23b2aec319e39fbe`  
		Last Modified: Thu, 25 Jan 2018 22:34:32 GMT  
		Size: 82.7 MB (82672632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078a7dba7664510641efa1b8673baaf2d1163a69d7d7720760bfcba951061cc7`  
		Last Modified: Thu, 25 Jan 2018 22:34:20 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c7a42083acfd867256b71f2924e56baa201e6288041cee66394016d562820f`  
		Last Modified: Thu, 25 Jan 2018 22:34:18 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7db4a73d21ba9839984bad6b36ca3a9a1c26c132ce5fd655b9b22c269f1a4d`  
		Last Modified: Thu, 25 Jan 2018 22:34:19 GMT  
		Size: 133.2 KB (133183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c3c9892cf6dc9ee30933d529cc723caf21b6e400ad1e5ff18195c58812201bc`  
		Last Modified: Thu, 25 Jan 2018 22:34:17 GMT  
		Size: 818.6 KB (818566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:938f0b3954c41018550791fa82b6b0cc8412d2524a4d934da1719a4d786452dc`  
		Last Modified: Thu, 25 Jan 2018 22:34:56 GMT  
		Size: 88.3 MB (88315873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e52db2a03265666579ffcd1a758c3c5be5159bf20a5a7ac8c5f507c0a71163`  
		Last Modified: Thu, 25 Jan 2018 22:34:51 GMT  
		Size: 6.4 KB (6383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0c48eb4ecf23a1f2f39a820e3c412f46683827d5a7cd4109d36f9c91ad04383`  
		Last Modified: Thu, 25 Jan 2018 22:34:50 GMT  
		Size: 1.7 KB (1655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
