## `nuxeo:latest`

```console
$ docker pull nuxeo@sha256:b1ef9cfe88a8fb1812a45ca13f6ae7a0fcac2814e49d88c91081513b388d77e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:latest` - linux; amd64

```console
$ docker pull nuxeo@sha256:2fd2820622b99592be64786ffc5be361f3cfb04e5696079016994109988352e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1425902136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8968994bc48a4c3dd0e2220b023486f5260205363c3e863018569a612dccb291`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:56:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 11:09:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 11:09:00 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 11:09:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 11:09:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 11:09:02 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 19 Mar 2018 21:22:52 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:22:53 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:22:53 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:23:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:23:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 13:48:48 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 20 Mar 2018 14:06:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice  && rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 14:06:45 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Tue, 20 Mar 2018 14:06:45 GMT
ENV NUXEO_USER=nuxeo
# Tue, 20 Mar 2018 14:06:45 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Mon, 26 Mar 2018 23:44:27 GMT
ARG NUXEO_VERSION=10.1
# Mon, 26 Mar 2018 23:44:27 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip
# Mon, 26 Mar 2018 23:44:28 GMT
ARG NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162
# Mon, 26 Mar 2018 23:44:30 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162 NUXEO_VERSION=10.1
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Mon, 26 Mar 2018 23:45:18 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162 NUXEO_VERSION=10.1
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Mon, 26 Mar 2018 23:45:19 GMT
COPY dir:6ff2a7cd59ae46215c04b0ef5347f96b1b3912245284bfcfc0080b9d688f08f0 in /opt/nuxeo/server/templates/docker 
# Mon, 26 Mar 2018 23:45:20 GMT
COPY file:4bef2f1f6b4ee418c784459e2fef01d05a75976842dfa0d5708e86cff319a87c in /etc/nuxeo/nuxeo.conf.template 
# Mon, 26 Mar 2018 23:45:20 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Mon, 26 Mar 2018 23:45:30 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162 NUXEO_VERSION=10.1
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Mon, 26 Mar 2018 23:45:31 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Mar 2018 23:45:31 GMT
WORKDIR /opt/nuxeo/server
# Mon, 26 Mar 2018 23:45:31 GMT
COPY file:5057d5491002404db3522403ba90b8ddf8a263804907b8458cb34d92c265678b in / 
# Mon, 26 Mar 2018 23:45:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 26 Mar 2018 23:45:32 GMT
EXPOSE 8080/tcp
# Mon, 26 Mar 2018 23:45:32 GMT
EXPOSE 8787/tcp
# Mon, 26 Mar 2018 23:45:32 GMT
CMD ["nuxeoctl" "console"]
# Mon, 26 Mar 2018 23:45:32 GMT
USER [1000]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c8de432dbe337bb6cb1ad328e6c564303a3d3fd05b5e872fd9c47c16fdd02c`  
		Last Modified: Wed, 14 Mar 2018 00:47:09 GMT  
		Size: 50.0 MB (50023717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da44f64ae9991a9e8cb7c2af4dfd63608bd4026552b2b6a7f523dcfac960e1ac`  
		Last Modified: Wed, 14 Mar 2018 12:50:06 GMT  
		Size: 892.2 KB (892173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bbc7b377a9155696eb0b684bd1999bc43937918552d73fd9697ea50ef46528a`  
		Last Modified: Wed, 14 Mar 2018 12:50:06 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6c70b3786f72e5255ccd51e27840d1c853a17561b5e94a4359b17d27494d50`  
		Last Modified: Wed, 14 Mar 2018 12:50:06 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9bbcf733166f991331a80e1cd55a91111c4ba96fc7ce1ecabd05b450b7da7a3`  
		Last Modified: Mon, 19 Mar 2018 23:42:27 GMT  
		Size: 172.7 MB (172725313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d3e8de8ec6d87b8485a8a3b66d63125a033cfb0711f8af24b4f600f524e276`  
		Last Modified: Mon, 19 Mar 2018 23:41:54 GMT  
		Size: 272.1 KB (272122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63eeae9818dbc6640d72fb74acefd2ea638f199c2040faadb7fd8b01498bdc66`  
		Last Modified: Tue, 20 Mar 2018 14:47:03 GMT  
		Size: 234.8 MB (234766161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a799d4332d4cdc13c7b53ff61ae01cc7e9853a2f658416e44c843c7ab78530`  
		Last Modified: Mon, 26 Mar 2018 23:56:55 GMT  
		Size: 4.4 KB (4419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0652d6d076b5943e10964e370554192b964ff8466714d3b77d69249e4c3aff5`  
		Last Modified: Mon, 26 Mar 2018 23:57:23 GMT  
		Size: 453.3 MB (453316765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc57d856b14431f6f2ffaed8614eb6509070d335fdda611d25429dc7b787835c`  
		Last Modified: Mon, 26 Mar 2018 23:56:52 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7acf44d83fd509663aff6db351540cd77e15cb63b6d1a8bdb8cd12e703b3084b`  
		Last Modified: Mon, 26 Mar 2018 23:56:52 GMT  
		Size: 1.0 KB (1016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b98c90ee901025aaef057cd6af99d8425fcb411a4b2b699fccea74a8b844ba7`  
		Last Modified: Mon, 26 Mar 2018 23:57:21 GMT  
		Size: 453.3 MB (453319955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d90729339d339c672f10e4957a3d97dc3214b04c3c6486680fba798a551ef13`  
		Last Modified: Mon, 26 Mar 2018 23:56:52 GMT  
		Size: 927.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
