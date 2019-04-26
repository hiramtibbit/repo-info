<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `nuxeo`

-	[`nuxeo:10`](#nuxeo10)
-	[`nuxeo:10.10`](#nuxeo1010)
-	[`nuxeo:7`](#nuxeo7)
-	[`nuxeo:7.10`](#nuxeo710)
-	[`nuxeo:8`](#nuxeo8)
-	[`nuxeo:8.10`](#nuxeo810)
-	[`nuxeo:9`](#nuxeo9)
-	[`nuxeo:9.10`](#nuxeo910)
-	[`nuxeo:FT`](#nuxeoft)
-	[`nuxeo:latest`](#nuxeolatest)
-	[`nuxeo:LTS`](#nuxeolts)
-	[`nuxeo:LTS-2015`](#nuxeolts-2015)
-	[`nuxeo:LTS-2016`](#nuxeolts-2016)
-	[`nuxeo:LTS-2017`](#nuxeolts-2017)
-	[`nuxeo:LTS-2019`](#nuxeolts-2019)

## `nuxeo:10`

```console
$ docker pull nuxeo@sha256:beef101caebd4eeb7830c2b5aeae799efd75bc5d2cb59bf99602438d9bec3de5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `nuxeo:10` - linux; amd64

```console
$ docker pull nuxeo@sha256:e8ac70d92df3387c5b0e54265eec861d02bf054f0f76687d228547c5219b42fe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **845.3 MB (845322305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce44d82486cfa39c81db1e33cb94dbea45c2a76f0e5b3eefd181a6e9c49d814b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Mar 2019 23:27:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:43:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:05 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:26:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 01:11:54 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Thu, 28 Mar 2019 01:15:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 01:15:13 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Thu, 28 Mar 2019 01:15:13 GMT
ENV NUXEO_USER=nuxeo
# Thu, 28 Mar 2019 01:15:13 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Thu, 28 Mar 2019 01:15:14 GMT
ENV HOME=/opt/nuxeo/server
# Thu, 28 Mar 2019 01:16:57 GMT
ARG NUXEO_VERSION=10.10
# Thu, 28 Mar 2019 01:16:58 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip
# Thu, 28 Mar 2019 01:16:58 GMT
ARG NUXEO_MD5=90ef2ac005020e880b6277510800c30c
# Thu, 28 Mar 2019 01:16:59 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Thu, 25 Apr 2019 23:25:52 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init     && chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Thu, 25 Apr 2019 23:25:53 GMT
COPY dir:d28c2b4bdf31f5817cba5496caa3161d743da596ec68186e0c444ede39dd58ac in /opt/nuxeo/server/templates/docker 
# Thu, 25 Apr 2019 23:25:53 GMT
COPY file:dbaa7cc62ad81fbafea7350f8e1ec2045fdc4a962bcfd145d777fefaf7205910 in /etc/nuxeo/nuxeo.conf.template 
# Thu, 25 Apr 2019 23:25:53 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Thu, 25 Apr 2019 23:25:54 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Thu, 25 Apr 2019 23:25:54 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 25 Apr 2019 23:25:55 GMT
WORKDIR /opt/nuxeo/server
# Thu, 25 Apr 2019 23:25:55 GMT
COPY file:97cc30e1ff0452e9f8e463882c4544e2dc446201ab67f037426aee9cbd1e212a in / 
# Thu, 25 Apr 2019 23:25:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Apr 2019 23:25:55 GMT
EXPOSE 8080
# Thu, 25 Apr 2019 23:25:55 GMT
CMD ["nuxeoctl" "console"]
# Thu, 25 Apr 2019 23:25:56 GMT
USER 1000
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54db43011fd116b8cb6d9e49e268cee1fa6212f152b30cbfa7f3c4c684427c3`  
		Last Modified: Tue, 26 Mar 2019 23:32:25 GMT  
		Size: 50.1 MB (50065446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a97c78dad716eca1d273d3f7f5661d3fa2dcbbefeab64f5690b285bf395d160`  
		Last Modified: Wed, 27 Mar 2019 01:06:50 GMT  
		Size: 892.4 KB (892365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dcb79eeeda466f75d6e054aca0bd2c18861cb0c7c2b25334b9e28a30e016d12`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd56246cf4fdc376663368727fbc81bc7a4e4ff58007751d77e5f402e86a7946`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cea60f56c50b139ec25f442de67b34ce723ae45c69758c09ed98d32bd804be`  
		Last Modified: Wed, 27 Mar 2019 23:46:00 GMT  
		Size: 135.2 MB (135208938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9985ffc9589f0a74e05ee5053fbd675ca50ca9f7e45fc4fc8c0176a97eb8da38`  
		Last Modified: Thu, 28 Mar 2019 01:19:53 GMT  
		Size: 243.1 MB (243119901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330141256ebf69d9fa3201d5964304c5a19c93a84fa74b3e2f4f3149ed10c495`  
		Last Modified: Thu, 28 Mar 2019 01:20:35 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914e57ab676c9f39e3381ecc03e789698519bbcf7f8c01d97ca636f6eedf498a`  
		Last Modified: Thu, 25 Apr 2019 23:27:40 GMT  
		Size: 355.6 MB (355562100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6064000163f63911ce6078d5f53a460630168225ed9f687684f2e0faf3234fc`  
		Last Modified: Thu, 25 Apr 2019 23:27:19 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd98c9f6d20c8ba57ca38ba53e46d233283d15d929279856ea522b2fb2adb2c`  
		Last Modified: Thu, 25 Apr 2019 23:27:19 GMT  
		Size: 987.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad67d299ad7066283594cdd13a8c5806d4edbe3ec516415d49001853ee438197`  
		Last Modified: Thu, 25 Apr 2019 23:27:19 GMT  
		Size: 1.8 KB (1825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e2710a190fb1f30036ab8ce20017a312034339636cf34943f812972adc64896`  
		Last Modified: Thu, 25 Apr 2019 23:27:19 GMT  
		Size: 1.0 KB (1020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nuxeo:10` - linux; arm64 variant v8

```console
$ docker pull nuxeo@sha256:6b9497afdca3df2fc5213cd32d361fa363ddfb8465681860065cea5933f30f55
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **818.3 MB (818321205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5ed73ae5ddb5b2d7a0da159a553d0548ff43ea5eb2a7a891463bdcd08f837f6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:15:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:16:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 10:17:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 19:20:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 19:35:25 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 19:35:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 19:35:30 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 19:35:31 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 28 Mar 2019 03:52:50 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 03:52:51 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 03:58:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 05:13:50 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Thu, 28 Mar 2019 05:22:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 05:23:16 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Thu, 28 Mar 2019 05:23:17 GMT
ENV NUXEO_USER=nuxeo
# Thu, 28 Mar 2019 05:23:18 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Thu, 28 Mar 2019 05:23:20 GMT
ENV HOME=/opt/nuxeo/server
# Thu, 28 Mar 2019 05:23:21 GMT
ARG NUXEO_VERSION=10.10
# Thu, 28 Mar 2019 05:23:22 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip
# Thu, 28 Mar 2019 05:23:24 GMT
ARG NUXEO_MD5=90ef2ac005020e880b6277510800c30c
# Thu, 28 Mar 2019 05:23:29 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Fri, 26 Apr 2019 08:51:02 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init     && chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Fri, 26 Apr 2019 08:51:03 GMT
COPY dir:d28c2b4bdf31f5817cba5496caa3161d743da596ec68186e0c444ede39dd58ac in /opt/nuxeo/server/templates/docker 
# Fri, 26 Apr 2019 08:51:04 GMT
COPY file:dbaa7cc62ad81fbafea7350f8e1ec2045fdc4a962bcfd145d777fefaf7205910 in /etc/nuxeo/nuxeo.conf.template 
# Fri, 26 Apr 2019 08:51:04 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Fri, 26 Apr 2019 08:51:06 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Fri, 26 Apr 2019 08:51:07 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 26 Apr 2019 08:51:08 GMT
WORKDIR /opt/nuxeo/server
# Fri, 26 Apr 2019 08:51:08 GMT
COPY file:97cc30e1ff0452e9f8e463882c4544e2dc446201ab67f037426aee9cbd1e212a in / 
# Fri, 26 Apr 2019 08:51:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 26 Apr 2019 08:51:09 GMT
EXPOSE 8080
# Fri, 26 Apr 2019 08:51:10 GMT
CMD ["nuxeoctl" "console"]
# Fri, 26 Apr 2019 08:51:11 GMT
USER 1000
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6696bae2f570e0c96dcb21308e525216796d3452d1a9b8dcaba168ba37f3f464`  
		Last Modified: Wed, 27 Mar 2019 10:36:08 GMT  
		Size: 9.7 MB (9730463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dca82770cb3702e9c92d2f155923c0fb55671c1c373b8b50640b7bf05ed8418`  
		Last Modified: Wed, 27 Mar 2019 10:36:05 GMT  
		Size: 4.1 MB (4094072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95e88827e80fd1e7c7d0a78bc734615833dd6ac19b07c1ad3b8b1c837bb4ece`  
		Last Modified: Wed, 27 Mar 2019 10:36:43 GMT  
		Size: 48.0 MB (48007546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b918968c658e5fccf315dfefd0fa9aa78bcd41675036298167da2bec4b1406dd`  
		Last Modified: Wed, 27 Mar 2019 19:40:19 GMT  
		Size: 877.6 KB (877635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a7832bf03e4b7c54b24f367d9c8050d34ab96a51a57b117b1af07b4887c169`  
		Last Modified: Thu, 28 Mar 2019 04:11:01 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82425005e04069a0ce309c9fc34f7c774e8c48774ed976b38da4c2f4a98ba027`  
		Last Modified: Thu, 28 Mar 2019 04:11:01 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a213aa49f4e98511aa253590cf547c6f407c48d49a2d2712144feb9ce9e3d8`  
		Last Modified: Thu, 28 Mar 2019 04:11:40 GMT  
		Size: 125.7 MB (125663506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647dff4f251933ede4b351e5f5f88252ae95f8581819e2735e9b78335ddcbca6`  
		Last Modified: Thu, 28 Mar 2019 05:28:54 GMT  
		Size: 231.2 MB (231245058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00fdb98c1ada6e8deac620b713384c339d28de6fe17e9125097dafd4337cfc8f`  
		Last Modified: Thu, 28 Mar 2019 05:27:28 GMT  
		Size: 4.4 KB (4432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7d86f4cb7c25062f40b38129224d32a634afcfa396cc5bfe848d8312e1990f`  
		Last Modified: Fri, 26 Apr 2019 08:52:11 GMT  
		Size: 355.6 MB (355562007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:679299a4b1a9f5c6db2e4b42561c68e9b1a6c12d5a572b1f41636f599b94da36`  
		Last Modified: Fri, 26 Apr 2019 08:51:25 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a2989e3c4f98a72957a4a34d8abd5254bb31567b248e7e6fcad4ef70b8cd7e`  
		Last Modified: Fri, 26 Apr 2019 08:51:25 GMT  
		Size: 988.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6706c6b86a7c914eee5e8a390c0ca04d2b1b1b0238f7b32b378bb4977a6a17`  
		Last Modified: Fri, 26 Apr 2019 08:51:25 GMT  
		Size: 1.8 KB (1823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9556d20862ca6ccf484811b1c750565f660c185af122f7e99a07c6016cd1512`  
		Last Modified: Fri, 26 Apr 2019 08:51:25 GMT  
		Size: 1.0 KB (1021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:10.10`

```console
$ docker pull nuxeo@sha256:beef101caebd4eeb7830c2b5aeae799efd75bc5d2cb59bf99602438d9bec3de5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `nuxeo:10.10` - linux; amd64

```console
$ docker pull nuxeo@sha256:e8ac70d92df3387c5b0e54265eec861d02bf054f0f76687d228547c5219b42fe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **845.3 MB (845322305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce44d82486cfa39c81db1e33cb94dbea45c2a76f0e5b3eefd181a6e9c49d814b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Mar 2019 23:27:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:43:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:05 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:26:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 01:11:54 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Thu, 28 Mar 2019 01:15:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 01:15:13 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Thu, 28 Mar 2019 01:15:13 GMT
ENV NUXEO_USER=nuxeo
# Thu, 28 Mar 2019 01:15:13 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Thu, 28 Mar 2019 01:15:14 GMT
ENV HOME=/opt/nuxeo/server
# Thu, 28 Mar 2019 01:16:57 GMT
ARG NUXEO_VERSION=10.10
# Thu, 28 Mar 2019 01:16:58 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip
# Thu, 28 Mar 2019 01:16:58 GMT
ARG NUXEO_MD5=90ef2ac005020e880b6277510800c30c
# Thu, 28 Mar 2019 01:16:59 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Thu, 25 Apr 2019 23:25:52 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init     && chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Thu, 25 Apr 2019 23:25:53 GMT
COPY dir:d28c2b4bdf31f5817cba5496caa3161d743da596ec68186e0c444ede39dd58ac in /opt/nuxeo/server/templates/docker 
# Thu, 25 Apr 2019 23:25:53 GMT
COPY file:dbaa7cc62ad81fbafea7350f8e1ec2045fdc4a962bcfd145d777fefaf7205910 in /etc/nuxeo/nuxeo.conf.template 
# Thu, 25 Apr 2019 23:25:53 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Thu, 25 Apr 2019 23:25:54 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Thu, 25 Apr 2019 23:25:54 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 25 Apr 2019 23:25:55 GMT
WORKDIR /opt/nuxeo/server
# Thu, 25 Apr 2019 23:25:55 GMT
COPY file:97cc30e1ff0452e9f8e463882c4544e2dc446201ab67f037426aee9cbd1e212a in / 
# Thu, 25 Apr 2019 23:25:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Apr 2019 23:25:55 GMT
EXPOSE 8080
# Thu, 25 Apr 2019 23:25:55 GMT
CMD ["nuxeoctl" "console"]
# Thu, 25 Apr 2019 23:25:56 GMT
USER 1000
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54db43011fd116b8cb6d9e49e268cee1fa6212f152b30cbfa7f3c4c684427c3`  
		Last Modified: Tue, 26 Mar 2019 23:32:25 GMT  
		Size: 50.1 MB (50065446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a97c78dad716eca1d273d3f7f5661d3fa2dcbbefeab64f5690b285bf395d160`  
		Last Modified: Wed, 27 Mar 2019 01:06:50 GMT  
		Size: 892.4 KB (892365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dcb79eeeda466f75d6e054aca0bd2c18861cb0c7c2b25334b9e28a30e016d12`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd56246cf4fdc376663368727fbc81bc7a4e4ff58007751d77e5f402e86a7946`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cea60f56c50b139ec25f442de67b34ce723ae45c69758c09ed98d32bd804be`  
		Last Modified: Wed, 27 Mar 2019 23:46:00 GMT  
		Size: 135.2 MB (135208938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9985ffc9589f0a74e05ee5053fbd675ca50ca9f7e45fc4fc8c0176a97eb8da38`  
		Last Modified: Thu, 28 Mar 2019 01:19:53 GMT  
		Size: 243.1 MB (243119901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330141256ebf69d9fa3201d5964304c5a19c93a84fa74b3e2f4f3149ed10c495`  
		Last Modified: Thu, 28 Mar 2019 01:20:35 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914e57ab676c9f39e3381ecc03e789698519bbcf7f8c01d97ca636f6eedf498a`  
		Last Modified: Thu, 25 Apr 2019 23:27:40 GMT  
		Size: 355.6 MB (355562100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6064000163f63911ce6078d5f53a460630168225ed9f687684f2e0faf3234fc`  
		Last Modified: Thu, 25 Apr 2019 23:27:19 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd98c9f6d20c8ba57ca38ba53e46d233283d15d929279856ea522b2fb2adb2c`  
		Last Modified: Thu, 25 Apr 2019 23:27:19 GMT  
		Size: 987.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad67d299ad7066283594cdd13a8c5806d4edbe3ec516415d49001853ee438197`  
		Last Modified: Thu, 25 Apr 2019 23:27:19 GMT  
		Size: 1.8 KB (1825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e2710a190fb1f30036ab8ce20017a312034339636cf34943f812972adc64896`  
		Last Modified: Thu, 25 Apr 2019 23:27:19 GMT  
		Size: 1.0 KB (1020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nuxeo:10.10` - linux; arm64 variant v8

```console
$ docker pull nuxeo@sha256:6b9497afdca3df2fc5213cd32d361fa363ddfb8465681860065cea5933f30f55
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **818.3 MB (818321205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5ed73ae5ddb5b2d7a0da159a553d0548ff43ea5eb2a7a891463bdcd08f837f6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:15:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:16:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 10:17:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 19:20:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 19:35:25 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 19:35:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 19:35:30 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 19:35:31 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 28 Mar 2019 03:52:50 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 03:52:51 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 03:58:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 05:13:50 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Thu, 28 Mar 2019 05:22:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 05:23:16 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Thu, 28 Mar 2019 05:23:17 GMT
ENV NUXEO_USER=nuxeo
# Thu, 28 Mar 2019 05:23:18 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Thu, 28 Mar 2019 05:23:20 GMT
ENV HOME=/opt/nuxeo/server
# Thu, 28 Mar 2019 05:23:21 GMT
ARG NUXEO_VERSION=10.10
# Thu, 28 Mar 2019 05:23:22 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip
# Thu, 28 Mar 2019 05:23:24 GMT
ARG NUXEO_MD5=90ef2ac005020e880b6277510800c30c
# Thu, 28 Mar 2019 05:23:29 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Fri, 26 Apr 2019 08:51:02 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init     && chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Fri, 26 Apr 2019 08:51:03 GMT
COPY dir:d28c2b4bdf31f5817cba5496caa3161d743da596ec68186e0c444ede39dd58ac in /opt/nuxeo/server/templates/docker 
# Fri, 26 Apr 2019 08:51:04 GMT
COPY file:dbaa7cc62ad81fbafea7350f8e1ec2045fdc4a962bcfd145d777fefaf7205910 in /etc/nuxeo/nuxeo.conf.template 
# Fri, 26 Apr 2019 08:51:04 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Fri, 26 Apr 2019 08:51:06 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Fri, 26 Apr 2019 08:51:07 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 26 Apr 2019 08:51:08 GMT
WORKDIR /opt/nuxeo/server
# Fri, 26 Apr 2019 08:51:08 GMT
COPY file:97cc30e1ff0452e9f8e463882c4544e2dc446201ab67f037426aee9cbd1e212a in / 
# Fri, 26 Apr 2019 08:51:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 26 Apr 2019 08:51:09 GMT
EXPOSE 8080
# Fri, 26 Apr 2019 08:51:10 GMT
CMD ["nuxeoctl" "console"]
# Fri, 26 Apr 2019 08:51:11 GMT
USER 1000
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6696bae2f570e0c96dcb21308e525216796d3452d1a9b8dcaba168ba37f3f464`  
		Last Modified: Wed, 27 Mar 2019 10:36:08 GMT  
		Size: 9.7 MB (9730463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dca82770cb3702e9c92d2f155923c0fb55671c1c373b8b50640b7bf05ed8418`  
		Last Modified: Wed, 27 Mar 2019 10:36:05 GMT  
		Size: 4.1 MB (4094072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95e88827e80fd1e7c7d0a78bc734615833dd6ac19b07c1ad3b8b1c837bb4ece`  
		Last Modified: Wed, 27 Mar 2019 10:36:43 GMT  
		Size: 48.0 MB (48007546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b918968c658e5fccf315dfefd0fa9aa78bcd41675036298167da2bec4b1406dd`  
		Last Modified: Wed, 27 Mar 2019 19:40:19 GMT  
		Size: 877.6 KB (877635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a7832bf03e4b7c54b24f367d9c8050d34ab96a51a57b117b1af07b4887c169`  
		Last Modified: Thu, 28 Mar 2019 04:11:01 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82425005e04069a0ce309c9fc34f7c774e8c48774ed976b38da4c2f4a98ba027`  
		Last Modified: Thu, 28 Mar 2019 04:11:01 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a213aa49f4e98511aa253590cf547c6f407c48d49a2d2712144feb9ce9e3d8`  
		Last Modified: Thu, 28 Mar 2019 04:11:40 GMT  
		Size: 125.7 MB (125663506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647dff4f251933ede4b351e5f5f88252ae95f8581819e2735e9b78335ddcbca6`  
		Last Modified: Thu, 28 Mar 2019 05:28:54 GMT  
		Size: 231.2 MB (231245058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00fdb98c1ada6e8deac620b713384c339d28de6fe17e9125097dafd4337cfc8f`  
		Last Modified: Thu, 28 Mar 2019 05:27:28 GMT  
		Size: 4.4 KB (4432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7d86f4cb7c25062f40b38129224d32a634afcfa396cc5bfe848d8312e1990f`  
		Last Modified: Fri, 26 Apr 2019 08:52:11 GMT  
		Size: 355.6 MB (355562007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:679299a4b1a9f5c6db2e4b42561c68e9b1a6c12d5a572b1f41636f599b94da36`  
		Last Modified: Fri, 26 Apr 2019 08:51:25 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a2989e3c4f98a72957a4a34d8abd5254bb31567b248e7e6fcad4ef70b8cd7e`  
		Last Modified: Fri, 26 Apr 2019 08:51:25 GMT  
		Size: 988.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6706c6b86a7c914eee5e8a390c0ca04d2b1b1b0238f7b32b378bb4977a6a17`  
		Last Modified: Fri, 26 Apr 2019 08:51:25 GMT  
		Size: 1.8 KB (1823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9556d20862ca6ccf484811b1c750565f660c185af122f7e99a07c6016cd1512`  
		Last Modified: Fri, 26 Apr 2019 08:51:25 GMT  
		Size: 1.0 KB (1021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:7`

```console
$ docker pull nuxeo@sha256:e64039df5ce84cfd95d2476ef68ad1965c8ca826bf8e3921af029f35fa0b4356
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:7` - linux; amd64

```console
$ docker pull nuxeo@sha256:ec3c11bf5f3416fd84e15d9dbfadabf5f404689d8a3c72ad2f47026000230faf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1046789015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:385b4c1c5efec83d08b7867a52804302f6d00e266afba5ec883b4ad3513ad335`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Mar 2019 23:27:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:43:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:05 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:26:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 01:11:54 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Thu, 28 Mar 2019 01:13:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 01:13:20 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Thu, 28 Mar 2019 01:13:21 GMT
ENV NUXEO_USER=nuxeo
# Thu, 28 Mar 2019 01:13:21 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Thu, 28 Mar 2019 01:13:22 GMT
ENV HOME=/opt/nuxeo/server
# Thu, 28 Mar 2019 01:13:22 GMT
ARG NUXEO_VERSION=7.10
# Thu, 28 Mar 2019 01:13:23 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip
# Thu, 28 Mar 2019 01:13:23 GMT
ARG NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2
# Thu, 28 Mar 2019 01:13:23 GMT
ENV LAUNCHER_DEBUG=-Djvmcheck=nofail
# Thu, 28 Mar 2019 01:13:25 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Thu, 28 Mar 2019 01:13:52 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Thu, 28 Mar 2019 01:13:59 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Thu, 28 Mar 2019 01:14:01 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d     && chmod g=u /etc/passwd
# Thu, 28 Mar 2019 01:14:01 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 01:14:01 GMT
WORKDIR /opt/nuxeo/server
# Thu, 25 Apr 2019 23:24:17 GMT
COPY file:9560db752e0d728d2bb67749bc399b34de55ac127e1fda9bab6523a33ac2fd8c in / 
# Thu, 25 Apr 2019 23:24:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Apr 2019 23:24:17 GMT
EXPOSE 8080
# Thu, 25 Apr 2019 23:24:17 GMT
CMD ["nuxeoctl" "console"]
# Thu, 25 Apr 2019 23:24:17 GMT
USER 1000
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54db43011fd116b8cb6d9e49e268cee1fa6212f152b30cbfa7f3c4c684427c3`  
		Last Modified: Tue, 26 Mar 2019 23:32:25 GMT  
		Size: 50.1 MB (50065446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a97c78dad716eca1d273d3f7f5661d3fa2dcbbefeab64f5690b285bf395d160`  
		Last Modified: Wed, 27 Mar 2019 01:06:50 GMT  
		Size: 892.4 KB (892365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dcb79eeeda466f75d6e054aca0bd2c18861cb0c7c2b25334b9e28a30e016d12`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd56246cf4fdc376663368727fbc81bc7a4e4ff58007751d77e5f402e86a7946`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cea60f56c50b139ec25f442de67b34ce723ae45c69758c09ed98d32bd804be`  
		Last Modified: Wed, 27 Mar 2019 23:46:00 GMT  
		Size: 135.2 MB (135208938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b913ea05255b4f2b9da2980852a8825cee44f8b923dfe86081a6ca69b339266`  
		Last Modified: Thu, 28 Mar 2019 01:18:50 GMT  
		Size: 239.2 MB (239232630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02039741bde08217c790e698010cee9da8d82846e07b2b9f633cd26fa7a84f5`  
		Last Modified: Thu, 28 Mar 2019 01:17:58 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2785cefb535fbee2d8782719de14c4cdf2931bbd389b44941cc6ce6fe84a2a1a`  
		Last Modified: Thu, 28 Mar 2019 01:18:23 GMT  
		Size: 280.5 MB (280457904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b8d557adda96305b10ab506de2b00ec834aca2b9849a315ec57658a709f0ec`  
		Last Modified: Thu, 28 Mar 2019 01:18:21 GMT  
		Size: 280.5 MB (280459907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1a19a3ffa0638bb7a11ce2cf6e6f02dd1cc62ce9461f37285ef2e2ad6854868`  
		Last Modified: Thu, 28 Mar 2019 01:17:58 GMT  
		Size: 820.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67918b366453bc61b2080ab9832ed3b306d02921accf7873021518353713e198`  
		Last Modified: Thu, 25 Apr 2019 23:26:13 GMT  
		Size: 1.6 KB (1559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:7.10`

```console
$ docker pull nuxeo@sha256:e64039df5ce84cfd95d2476ef68ad1965c8ca826bf8e3921af029f35fa0b4356
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:7.10` - linux; amd64

```console
$ docker pull nuxeo@sha256:ec3c11bf5f3416fd84e15d9dbfadabf5f404689d8a3c72ad2f47026000230faf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1046789015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:385b4c1c5efec83d08b7867a52804302f6d00e266afba5ec883b4ad3513ad335`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Mar 2019 23:27:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:43:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:05 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:26:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 01:11:54 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Thu, 28 Mar 2019 01:13:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 01:13:20 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Thu, 28 Mar 2019 01:13:21 GMT
ENV NUXEO_USER=nuxeo
# Thu, 28 Mar 2019 01:13:21 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Thu, 28 Mar 2019 01:13:22 GMT
ENV HOME=/opt/nuxeo/server
# Thu, 28 Mar 2019 01:13:22 GMT
ARG NUXEO_VERSION=7.10
# Thu, 28 Mar 2019 01:13:23 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip
# Thu, 28 Mar 2019 01:13:23 GMT
ARG NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2
# Thu, 28 Mar 2019 01:13:23 GMT
ENV LAUNCHER_DEBUG=-Djvmcheck=nofail
# Thu, 28 Mar 2019 01:13:25 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Thu, 28 Mar 2019 01:13:52 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Thu, 28 Mar 2019 01:13:59 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Thu, 28 Mar 2019 01:14:01 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d     && chmod g=u /etc/passwd
# Thu, 28 Mar 2019 01:14:01 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 01:14:01 GMT
WORKDIR /opt/nuxeo/server
# Thu, 25 Apr 2019 23:24:17 GMT
COPY file:9560db752e0d728d2bb67749bc399b34de55ac127e1fda9bab6523a33ac2fd8c in / 
# Thu, 25 Apr 2019 23:24:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Apr 2019 23:24:17 GMT
EXPOSE 8080
# Thu, 25 Apr 2019 23:24:17 GMT
CMD ["nuxeoctl" "console"]
# Thu, 25 Apr 2019 23:24:17 GMT
USER 1000
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54db43011fd116b8cb6d9e49e268cee1fa6212f152b30cbfa7f3c4c684427c3`  
		Last Modified: Tue, 26 Mar 2019 23:32:25 GMT  
		Size: 50.1 MB (50065446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a97c78dad716eca1d273d3f7f5661d3fa2dcbbefeab64f5690b285bf395d160`  
		Last Modified: Wed, 27 Mar 2019 01:06:50 GMT  
		Size: 892.4 KB (892365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dcb79eeeda466f75d6e054aca0bd2c18861cb0c7c2b25334b9e28a30e016d12`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd56246cf4fdc376663368727fbc81bc7a4e4ff58007751d77e5f402e86a7946`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cea60f56c50b139ec25f442de67b34ce723ae45c69758c09ed98d32bd804be`  
		Last Modified: Wed, 27 Mar 2019 23:46:00 GMT  
		Size: 135.2 MB (135208938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b913ea05255b4f2b9da2980852a8825cee44f8b923dfe86081a6ca69b339266`  
		Last Modified: Thu, 28 Mar 2019 01:18:50 GMT  
		Size: 239.2 MB (239232630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02039741bde08217c790e698010cee9da8d82846e07b2b9f633cd26fa7a84f5`  
		Last Modified: Thu, 28 Mar 2019 01:17:58 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2785cefb535fbee2d8782719de14c4cdf2931bbd389b44941cc6ce6fe84a2a1a`  
		Last Modified: Thu, 28 Mar 2019 01:18:23 GMT  
		Size: 280.5 MB (280457904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b8d557adda96305b10ab506de2b00ec834aca2b9849a315ec57658a709f0ec`  
		Last Modified: Thu, 28 Mar 2019 01:18:21 GMT  
		Size: 280.5 MB (280459907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1a19a3ffa0638bb7a11ce2cf6e6f02dd1cc62ce9461f37285ef2e2ad6854868`  
		Last Modified: Thu, 28 Mar 2019 01:17:58 GMT  
		Size: 820.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67918b366453bc61b2080ab9832ed3b306d02921accf7873021518353713e198`  
		Last Modified: Thu, 25 Apr 2019 23:26:13 GMT  
		Size: 1.6 KB (1559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:8`

```console
$ docker pull nuxeo@sha256:5f5100d6cee95e95b5708ced59d6e798f4b0b7d4df7c4f6de798d8d91a2a3f6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:8` - linux; amd64

```console
$ docker pull nuxeo@sha256:33b662f3b3a3a68cf575c82332dd45374f7a8387aca8c51d227e1d81d3d800bf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **759.4 MB (759382919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b950901a764eaa1332cda3fbf453afb3545cb391430963c9d19453930957682a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Mar 2019 23:27:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:43:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:05 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:26:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 01:11:54 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Thu, 28 Mar 2019 01:15:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 01:15:13 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Thu, 28 Mar 2019 01:15:13 GMT
ENV NUXEO_USER=nuxeo
# Thu, 28 Mar 2019 01:15:13 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Thu, 28 Mar 2019 01:15:14 GMT
ENV HOME=/opt/nuxeo/server
# Thu, 28 Mar 2019 01:15:14 GMT
ARG NUXEO_VERSION=8.10
# Thu, 28 Mar 2019 01:15:14 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip
# Thu, 28 Mar 2019 01:15:15 GMT
ARG NUXEO_MD5=29e67a19bba54099093b51d892926be1
# Thu, 28 Mar 2019 01:15:16 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Thu, 25 Apr 2019 23:24:38 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Thu, 25 Apr 2019 23:24:39 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d     && chmod g=u /etc/passwd
# Thu, 25 Apr 2019 23:24:39 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 25 Apr 2019 23:24:40 GMT
WORKDIR /opt/nuxeo/server
# Thu, 25 Apr 2019 23:24:40 GMT
COPY file:bb9febfdc3a76dbd4a80d559b47951e49fca7137ad3b76ce7b7293512f63b257 in / 
# Thu, 25 Apr 2019 23:24:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Apr 2019 23:24:40 GMT
EXPOSE 8080
# Thu, 25 Apr 2019 23:24:40 GMT
CMD ["nuxeoctl" "console"]
# Thu, 25 Apr 2019 23:24:41 GMT
USER 1000
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54db43011fd116b8cb6d9e49e268cee1fa6212f152b30cbfa7f3c4c684427c3`  
		Last Modified: Tue, 26 Mar 2019 23:32:25 GMT  
		Size: 50.1 MB (50065446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a97c78dad716eca1d273d3f7f5661d3fa2dcbbefeab64f5690b285bf395d160`  
		Last Modified: Wed, 27 Mar 2019 01:06:50 GMT  
		Size: 892.4 KB (892365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dcb79eeeda466f75d6e054aca0bd2c18861cb0c7c2b25334b9e28a30e016d12`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd56246cf4fdc376663368727fbc81bc7a4e4ff58007751d77e5f402e86a7946`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cea60f56c50b139ec25f442de67b34ce723ae45c69758c09ed98d32bd804be`  
		Last Modified: Wed, 27 Mar 2019 23:46:00 GMT  
		Size: 135.2 MB (135208938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9985ffc9589f0a74e05ee5053fbd675ca50ca9f7e45fc4fc8c0176a97eb8da38`  
		Last Modified: Thu, 28 Mar 2019 01:19:53 GMT  
		Size: 243.1 MB (243119901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2edb1a088c93c552479a37a946440687e56901dfe7d7fd279b41b378cff3b20`  
		Last Modified: Thu, 28 Mar 2019 01:18:59 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef99be2cf3cd0140df705e52ead1aff052f811350ab702d6ef3583a4010db0cf`  
		Last Modified: Thu, 25 Apr 2019 23:26:35 GMT  
		Size: 269.6 MB (269624441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192f7e041d011daa6209cbb6f340a2d555ee64939739d504b6c14b72de6ad402`  
		Last Modified: Thu, 25 Apr 2019 23:26:17 GMT  
		Size: 820.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c495979e4ea1ff939a4f4e30bb21583885457c3e87acf4b3db442aea31d8699c`  
		Last Modified: Thu, 25 Apr 2019 23:26:17 GMT  
		Size: 1.6 KB (1559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:8.10`

```console
$ docker pull nuxeo@sha256:5f5100d6cee95e95b5708ced59d6e798f4b0b7d4df7c4f6de798d8d91a2a3f6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:8.10` - linux; amd64

```console
$ docker pull nuxeo@sha256:33b662f3b3a3a68cf575c82332dd45374f7a8387aca8c51d227e1d81d3d800bf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **759.4 MB (759382919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b950901a764eaa1332cda3fbf453afb3545cb391430963c9d19453930957682a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Mar 2019 23:27:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:43:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:05 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:26:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 01:11:54 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Thu, 28 Mar 2019 01:15:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 01:15:13 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Thu, 28 Mar 2019 01:15:13 GMT
ENV NUXEO_USER=nuxeo
# Thu, 28 Mar 2019 01:15:13 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Thu, 28 Mar 2019 01:15:14 GMT
ENV HOME=/opt/nuxeo/server
# Thu, 28 Mar 2019 01:15:14 GMT
ARG NUXEO_VERSION=8.10
# Thu, 28 Mar 2019 01:15:14 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip
# Thu, 28 Mar 2019 01:15:15 GMT
ARG NUXEO_MD5=29e67a19bba54099093b51d892926be1
# Thu, 28 Mar 2019 01:15:16 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Thu, 25 Apr 2019 23:24:38 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Thu, 25 Apr 2019 23:24:39 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d     && chmod g=u /etc/passwd
# Thu, 25 Apr 2019 23:24:39 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 25 Apr 2019 23:24:40 GMT
WORKDIR /opt/nuxeo/server
# Thu, 25 Apr 2019 23:24:40 GMT
COPY file:bb9febfdc3a76dbd4a80d559b47951e49fca7137ad3b76ce7b7293512f63b257 in / 
# Thu, 25 Apr 2019 23:24:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Apr 2019 23:24:40 GMT
EXPOSE 8080
# Thu, 25 Apr 2019 23:24:40 GMT
CMD ["nuxeoctl" "console"]
# Thu, 25 Apr 2019 23:24:41 GMT
USER 1000
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54db43011fd116b8cb6d9e49e268cee1fa6212f152b30cbfa7f3c4c684427c3`  
		Last Modified: Tue, 26 Mar 2019 23:32:25 GMT  
		Size: 50.1 MB (50065446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a97c78dad716eca1d273d3f7f5661d3fa2dcbbefeab64f5690b285bf395d160`  
		Last Modified: Wed, 27 Mar 2019 01:06:50 GMT  
		Size: 892.4 KB (892365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dcb79eeeda466f75d6e054aca0bd2c18861cb0c7c2b25334b9e28a30e016d12`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd56246cf4fdc376663368727fbc81bc7a4e4ff58007751d77e5f402e86a7946`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cea60f56c50b139ec25f442de67b34ce723ae45c69758c09ed98d32bd804be`  
		Last Modified: Wed, 27 Mar 2019 23:46:00 GMT  
		Size: 135.2 MB (135208938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9985ffc9589f0a74e05ee5053fbd675ca50ca9f7e45fc4fc8c0176a97eb8da38`  
		Last Modified: Thu, 28 Mar 2019 01:19:53 GMT  
		Size: 243.1 MB (243119901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2edb1a088c93c552479a37a946440687e56901dfe7d7fd279b41b378cff3b20`  
		Last Modified: Thu, 28 Mar 2019 01:18:59 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef99be2cf3cd0140df705e52ead1aff052f811350ab702d6ef3583a4010db0cf`  
		Last Modified: Thu, 25 Apr 2019 23:26:35 GMT  
		Size: 269.6 MB (269624441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192f7e041d011daa6209cbb6f340a2d555ee64939739d504b6c14b72de6ad402`  
		Last Modified: Thu, 25 Apr 2019 23:26:17 GMT  
		Size: 820.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c495979e4ea1ff939a4f4e30bb21583885457c3e87acf4b3db442aea31d8699c`  
		Last Modified: Thu, 25 Apr 2019 23:26:17 GMT  
		Size: 1.6 KB (1559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:9`

```console
$ docker pull nuxeo@sha256:796ba668de72fde4fd1af7864c2aee8594220e94fe0acd54fda1b3ba50a371bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:9` - linux; amd64

```console
$ docker pull nuxeo@sha256:235c1f18571a8d3c76319e84f141c3a03e44ddcac09a4b9a0f45d605c43e378a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **874.9 MB (874916621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b3ab67bf1a9084995579bb8417d4d8f67b52935e0c57479733e361f93b78135`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Mar 2019 23:27:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:43:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:05 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:26:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 01:11:54 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Thu, 28 Mar 2019 01:15:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 01:15:13 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Thu, 28 Mar 2019 01:15:13 GMT
ENV NUXEO_USER=nuxeo
# Thu, 28 Mar 2019 01:15:13 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Thu, 28 Mar 2019 01:15:14 GMT
ENV HOME=/opt/nuxeo/server
# Thu, 28 Mar 2019 01:16:05 GMT
ARG NUXEO_VERSION=9.10
# Thu, 28 Mar 2019 01:16:05 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip
# Thu, 28 Mar 2019 01:16:05 GMT
ARG NUXEO_MD5=327d23bbd5558565694027b11c0dd82a
# Thu, 28 Mar 2019 01:16:06 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Thu, 25 Apr 2019 23:25:06 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init     && chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Thu, 25 Apr 2019 23:25:07 GMT
COPY dir:1d4b19e1e35500d85eafcc58364498b9325f119ce19917cefc60c7ad98e600e7 in /opt/nuxeo/server/templates/docker 
# Thu, 25 Apr 2019 23:25:08 GMT
COPY file:8f1eb15b3cc87be8784ed6bc39c958a3a06d1e375bda2ce728f297d14d74d526 in /etc/nuxeo/nuxeo.conf.template 
# Thu, 25 Apr 2019 23:25:09 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Thu, 25 Apr 2019 23:25:11 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Thu, 25 Apr 2019 23:25:11 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 25 Apr 2019 23:25:11 GMT
WORKDIR /opt/nuxeo/server
# Thu, 25 Apr 2019 23:25:12 GMT
COPY file:97cc30e1ff0452e9f8e463882c4544e2dc446201ab67f037426aee9cbd1e212a in / 
# Thu, 25 Apr 2019 23:25:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Apr 2019 23:25:12 GMT
EXPOSE 8080
# Thu, 25 Apr 2019 23:25:12 GMT
CMD ["nuxeoctl" "console"]
# Thu, 25 Apr 2019 23:25:12 GMT
USER 1000
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54db43011fd116b8cb6d9e49e268cee1fa6212f152b30cbfa7f3c4c684427c3`  
		Last Modified: Tue, 26 Mar 2019 23:32:25 GMT  
		Size: 50.1 MB (50065446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a97c78dad716eca1d273d3f7f5661d3fa2dcbbefeab64f5690b285bf395d160`  
		Last Modified: Wed, 27 Mar 2019 01:06:50 GMT  
		Size: 892.4 KB (892365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dcb79eeeda466f75d6e054aca0bd2c18861cb0c7c2b25334b9e28a30e016d12`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd56246cf4fdc376663368727fbc81bc7a4e4ff58007751d77e5f402e86a7946`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cea60f56c50b139ec25f442de67b34ce723ae45c69758c09ed98d32bd804be`  
		Last Modified: Wed, 27 Mar 2019 23:46:00 GMT  
		Size: 135.2 MB (135208938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9985ffc9589f0a74e05ee5053fbd675ca50ca9f7e45fc4fc8c0176a97eb8da38`  
		Last Modified: Thu, 28 Mar 2019 01:19:53 GMT  
		Size: 243.1 MB (243119901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf7347392493396a200db847e998f128a34661bdeecb3793cd3553d167b2dfce`  
		Last Modified: Thu, 28 Mar 2019 01:19:59 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db9e4b894914c9da84a700a81fada6a4f917848462ba84a8fd4166487ee08615`  
		Last Modified: Thu, 25 Apr 2019 23:27:12 GMT  
		Size: 385.2 MB (385156032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:866aaeb276a253bea916dad2ae3315999bd546e1ec51cd36fc88d99a2a420bae`  
		Last Modified: Thu, 25 Apr 2019 23:26:44 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b2636262b389f39ace43a818cb382272c34af222ef4029f3ae5aebf2e031b4`  
		Last Modified: Thu, 25 Apr 2019 23:26:44 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76559fa1fae0df37725ec7fbf9e6716202ab25d6c50c1ad7fe825d8e325b80d0`  
		Last Modified: Thu, 25 Apr 2019 23:26:44 GMT  
		Size: 1.8 KB (1847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e99bcb102e6e0bfe1f3f7d9903ca6d77c2e64076e9f4da4f644596a87934d1f8`  
		Last Modified: Thu, 25 Apr 2019 23:26:44 GMT  
		Size: 1.0 KB (1019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:9.10`

```console
$ docker pull nuxeo@sha256:796ba668de72fde4fd1af7864c2aee8594220e94fe0acd54fda1b3ba50a371bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:9.10` - linux; amd64

```console
$ docker pull nuxeo@sha256:235c1f18571a8d3c76319e84f141c3a03e44ddcac09a4b9a0f45d605c43e378a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **874.9 MB (874916621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b3ab67bf1a9084995579bb8417d4d8f67b52935e0c57479733e361f93b78135`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Mar 2019 23:27:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:43:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:05 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:26:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 01:11:54 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Thu, 28 Mar 2019 01:15:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 01:15:13 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Thu, 28 Mar 2019 01:15:13 GMT
ENV NUXEO_USER=nuxeo
# Thu, 28 Mar 2019 01:15:13 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Thu, 28 Mar 2019 01:15:14 GMT
ENV HOME=/opt/nuxeo/server
# Thu, 28 Mar 2019 01:16:05 GMT
ARG NUXEO_VERSION=9.10
# Thu, 28 Mar 2019 01:16:05 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip
# Thu, 28 Mar 2019 01:16:05 GMT
ARG NUXEO_MD5=327d23bbd5558565694027b11c0dd82a
# Thu, 28 Mar 2019 01:16:06 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Thu, 25 Apr 2019 23:25:06 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init     && chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Thu, 25 Apr 2019 23:25:07 GMT
COPY dir:1d4b19e1e35500d85eafcc58364498b9325f119ce19917cefc60c7ad98e600e7 in /opt/nuxeo/server/templates/docker 
# Thu, 25 Apr 2019 23:25:08 GMT
COPY file:8f1eb15b3cc87be8784ed6bc39c958a3a06d1e375bda2ce728f297d14d74d526 in /etc/nuxeo/nuxeo.conf.template 
# Thu, 25 Apr 2019 23:25:09 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Thu, 25 Apr 2019 23:25:11 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Thu, 25 Apr 2019 23:25:11 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 25 Apr 2019 23:25:11 GMT
WORKDIR /opt/nuxeo/server
# Thu, 25 Apr 2019 23:25:12 GMT
COPY file:97cc30e1ff0452e9f8e463882c4544e2dc446201ab67f037426aee9cbd1e212a in / 
# Thu, 25 Apr 2019 23:25:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Apr 2019 23:25:12 GMT
EXPOSE 8080
# Thu, 25 Apr 2019 23:25:12 GMT
CMD ["nuxeoctl" "console"]
# Thu, 25 Apr 2019 23:25:12 GMT
USER 1000
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54db43011fd116b8cb6d9e49e268cee1fa6212f152b30cbfa7f3c4c684427c3`  
		Last Modified: Tue, 26 Mar 2019 23:32:25 GMT  
		Size: 50.1 MB (50065446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a97c78dad716eca1d273d3f7f5661d3fa2dcbbefeab64f5690b285bf395d160`  
		Last Modified: Wed, 27 Mar 2019 01:06:50 GMT  
		Size: 892.4 KB (892365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dcb79eeeda466f75d6e054aca0bd2c18861cb0c7c2b25334b9e28a30e016d12`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd56246cf4fdc376663368727fbc81bc7a4e4ff58007751d77e5f402e86a7946`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cea60f56c50b139ec25f442de67b34ce723ae45c69758c09ed98d32bd804be`  
		Last Modified: Wed, 27 Mar 2019 23:46:00 GMT  
		Size: 135.2 MB (135208938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9985ffc9589f0a74e05ee5053fbd675ca50ca9f7e45fc4fc8c0176a97eb8da38`  
		Last Modified: Thu, 28 Mar 2019 01:19:53 GMT  
		Size: 243.1 MB (243119901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf7347392493396a200db847e998f128a34661bdeecb3793cd3553d167b2dfce`  
		Last Modified: Thu, 28 Mar 2019 01:19:59 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db9e4b894914c9da84a700a81fada6a4f917848462ba84a8fd4166487ee08615`  
		Last Modified: Thu, 25 Apr 2019 23:27:12 GMT  
		Size: 385.2 MB (385156032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:866aaeb276a253bea916dad2ae3315999bd546e1ec51cd36fc88d99a2a420bae`  
		Last Modified: Thu, 25 Apr 2019 23:26:44 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b2636262b389f39ace43a818cb382272c34af222ef4029f3ae5aebf2e031b4`  
		Last Modified: Thu, 25 Apr 2019 23:26:44 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76559fa1fae0df37725ec7fbf9e6716202ab25d6c50c1ad7fe825d8e325b80d0`  
		Last Modified: Thu, 25 Apr 2019 23:26:44 GMT  
		Size: 1.8 KB (1847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e99bcb102e6e0bfe1f3f7d9903ca6d77c2e64076e9f4da4f644596a87934d1f8`  
		Last Modified: Thu, 25 Apr 2019 23:26:44 GMT  
		Size: 1.0 KB (1019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:FT`

```console
$ docker pull nuxeo@sha256:beef101caebd4eeb7830c2b5aeae799efd75bc5d2cb59bf99602438d9bec3de5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `nuxeo:FT` - linux; amd64

```console
$ docker pull nuxeo@sha256:e8ac70d92df3387c5b0e54265eec861d02bf054f0f76687d228547c5219b42fe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **845.3 MB (845322305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce44d82486cfa39c81db1e33cb94dbea45c2a76f0e5b3eefd181a6e9c49d814b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Mar 2019 23:27:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:43:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:05 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:26:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 01:11:54 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Thu, 28 Mar 2019 01:15:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 01:15:13 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Thu, 28 Mar 2019 01:15:13 GMT
ENV NUXEO_USER=nuxeo
# Thu, 28 Mar 2019 01:15:13 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Thu, 28 Mar 2019 01:15:14 GMT
ENV HOME=/opt/nuxeo/server
# Thu, 28 Mar 2019 01:16:57 GMT
ARG NUXEO_VERSION=10.10
# Thu, 28 Mar 2019 01:16:58 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip
# Thu, 28 Mar 2019 01:16:58 GMT
ARG NUXEO_MD5=90ef2ac005020e880b6277510800c30c
# Thu, 28 Mar 2019 01:16:59 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Thu, 25 Apr 2019 23:25:52 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init     && chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Thu, 25 Apr 2019 23:25:53 GMT
COPY dir:d28c2b4bdf31f5817cba5496caa3161d743da596ec68186e0c444ede39dd58ac in /opt/nuxeo/server/templates/docker 
# Thu, 25 Apr 2019 23:25:53 GMT
COPY file:dbaa7cc62ad81fbafea7350f8e1ec2045fdc4a962bcfd145d777fefaf7205910 in /etc/nuxeo/nuxeo.conf.template 
# Thu, 25 Apr 2019 23:25:53 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Thu, 25 Apr 2019 23:25:54 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Thu, 25 Apr 2019 23:25:54 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 25 Apr 2019 23:25:55 GMT
WORKDIR /opt/nuxeo/server
# Thu, 25 Apr 2019 23:25:55 GMT
COPY file:97cc30e1ff0452e9f8e463882c4544e2dc446201ab67f037426aee9cbd1e212a in / 
# Thu, 25 Apr 2019 23:25:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Apr 2019 23:25:55 GMT
EXPOSE 8080
# Thu, 25 Apr 2019 23:25:55 GMT
CMD ["nuxeoctl" "console"]
# Thu, 25 Apr 2019 23:25:56 GMT
USER 1000
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54db43011fd116b8cb6d9e49e268cee1fa6212f152b30cbfa7f3c4c684427c3`  
		Last Modified: Tue, 26 Mar 2019 23:32:25 GMT  
		Size: 50.1 MB (50065446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a97c78dad716eca1d273d3f7f5661d3fa2dcbbefeab64f5690b285bf395d160`  
		Last Modified: Wed, 27 Mar 2019 01:06:50 GMT  
		Size: 892.4 KB (892365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dcb79eeeda466f75d6e054aca0bd2c18861cb0c7c2b25334b9e28a30e016d12`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd56246cf4fdc376663368727fbc81bc7a4e4ff58007751d77e5f402e86a7946`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cea60f56c50b139ec25f442de67b34ce723ae45c69758c09ed98d32bd804be`  
		Last Modified: Wed, 27 Mar 2019 23:46:00 GMT  
		Size: 135.2 MB (135208938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9985ffc9589f0a74e05ee5053fbd675ca50ca9f7e45fc4fc8c0176a97eb8da38`  
		Last Modified: Thu, 28 Mar 2019 01:19:53 GMT  
		Size: 243.1 MB (243119901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330141256ebf69d9fa3201d5964304c5a19c93a84fa74b3e2f4f3149ed10c495`  
		Last Modified: Thu, 28 Mar 2019 01:20:35 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914e57ab676c9f39e3381ecc03e789698519bbcf7f8c01d97ca636f6eedf498a`  
		Last Modified: Thu, 25 Apr 2019 23:27:40 GMT  
		Size: 355.6 MB (355562100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6064000163f63911ce6078d5f53a460630168225ed9f687684f2e0faf3234fc`  
		Last Modified: Thu, 25 Apr 2019 23:27:19 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd98c9f6d20c8ba57ca38ba53e46d233283d15d929279856ea522b2fb2adb2c`  
		Last Modified: Thu, 25 Apr 2019 23:27:19 GMT  
		Size: 987.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad67d299ad7066283594cdd13a8c5806d4edbe3ec516415d49001853ee438197`  
		Last Modified: Thu, 25 Apr 2019 23:27:19 GMT  
		Size: 1.8 KB (1825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e2710a190fb1f30036ab8ce20017a312034339636cf34943f812972adc64896`  
		Last Modified: Thu, 25 Apr 2019 23:27:19 GMT  
		Size: 1.0 KB (1020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nuxeo:FT` - linux; arm64 variant v8

```console
$ docker pull nuxeo@sha256:6b9497afdca3df2fc5213cd32d361fa363ddfb8465681860065cea5933f30f55
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **818.3 MB (818321205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5ed73ae5ddb5b2d7a0da159a553d0548ff43ea5eb2a7a891463bdcd08f837f6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:15:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:16:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 10:17:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 19:20:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 19:35:25 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 19:35:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 19:35:30 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 19:35:31 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 28 Mar 2019 03:52:50 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 03:52:51 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 03:58:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 05:13:50 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Thu, 28 Mar 2019 05:22:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 05:23:16 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Thu, 28 Mar 2019 05:23:17 GMT
ENV NUXEO_USER=nuxeo
# Thu, 28 Mar 2019 05:23:18 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Thu, 28 Mar 2019 05:23:20 GMT
ENV HOME=/opt/nuxeo/server
# Thu, 28 Mar 2019 05:23:21 GMT
ARG NUXEO_VERSION=10.10
# Thu, 28 Mar 2019 05:23:22 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip
# Thu, 28 Mar 2019 05:23:24 GMT
ARG NUXEO_MD5=90ef2ac005020e880b6277510800c30c
# Thu, 28 Mar 2019 05:23:29 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Fri, 26 Apr 2019 08:51:02 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init     && chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Fri, 26 Apr 2019 08:51:03 GMT
COPY dir:d28c2b4bdf31f5817cba5496caa3161d743da596ec68186e0c444ede39dd58ac in /opt/nuxeo/server/templates/docker 
# Fri, 26 Apr 2019 08:51:04 GMT
COPY file:dbaa7cc62ad81fbafea7350f8e1ec2045fdc4a962bcfd145d777fefaf7205910 in /etc/nuxeo/nuxeo.conf.template 
# Fri, 26 Apr 2019 08:51:04 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Fri, 26 Apr 2019 08:51:06 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Fri, 26 Apr 2019 08:51:07 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 26 Apr 2019 08:51:08 GMT
WORKDIR /opt/nuxeo/server
# Fri, 26 Apr 2019 08:51:08 GMT
COPY file:97cc30e1ff0452e9f8e463882c4544e2dc446201ab67f037426aee9cbd1e212a in / 
# Fri, 26 Apr 2019 08:51:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 26 Apr 2019 08:51:09 GMT
EXPOSE 8080
# Fri, 26 Apr 2019 08:51:10 GMT
CMD ["nuxeoctl" "console"]
# Fri, 26 Apr 2019 08:51:11 GMT
USER 1000
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6696bae2f570e0c96dcb21308e525216796d3452d1a9b8dcaba168ba37f3f464`  
		Last Modified: Wed, 27 Mar 2019 10:36:08 GMT  
		Size: 9.7 MB (9730463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dca82770cb3702e9c92d2f155923c0fb55671c1c373b8b50640b7bf05ed8418`  
		Last Modified: Wed, 27 Mar 2019 10:36:05 GMT  
		Size: 4.1 MB (4094072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95e88827e80fd1e7c7d0a78bc734615833dd6ac19b07c1ad3b8b1c837bb4ece`  
		Last Modified: Wed, 27 Mar 2019 10:36:43 GMT  
		Size: 48.0 MB (48007546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b918968c658e5fccf315dfefd0fa9aa78bcd41675036298167da2bec4b1406dd`  
		Last Modified: Wed, 27 Mar 2019 19:40:19 GMT  
		Size: 877.6 KB (877635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a7832bf03e4b7c54b24f367d9c8050d34ab96a51a57b117b1af07b4887c169`  
		Last Modified: Thu, 28 Mar 2019 04:11:01 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82425005e04069a0ce309c9fc34f7c774e8c48774ed976b38da4c2f4a98ba027`  
		Last Modified: Thu, 28 Mar 2019 04:11:01 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a213aa49f4e98511aa253590cf547c6f407c48d49a2d2712144feb9ce9e3d8`  
		Last Modified: Thu, 28 Mar 2019 04:11:40 GMT  
		Size: 125.7 MB (125663506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647dff4f251933ede4b351e5f5f88252ae95f8581819e2735e9b78335ddcbca6`  
		Last Modified: Thu, 28 Mar 2019 05:28:54 GMT  
		Size: 231.2 MB (231245058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00fdb98c1ada6e8deac620b713384c339d28de6fe17e9125097dafd4337cfc8f`  
		Last Modified: Thu, 28 Mar 2019 05:27:28 GMT  
		Size: 4.4 KB (4432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7d86f4cb7c25062f40b38129224d32a634afcfa396cc5bfe848d8312e1990f`  
		Last Modified: Fri, 26 Apr 2019 08:52:11 GMT  
		Size: 355.6 MB (355562007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:679299a4b1a9f5c6db2e4b42561c68e9b1a6c12d5a572b1f41636f599b94da36`  
		Last Modified: Fri, 26 Apr 2019 08:51:25 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a2989e3c4f98a72957a4a34d8abd5254bb31567b248e7e6fcad4ef70b8cd7e`  
		Last Modified: Fri, 26 Apr 2019 08:51:25 GMT  
		Size: 988.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6706c6b86a7c914eee5e8a390c0ca04d2b1b1b0238f7b32b378bb4977a6a17`  
		Last Modified: Fri, 26 Apr 2019 08:51:25 GMT  
		Size: 1.8 KB (1823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9556d20862ca6ccf484811b1c750565f660c185af122f7e99a07c6016cd1512`  
		Last Modified: Fri, 26 Apr 2019 08:51:25 GMT  
		Size: 1.0 KB (1021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:latest`

```console
$ docker pull nuxeo@sha256:beef101caebd4eeb7830c2b5aeae799efd75bc5d2cb59bf99602438d9bec3de5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `nuxeo:latest` - linux; amd64

```console
$ docker pull nuxeo@sha256:e8ac70d92df3387c5b0e54265eec861d02bf054f0f76687d228547c5219b42fe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **845.3 MB (845322305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce44d82486cfa39c81db1e33cb94dbea45c2a76f0e5b3eefd181a6e9c49d814b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Mar 2019 23:27:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:43:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:05 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:26:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 01:11:54 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Thu, 28 Mar 2019 01:15:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 01:15:13 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Thu, 28 Mar 2019 01:15:13 GMT
ENV NUXEO_USER=nuxeo
# Thu, 28 Mar 2019 01:15:13 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Thu, 28 Mar 2019 01:15:14 GMT
ENV HOME=/opt/nuxeo/server
# Thu, 28 Mar 2019 01:16:57 GMT
ARG NUXEO_VERSION=10.10
# Thu, 28 Mar 2019 01:16:58 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip
# Thu, 28 Mar 2019 01:16:58 GMT
ARG NUXEO_MD5=90ef2ac005020e880b6277510800c30c
# Thu, 28 Mar 2019 01:16:59 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Thu, 25 Apr 2019 23:25:52 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init     && chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Thu, 25 Apr 2019 23:25:53 GMT
COPY dir:d28c2b4bdf31f5817cba5496caa3161d743da596ec68186e0c444ede39dd58ac in /opt/nuxeo/server/templates/docker 
# Thu, 25 Apr 2019 23:25:53 GMT
COPY file:dbaa7cc62ad81fbafea7350f8e1ec2045fdc4a962bcfd145d777fefaf7205910 in /etc/nuxeo/nuxeo.conf.template 
# Thu, 25 Apr 2019 23:25:53 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Thu, 25 Apr 2019 23:25:54 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Thu, 25 Apr 2019 23:25:54 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 25 Apr 2019 23:25:55 GMT
WORKDIR /opt/nuxeo/server
# Thu, 25 Apr 2019 23:25:55 GMT
COPY file:97cc30e1ff0452e9f8e463882c4544e2dc446201ab67f037426aee9cbd1e212a in / 
# Thu, 25 Apr 2019 23:25:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Apr 2019 23:25:55 GMT
EXPOSE 8080
# Thu, 25 Apr 2019 23:25:55 GMT
CMD ["nuxeoctl" "console"]
# Thu, 25 Apr 2019 23:25:56 GMT
USER 1000
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54db43011fd116b8cb6d9e49e268cee1fa6212f152b30cbfa7f3c4c684427c3`  
		Last Modified: Tue, 26 Mar 2019 23:32:25 GMT  
		Size: 50.1 MB (50065446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a97c78dad716eca1d273d3f7f5661d3fa2dcbbefeab64f5690b285bf395d160`  
		Last Modified: Wed, 27 Mar 2019 01:06:50 GMT  
		Size: 892.4 KB (892365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dcb79eeeda466f75d6e054aca0bd2c18861cb0c7c2b25334b9e28a30e016d12`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd56246cf4fdc376663368727fbc81bc7a4e4ff58007751d77e5f402e86a7946`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cea60f56c50b139ec25f442de67b34ce723ae45c69758c09ed98d32bd804be`  
		Last Modified: Wed, 27 Mar 2019 23:46:00 GMT  
		Size: 135.2 MB (135208938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9985ffc9589f0a74e05ee5053fbd675ca50ca9f7e45fc4fc8c0176a97eb8da38`  
		Last Modified: Thu, 28 Mar 2019 01:19:53 GMT  
		Size: 243.1 MB (243119901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330141256ebf69d9fa3201d5964304c5a19c93a84fa74b3e2f4f3149ed10c495`  
		Last Modified: Thu, 28 Mar 2019 01:20:35 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914e57ab676c9f39e3381ecc03e789698519bbcf7f8c01d97ca636f6eedf498a`  
		Last Modified: Thu, 25 Apr 2019 23:27:40 GMT  
		Size: 355.6 MB (355562100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6064000163f63911ce6078d5f53a460630168225ed9f687684f2e0faf3234fc`  
		Last Modified: Thu, 25 Apr 2019 23:27:19 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd98c9f6d20c8ba57ca38ba53e46d233283d15d929279856ea522b2fb2adb2c`  
		Last Modified: Thu, 25 Apr 2019 23:27:19 GMT  
		Size: 987.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad67d299ad7066283594cdd13a8c5806d4edbe3ec516415d49001853ee438197`  
		Last Modified: Thu, 25 Apr 2019 23:27:19 GMT  
		Size: 1.8 KB (1825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e2710a190fb1f30036ab8ce20017a312034339636cf34943f812972adc64896`  
		Last Modified: Thu, 25 Apr 2019 23:27:19 GMT  
		Size: 1.0 KB (1020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nuxeo:latest` - linux; arm64 variant v8

```console
$ docker pull nuxeo@sha256:6b9497afdca3df2fc5213cd32d361fa363ddfb8465681860065cea5933f30f55
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **818.3 MB (818321205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5ed73ae5ddb5b2d7a0da159a553d0548ff43ea5eb2a7a891463bdcd08f837f6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:15:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:16:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 10:17:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 19:20:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 19:35:25 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 19:35:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 19:35:30 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 19:35:31 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 28 Mar 2019 03:52:50 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 03:52:51 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 03:58:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 05:13:50 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Thu, 28 Mar 2019 05:22:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 05:23:16 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Thu, 28 Mar 2019 05:23:17 GMT
ENV NUXEO_USER=nuxeo
# Thu, 28 Mar 2019 05:23:18 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Thu, 28 Mar 2019 05:23:20 GMT
ENV HOME=/opt/nuxeo/server
# Thu, 28 Mar 2019 05:23:21 GMT
ARG NUXEO_VERSION=10.10
# Thu, 28 Mar 2019 05:23:22 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip
# Thu, 28 Mar 2019 05:23:24 GMT
ARG NUXEO_MD5=90ef2ac005020e880b6277510800c30c
# Thu, 28 Mar 2019 05:23:29 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Fri, 26 Apr 2019 08:51:02 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init     && chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Fri, 26 Apr 2019 08:51:03 GMT
COPY dir:d28c2b4bdf31f5817cba5496caa3161d743da596ec68186e0c444ede39dd58ac in /opt/nuxeo/server/templates/docker 
# Fri, 26 Apr 2019 08:51:04 GMT
COPY file:dbaa7cc62ad81fbafea7350f8e1ec2045fdc4a962bcfd145d777fefaf7205910 in /etc/nuxeo/nuxeo.conf.template 
# Fri, 26 Apr 2019 08:51:04 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Fri, 26 Apr 2019 08:51:06 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Fri, 26 Apr 2019 08:51:07 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 26 Apr 2019 08:51:08 GMT
WORKDIR /opt/nuxeo/server
# Fri, 26 Apr 2019 08:51:08 GMT
COPY file:97cc30e1ff0452e9f8e463882c4544e2dc446201ab67f037426aee9cbd1e212a in / 
# Fri, 26 Apr 2019 08:51:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 26 Apr 2019 08:51:09 GMT
EXPOSE 8080
# Fri, 26 Apr 2019 08:51:10 GMT
CMD ["nuxeoctl" "console"]
# Fri, 26 Apr 2019 08:51:11 GMT
USER 1000
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6696bae2f570e0c96dcb21308e525216796d3452d1a9b8dcaba168ba37f3f464`  
		Last Modified: Wed, 27 Mar 2019 10:36:08 GMT  
		Size: 9.7 MB (9730463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dca82770cb3702e9c92d2f155923c0fb55671c1c373b8b50640b7bf05ed8418`  
		Last Modified: Wed, 27 Mar 2019 10:36:05 GMT  
		Size: 4.1 MB (4094072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95e88827e80fd1e7c7d0a78bc734615833dd6ac19b07c1ad3b8b1c837bb4ece`  
		Last Modified: Wed, 27 Mar 2019 10:36:43 GMT  
		Size: 48.0 MB (48007546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b918968c658e5fccf315dfefd0fa9aa78bcd41675036298167da2bec4b1406dd`  
		Last Modified: Wed, 27 Mar 2019 19:40:19 GMT  
		Size: 877.6 KB (877635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a7832bf03e4b7c54b24f367d9c8050d34ab96a51a57b117b1af07b4887c169`  
		Last Modified: Thu, 28 Mar 2019 04:11:01 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82425005e04069a0ce309c9fc34f7c774e8c48774ed976b38da4c2f4a98ba027`  
		Last Modified: Thu, 28 Mar 2019 04:11:01 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a213aa49f4e98511aa253590cf547c6f407c48d49a2d2712144feb9ce9e3d8`  
		Last Modified: Thu, 28 Mar 2019 04:11:40 GMT  
		Size: 125.7 MB (125663506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647dff4f251933ede4b351e5f5f88252ae95f8581819e2735e9b78335ddcbca6`  
		Last Modified: Thu, 28 Mar 2019 05:28:54 GMT  
		Size: 231.2 MB (231245058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00fdb98c1ada6e8deac620b713384c339d28de6fe17e9125097dafd4337cfc8f`  
		Last Modified: Thu, 28 Mar 2019 05:27:28 GMT  
		Size: 4.4 KB (4432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7d86f4cb7c25062f40b38129224d32a634afcfa396cc5bfe848d8312e1990f`  
		Last Modified: Fri, 26 Apr 2019 08:52:11 GMT  
		Size: 355.6 MB (355562007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:679299a4b1a9f5c6db2e4b42561c68e9b1a6c12d5a572b1f41636f599b94da36`  
		Last Modified: Fri, 26 Apr 2019 08:51:25 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a2989e3c4f98a72957a4a34d8abd5254bb31567b248e7e6fcad4ef70b8cd7e`  
		Last Modified: Fri, 26 Apr 2019 08:51:25 GMT  
		Size: 988.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6706c6b86a7c914eee5e8a390c0ca04d2b1b1b0238f7b32b378bb4977a6a17`  
		Last Modified: Fri, 26 Apr 2019 08:51:25 GMT  
		Size: 1.8 KB (1823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9556d20862ca6ccf484811b1c750565f660c185af122f7e99a07c6016cd1512`  
		Last Modified: Fri, 26 Apr 2019 08:51:25 GMT  
		Size: 1.0 KB (1021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS`

```console
$ docker pull nuxeo@sha256:beef101caebd4eeb7830c2b5aeae799efd75bc5d2cb59bf99602438d9bec3de5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `nuxeo:LTS` - linux; amd64

```console
$ docker pull nuxeo@sha256:e8ac70d92df3387c5b0e54265eec861d02bf054f0f76687d228547c5219b42fe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **845.3 MB (845322305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce44d82486cfa39c81db1e33cb94dbea45c2a76f0e5b3eefd181a6e9c49d814b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Mar 2019 23:27:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:43:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:05 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:26:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 01:11:54 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Thu, 28 Mar 2019 01:15:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 01:15:13 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Thu, 28 Mar 2019 01:15:13 GMT
ENV NUXEO_USER=nuxeo
# Thu, 28 Mar 2019 01:15:13 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Thu, 28 Mar 2019 01:15:14 GMT
ENV HOME=/opt/nuxeo/server
# Thu, 28 Mar 2019 01:16:57 GMT
ARG NUXEO_VERSION=10.10
# Thu, 28 Mar 2019 01:16:58 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip
# Thu, 28 Mar 2019 01:16:58 GMT
ARG NUXEO_MD5=90ef2ac005020e880b6277510800c30c
# Thu, 28 Mar 2019 01:16:59 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Thu, 25 Apr 2019 23:25:52 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init     && chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Thu, 25 Apr 2019 23:25:53 GMT
COPY dir:d28c2b4bdf31f5817cba5496caa3161d743da596ec68186e0c444ede39dd58ac in /opt/nuxeo/server/templates/docker 
# Thu, 25 Apr 2019 23:25:53 GMT
COPY file:dbaa7cc62ad81fbafea7350f8e1ec2045fdc4a962bcfd145d777fefaf7205910 in /etc/nuxeo/nuxeo.conf.template 
# Thu, 25 Apr 2019 23:25:53 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Thu, 25 Apr 2019 23:25:54 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Thu, 25 Apr 2019 23:25:54 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 25 Apr 2019 23:25:55 GMT
WORKDIR /opt/nuxeo/server
# Thu, 25 Apr 2019 23:25:55 GMT
COPY file:97cc30e1ff0452e9f8e463882c4544e2dc446201ab67f037426aee9cbd1e212a in / 
# Thu, 25 Apr 2019 23:25:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Apr 2019 23:25:55 GMT
EXPOSE 8080
# Thu, 25 Apr 2019 23:25:55 GMT
CMD ["nuxeoctl" "console"]
# Thu, 25 Apr 2019 23:25:56 GMT
USER 1000
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54db43011fd116b8cb6d9e49e268cee1fa6212f152b30cbfa7f3c4c684427c3`  
		Last Modified: Tue, 26 Mar 2019 23:32:25 GMT  
		Size: 50.1 MB (50065446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a97c78dad716eca1d273d3f7f5661d3fa2dcbbefeab64f5690b285bf395d160`  
		Last Modified: Wed, 27 Mar 2019 01:06:50 GMT  
		Size: 892.4 KB (892365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dcb79eeeda466f75d6e054aca0bd2c18861cb0c7c2b25334b9e28a30e016d12`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd56246cf4fdc376663368727fbc81bc7a4e4ff58007751d77e5f402e86a7946`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cea60f56c50b139ec25f442de67b34ce723ae45c69758c09ed98d32bd804be`  
		Last Modified: Wed, 27 Mar 2019 23:46:00 GMT  
		Size: 135.2 MB (135208938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9985ffc9589f0a74e05ee5053fbd675ca50ca9f7e45fc4fc8c0176a97eb8da38`  
		Last Modified: Thu, 28 Mar 2019 01:19:53 GMT  
		Size: 243.1 MB (243119901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330141256ebf69d9fa3201d5964304c5a19c93a84fa74b3e2f4f3149ed10c495`  
		Last Modified: Thu, 28 Mar 2019 01:20:35 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914e57ab676c9f39e3381ecc03e789698519bbcf7f8c01d97ca636f6eedf498a`  
		Last Modified: Thu, 25 Apr 2019 23:27:40 GMT  
		Size: 355.6 MB (355562100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6064000163f63911ce6078d5f53a460630168225ed9f687684f2e0faf3234fc`  
		Last Modified: Thu, 25 Apr 2019 23:27:19 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd98c9f6d20c8ba57ca38ba53e46d233283d15d929279856ea522b2fb2adb2c`  
		Last Modified: Thu, 25 Apr 2019 23:27:19 GMT  
		Size: 987.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad67d299ad7066283594cdd13a8c5806d4edbe3ec516415d49001853ee438197`  
		Last Modified: Thu, 25 Apr 2019 23:27:19 GMT  
		Size: 1.8 KB (1825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e2710a190fb1f30036ab8ce20017a312034339636cf34943f812972adc64896`  
		Last Modified: Thu, 25 Apr 2019 23:27:19 GMT  
		Size: 1.0 KB (1020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nuxeo:LTS` - linux; arm64 variant v8

```console
$ docker pull nuxeo@sha256:6b9497afdca3df2fc5213cd32d361fa363ddfb8465681860065cea5933f30f55
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **818.3 MB (818321205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5ed73ae5ddb5b2d7a0da159a553d0548ff43ea5eb2a7a891463bdcd08f837f6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:15:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:16:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 10:17:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 19:20:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 19:35:25 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 19:35:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 19:35:30 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 19:35:31 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 28 Mar 2019 03:52:50 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 03:52:51 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 03:58:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 05:13:50 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Thu, 28 Mar 2019 05:22:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 05:23:16 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Thu, 28 Mar 2019 05:23:17 GMT
ENV NUXEO_USER=nuxeo
# Thu, 28 Mar 2019 05:23:18 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Thu, 28 Mar 2019 05:23:20 GMT
ENV HOME=/opt/nuxeo/server
# Thu, 28 Mar 2019 05:23:21 GMT
ARG NUXEO_VERSION=10.10
# Thu, 28 Mar 2019 05:23:22 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip
# Thu, 28 Mar 2019 05:23:24 GMT
ARG NUXEO_MD5=90ef2ac005020e880b6277510800c30c
# Thu, 28 Mar 2019 05:23:29 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Fri, 26 Apr 2019 08:51:02 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init     && chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Fri, 26 Apr 2019 08:51:03 GMT
COPY dir:d28c2b4bdf31f5817cba5496caa3161d743da596ec68186e0c444ede39dd58ac in /opt/nuxeo/server/templates/docker 
# Fri, 26 Apr 2019 08:51:04 GMT
COPY file:dbaa7cc62ad81fbafea7350f8e1ec2045fdc4a962bcfd145d777fefaf7205910 in /etc/nuxeo/nuxeo.conf.template 
# Fri, 26 Apr 2019 08:51:04 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Fri, 26 Apr 2019 08:51:06 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Fri, 26 Apr 2019 08:51:07 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 26 Apr 2019 08:51:08 GMT
WORKDIR /opt/nuxeo/server
# Fri, 26 Apr 2019 08:51:08 GMT
COPY file:97cc30e1ff0452e9f8e463882c4544e2dc446201ab67f037426aee9cbd1e212a in / 
# Fri, 26 Apr 2019 08:51:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 26 Apr 2019 08:51:09 GMT
EXPOSE 8080
# Fri, 26 Apr 2019 08:51:10 GMT
CMD ["nuxeoctl" "console"]
# Fri, 26 Apr 2019 08:51:11 GMT
USER 1000
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6696bae2f570e0c96dcb21308e525216796d3452d1a9b8dcaba168ba37f3f464`  
		Last Modified: Wed, 27 Mar 2019 10:36:08 GMT  
		Size: 9.7 MB (9730463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dca82770cb3702e9c92d2f155923c0fb55671c1c373b8b50640b7bf05ed8418`  
		Last Modified: Wed, 27 Mar 2019 10:36:05 GMT  
		Size: 4.1 MB (4094072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95e88827e80fd1e7c7d0a78bc734615833dd6ac19b07c1ad3b8b1c837bb4ece`  
		Last Modified: Wed, 27 Mar 2019 10:36:43 GMT  
		Size: 48.0 MB (48007546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b918968c658e5fccf315dfefd0fa9aa78bcd41675036298167da2bec4b1406dd`  
		Last Modified: Wed, 27 Mar 2019 19:40:19 GMT  
		Size: 877.6 KB (877635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a7832bf03e4b7c54b24f367d9c8050d34ab96a51a57b117b1af07b4887c169`  
		Last Modified: Thu, 28 Mar 2019 04:11:01 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82425005e04069a0ce309c9fc34f7c774e8c48774ed976b38da4c2f4a98ba027`  
		Last Modified: Thu, 28 Mar 2019 04:11:01 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a213aa49f4e98511aa253590cf547c6f407c48d49a2d2712144feb9ce9e3d8`  
		Last Modified: Thu, 28 Mar 2019 04:11:40 GMT  
		Size: 125.7 MB (125663506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647dff4f251933ede4b351e5f5f88252ae95f8581819e2735e9b78335ddcbca6`  
		Last Modified: Thu, 28 Mar 2019 05:28:54 GMT  
		Size: 231.2 MB (231245058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00fdb98c1ada6e8deac620b713384c339d28de6fe17e9125097dafd4337cfc8f`  
		Last Modified: Thu, 28 Mar 2019 05:27:28 GMT  
		Size: 4.4 KB (4432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7d86f4cb7c25062f40b38129224d32a634afcfa396cc5bfe848d8312e1990f`  
		Last Modified: Fri, 26 Apr 2019 08:52:11 GMT  
		Size: 355.6 MB (355562007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:679299a4b1a9f5c6db2e4b42561c68e9b1a6c12d5a572b1f41636f599b94da36`  
		Last Modified: Fri, 26 Apr 2019 08:51:25 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a2989e3c4f98a72957a4a34d8abd5254bb31567b248e7e6fcad4ef70b8cd7e`  
		Last Modified: Fri, 26 Apr 2019 08:51:25 GMT  
		Size: 988.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6706c6b86a7c914eee5e8a390c0ca04d2b1b1b0238f7b32b378bb4977a6a17`  
		Last Modified: Fri, 26 Apr 2019 08:51:25 GMT  
		Size: 1.8 KB (1823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9556d20862ca6ccf484811b1c750565f660c185af122f7e99a07c6016cd1512`  
		Last Modified: Fri, 26 Apr 2019 08:51:25 GMT  
		Size: 1.0 KB (1021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS-2015`

```console
$ docker pull nuxeo@sha256:e64039df5ce84cfd95d2476ef68ad1965c8ca826bf8e3921af029f35fa0b4356
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:LTS-2015` - linux; amd64

```console
$ docker pull nuxeo@sha256:ec3c11bf5f3416fd84e15d9dbfadabf5f404689d8a3c72ad2f47026000230faf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1046789015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:385b4c1c5efec83d08b7867a52804302f6d00e266afba5ec883b4ad3513ad335`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Mar 2019 23:27:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:43:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:05 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:26:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 01:11:54 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Thu, 28 Mar 2019 01:13:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 01:13:20 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Thu, 28 Mar 2019 01:13:21 GMT
ENV NUXEO_USER=nuxeo
# Thu, 28 Mar 2019 01:13:21 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Thu, 28 Mar 2019 01:13:22 GMT
ENV HOME=/opt/nuxeo/server
# Thu, 28 Mar 2019 01:13:22 GMT
ARG NUXEO_VERSION=7.10
# Thu, 28 Mar 2019 01:13:23 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip
# Thu, 28 Mar 2019 01:13:23 GMT
ARG NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2
# Thu, 28 Mar 2019 01:13:23 GMT
ENV LAUNCHER_DEBUG=-Djvmcheck=nofail
# Thu, 28 Mar 2019 01:13:25 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Thu, 28 Mar 2019 01:13:52 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Thu, 28 Mar 2019 01:13:59 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Thu, 28 Mar 2019 01:14:01 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d     && chmod g=u /etc/passwd
# Thu, 28 Mar 2019 01:14:01 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 01:14:01 GMT
WORKDIR /opt/nuxeo/server
# Thu, 25 Apr 2019 23:24:17 GMT
COPY file:9560db752e0d728d2bb67749bc399b34de55ac127e1fda9bab6523a33ac2fd8c in / 
# Thu, 25 Apr 2019 23:24:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Apr 2019 23:24:17 GMT
EXPOSE 8080
# Thu, 25 Apr 2019 23:24:17 GMT
CMD ["nuxeoctl" "console"]
# Thu, 25 Apr 2019 23:24:17 GMT
USER 1000
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54db43011fd116b8cb6d9e49e268cee1fa6212f152b30cbfa7f3c4c684427c3`  
		Last Modified: Tue, 26 Mar 2019 23:32:25 GMT  
		Size: 50.1 MB (50065446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a97c78dad716eca1d273d3f7f5661d3fa2dcbbefeab64f5690b285bf395d160`  
		Last Modified: Wed, 27 Mar 2019 01:06:50 GMT  
		Size: 892.4 KB (892365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dcb79eeeda466f75d6e054aca0bd2c18861cb0c7c2b25334b9e28a30e016d12`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd56246cf4fdc376663368727fbc81bc7a4e4ff58007751d77e5f402e86a7946`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cea60f56c50b139ec25f442de67b34ce723ae45c69758c09ed98d32bd804be`  
		Last Modified: Wed, 27 Mar 2019 23:46:00 GMT  
		Size: 135.2 MB (135208938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b913ea05255b4f2b9da2980852a8825cee44f8b923dfe86081a6ca69b339266`  
		Last Modified: Thu, 28 Mar 2019 01:18:50 GMT  
		Size: 239.2 MB (239232630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02039741bde08217c790e698010cee9da8d82846e07b2b9f633cd26fa7a84f5`  
		Last Modified: Thu, 28 Mar 2019 01:17:58 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2785cefb535fbee2d8782719de14c4cdf2931bbd389b44941cc6ce6fe84a2a1a`  
		Last Modified: Thu, 28 Mar 2019 01:18:23 GMT  
		Size: 280.5 MB (280457904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b8d557adda96305b10ab506de2b00ec834aca2b9849a315ec57658a709f0ec`  
		Last Modified: Thu, 28 Mar 2019 01:18:21 GMT  
		Size: 280.5 MB (280459907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1a19a3ffa0638bb7a11ce2cf6e6f02dd1cc62ce9461f37285ef2e2ad6854868`  
		Last Modified: Thu, 28 Mar 2019 01:17:58 GMT  
		Size: 820.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67918b366453bc61b2080ab9832ed3b306d02921accf7873021518353713e198`  
		Last Modified: Thu, 25 Apr 2019 23:26:13 GMT  
		Size: 1.6 KB (1559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS-2016`

```console
$ docker pull nuxeo@sha256:5f5100d6cee95e95b5708ced59d6e798f4b0b7d4df7c4f6de798d8d91a2a3f6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:LTS-2016` - linux; amd64

```console
$ docker pull nuxeo@sha256:33b662f3b3a3a68cf575c82332dd45374f7a8387aca8c51d227e1d81d3d800bf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **759.4 MB (759382919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b950901a764eaa1332cda3fbf453afb3545cb391430963c9d19453930957682a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Mar 2019 23:27:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:43:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:05 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:26:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 01:11:54 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Thu, 28 Mar 2019 01:15:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 01:15:13 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Thu, 28 Mar 2019 01:15:13 GMT
ENV NUXEO_USER=nuxeo
# Thu, 28 Mar 2019 01:15:13 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Thu, 28 Mar 2019 01:15:14 GMT
ENV HOME=/opt/nuxeo/server
# Thu, 28 Mar 2019 01:15:14 GMT
ARG NUXEO_VERSION=8.10
# Thu, 28 Mar 2019 01:15:14 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip
# Thu, 28 Mar 2019 01:15:15 GMT
ARG NUXEO_MD5=29e67a19bba54099093b51d892926be1
# Thu, 28 Mar 2019 01:15:16 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Thu, 25 Apr 2019 23:24:38 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Thu, 25 Apr 2019 23:24:39 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d     && chmod g=u /etc/passwd
# Thu, 25 Apr 2019 23:24:39 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 25 Apr 2019 23:24:40 GMT
WORKDIR /opt/nuxeo/server
# Thu, 25 Apr 2019 23:24:40 GMT
COPY file:bb9febfdc3a76dbd4a80d559b47951e49fca7137ad3b76ce7b7293512f63b257 in / 
# Thu, 25 Apr 2019 23:24:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Apr 2019 23:24:40 GMT
EXPOSE 8080
# Thu, 25 Apr 2019 23:24:40 GMT
CMD ["nuxeoctl" "console"]
# Thu, 25 Apr 2019 23:24:41 GMT
USER 1000
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54db43011fd116b8cb6d9e49e268cee1fa6212f152b30cbfa7f3c4c684427c3`  
		Last Modified: Tue, 26 Mar 2019 23:32:25 GMT  
		Size: 50.1 MB (50065446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a97c78dad716eca1d273d3f7f5661d3fa2dcbbefeab64f5690b285bf395d160`  
		Last Modified: Wed, 27 Mar 2019 01:06:50 GMT  
		Size: 892.4 KB (892365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dcb79eeeda466f75d6e054aca0bd2c18861cb0c7c2b25334b9e28a30e016d12`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd56246cf4fdc376663368727fbc81bc7a4e4ff58007751d77e5f402e86a7946`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cea60f56c50b139ec25f442de67b34ce723ae45c69758c09ed98d32bd804be`  
		Last Modified: Wed, 27 Mar 2019 23:46:00 GMT  
		Size: 135.2 MB (135208938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9985ffc9589f0a74e05ee5053fbd675ca50ca9f7e45fc4fc8c0176a97eb8da38`  
		Last Modified: Thu, 28 Mar 2019 01:19:53 GMT  
		Size: 243.1 MB (243119901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2edb1a088c93c552479a37a946440687e56901dfe7d7fd279b41b378cff3b20`  
		Last Modified: Thu, 28 Mar 2019 01:18:59 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef99be2cf3cd0140df705e52ead1aff052f811350ab702d6ef3583a4010db0cf`  
		Last Modified: Thu, 25 Apr 2019 23:26:35 GMT  
		Size: 269.6 MB (269624441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192f7e041d011daa6209cbb6f340a2d555ee64939739d504b6c14b72de6ad402`  
		Last Modified: Thu, 25 Apr 2019 23:26:17 GMT  
		Size: 820.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c495979e4ea1ff939a4f4e30bb21583885457c3e87acf4b3db442aea31d8699c`  
		Last Modified: Thu, 25 Apr 2019 23:26:17 GMT  
		Size: 1.6 KB (1559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS-2017`

```console
$ docker pull nuxeo@sha256:796ba668de72fde4fd1af7864c2aee8594220e94fe0acd54fda1b3ba50a371bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:LTS-2017` - linux; amd64

```console
$ docker pull nuxeo@sha256:235c1f18571a8d3c76319e84f141c3a03e44ddcac09a4b9a0f45d605c43e378a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **874.9 MB (874916621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b3ab67bf1a9084995579bb8417d4d8f67b52935e0c57479733e361f93b78135`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Mar 2019 23:27:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:43:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:05 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:26:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 01:11:54 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Thu, 28 Mar 2019 01:15:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 01:15:13 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Thu, 28 Mar 2019 01:15:13 GMT
ENV NUXEO_USER=nuxeo
# Thu, 28 Mar 2019 01:15:13 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Thu, 28 Mar 2019 01:15:14 GMT
ENV HOME=/opt/nuxeo/server
# Thu, 28 Mar 2019 01:16:05 GMT
ARG NUXEO_VERSION=9.10
# Thu, 28 Mar 2019 01:16:05 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip
# Thu, 28 Mar 2019 01:16:05 GMT
ARG NUXEO_MD5=327d23bbd5558565694027b11c0dd82a
# Thu, 28 Mar 2019 01:16:06 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Thu, 25 Apr 2019 23:25:06 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init     && chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Thu, 25 Apr 2019 23:25:07 GMT
COPY dir:1d4b19e1e35500d85eafcc58364498b9325f119ce19917cefc60c7ad98e600e7 in /opt/nuxeo/server/templates/docker 
# Thu, 25 Apr 2019 23:25:08 GMT
COPY file:8f1eb15b3cc87be8784ed6bc39c958a3a06d1e375bda2ce728f297d14d74d526 in /etc/nuxeo/nuxeo.conf.template 
# Thu, 25 Apr 2019 23:25:09 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Thu, 25 Apr 2019 23:25:11 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Thu, 25 Apr 2019 23:25:11 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 25 Apr 2019 23:25:11 GMT
WORKDIR /opt/nuxeo/server
# Thu, 25 Apr 2019 23:25:12 GMT
COPY file:97cc30e1ff0452e9f8e463882c4544e2dc446201ab67f037426aee9cbd1e212a in / 
# Thu, 25 Apr 2019 23:25:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Apr 2019 23:25:12 GMT
EXPOSE 8080
# Thu, 25 Apr 2019 23:25:12 GMT
CMD ["nuxeoctl" "console"]
# Thu, 25 Apr 2019 23:25:12 GMT
USER 1000
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54db43011fd116b8cb6d9e49e268cee1fa6212f152b30cbfa7f3c4c684427c3`  
		Last Modified: Tue, 26 Mar 2019 23:32:25 GMT  
		Size: 50.1 MB (50065446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a97c78dad716eca1d273d3f7f5661d3fa2dcbbefeab64f5690b285bf395d160`  
		Last Modified: Wed, 27 Mar 2019 01:06:50 GMT  
		Size: 892.4 KB (892365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dcb79eeeda466f75d6e054aca0bd2c18861cb0c7c2b25334b9e28a30e016d12`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd56246cf4fdc376663368727fbc81bc7a4e4ff58007751d77e5f402e86a7946`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cea60f56c50b139ec25f442de67b34ce723ae45c69758c09ed98d32bd804be`  
		Last Modified: Wed, 27 Mar 2019 23:46:00 GMT  
		Size: 135.2 MB (135208938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9985ffc9589f0a74e05ee5053fbd675ca50ca9f7e45fc4fc8c0176a97eb8da38`  
		Last Modified: Thu, 28 Mar 2019 01:19:53 GMT  
		Size: 243.1 MB (243119901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf7347392493396a200db847e998f128a34661bdeecb3793cd3553d167b2dfce`  
		Last Modified: Thu, 28 Mar 2019 01:19:59 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db9e4b894914c9da84a700a81fada6a4f917848462ba84a8fd4166487ee08615`  
		Last Modified: Thu, 25 Apr 2019 23:27:12 GMT  
		Size: 385.2 MB (385156032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:866aaeb276a253bea916dad2ae3315999bd546e1ec51cd36fc88d99a2a420bae`  
		Last Modified: Thu, 25 Apr 2019 23:26:44 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b2636262b389f39ace43a818cb382272c34af222ef4029f3ae5aebf2e031b4`  
		Last Modified: Thu, 25 Apr 2019 23:26:44 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76559fa1fae0df37725ec7fbf9e6716202ab25d6c50c1ad7fe825d8e325b80d0`  
		Last Modified: Thu, 25 Apr 2019 23:26:44 GMT  
		Size: 1.8 KB (1847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e99bcb102e6e0bfe1f3f7d9903ca6d77c2e64076e9f4da4f644596a87934d1f8`  
		Last Modified: Thu, 25 Apr 2019 23:26:44 GMT  
		Size: 1.0 KB (1019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS-2019`

```console
$ docker pull nuxeo@sha256:beef101caebd4eeb7830c2b5aeae799efd75bc5d2cb59bf99602438d9bec3de5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `nuxeo:LTS-2019` - linux; amd64

```console
$ docker pull nuxeo@sha256:e8ac70d92df3387c5b0e54265eec861d02bf054f0f76687d228547c5219b42fe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **845.3 MB (845322305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce44d82486cfa39c81db1e33cb94dbea45c2a76f0e5b3eefd181a6e9c49d814b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Mar 2019 23:27:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:43:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:05 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:26:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 01:11:54 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Thu, 28 Mar 2019 01:15:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 01:15:13 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Thu, 28 Mar 2019 01:15:13 GMT
ENV NUXEO_USER=nuxeo
# Thu, 28 Mar 2019 01:15:13 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Thu, 28 Mar 2019 01:15:14 GMT
ENV HOME=/opt/nuxeo/server
# Thu, 28 Mar 2019 01:16:57 GMT
ARG NUXEO_VERSION=10.10
# Thu, 28 Mar 2019 01:16:58 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip
# Thu, 28 Mar 2019 01:16:58 GMT
ARG NUXEO_MD5=90ef2ac005020e880b6277510800c30c
# Thu, 28 Mar 2019 01:16:59 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Thu, 25 Apr 2019 23:25:52 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init     && chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Thu, 25 Apr 2019 23:25:53 GMT
COPY dir:d28c2b4bdf31f5817cba5496caa3161d743da596ec68186e0c444ede39dd58ac in /opt/nuxeo/server/templates/docker 
# Thu, 25 Apr 2019 23:25:53 GMT
COPY file:dbaa7cc62ad81fbafea7350f8e1ec2045fdc4a962bcfd145d777fefaf7205910 in /etc/nuxeo/nuxeo.conf.template 
# Thu, 25 Apr 2019 23:25:53 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Thu, 25 Apr 2019 23:25:54 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Thu, 25 Apr 2019 23:25:54 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 25 Apr 2019 23:25:55 GMT
WORKDIR /opt/nuxeo/server
# Thu, 25 Apr 2019 23:25:55 GMT
COPY file:97cc30e1ff0452e9f8e463882c4544e2dc446201ab67f037426aee9cbd1e212a in / 
# Thu, 25 Apr 2019 23:25:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Apr 2019 23:25:55 GMT
EXPOSE 8080
# Thu, 25 Apr 2019 23:25:55 GMT
CMD ["nuxeoctl" "console"]
# Thu, 25 Apr 2019 23:25:56 GMT
USER 1000
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54db43011fd116b8cb6d9e49e268cee1fa6212f152b30cbfa7f3c4c684427c3`  
		Last Modified: Tue, 26 Mar 2019 23:32:25 GMT  
		Size: 50.1 MB (50065446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a97c78dad716eca1d273d3f7f5661d3fa2dcbbefeab64f5690b285bf395d160`  
		Last Modified: Wed, 27 Mar 2019 01:06:50 GMT  
		Size: 892.4 KB (892365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dcb79eeeda466f75d6e054aca0bd2c18861cb0c7c2b25334b9e28a30e016d12`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd56246cf4fdc376663368727fbc81bc7a4e4ff58007751d77e5f402e86a7946`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cea60f56c50b139ec25f442de67b34ce723ae45c69758c09ed98d32bd804be`  
		Last Modified: Wed, 27 Mar 2019 23:46:00 GMT  
		Size: 135.2 MB (135208938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9985ffc9589f0a74e05ee5053fbd675ca50ca9f7e45fc4fc8c0176a97eb8da38`  
		Last Modified: Thu, 28 Mar 2019 01:19:53 GMT  
		Size: 243.1 MB (243119901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330141256ebf69d9fa3201d5964304c5a19c93a84fa74b3e2f4f3149ed10c495`  
		Last Modified: Thu, 28 Mar 2019 01:20:35 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914e57ab676c9f39e3381ecc03e789698519bbcf7f8c01d97ca636f6eedf498a`  
		Last Modified: Thu, 25 Apr 2019 23:27:40 GMT  
		Size: 355.6 MB (355562100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6064000163f63911ce6078d5f53a460630168225ed9f687684f2e0faf3234fc`  
		Last Modified: Thu, 25 Apr 2019 23:27:19 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd98c9f6d20c8ba57ca38ba53e46d233283d15d929279856ea522b2fb2adb2c`  
		Last Modified: Thu, 25 Apr 2019 23:27:19 GMT  
		Size: 987.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad67d299ad7066283594cdd13a8c5806d4edbe3ec516415d49001853ee438197`  
		Last Modified: Thu, 25 Apr 2019 23:27:19 GMT  
		Size: 1.8 KB (1825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e2710a190fb1f30036ab8ce20017a312034339636cf34943f812972adc64896`  
		Last Modified: Thu, 25 Apr 2019 23:27:19 GMT  
		Size: 1.0 KB (1020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nuxeo:LTS-2019` - linux; arm64 variant v8

```console
$ docker pull nuxeo@sha256:6b9497afdca3df2fc5213cd32d361fa363ddfb8465681860065cea5933f30f55
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **818.3 MB (818321205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5ed73ae5ddb5b2d7a0da159a553d0548ff43ea5eb2a7a891463bdcd08f837f6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:15:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:16:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 10:17:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 19:20:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 19:35:25 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 19:35:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 19:35:30 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 19:35:31 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 28 Mar 2019 03:52:50 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 03:52:51 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 03:58:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 05:13:50 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Thu, 28 Mar 2019 05:22:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 05:23:16 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Thu, 28 Mar 2019 05:23:17 GMT
ENV NUXEO_USER=nuxeo
# Thu, 28 Mar 2019 05:23:18 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Thu, 28 Mar 2019 05:23:20 GMT
ENV HOME=/opt/nuxeo/server
# Thu, 28 Mar 2019 05:23:21 GMT
ARG NUXEO_VERSION=10.10
# Thu, 28 Mar 2019 05:23:22 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip
# Thu, 28 Mar 2019 05:23:24 GMT
ARG NUXEO_MD5=90ef2ac005020e880b6277510800c30c
# Thu, 28 Mar 2019 05:23:29 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Fri, 26 Apr 2019 08:51:02 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init     && chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Fri, 26 Apr 2019 08:51:03 GMT
COPY dir:d28c2b4bdf31f5817cba5496caa3161d743da596ec68186e0c444ede39dd58ac in /opt/nuxeo/server/templates/docker 
# Fri, 26 Apr 2019 08:51:04 GMT
COPY file:dbaa7cc62ad81fbafea7350f8e1ec2045fdc4a962bcfd145d777fefaf7205910 in /etc/nuxeo/nuxeo.conf.template 
# Fri, 26 Apr 2019 08:51:04 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Fri, 26 Apr 2019 08:51:06 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Fri, 26 Apr 2019 08:51:07 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 26 Apr 2019 08:51:08 GMT
WORKDIR /opt/nuxeo/server
# Fri, 26 Apr 2019 08:51:08 GMT
COPY file:97cc30e1ff0452e9f8e463882c4544e2dc446201ab67f037426aee9cbd1e212a in / 
# Fri, 26 Apr 2019 08:51:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 26 Apr 2019 08:51:09 GMT
EXPOSE 8080
# Fri, 26 Apr 2019 08:51:10 GMT
CMD ["nuxeoctl" "console"]
# Fri, 26 Apr 2019 08:51:11 GMT
USER 1000
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6696bae2f570e0c96dcb21308e525216796d3452d1a9b8dcaba168ba37f3f464`  
		Last Modified: Wed, 27 Mar 2019 10:36:08 GMT  
		Size: 9.7 MB (9730463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dca82770cb3702e9c92d2f155923c0fb55671c1c373b8b50640b7bf05ed8418`  
		Last Modified: Wed, 27 Mar 2019 10:36:05 GMT  
		Size: 4.1 MB (4094072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95e88827e80fd1e7c7d0a78bc734615833dd6ac19b07c1ad3b8b1c837bb4ece`  
		Last Modified: Wed, 27 Mar 2019 10:36:43 GMT  
		Size: 48.0 MB (48007546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b918968c658e5fccf315dfefd0fa9aa78bcd41675036298167da2bec4b1406dd`  
		Last Modified: Wed, 27 Mar 2019 19:40:19 GMT  
		Size: 877.6 KB (877635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a7832bf03e4b7c54b24f367d9c8050d34ab96a51a57b117b1af07b4887c169`  
		Last Modified: Thu, 28 Mar 2019 04:11:01 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82425005e04069a0ce309c9fc34f7c774e8c48774ed976b38da4c2f4a98ba027`  
		Last Modified: Thu, 28 Mar 2019 04:11:01 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a213aa49f4e98511aa253590cf547c6f407c48d49a2d2712144feb9ce9e3d8`  
		Last Modified: Thu, 28 Mar 2019 04:11:40 GMT  
		Size: 125.7 MB (125663506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647dff4f251933ede4b351e5f5f88252ae95f8581819e2735e9b78335ddcbca6`  
		Last Modified: Thu, 28 Mar 2019 05:28:54 GMT  
		Size: 231.2 MB (231245058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00fdb98c1ada6e8deac620b713384c339d28de6fe17e9125097dafd4337cfc8f`  
		Last Modified: Thu, 28 Mar 2019 05:27:28 GMT  
		Size: 4.4 KB (4432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7d86f4cb7c25062f40b38129224d32a634afcfa396cc5bfe848d8312e1990f`  
		Last Modified: Fri, 26 Apr 2019 08:52:11 GMT  
		Size: 355.6 MB (355562007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:679299a4b1a9f5c6db2e4b42561c68e9b1a6c12d5a572b1f41636f599b94da36`  
		Last Modified: Fri, 26 Apr 2019 08:51:25 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a2989e3c4f98a72957a4a34d8abd5254bb31567b248e7e6fcad4ef70b8cd7e`  
		Last Modified: Fri, 26 Apr 2019 08:51:25 GMT  
		Size: 988.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6706c6b86a7c914eee5e8a390c0ca04d2b1b1b0238f7b32b378bb4977a6a17`  
		Last Modified: Fri, 26 Apr 2019 08:51:25 GMT  
		Size: 1.8 KB (1823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9556d20862ca6ccf484811b1c750565f660c185af122f7e99a07c6016cd1512`  
		Last Modified: Fri, 26 Apr 2019 08:51:25 GMT  
		Size: 1.0 KB (1021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
