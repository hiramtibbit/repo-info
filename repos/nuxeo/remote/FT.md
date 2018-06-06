## `nuxeo:FT`

```console
$ docker pull nuxeo@sha256:8d3b2c84c5cb62829235a23f44abb9baaf96a44b01c7e732ba092cb59030fc11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:FT` - linux; amd64

```console
$ docker pull nuxeo@sha256:453151e3dca1caf7ac842b192fd5ecda90400e9b7118c826bf0e27ef21adb7bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1391312717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fa4d6fc765a0f7bb45103671c57e21545aad03f255bd04839ad943d79366368`
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
# Wed, 06 Jun 2018 04:19:06 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Wed, 06 Jun 2018 04:19:06 GMT
ENV NUXEO_USER=nuxeo
# Wed, 06 Jun 2018 04:19:06 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 06 Jun 2018 04:35:33 GMT
ARG NUXEO_VERSION=10.1
# Wed, 06 Jun 2018 04:35:33 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip
# Wed, 06 Jun 2018 04:35:33 GMT
ARG NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162
# Wed, 06 Jun 2018 04:35:34 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162 NUXEO_VERSION=10.1
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 06 Jun 2018 04:45:34 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162 NUXEO_VERSION=10.1
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Wed, 06 Jun 2018 04:45:34 GMT
COPY dir:6ff2a7cd59ae46215c04b0ef5347f96b1b3912245284bfcfc0080b9d688f08f0 in /opt/nuxeo/server/templates/docker 
# Wed, 06 Jun 2018 04:45:34 GMT
COPY file:4bef2f1f6b4ee418c784459e2fef01d05a75976842dfa0d5708e86cff319a87c in /etc/nuxeo/nuxeo.conf.template 
# Wed, 06 Jun 2018 04:45:35 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Wed, 06 Jun 2018 04:45:45 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162 NUXEO_VERSION=10.1
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Wed, 06 Jun 2018 04:45:45 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 04:45:45 GMT
WORKDIR /opt/nuxeo/server
# Wed, 06 Jun 2018 04:45:46 GMT
COPY file:5057d5491002404db3522403ba90b8ddf8a263804907b8458cb34d92c265678b in / 
# Wed, 06 Jun 2018 04:45:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 06 Jun 2018 04:45:46 GMT
EXPOSE 8080/tcp
# Wed, 06 Jun 2018 04:45:46 GMT
EXPOSE 8787/tcp
# Wed, 06 Jun 2018 04:45:46 GMT
CMD ["nuxeoctl" "console"]
# Wed, 06 Jun 2018 04:45:47 GMT
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
	-	`sha256:e46c46c9b01c3e96366ee2ad0d3d2a4e9bd191f66c8341cf7847447008225793`  
		Last Modified: Wed, 06 Jun 2018 04:51:43 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9827ec5a74b5bf4f2529cb80af22bfe7c10bf26070b0db78e64739d63bb50f60`  
		Last Modified: Wed, 06 Jun 2018 04:53:39 GMT  
		Size: 453.3 MB (453316634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd24697f092d70dd2d3b033f577898a5e9f31afe896cc930921c59bb192faa4`  
		Last Modified: Wed, 06 Jun 2018 04:51:40 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:865ee73097e5bbda680c696c49a29e3e00c9c348b753e39146c4486dcf1b3361`  
		Last Modified: Wed, 06 Jun 2018 04:51:40 GMT  
		Size: 1.0 KB (1015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad9c4b2325fb87d1616a8c9e8d4e37e8b417ed1d82226e26f155b94faa19e1f`  
		Last Modified: Wed, 06 Jun 2018 04:53:08 GMT  
		Size: 453.3 MB (453320294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28046156f07a0dd4222c7338a39b9d4024cebd10b06ed6917a7e722647023fc3`  
		Last Modified: Wed, 06 Jun 2018 04:51:40 GMT  
		Size: 927.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
