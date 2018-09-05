## `nuxeo:latest`

```console
$ docker pull nuxeo@sha256:6b165b5f7b362e8daf241c84c197db6542f4ea55106bd9059bed82fb19af3401
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:latest` - linux; amd64

```console
$ docker pull nuxeo@sha256:11c3edf93fe78cb0c3d985d342025f7fe3a175ecc2f84d6824bd5d609318772d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 GB (1207589977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0e16bdc355450fbce435d2e00fbea52a1e2119b908092f8a41e37d4b2c10d73`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:33:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:33:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:34:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:21:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:21:21 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:21:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:21:22 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 01:21:22 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 05 Sep 2018 01:21:23 GMT
ENV JAVA_VERSION=8u181
# Wed, 05 Sep 2018 01:21:23 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Wed, 05 Sep 2018 01:21:23 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 05 Sep 2018 01:22:06 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 01:22:08 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 05 Sep 2018 17:17:05 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 05 Sep 2018 17:20:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 17:20:54 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Wed, 05 Sep 2018 17:20:54 GMT
ENV NUXEO_USER=nuxeo
# Wed, 05 Sep 2018 17:20:54 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 05 Sep 2018 17:20:54 GMT
ENV HOME=/opt/nuxeo/server
# Wed, 05 Sep 2018 17:23:56 GMT
ARG NUXEO_VERSION=10.2
# Wed, 05 Sep 2018 17:23:56 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.2/nuxeo-server-10.2-tomcat.zip
# Wed, 05 Sep 2018 17:23:56 GMT
ARG NUXEO_MD5=0e7fd86c27a06ada60d698fdc2063a01
# Wed, 05 Sep 2018 17:24:01 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.2/nuxeo-server-10.2-tomcat.zip NUXEO_MD5=0e7fd86c27a06ada60d698fdc2063a01 NUXEO_VERSION=10.2
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 05 Sep 2018 17:24:48 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.2/nuxeo-server-10.2-tomcat.zip NUXEO_MD5=0e7fd86c27a06ada60d698fdc2063a01 NUXEO_VERSION=10.2
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Wed, 05 Sep 2018 17:24:48 GMT
COPY dir:6ff2a7cd59ae46215c04b0ef5347f96b1b3912245284bfcfc0080b9d688f08f0 in /opt/nuxeo/server/templates/docker 
# Wed, 05 Sep 2018 17:24:48 GMT
COPY file:4bef2f1f6b4ee418c784459e2fef01d05a75976842dfa0d5708e86cff319a87c in /etc/nuxeo/nuxeo.conf.template 
# Wed, 05 Sep 2018 17:24:48 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Wed, 05 Sep 2018 17:24:55 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.2/nuxeo-server-10.2-tomcat.zip NUXEO_MD5=0e7fd86c27a06ada60d698fdc2063a01 NUXEO_VERSION=10.2
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Wed, 05 Sep 2018 17:24:56 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 17:24:56 GMT
WORKDIR /opt/nuxeo/server
# Wed, 05 Sep 2018 17:24:56 GMT
COPY file:b68c33898a1effa6e7ec54fb18544cb92f685f85aba3f75cfa01d1939dcc4680 in / 
# Wed, 05 Sep 2018 17:24:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 17:24:56 GMT
EXPOSE 8080/tcp
# Wed, 05 Sep 2018 17:24:57 GMT
EXPOSE 8787/tcp
# Wed, 05 Sep 2018 17:24:57 GMT
CMD ["nuxeoctl" "console"]
# Wed, 05 Sep 2018 17:24:57 GMT
USER [1000]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cee356eda6bfe3a5a229cd3d964e722ade1da4381842b24e943b03a37aec1f2`  
		Last Modified: Tue, 04 Sep 2018 22:52:43 GMT  
		Size: 10.7 MB (10740429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d3385f0fd3c0c904ff6e87195bb46f5d9d309e8ddd91bc9b20855d103eeffb`  
		Last Modified: Tue, 04 Sep 2018 22:52:42 GMT  
		Size: 4.3 MB (4336162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ae6b477848b6e03aad8ec9c74f1fb80364e5c8b5fe9ca3ec793df84247f027`  
		Last Modified: Tue, 04 Sep 2018 22:53:04 GMT  
		Size: 50.1 MB (50065233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40624ba8b77e273f4be3be6b60a55bd8b700624eeb37a26acb3d019f7fd862c8`  
		Last Modified: Wed, 05 Sep 2018 01:39:51 GMT  
		Size: 892.4 KB (892405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8081dc39373d6d82eda189828a91d6f8ffaa33a764491c97a11946ae26714504`  
		Last Modified: Wed, 05 Sep 2018 01:39:51 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a4b3841871b679275ac91146501ee28b1b961c0e8495af78bb8e19ff9ae548d`  
		Last Modified: Wed, 05 Sep 2018 01:39:52 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b919b8fd1620fbf048cb2f5e94af0f35b4981c92b319519625ee5d61c181a9d1`  
		Last Modified: Wed, 05 Sep 2018 01:40:13 GMT  
		Size: 134.0 MB (133991165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2760538fe6000d443ada98bfeaca178ac09e818f3b7604a8723e05e7b89661b0`  
		Last Modified: Wed, 05 Sep 2018 01:39:51 GMT  
		Size: 246.7 KB (246701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41fc807a31347b3d5116dc10f32cef7f432fcc7d8ddc4866be736cc04e0d3b07`  
		Last Modified: Wed, 05 Sep 2018 17:27:25 GMT  
		Size: 243.0 MB (242973049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b6d71ae6dea4ff4d98019ebc98f8ca93d258b4422c72ce300b2317232e8c48`  
		Last Modified: Wed, 05 Sep 2018 17:30:30 GMT  
		Size: 4.4 KB (4434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25199f70e87dfb29d964fd895b2f71871b6453fc11f1e7f69d80d014f2f1ae9a`  
		Last Modified: Wed, 05 Sep 2018 17:32:25 GMT  
		Size: 359.5 MB (359511850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a57ed13b0b6b3936c25827fc34e523b6698702ce738167f57e954fda4b85cd8`  
		Last Modified: Wed, 05 Sep 2018 17:30:30 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b48449cf25687fd723b966caf482cd88403c5d673f974b6db0e4f66317e082`  
		Last Modified: Wed, 05 Sep 2018 17:30:29 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720c3d67763c49fe7ea4aa829b180309a3502470cf038bc3fff03dbde61c97a7`  
		Last Modified: Wed, 05 Sep 2018 17:30:58 GMT  
		Size: 359.5 MB (359515469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c47db518a39168db32236b305aa3add67e7f4856a4980d64ded0d408101c35f`  
		Last Modified: Wed, 05 Sep 2018 17:30:29 GMT  
		Size: 1.0 KB (1022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
