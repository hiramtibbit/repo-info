## `nuxeo:LTS`

```console
$ docker pull nuxeo@sha256:b685ac221d35a45fa21faff68eeba4fec9cb17143f41862620932adbda40934b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `nuxeo:LTS` - linux; amd64

```console
$ docker pull nuxeo@sha256:81fbc094be6ce3c5acebb5fb69914ec1bb3b16562438c42d87991f4accb501af
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 GB (1199634422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05db30d0f80aa29af6d02a16a7b40b251779a72548d1119b1c3628430cf0f2d8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 05:51:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:24:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:28:29 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 08:28:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 08:28:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 08:28:31 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 08:28:31 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 08:28:31 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 08:29:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 15:48:59 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 06 Feb 2019 15:54:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 15:54:16 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Wed, 06 Feb 2019 15:54:16 GMT
ENV NUXEO_USER=nuxeo
# Wed, 06 Feb 2019 15:54:16 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 06 Feb 2019 15:54:17 GMT
ENV HOME=/opt/nuxeo/server
# Wed, 06 Feb 2019 15:56:57 GMT
ARG NUXEO_VERSION=10.10
# Wed, 06 Feb 2019 15:56:57 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip
# Wed, 06 Feb 2019 15:56:57 GMT
ARG NUXEO_MD5=90ef2ac005020e880b6277510800c30c
# Wed, 06 Feb 2019 15:56:59 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 06 Feb 2019 15:58:00 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Wed, 20 Feb 2019 22:19:54 GMT
COPY dir:d28c2b4bdf31f5817cba5496caa3161d743da596ec68186e0c444ede39dd58ac in /opt/nuxeo/server/templates/docker 
# Wed, 20 Feb 2019 22:19:54 GMT
COPY file:dbaa7cc62ad81fbafea7350f8e1ec2045fdc4a962bcfd145d777fefaf7205910 in /etc/nuxeo/nuxeo.conf.template 
# Wed, 20 Feb 2019 22:19:54 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Wed, 20 Feb 2019 22:20:03 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Wed, 20 Feb 2019 22:20:03 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 20 Feb 2019 22:20:03 GMT
WORKDIR /opt/nuxeo/server
# Wed, 20 Feb 2019 22:20:03 GMT
COPY file:d8f37458746cb2e17dae348b52babe8b858743784ee8dffc0c24d7026bf0e474 in / 
# Wed, 20 Feb 2019 22:20:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Feb 2019 22:20:04 GMT
EXPOSE 8080
# Wed, 20 Feb 2019 22:20:04 GMT
EXPOSE 8787
# Wed, 20 Feb 2019 22:20:04 GMT
CMD ["nuxeoctl" "console"]
# Wed, 20 Feb 2019 22:20:04 GMT
USER 1000
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d8874714d74b636739b8a52204650a664fca8ff9741dd66810f30196f103e2`  
		Last Modified: Wed, 06 Feb 2019 06:01:57 GMT  
		Size: 10.8 MB (10781099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a108aa2667933b852b8d003f97b344d014fcd7e06a0c0e6e04f2d6906738388`  
		Last Modified: Wed, 06 Feb 2019 06:01:56 GMT  
		Size: 4.3 MB (4340044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0334c36886bd4619e8d05ccf68003e53b0b6098b2166a216bd009dba678ed8`  
		Last Modified: Wed, 06 Feb 2019 06:02:14 GMT  
		Size: 50.1 MB (50063121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa29d9cbdbf5eff98907d574c79da86d6123e841a32d7c285b723393b9865a92`  
		Last Modified: Wed, 06 Feb 2019 08:50:45 GMT  
		Size: 892.4 KB (892400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e54d29f744131db0b44cf31e1c59e6320b17d5127afe41ffc745e6400b2f97c5`  
		Last Modified: Wed, 06 Feb 2019 08:53:17 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5b24cf4e1f1b9b16619a147fafe74bf61004e00035c6f62c9f02b5a9885662`  
		Last Modified: Wed, 06 Feb 2019 08:53:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5edfd6c9b4758084121024a24ed4b3721c12387bdfb6a87c6efea3e9a090bd51`  
		Last Modified: Wed, 06 Feb 2019 08:53:48 GMT  
		Size: 134.0 MB (133975246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:402a5bf277776f2b7b6f5aba70797987b8e6ebde56ef637f360b3e4f49ff9a47`  
		Last Modified: Wed, 06 Feb 2019 16:01:54 GMT  
		Size: 243.1 MB (243113033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a9ad26afb47acf2dc8a46662d0fc6d150226ad3811ef0e11de8e7f2cb69358`  
		Last Modified: Wed, 06 Feb 2019 16:02:49 GMT  
		Size: 4.4 KB (4420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ff2fffa5f59fab5f25de6053fa8f6335a8b53bcf3f30f2eefbb3d383160f1dd`  
		Last Modified: Wed, 06 Feb 2019 16:03:26 GMT  
		Size: 355.6 MB (355558722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ad9f4edb00c81fdde8b714764836d2c8d043d6fb7d3624edb51035be0fffc7`  
		Last Modified: Wed, 20 Feb 2019 22:20:17 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46dcdf9cd88c394108db2ea3fa05c78cf557058931dd34d177cdcfd869283cd7`  
		Last Modified: Wed, 20 Feb 2019 22:20:17 GMT  
		Size: 984.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cbb85d0cecf707873707378aba372b8b99d64e882da8d14e467c3130ea433c0`  
		Last Modified: Wed, 20 Feb 2019 22:20:39 GMT  
		Size: 355.6 MB (355559385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f393fdac27fcb66d730cdff49a2217048fba3145cc74fa78b86e6c8efd0d56a`  
		Last Modified: Wed, 20 Feb 2019 22:20:17 GMT  
		Size: 1.0 KB (1021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nuxeo:LTS` - linux; arm64 variant v8

```console
$ docker pull nuxeo@sha256:7702091fa0fcf618019c234b97fb0347f6a48d2713a988981818e6e1c35f02cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 GB (1171100861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01f3da2fef2082b5a12eb2391fc8e6cbcf3f5af15ba24e372d55fcbca6fe3ea5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:38:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 10:39:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 11:55:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:12:41 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 12:12:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 12:12:50 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 12:12:51 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 12:12:54 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 12:12:55 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 12:18:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 21 Feb 2019 09:54:49 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Thu, 21 Feb 2019 10:04:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Thu, 21 Feb 2019 10:05:17 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Thu, 21 Feb 2019 10:05:19 GMT
ENV NUXEO_USER=nuxeo
# Thu, 21 Feb 2019 10:05:19 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Thu, 21 Feb 2019 10:05:20 GMT
ENV HOME=/opt/nuxeo/server
# Thu, 21 Feb 2019 10:05:22 GMT
ARG NUXEO_VERSION=10.10
# Thu, 21 Feb 2019 10:05:23 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip
# Thu, 21 Feb 2019 10:05:25 GMT
ARG NUXEO_MD5=90ef2ac005020e880b6277510800c30c
# Thu, 21 Feb 2019 10:05:30 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Thu, 21 Feb 2019 10:08:32 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Thu, 21 Feb 2019 10:08:33 GMT
COPY dir:d28c2b4bdf31f5817cba5496caa3161d743da596ec68186e0c444ede39dd58ac in /opt/nuxeo/server/templates/docker 
# Thu, 21 Feb 2019 10:08:34 GMT
COPY file:dbaa7cc62ad81fbafea7350f8e1ec2045fdc4a962bcfd145d777fefaf7205910 in /etc/nuxeo/nuxeo.conf.template 
# Thu, 21 Feb 2019 10:08:34 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Thu, 21 Feb 2019 10:09:31 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Thu, 21 Feb 2019 10:09:33 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 21 Feb 2019 10:09:34 GMT
WORKDIR /opt/nuxeo/server
# Thu, 21 Feb 2019 10:09:35 GMT
COPY file:d8f37458746cb2e17dae348b52babe8b858743784ee8dffc0c24d7026bf0e474 in / 
# Thu, 21 Feb 2019 10:09:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Feb 2019 10:09:37 GMT
EXPOSE 8080
# Thu, 21 Feb 2019 10:09:38 GMT
EXPOSE 8787
# Thu, 21 Feb 2019 10:09:39 GMT
CMD ["nuxeoctl" "console"]
# Thu, 21 Feb 2019 10:09:40 GMT
USER 1000
```

-	Layers:
	-	`sha256:12bb1c82b086301ca1c22eabf3add7cd229f27b63ca4b0924e2356051d9e7194`  
		Last Modified: Wed, 06 Feb 2019 10:14:28 GMT  
		Size: 43.1 MB (43124977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730f6528b47c72f6dd5aabc947e8db01aa470adc3fdb4bbbcf052f9c3ad6ae8e`  
		Last Modified: Wed, 06 Feb 2019 10:52:36 GMT  
		Size: 9.7 MB (9728878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b5f3607713f2dab247e619fafcffd7c9edf4aaffc9e701660a76ccf324b742`  
		Last Modified: Wed, 06 Feb 2019 10:52:28 GMT  
		Size: 4.1 MB (4093098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5001a1d2fe2f54da8dbdfca56862dd05d37d1a2aab69599bcc2a130ea4fcd7f5`  
		Last Modified: Wed, 06 Feb 2019 10:52:48 GMT  
		Size: 48.0 MB (48005411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dced00d8f10be6119c18314ca53aacc160f92164d25ad89d5485db0b2361f28b`  
		Last Modified: Wed, 06 Feb 2019 12:35:39 GMT  
		Size: 877.6 KB (877571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c380bc1c79217d7541268db82fe3fc747ab41ca5c594c97335e81d96412300c8`  
		Last Modified: Wed, 06 Feb 2019 12:40:39 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119bcad690221f65a017d3c04d6d2c370f262b96abb1db1d70b1da114dd01a1b`  
		Last Modified: Wed, 06 Feb 2019 12:40:38 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:232d0fd3810fef1eb24fe4fb182ff44e7a7697ed75265db12e1e96721799aa38`  
		Last Modified: Wed, 06 Feb 2019 12:41:38 GMT  
		Size: 122.3 MB (122278152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ce7f31aaf364399f9aab063235081283bc7a5da9d1c8b39bbf3a62661664db`  
		Last Modified: Thu, 21 Feb 2019 10:12:00 GMT  
		Size: 231.9 MB (231867451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e07b5eff4207f1c451ac578da1c5a7d65bec9df96caf8611ba54146a020d1c`  
		Last Modified: Thu, 21 Feb 2019 10:10:00 GMT  
		Size: 4.4 KB (4432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b218ada2b32667b4a1c68532b522245032691775581e9f8f817924a81df4bfa4`  
		Last Modified: Thu, 21 Feb 2019 10:11:30 GMT  
		Size: 355.6 MB (355558640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5a1ebbe0c5e8173b70485cc3417a86bb0315fa1664f3ecf18a4f6ba8ede4c5`  
		Last Modified: Thu, 21 Feb 2019 10:09:55 GMT  
		Size: 274.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eaa141be9f545b5aaaf048f9a3f1e3a59ca7e1e0795be837192f30905bd0f10`  
		Last Modified: Thu, 21 Feb 2019 10:09:55 GMT  
		Size: 987.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a6ee01b0720121c85631524ecbcf5f171d9840b54050aac90b338343b6eb32`  
		Last Modified: Thu, 21 Feb 2019 10:11:30 GMT  
		Size: 355.6 MB (355559592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b6323863b1c89b7ce0b6d6b3f78a16f05f0f541a268e231013122bd16c9001`  
		Last Modified: Thu, 21 Feb 2019 10:09:56 GMT  
		Size: 1.0 KB (1020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
