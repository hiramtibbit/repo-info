## `nuxeo:FT`

```console
$ docker pull nuxeo@sha256:7a970fb53ac88f26b5e8069583ca04f0eeb14f3c568d35ac378ddad44a8d95fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:FT` - linux; amd64

```console
$ docker pull nuxeo@sha256:d66f8acb33450b56edbe29569e2c91711d133f7069010c064165c394ba50c46c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 GB (1191146831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b8a451f4773c329d13cd0a4f60a41f8842e33ff9213034228eb48f4af948d1a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 22 Jan 2019 20:06:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 21:11:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 21:16:38 GMT
ENV LANG=C.UTF-8
# Tue, 22 Jan 2019 21:16:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 22 Jan 2019 21:16:40 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 22 Jan 2019 21:16:40 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 22 Jan 2019 21:16:41 GMT
ENV JAVA_VERSION=8u181
# Tue, 22 Jan 2019 21:16:41 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 22 Jan 2019 21:17:34 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Jan 2019 06:52:42 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 23 Jan 2019 06:56:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 06:56:34 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Wed, 23 Jan 2019 06:56:34 GMT
ENV NUXEO_USER=nuxeo
# Wed, 23 Jan 2019 06:56:34 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 23 Jan 2019 06:56:34 GMT
ENV HOME=/opt/nuxeo/server
# Wed, 23 Jan 2019 07:00:15 GMT
ARG NUXEO_VERSION=10.3
# Wed, 23 Jan 2019 07:00:15 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.3/nuxeo-server-10.3-tomcat.zip
# Wed, 23 Jan 2019 07:00:15 GMT
ARG NUXEO_MD5=e2f32f59ce6aebe06c5ac4c1971b1787
# Wed, 23 Jan 2019 07:00:16 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.3/nuxeo-server-10.3-tomcat.zip NUXEO_MD5=e2f32f59ce6aebe06c5ac4c1971b1787 NUXEO_VERSION=10.3
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 23 Jan 2019 07:00:51 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.3/nuxeo-server-10.3-tomcat.zip NUXEO_MD5=e2f32f59ce6aebe06c5ac4c1971b1787 NUXEO_VERSION=10.3
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Wed, 23 Jan 2019 07:00:52 GMT
COPY dir:1d4b19e1e35500d85eafcc58364498b9325f119ce19917cefc60c7ad98e600e7 in /opt/nuxeo/server/templates/docker 
# Wed, 23 Jan 2019 07:00:52 GMT
COPY file:8f1eb15b3cc87be8784ed6bc39c958a3a06d1e375bda2ce728f297d14d74d526 in /etc/nuxeo/nuxeo.conf.template 
# Wed, 23 Jan 2019 07:00:52 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Wed, 23 Jan 2019 07:01:01 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.3/nuxeo-server-10.3-tomcat.zip NUXEO_MD5=e2f32f59ce6aebe06c5ac4c1971b1787 NUXEO_VERSION=10.3
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Wed, 23 Jan 2019 07:01:01 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 07:01:01 GMT
WORKDIR /opt/nuxeo/server
# Wed, 23 Jan 2019 07:01:02 GMT
COPY file:d8f37458746cb2e17dae348b52babe8b858743784ee8dffc0c24d7026bf0e474 in / 
# Wed, 23 Jan 2019 07:01:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Jan 2019 07:01:02 GMT
EXPOSE 8080
# Wed, 23 Jan 2019 07:01:02 GMT
EXPOSE 8787
# Wed, 23 Jan 2019 07:01:02 GMT
CMD ["nuxeoctl" "console"]
# Wed, 23 Jan 2019 07:01:03 GMT
USER 1000
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1dd648b5ade2bbdfe77fa94424b0314100b58fb5f6a98486538c2126e08e2f`  
		Last Modified: Tue, 22 Jan 2019 20:13:28 GMT  
		Size: 50.1 MB (50062800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f886e483d6dc67cd1f7c19ed3e45348f3b1af49fe9b5f40fdfca2043281b76`  
		Last Modified: Tue, 22 Jan 2019 21:38:45 GMT  
		Size: 892.4 KB (892370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4346341d3c496637595bfdaad3837beba171fb2194b1abf1f5d0c898a2d2d477`  
		Last Modified: Tue, 22 Jan 2019 21:41:18 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006f2208d67a691a10ab1deab2f6dfbf600f087b0f6df94f8dc6cde9fc3928fe`  
		Last Modified: Tue, 22 Jan 2019 21:41:18 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb85cf26717dc607155f9ea8b38b0d89ca987fbfd5786b4639afc2062176fd10`  
		Last Modified: Tue, 22 Jan 2019 21:41:51 GMT  
		Size: 134.0 MB (133975924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7233970deaaf0a8088251b68a6f8a345d9781fb575ec4188d9e2d7605fb61dc`  
		Last Modified: Wed, 23 Jan 2019 07:03:48 GMT  
		Size: 243.1 MB (243102844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83dbe86e2ea6bbd22521ebd494ae0545bc7bc83ff8e68e79bd15390f90f01c27`  
		Last Modified: Wed, 23 Jan 2019 07:05:59 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70727533ed185c8c6e930b29c8399ae59c2228d73567078cabe8b7a78fd05cba`  
		Last Modified: Wed, 23 Jan 2019 07:06:28 GMT  
		Size: 351.3 MB (351319194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07774d67c14cdd936b9b7e2a0b8bbaf37bab14de88d92c2eb58959ff434fd299`  
		Last Modified: Wed, 23 Jan 2019 07:05:58 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97d4aeaf289b87b5a49373443ce6c147b4cd966bbd51364131cf217e7bf1d422`  
		Last Modified: Wed, 23 Jan 2019 07:05:58 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f19ba5355848f36a3f8e7b091aa963eda78cd35044fe9a2c20876f3883a0f70`  
		Last Modified: Wed, 23 Jan 2019 07:06:28 GMT  
		Size: 351.3 MB (351320480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d05f1e20a87c8aa3a31c0d03159938a3307a5b2ce8706030e5b71b6442caa58`  
		Last Modified: Wed, 23 Jan 2019 07:05:58 GMT  
		Size: 1.0 KB (1022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
