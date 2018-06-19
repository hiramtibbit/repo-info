## `nuxeo:FT`

```console
$ docker pull nuxeo@sha256:dbf168e28872ff2857f0c7c9e45a0be5aebcd3e4bf0cba8d1d625b5913f60a15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:FT` - linux; amd64

```console
$ docker pull nuxeo@sha256:055bd85aff05edd858c88f7b77c2335d9f8620247192b2b79fdb94ed34c19027
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1391314184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c269ff84e1dcf80b4546ddd07f483fe743af91978b4c13368aa48f071f616fb6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Jun 2018 23:14:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 01:55:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 01:55:55 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:55:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 01:55:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 01:56:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 01:56:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 06 Jun 2018 04:07:20 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 06 Jun 2018 04:19:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice  && rm -rf /var/lib/apt/lists/*
# Tue, 19 Jun 2018 19:16:24 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 19 Jun 2018 19:16:24 GMT
ENV NUXEO_USER=nuxeo
# Tue, 19 Jun 2018 19:16:24 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 19 Jun 2018 19:16:24 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 19 Jun 2018 19:45:39 GMT
ARG NUXEO_VERSION=10.1
# Tue, 19 Jun 2018 19:45:39 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip
# Tue, 19 Jun 2018 19:45:39 GMT
ARG NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162
# Tue, 19 Jun 2018 19:45:40 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162 NUXEO_VERSION=10.1
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 19 Jun 2018 19:57:07 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162 NUXEO_VERSION=10.1
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Tue, 19 Jun 2018 19:57:08 GMT
COPY dir:6ff2a7cd59ae46215c04b0ef5347f96b1b3912245284bfcfc0080b9d688f08f0 in /opt/nuxeo/server/templates/docker 
# Tue, 19 Jun 2018 19:57:08 GMT
COPY file:4bef2f1f6b4ee418c784459e2fef01d05a75976842dfa0d5708e86cff319a87c in /etc/nuxeo/nuxeo.conf.template 
# Tue, 19 Jun 2018 19:57:08 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Tue, 19 Jun 2018 19:57:18 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162 NUXEO_VERSION=10.1
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Tue, 19 Jun 2018 19:57:18 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Jun 2018 19:57:18 GMT
WORKDIR /opt/nuxeo/server
# Tue, 19 Jun 2018 19:57:19 GMT
COPY file:749f7de88227793c0214c52f0deb9d353a9a98ccf05c06ddca1eaafa3fae3e51 in / 
# Tue, 19 Jun 2018 19:57:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 19 Jun 2018 19:57:19 GMT
EXPOSE 8080/tcp
# Tue, 19 Jun 2018 19:57:19 GMT
EXPOSE 8787/tcp
# Tue, 19 Jun 2018 19:57:19 GMT
CMD ["nuxeoctl" "console"]
# Tue, 19 Jun 2018 19:57:19 GMT
USER [1000]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c05365ee2a2245bb9f6786bc88aa12bf64da676a52668424437826d0f0cb92`  
		Last Modified: Tue, 05 Jun 2018 23:41:58 GMT  
		Size: 10.8 MB (10774184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231cb0e216d30ea48044d44d37fba016eb67eca9b19b29a741d95775359d3533`  
		Last Modified: Tue, 05 Jun 2018 23:41:55 GMT  
		Size: 4.3 MB (4335886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2aa70286b89febc36370098220c9b2960cc67c03375c9df4e82736519f1e8a`  
		Last Modified: Tue, 05 Jun 2018 23:42:32 GMT  
		Size: 50.1 MB (50063911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:276ddd61a47bf599ce5a661fc1c028903efd982c1aeed6f206e521215c24f054`  
		Last Modified: Wed, 06 Jun 2018 02:16:12 GMT  
		Size: 892.5 KB (892508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c60f2a0b5512e9dc45835e4d02930ca36905378bab4cd52c22378017da1419a`  
		Last Modified: Wed, 06 Jun 2018 02:16:09 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4abbe5585c9b201f4cc15964582b4085018f86bbd6dfd1223c9b4fb3ed6420b1`  
		Last Modified: Wed, 06 Jun 2018 02:16:09 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaeb39f0b473ec0d40a97e515dad235a0a0998ac33a3909f7a6554ff6527234d`  
		Last Modified: Wed, 06 Jun 2018 02:16:49 GMT  
		Size: 134.0 MB (133972730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ec96bfaf1628b8d5fc8b7cd38c422f89e802a9986d910851745f30e043daa4`  
		Last Modified: Wed, 06 Jun 2018 02:16:11 GMT  
		Size: 272.1 KB (272090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270212c50bab8145ba6a8d3a981cf0fdeeae43211ac258f533a25a4265cc474d`  
		Last Modified: Wed, 06 Jun 2018 04:49:27 GMT  
		Size: 239.0 MB (239038975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7ca5c8da557f53c751655995e852522598328b068e05d0438761cbee5c4cb6`  
		Last Modified: Tue, 19 Jun 2018 20:04:35 GMT  
		Size: 4.4 KB (4428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12747d83532293b8cace186a7445367ab2e5904098a5d2be9c43fd6780ca39a0`  
		Last Modified: Tue, 19 Jun 2018 20:06:47 GMT  
		Size: 453.3 MB (453316655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a97f179fc9c74dd5f3cca0c6011eb79a758505ca53ec178475c089b22b0cb4e`  
		Last Modified: Tue, 19 Jun 2018 20:04:32 GMT  
		Size: 610.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07c58a423e829eb7aa33c9807f229f5a155b158798d21bf6002007e945e3c8a5`  
		Last Modified: Tue, 19 Jun 2018 20:04:32 GMT  
		Size: 1.0 KB (1017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c3059329462b71fdf6fac297e3ce5dbe0c095703e3d6f615a2c96030697a36`  
		Last Modified: Tue, 19 Jun 2018 20:06:50 GMT  
		Size: 453.3 MB (453321595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6265477f3f8aff2ad006d9291a1b9d607832dbea1cecb9318c6ac46486dc8392`  
		Last Modified: Tue, 19 Jun 2018 20:04:32 GMT  
		Size: 1.1 KB (1055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
