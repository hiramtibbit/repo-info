<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `convertigo`

-	[`convertigo:7.4`](#convertigo74)
-	[`convertigo:7.4.7`](#convertigo747)
-	[`convertigo:7.4.7-alpine`](#convertigo747-alpine)
-	[`convertigo:7.4-alpine`](#convertigo74-alpine)
-	[`convertigo:7.5`](#convertigo75)
-	[`convertigo:7.5.0`](#convertigo750)
-	[`convertigo:7.5.0-alpine`](#convertigo750-alpine)
-	[`convertigo:7.5-alpine`](#convertigo75-alpine)
-	[`convertigo:alpine`](#convertigoalpine)
-	[`convertigo:latest`](#convertigolatest)

## `convertigo:7.4`

```console
$ docker pull convertigo@sha256:cf36d796c20fc6c50b336aeb80d4de8f48bc6988a2f60411021827309130a899
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `convertigo:7.4` - linux; amd64

```console
$ docker pull convertigo@sha256:aadc4c4c2d581dd4fb5a102068209f32aa11eccc5ec329544a6f7d06bcb481dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.8 MB (319829465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76893b0e306d89e25faefee04d6525ca8ddd44f83ed285eca640bcafd646e496`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:55:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:55:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 11:08:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:08:13 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:08:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 11:08:15 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 11:08:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 11:09:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 11:17:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 18:48:35 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 15 Feb 2018 18:48:35 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 18:48:36 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 15 Feb 2018 18:48:36 GMT
WORKDIR /usr/local/tomcat
# Thu, 15 Feb 2018 18:48:37 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 15 Feb 2018 18:48:37 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 15 Feb 2018 18:48:37 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Thu, 15 Feb 2018 18:48:38 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 18:48:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 18:48:53 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 15 Feb 2018 18:48:54 GMT
ENV TOMCAT_MAJOR=7
# Sun, 18 Feb 2018 01:45:03 GMT
ENV TOMCAT_VERSION=7.0.85
# Sun, 18 Feb 2018 01:45:04 GMT
ENV TOMCAT_SHA1=243a8be0bb445c412342965ee8fdf751d9c587e7
# Sun, 18 Feb 2018 01:45:04 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz
# Sun, 18 Feb 2018 01:45:04 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc
# Sun, 18 Feb 2018 01:45:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sun, 18 Feb 2018 01:45:55 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sun, 18 Feb 2018 01:46:06 GMT
EXPOSE 8080/tcp
# Sun, 18 Feb 2018 01:46:06 GMT
CMD ["catalina.sh" "run"]
# Sun, 18 Feb 2018 03:53:11 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Sun, 18 Feb 2018 03:53:11 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sun, 18 Feb 2018 03:53:12 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sun, 18 Feb 2018 03:53:13 GMT
WORKDIR /usr/local/tomcat
# Sun, 18 Feb 2018 03:53:17 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:53:17 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 03:53:17 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sun, 18 Feb 2018 03:53:17 GMT
ENV TINI_VERSION=0.16.1
# Sun, 18 Feb 2018 03:53:18 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Sun, 18 Feb 2018 03:53:26 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Sun, 18 Feb 2018 03:53:40 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Sun, 18 Feb 2018 03:53:41 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Sun, 18 Feb 2018 03:56:54 GMT
ENV CONVERTIGO_VERSION=7.4.7
# Sun, 18 Feb 2018 03:56:54 GMT
ENV CONVERTIGO_REVISION=43946
# Sun, 18 Feb 2018 03:56:54 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.7/convertigo-7.4.7-v43946-linux32.war
# Sun, 18 Feb 2018 03:56:55 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Sun, 18 Feb 2018 03:57:28 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Sun, 18 Feb 2018 03:57:51 GMT
COPY file:03a78619febe6c5b17d175b71a6dbe271ce2c70c52e354c6642b986d1b28fc2e in webapps/ROOT/index.html 
# Sun, 18 Feb 2018 03:57:51 GMT
COPY file:0a47ea62001ca3cec3ce66ba5a1de976c240bea17f36878bcf94b75e4f0cdf86 in / 
# Sun, 18 Feb 2018 03:57:51 GMT
ENV SWT_GTK3=0
# Sun, 18 Feb 2018 03:58:04 GMT
WORKDIR /workspace
# Sun, 18 Feb 2018 03:58:05 GMT
VOLUME [/workspace]
# Sun, 18 Feb 2018 03:58:05 GMT
EXPOSE 28080/tcp
# Sun, 18 Feb 2018 03:58:06 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 03:58:06 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cafa6a79d0be5bd8a64fe52bfc4178072e067e8f5ed5c224d5330107424335`  
		Last Modified: Thu, 15 Feb 2018 04:40:22 GMT  
		Size: 11.1 MB (11107850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fcf5a213c7dfb0aa4eeed5922f9c2b6261cf60bb27f2dd9d761d6030689b39`  
		Last Modified: Thu, 15 Feb 2018 04:40:19 GMT  
		Size: 4.3 MB (4335400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd532571c5d31f61347a950a0d58ec1282046fc8bdda6791f8c34a56a1c792c6`  
		Last Modified: Thu, 15 Feb 2018 13:39:14 GMT  
		Size: 852.3 KB (852290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31600c9f9b48dc3cd9fa7c14415fb9251cd3582028fadbb3d5f1bcb57512ecd0`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e8e9b5d10eec5baacf8bfb0d61d868b1ba263863b08d5346fbb73fcff6bb85`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0710e619e88357033e362f6a8c18d93a0dbf14d31629082877ae8c7f51072113`  
		Last Modified: Thu, 15 Feb 2018 13:39:52 GMT  
		Size: 165.4 MB (165392618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e511da65ffabe622bcb6fa89b699e80f94ec7185a95076cd3b4cabc101bd2d11`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 272.1 KB (272124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfcd79b5752d99c10b7a29d19bbd7c78fda3c82e7e2476250fb76b19bdedeb27`  
		Last Modified: Thu, 15 Feb 2018 19:49:36 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d4311e9998b432748663f250f13af84a06f849472d89e9dc8c755d0fa1212d`  
		Last Modified: Thu, 15 Feb 2018 19:49:37 GMT  
		Size: 545.3 KB (545302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f9d7fb06c56c79acdf91bde80e112045c8e7d7a8c25fbb1b9efc496a951720`  
		Last Modified: Sun, 18 Feb 2018 02:15:28 GMT  
		Size: 10.0 MB (10033359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b57bbc0ee3014496ae8989c0d5d1d29e620f05b456157fe2315b8a52a8a6c059`  
		Last Modified: Sun, 18 Feb 2018 02:15:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6328f83a2d4bb866a52353977d7245b7761ba03dbd2e37730c59cc9b7f995921`  
		Last Modified: Sun, 18 Feb 2018 03:59:58 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114b66f490073bfe7bb93e5fe537e7d120e941a56492f1b279c12a0f91e7dbc7`  
		Last Modified: Sun, 18 Feb 2018 03:59:59 GMT  
		Size: 509.3 KB (509296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e7bb14443ce4de3fbf88c4fa9392369cbf172cd0a49c7a4b52ca9b8629c0db9`  
		Last Modified: Sun, 18 Feb 2018 03:59:56 GMT  
		Size: 4.3 KB (4303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43f54144d7b74559c9d74ba726b163891ba51f01e2343975d3b4f8b1190acaf7`  
		Last Modified: Sun, 18 Feb 2018 03:59:56 GMT  
		Size: 25.8 KB (25764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de422fd9ffae2a809c05da51af81780d08dd991a502d7ac617a43a9e5b2318e2`  
		Last Modified: Sun, 18 Feb 2018 04:03:21 GMT  
		Size: 81.6 MB (81616005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3199e67cb11cf2038ce51d92ecada0641ea9dd7ddf798c8b57e44a1beff6be`  
		Last Modified: Sun, 18 Feb 2018 04:03:15 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ced0acbaa1583df548de83f0ad1c82b096096ffb1cc24228fb5561068e4b7b60`  
		Last Modified: Sun, 18 Feb 2018 04:03:14 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.4` - linux; arm variant v7

```console
$ docker pull convertigo@sha256:1c6493d14fb20fb1410abaec3b96fd772c0a6b51707dc65867c1052c907c967e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (299002936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1226977563394db082da3fd0b8d52284941f86783638380ac68ce03a2c80d785`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Thu, 15 Feb 2018 13:30:55 GMT
ADD file:58c4e4829c3db6bdb6063ee3ca04776b696772f592f70cb29d5196788c3608da in / 
# Thu, 15 Feb 2018 13:30:56 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 14:14:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 14:14:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 15:01:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 15:01:56 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 15:01:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 15:01:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 15:01:59 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 15:01:59 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 15:02:06 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 15:02:06 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 15:03:04 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 15:03:09 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 18:54:47 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 15 Feb 2018 18:54:48 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 18:54:49 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 15 Feb 2018 18:54:56 GMT
WORKDIR /usr/local/tomcat
# Thu, 15 Feb 2018 18:55:09 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 15 Feb 2018 18:55:10 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 15 Feb 2018 18:55:17 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Thu, 15 Feb 2018 18:55:24 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 18:55:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 18:55:38 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 15 Feb 2018 18:55:46 GMT
ENV TOMCAT_MAJOR=7
# Sun, 18 Feb 2018 18:14:48 GMT
ENV TOMCAT_VERSION=7.0.85
# Sun, 18 Feb 2018 18:14:48 GMT
ENV TOMCAT_SHA1=243a8be0bb445c412342965ee8fdf751d9c587e7
# Sun, 18 Feb 2018 18:14:48 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz
# Sun, 18 Feb 2018 18:14:48 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc
# Sun, 18 Feb 2018 18:15:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sun, 18 Feb 2018 18:15:39 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sun, 18 Feb 2018 18:15:39 GMT
EXPOSE 8080/tcp
# Sun, 18 Feb 2018 18:15:40 GMT
CMD ["catalina.sh" "run"]
# Sun, 18 Feb 2018 18:46:50 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Sun, 18 Feb 2018 18:46:50 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sun, 18 Feb 2018 18:46:51 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sun, 18 Feb 2018 18:46:52 GMT
WORKDIR /usr/local/tomcat
# Sun, 18 Feb 2018 18:46:57 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 18:46:57 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 18:46:58 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sun, 18 Feb 2018 18:46:58 GMT
ENV TINI_VERSION=0.16.1
# Sun, 18 Feb 2018 18:46:58 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Sun, 18 Feb 2018 18:47:03 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Sun, 18 Feb 2018 18:47:04 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Sun, 18 Feb 2018 18:47:05 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Sun, 18 Feb 2018 18:47:38 GMT
ENV CONVERTIGO_VERSION=7.4.7
# Sun, 18 Feb 2018 18:47:38 GMT
ENV CONVERTIGO_REVISION=43946
# Sun, 18 Feb 2018 18:47:38 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.7/convertigo-7.4.7-v43946-linux32.war
# Sun, 18 Feb 2018 18:47:39 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Sun, 18 Feb 2018 18:47:52 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Sun, 18 Feb 2018 18:47:52 GMT
COPY file:03a78619febe6c5b17d175b71a6dbe271ce2c70c52e354c6642b986d1b28fc2e in webapps/ROOT/index.html 
# Sun, 18 Feb 2018 18:47:53 GMT
COPY file:0a47ea62001ca3cec3ce66ba5a1de976c240bea17f36878bcf94b75e4f0cdf86 in / 
# Sun, 18 Feb 2018 18:47:53 GMT
ENV SWT_GTK3=0
# Sun, 18 Feb 2018 18:47:53 GMT
WORKDIR /workspace
# Sun, 18 Feb 2018 18:47:54 GMT
VOLUME [/workspace]
# Sun, 18 Feb 2018 18:47:54 GMT
EXPOSE 28080/tcp
# Sun, 18 Feb 2018 18:47:55 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 18:47:55 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:c0518139464abb63e1069cd4c638aad760a6cb319660ae2229921b17c703441b`  
		Last Modified: Thu, 15 Feb 2018 13:40:56 GMT  
		Size: 41.9 MB (41859666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72be4c519488d3f9c0893c7e4aa66f806292ac98c1f509b4387b4eb8e4789e9a`  
		Last Modified: Thu, 15 Feb 2018 14:24:47 GMT  
		Size: 9.8 MB (9824909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e5a3e5bf5f97b01c2bf09851057f8cc68748d43fdde36477492ec435aabd55`  
		Last Modified: Thu, 15 Feb 2018 14:24:46 GMT  
		Size: 3.9 MB (3912530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5a761b65438d1a65a32e3d0bbb1c3530a9a5a339f3315b5edc9387250e3ebc`  
		Last Modified: Thu, 15 Feb 2018 15:34:47 GMT  
		Size: 829.7 KB (829694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24fb0b223e8826de07f46f44a8dc80900ab8e46c439d5a3ce685e10ff660538`  
		Last Modified: Thu, 15 Feb 2018 15:34:45 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d695150c276b6e96341885d510d6946666501dbabf26a0ae9a56bd3ea58a9ba`  
		Last Modified: Thu, 15 Feb 2018 15:34:46 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42ca65dcf315de561fef4871a103665aac29136774b3a94bb10df5c8b591864d`  
		Last Modified: Thu, 15 Feb 2018 15:35:19 GMT  
		Size: 149.7 MB (149689725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aede9bbc8e3b39b5c440435c7b183a56240f0480556078e721a1585ba2912876`  
		Last Modified: Thu, 15 Feb 2018 15:34:46 GMT  
		Size: 272.1 KB (272118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13803da070aedc7411bb4cb0eb9f8f653039458dc6778c8c091a2aea078821d1`  
		Last Modified: Thu, 15 Feb 2018 19:25:43 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6edc6e3073e0a2b7deece9df8771e5534595976e155c1fff45136924ab141a0d`  
		Last Modified: Thu, 15 Feb 2018 19:25:43 GMT  
		Size: 520.2 KB (520198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c025e9838031adb474031c3d2119d0f1563a85756ca3b36dd02220535bc6b3a0`  
		Last Modified: Sun, 18 Feb 2018 18:29:12 GMT  
		Size: 10.0 MB (9962697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c82b36e278fe99d0c7a83214206924451203219c0282a8ee676508cbc77418`  
		Last Modified: Sun, 18 Feb 2018 18:29:11 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e464f4c376ef46c6156c7d52ce2d6061a4e8978b48587f6b9ae69a31dc32f6b9`  
		Last Modified: Sun, 18 Feb 2018 18:48:15 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95587c6eebb33868fe2fb7a13451b41a40763b2c580a91fdce7aac461ea02ffb`  
		Last Modified: Sun, 18 Feb 2018 18:48:15 GMT  
		Size: 482.7 KB (482669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74ef3616c708b7b56f46bc692132c1b0accc3c192ce8eebdb42eb23a80e4f53b`  
		Last Modified: Sun, 18 Feb 2018 18:48:13 GMT  
		Size: 4.3 KB (4343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744a5e16606c0d3c05b1adc22ae54f0a13d47cc881464508ca25393efdc513bc`  
		Last Modified: Sun, 18 Feb 2018 18:48:14 GMT  
		Size: 25.8 KB (25769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28e54132357d0334f3d6a68ceb50ee3c5eb2c0b538ea152b28a41d91c324b0dd`  
		Last Modified: Sun, 18 Feb 2018 18:49:12 GMT  
		Size: 81.6 MB (81616059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff0c47673124ad0f6623a395a62539b186edafd8fbd8d995a83e7fcabc97c7f`  
		Last Modified: Sun, 18 Feb 2018 18:48:58 GMT  
		Size: 467.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71157d0bc829c0716d37c37adf3dac6aed9f96836017669486811f19f6d44717`  
		Last Modified: Sun, 18 Feb 2018 18:48:58 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.4` - linux; arm64 variant v8

```console
$ docker pull convertigo@sha256:0b15b8a30c16b8bb607a9c168bfd53130ca881db39ff68f7531d55e2a6fbebb2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.8 MB (303829201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10dc116214cc452b07d03115481ada43b8a251677b9cf4c175dcd494422ff7e8`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:04 GMT
ADD file:f17659d511330c9a9c3fadf05151f88e9d532af1734ffadd1da10aa5e2aeb6ac in / 
# Thu, 15 Feb 2018 18:29:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:49:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 22:24:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:24:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:24:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 22:25:01 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 22:25:01 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 22:25:02 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 22:25:03 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 22:25:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 22:31:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 22:31:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 16 Feb 2018 11:29:24 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 16 Feb 2018 11:29:25 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Feb 2018 11:29:26 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 16 Feb 2018 11:29:27 GMT
WORKDIR /usr/local/tomcat
# Fri, 16 Feb 2018 11:29:27 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 16 Feb 2018 11:29:28 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 16 Feb 2018 11:29:28 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Fri, 16 Feb 2018 11:29:30 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 11:29:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 11:29:58 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 16 Feb 2018 11:29:58 GMT
ENV TOMCAT_MAJOR=7
# Sun, 18 Feb 2018 02:08:00 GMT
ENV TOMCAT_VERSION=7.0.85
# Sun, 18 Feb 2018 02:08:01 GMT
ENV TOMCAT_SHA1=243a8be0bb445c412342965ee8fdf751d9c587e7
# Sun, 18 Feb 2018 02:08:02 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz
# Sun, 18 Feb 2018 02:08:03 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc
# Sun, 18 Feb 2018 02:10:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sun, 18 Feb 2018 02:10:13 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sun, 18 Feb 2018 02:10:14 GMT
EXPOSE 8080/tcp
# Sun, 18 Feb 2018 02:10:15 GMT
CMD ["catalina.sh" "run"]
# Sun, 18 Feb 2018 06:07:05 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Sun, 18 Feb 2018 06:07:05 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sun, 18 Feb 2018 06:07:07 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sun, 18 Feb 2018 06:07:08 GMT
WORKDIR /usr/local/tomcat
# Sun, 18 Feb 2018 06:07:16 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 06:07:16 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 06:07:17 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sun, 18 Feb 2018 06:07:18 GMT
ENV TINI_VERSION=0.16.1
# Sun, 18 Feb 2018 06:07:18 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Sun, 18 Feb 2018 06:07:27 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Sun, 18 Feb 2018 06:07:30 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Sun, 18 Feb 2018 06:07:32 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Sun, 18 Feb 2018 06:10:44 GMT
ENV CONVERTIGO_VERSION=7.4.7
# Sun, 18 Feb 2018 06:10:44 GMT
ENV CONVERTIGO_REVISION=43946
# Sun, 18 Feb 2018 06:10:45 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.7/convertigo-7.4.7-v43946-linux32.war
# Sun, 18 Feb 2018 06:10:46 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Sun, 18 Feb 2018 06:11:19 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Sun, 18 Feb 2018 06:11:20 GMT
COPY file:03a78619febe6c5b17d175b71a6dbe271ce2c70c52e354c6642b986d1b28fc2e in webapps/ROOT/index.html 
# Sun, 18 Feb 2018 06:11:21 GMT
COPY file:0a47ea62001ca3cec3ce66ba5a1de976c240bea17f36878bcf94b75e4f0cdf86 in / 
# Sun, 18 Feb 2018 06:11:21 GMT
ENV SWT_GTK3=0
# Sun, 18 Feb 2018 06:11:22 GMT
WORKDIR /workspace
# Sun, 18 Feb 2018 06:11:23 GMT
VOLUME [/workspace]
# Sun, 18 Feb 2018 06:11:23 GMT
EXPOSE 28080/tcp
# Sun, 18 Feb 2018 06:11:24 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 06:11:25 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:b295e5c109fc9f55d14722eb26929ecc106cec04f7d37e867f7da008c53e293b`  
		Last Modified: Thu, 15 Feb 2018 01:14:37 GMT  
		Size: 42.9 MB (42921910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7310b14179e155997ab4625e06eb59600ea20b500835fe5bdca17a52d61e1c45`  
		Last Modified: Thu, 15 Feb 2018 20:15:23 GMT  
		Size: 10.1 MB (10066614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:785fa2a238ab89b203751335a74784cdb5ea9d78eabac46ce433ef327d7ff1db`  
		Last Modified: Thu, 15 Feb 2018 20:15:21 GMT  
		Size: 4.1 MB (4087808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27b9f7b1516b1e4adf336593044ff63a952d866f0ad17f787f3cc5bac283711`  
		Last Modified: Thu, 15 Feb 2018 23:18:00 GMT  
		Size: 838.6 KB (838598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7277740bf0b3c139ecade6b64698af5b1a8fa5f0c57374f30568b79bb2902`  
		Last Modified: Thu, 15 Feb 2018 23:17:58 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032420c17a1f581aa88a8c86d54755b3de9b7c2b3439b546cb7b6efcb40fa016`  
		Last Modified: Thu, 15 Feb 2018 23:17:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e32d4fab1fd44344ecfac22287324375ed241c4c3bb3aecc896f26d2aba886d`  
		Last Modified: Thu, 15 Feb 2018 23:18:47 GMT  
		Size: 152.9 MB (152944353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ff2922a9789418667fcad522c2bc37f7f0cabc93c1a24d369b53e73397182a`  
		Last Modified: Thu, 15 Feb 2018 23:17:58 GMT  
		Size: 272.1 KB (272116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90e926126d3fd9a72cf1ab7a477b85f0fa204943c4b67351e95fd42e6e363ba0`  
		Last Modified: Fri, 16 Feb 2018 12:55:23 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642049ab423f5450448d08a6c82289e64edcedf66b2aaa8e9dc170b3c8d4ed7d`  
		Last Modified: Fri, 16 Feb 2018 12:55:23 GMT  
		Size: 529.4 KB (529350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ede4824c3d8b290e242741f15a193a25e43d219ec3e87e0818fed9ac908cfaf`  
		Last Modified: Sun, 18 Feb 2018 02:55:20 GMT  
		Size: 10.0 MB (10042963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e62f4ff691a96bdbc5fbc19f4c0144c56c9097896f962d0594a9217cce25119`  
		Last Modified: Sun, 18 Feb 2018 02:55:16 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203d0e6946668a978176d04023efcda57ed3e295982e9868201c1da86f22e545`  
		Last Modified: Sun, 18 Feb 2018 06:12:57 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cced1e0b33253988ac7440fc5fd95d1595b84b71b23703bedd95e763f4d5629`  
		Last Modified: Sun, 18 Feb 2018 06:12:58 GMT  
		Size: 476.8 KB (476842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e917de6d5b1c683b9be5f9519ed8496b4d0a773c85199e87a499c586c5b38a54`  
		Last Modified: Sun, 18 Feb 2018 06:12:55 GMT  
		Size: 4.3 KB (4315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d6c839015126866a16a9b9ab3beb6ff5f050b510902e3afdbbab267f61e297`  
		Last Modified: Sun, 18 Feb 2018 06:12:57 GMT  
		Size: 25.8 KB (25773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:031dd05eae6e8c33b465d664d9a62265a22dcf6777c379f13da385560b83872e`  
		Last Modified: Sun, 18 Feb 2018 06:32:57 GMT  
		Size: 81.6 MB (81616021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8ad4b17bed0d453180bc8a40586dc526016263393f976a2d84336172615b4b`  
		Last Modified: Sun, 18 Feb 2018 06:32:39 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc8e79137b7058c665160268d3d380d078e875acf5fa9d08a1ed63528658246`  
		Last Modified: Sun, 18 Feb 2018 06:32:39 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.4` - linux; 386

```console
$ docker pull convertigo@sha256:36297701b69c3f4e24d226fb00a9807b4a47d2b4ecec839d754f867453cdf41e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.7 MB (337705765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41a338c7facea3b0f4944b4ec6676c50efabacf6b4a33d764144078e90ab7c62`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Thu, 15 Feb 2018 18:12:00 GMT
ADD file:efda076eaa7f21dc730f082db8e71fd3465cb5b7fda01796074ec390e25d312b in / 
# Thu, 15 Feb 2018 18:24:00 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 09:03:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 09:10:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 18:07:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:07:12 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 18:07:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 18:07:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 18:07:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 16 Feb 2018 18:07:14 GMT
ENV JAVA_VERSION=8u151
# Fri, 16 Feb 2018 18:07:15 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 16 Feb 2018 18:07:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Feb 2018 18:08:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 18:18:02 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 19 Feb 2018 01:35:01 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 19 Feb 2018 01:35:01 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Feb 2018 01:35:02 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 19 Feb 2018 01:35:02 GMT
WORKDIR /usr/local/tomcat
# Mon, 19 Feb 2018 01:35:03 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 19 Feb 2018 01:35:03 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 19 Feb 2018 01:35:03 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Mon, 19 Feb 2018 01:40:26 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 19 Feb 2018 01:40:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Feb 2018 01:43:50 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 19 Feb 2018 01:43:50 GMT
ENV TOMCAT_MAJOR=7
# Mon, 19 Feb 2018 01:43:51 GMT
ENV TOMCAT_VERSION=7.0.85
# Mon, 19 Feb 2018 01:43:51 GMT
ENV TOMCAT_SHA1=243a8be0bb445c412342965ee8fdf751d9c587e7
# Mon, 19 Feb 2018 01:43:51 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz
# Mon, 19 Feb 2018 01:43:52 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc
# Mon, 19 Feb 2018 01:44:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 19 Feb 2018 01:53:07 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 19 Feb 2018 01:53:15 GMT
EXPOSE 8080/tcp
# Mon, 19 Feb 2018 01:53:15 GMT
CMD ["catalina.sh" "run"]
# Mon, 19 Feb 2018 10:58:42 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Mon, 19 Feb 2018 10:58:42 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 19 Feb 2018 10:58:44 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 19 Feb 2018 10:58:44 GMT
WORKDIR /usr/local/tomcat
# Mon, 19 Feb 2018 10:58:51 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Mon, 19 Feb 2018 10:58:51 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Feb 2018 10:58:51 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Mon, 19 Feb 2018 10:58:51 GMT
ENV TINI_VERSION=0.16.1
# Mon, 19 Feb 2018 10:58:52 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Mon, 19 Feb 2018 10:59:01 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Mon, 19 Feb 2018 11:03:58 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Mon, 19 Feb 2018 11:03:59 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Mon, 19 Feb 2018 12:02:18 GMT
ENV CONVERTIGO_VERSION=7.4.7
# Mon, 19 Feb 2018 12:02:18 GMT
ENV CONVERTIGO_REVISION=43946
# Mon, 19 Feb 2018 12:02:19 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.7/convertigo-7.4.7-v43946-linux32.war
# Mon, 19 Feb 2018 12:02:19 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Mon, 19 Feb 2018 12:02:41 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Mon, 19 Feb 2018 12:07:40 GMT
COPY file:03a78619febe6c5b17d175b71a6dbe271ce2c70c52e354c6642b986d1b28fc2e in webapps/ROOT/index.html 
# Mon, 19 Feb 2018 12:07:40 GMT
COPY file:0a47ea62001ca3cec3ce66ba5a1de976c240bea17f36878bcf94b75e4f0cdf86 in / 
# Mon, 19 Feb 2018 12:07:40 GMT
ENV SWT_GTK3=0
# Mon, 19 Feb 2018 12:07:41 GMT
WORKDIR /workspace
# Mon, 19 Feb 2018 12:07:41 GMT
VOLUME [/workspace]
# Mon, 19 Feb 2018 12:07:41 GMT
EXPOSE 28080/tcp
# Mon, 19 Feb 2018 12:07:42 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Mon, 19 Feb 2018 12:07:42 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:9e00c93ed72d016aab52ea3c3a3423ddc9ea91d0005937106ed39c4005989991`  
		Last Modified: Thu, 15 Feb 2018 01:16:02 GMT  
		Size: 45.8 MB (45837726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b842c4f12ce193c6669f6d0ce38aec19cf0f2c7adb70daf9ead694218a108708`  
		Last Modified: Fri, 16 Feb 2018 11:35:51 GMT  
		Size: 11.2 MB (11150751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3c168f821c9302872e46de652da9ba7965adf0095f1b6e5adbdd7c9bd6710c`  
		Last Modified: Fri, 16 Feb 2018 11:35:49 GMT  
		Size: 4.6 MB (4554693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d965939fc12d1154aa65c953062de7f15ec1f9c25f0f1a8fba2e6ae2418cc1`  
		Last Modified: Sat, 17 Feb 2018 08:54:01 GMT  
		Size: 861.2 KB (861227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00d8b4f34effe52ffcb2fef133798e97168c81615216a73788a825e8f4d9b04`  
		Last Modified: Sat, 17 Feb 2018 08:53:58 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:998903c668db9bf30c8df8104776a702627c04bd0dfb32f2a58d7dd4eed26f12`  
		Last Modified: Sat, 17 Feb 2018 08:53:59 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:103026c14ec31451e833db0fd15fd93e3ff6e0708b7efa1339b6c5dde0b9e1e1`  
		Last Modified: Sat, 17 Feb 2018 08:54:51 GMT  
		Size: 168.3 MB (168328825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929c8cbef0b62fab35fbd6945034f797d68d46a189476005bbfba445c8a60b89`  
		Last Modified: Sat, 17 Feb 2018 08:53:59 GMT  
		Size: 272.2 KB (272171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bcfd1885d960f4ab970069c7d7e620d49ab16c652efe467695178178b55fd24`  
		Last Modified: Mon, 19 Feb 2018 09:30:23 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7206c5c7dbfd19c6e4caf8367aef9b89d4896b1d6a6f0a5eb10680627918e6b9`  
		Last Modified: Mon, 19 Feb 2018 09:30:24 GMT  
		Size: 554.6 KB (554604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d21f01c6809a7b6afed30cab18eee6ce1f2ef277befca531a1f5cdcbc96bfdd1`  
		Last Modified: Mon, 19 Feb 2018 09:30:27 GMT  
		Size: 9.9 MB (9930273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7621cadc1c588bf6a09b791d38780b09de613ed6751d325331084180563ce777`  
		Last Modified: Mon, 19 Feb 2018 09:30:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5047268433ff5e10ede803298c21d3f17691c0c96ee03547814623ea6b82ea5a`  
		Last Modified: Mon, 19 Feb 2018 12:45:15 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7961f13c77884abaf5973ab67b4919d30eac1ef8c2275c142086f3fbaafc5bd`  
		Last Modified: Mon, 19 Feb 2018 12:45:15 GMT  
		Size: 489.2 KB (489163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a07987a9990eea1a9d2cad58969de835710fdf9b3ce9dee58da019b3ac3f011`  
		Last Modified: Mon, 19 Feb 2018 12:45:15 GMT  
		Size: 4.3 KB (4290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed811dfb1ecb44965e89f058453392fc41f761a79283e749debbaba3bdc531c`  
		Last Modified: Mon, 19 Feb 2018 12:45:15 GMT  
		Size: 25.8 KB (25773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd79e7d1945c2d9b181eb843a577eb0ee99a2a9a3f4aac43a2fef940a9a56b35`  
		Last Modified: Mon, 19 Feb 2018 13:48:53 GMT  
		Size: 95.7 MB (95693739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476339856a4ea976085bba6a6c2f34fc297d653927276106b146b8a0f93ecd35`  
		Last Modified: Mon, 19 Feb 2018 13:48:34 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e547fbc6b511ee3e44ea036a7588db9023d867beed41a8648d6a775690afd37`  
		Last Modified: Mon, 19 Feb 2018 13:48:34 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `convertigo:7.4.7`

```console
$ docker pull convertigo@sha256:cf36d796c20fc6c50b336aeb80d4de8f48bc6988a2f60411021827309130a899
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `convertigo:7.4.7` - linux; amd64

```console
$ docker pull convertigo@sha256:aadc4c4c2d581dd4fb5a102068209f32aa11eccc5ec329544a6f7d06bcb481dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.8 MB (319829465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76893b0e306d89e25faefee04d6525ca8ddd44f83ed285eca640bcafd646e496`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:55:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:55:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 11:08:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:08:13 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:08:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 11:08:15 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 11:08:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 11:09:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 11:17:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 18:48:35 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 15 Feb 2018 18:48:35 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 18:48:36 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 15 Feb 2018 18:48:36 GMT
WORKDIR /usr/local/tomcat
# Thu, 15 Feb 2018 18:48:37 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 15 Feb 2018 18:48:37 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 15 Feb 2018 18:48:37 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Thu, 15 Feb 2018 18:48:38 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 18:48:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 18:48:53 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 15 Feb 2018 18:48:54 GMT
ENV TOMCAT_MAJOR=7
# Sun, 18 Feb 2018 01:45:03 GMT
ENV TOMCAT_VERSION=7.0.85
# Sun, 18 Feb 2018 01:45:04 GMT
ENV TOMCAT_SHA1=243a8be0bb445c412342965ee8fdf751d9c587e7
# Sun, 18 Feb 2018 01:45:04 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz
# Sun, 18 Feb 2018 01:45:04 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc
# Sun, 18 Feb 2018 01:45:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sun, 18 Feb 2018 01:45:55 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sun, 18 Feb 2018 01:46:06 GMT
EXPOSE 8080/tcp
# Sun, 18 Feb 2018 01:46:06 GMT
CMD ["catalina.sh" "run"]
# Sun, 18 Feb 2018 03:53:11 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Sun, 18 Feb 2018 03:53:11 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sun, 18 Feb 2018 03:53:12 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sun, 18 Feb 2018 03:53:13 GMT
WORKDIR /usr/local/tomcat
# Sun, 18 Feb 2018 03:53:17 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:53:17 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 03:53:17 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sun, 18 Feb 2018 03:53:17 GMT
ENV TINI_VERSION=0.16.1
# Sun, 18 Feb 2018 03:53:18 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Sun, 18 Feb 2018 03:53:26 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Sun, 18 Feb 2018 03:53:40 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Sun, 18 Feb 2018 03:53:41 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Sun, 18 Feb 2018 03:56:54 GMT
ENV CONVERTIGO_VERSION=7.4.7
# Sun, 18 Feb 2018 03:56:54 GMT
ENV CONVERTIGO_REVISION=43946
# Sun, 18 Feb 2018 03:56:54 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.7/convertigo-7.4.7-v43946-linux32.war
# Sun, 18 Feb 2018 03:56:55 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Sun, 18 Feb 2018 03:57:28 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Sun, 18 Feb 2018 03:57:51 GMT
COPY file:03a78619febe6c5b17d175b71a6dbe271ce2c70c52e354c6642b986d1b28fc2e in webapps/ROOT/index.html 
# Sun, 18 Feb 2018 03:57:51 GMT
COPY file:0a47ea62001ca3cec3ce66ba5a1de976c240bea17f36878bcf94b75e4f0cdf86 in / 
# Sun, 18 Feb 2018 03:57:51 GMT
ENV SWT_GTK3=0
# Sun, 18 Feb 2018 03:58:04 GMT
WORKDIR /workspace
# Sun, 18 Feb 2018 03:58:05 GMT
VOLUME [/workspace]
# Sun, 18 Feb 2018 03:58:05 GMT
EXPOSE 28080/tcp
# Sun, 18 Feb 2018 03:58:06 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 03:58:06 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cafa6a79d0be5bd8a64fe52bfc4178072e067e8f5ed5c224d5330107424335`  
		Last Modified: Thu, 15 Feb 2018 04:40:22 GMT  
		Size: 11.1 MB (11107850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fcf5a213c7dfb0aa4eeed5922f9c2b6261cf60bb27f2dd9d761d6030689b39`  
		Last Modified: Thu, 15 Feb 2018 04:40:19 GMT  
		Size: 4.3 MB (4335400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd532571c5d31f61347a950a0d58ec1282046fc8bdda6791f8c34a56a1c792c6`  
		Last Modified: Thu, 15 Feb 2018 13:39:14 GMT  
		Size: 852.3 KB (852290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31600c9f9b48dc3cd9fa7c14415fb9251cd3582028fadbb3d5f1bcb57512ecd0`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e8e9b5d10eec5baacf8bfb0d61d868b1ba263863b08d5346fbb73fcff6bb85`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0710e619e88357033e362f6a8c18d93a0dbf14d31629082877ae8c7f51072113`  
		Last Modified: Thu, 15 Feb 2018 13:39:52 GMT  
		Size: 165.4 MB (165392618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e511da65ffabe622bcb6fa89b699e80f94ec7185a95076cd3b4cabc101bd2d11`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 272.1 KB (272124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfcd79b5752d99c10b7a29d19bbd7c78fda3c82e7e2476250fb76b19bdedeb27`  
		Last Modified: Thu, 15 Feb 2018 19:49:36 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d4311e9998b432748663f250f13af84a06f849472d89e9dc8c755d0fa1212d`  
		Last Modified: Thu, 15 Feb 2018 19:49:37 GMT  
		Size: 545.3 KB (545302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f9d7fb06c56c79acdf91bde80e112045c8e7d7a8c25fbb1b9efc496a951720`  
		Last Modified: Sun, 18 Feb 2018 02:15:28 GMT  
		Size: 10.0 MB (10033359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b57bbc0ee3014496ae8989c0d5d1d29e620f05b456157fe2315b8a52a8a6c059`  
		Last Modified: Sun, 18 Feb 2018 02:15:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6328f83a2d4bb866a52353977d7245b7761ba03dbd2e37730c59cc9b7f995921`  
		Last Modified: Sun, 18 Feb 2018 03:59:58 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114b66f490073bfe7bb93e5fe537e7d120e941a56492f1b279c12a0f91e7dbc7`  
		Last Modified: Sun, 18 Feb 2018 03:59:59 GMT  
		Size: 509.3 KB (509296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e7bb14443ce4de3fbf88c4fa9392369cbf172cd0a49c7a4b52ca9b8629c0db9`  
		Last Modified: Sun, 18 Feb 2018 03:59:56 GMT  
		Size: 4.3 KB (4303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43f54144d7b74559c9d74ba726b163891ba51f01e2343975d3b4f8b1190acaf7`  
		Last Modified: Sun, 18 Feb 2018 03:59:56 GMT  
		Size: 25.8 KB (25764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de422fd9ffae2a809c05da51af81780d08dd991a502d7ac617a43a9e5b2318e2`  
		Last Modified: Sun, 18 Feb 2018 04:03:21 GMT  
		Size: 81.6 MB (81616005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3199e67cb11cf2038ce51d92ecada0641ea9dd7ddf798c8b57e44a1beff6be`  
		Last Modified: Sun, 18 Feb 2018 04:03:15 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ced0acbaa1583df548de83f0ad1c82b096096ffb1cc24228fb5561068e4b7b60`  
		Last Modified: Sun, 18 Feb 2018 04:03:14 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.4.7` - linux; arm variant v7

```console
$ docker pull convertigo@sha256:1c6493d14fb20fb1410abaec3b96fd772c0a6b51707dc65867c1052c907c967e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (299002936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1226977563394db082da3fd0b8d52284941f86783638380ac68ce03a2c80d785`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Thu, 15 Feb 2018 13:30:55 GMT
ADD file:58c4e4829c3db6bdb6063ee3ca04776b696772f592f70cb29d5196788c3608da in / 
# Thu, 15 Feb 2018 13:30:56 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 14:14:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 14:14:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 15:01:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 15:01:56 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 15:01:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 15:01:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 15:01:59 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 15:01:59 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 15:02:06 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 15:02:06 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 15:03:04 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 15:03:09 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 18:54:47 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 15 Feb 2018 18:54:48 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 18:54:49 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 15 Feb 2018 18:54:56 GMT
WORKDIR /usr/local/tomcat
# Thu, 15 Feb 2018 18:55:09 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 15 Feb 2018 18:55:10 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 15 Feb 2018 18:55:17 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Thu, 15 Feb 2018 18:55:24 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 18:55:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 18:55:38 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 15 Feb 2018 18:55:46 GMT
ENV TOMCAT_MAJOR=7
# Sun, 18 Feb 2018 18:14:48 GMT
ENV TOMCAT_VERSION=7.0.85
# Sun, 18 Feb 2018 18:14:48 GMT
ENV TOMCAT_SHA1=243a8be0bb445c412342965ee8fdf751d9c587e7
# Sun, 18 Feb 2018 18:14:48 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz
# Sun, 18 Feb 2018 18:14:48 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc
# Sun, 18 Feb 2018 18:15:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sun, 18 Feb 2018 18:15:39 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sun, 18 Feb 2018 18:15:39 GMT
EXPOSE 8080/tcp
# Sun, 18 Feb 2018 18:15:40 GMT
CMD ["catalina.sh" "run"]
# Sun, 18 Feb 2018 18:46:50 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Sun, 18 Feb 2018 18:46:50 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sun, 18 Feb 2018 18:46:51 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sun, 18 Feb 2018 18:46:52 GMT
WORKDIR /usr/local/tomcat
# Sun, 18 Feb 2018 18:46:57 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 18:46:57 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 18:46:58 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sun, 18 Feb 2018 18:46:58 GMT
ENV TINI_VERSION=0.16.1
# Sun, 18 Feb 2018 18:46:58 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Sun, 18 Feb 2018 18:47:03 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Sun, 18 Feb 2018 18:47:04 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Sun, 18 Feb 2018 18:47:05 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Sun, 18 Feb 2018 18:47:38 GMT
ENV CONVERTIGO_VERSION=7.4.7
# Sun, 18 Feb 2018 18:47:38 GMT
ENV CONVERTIGO_REVISION=43946
# Sun, 18 Feb 2018 18:47:38 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.7/convertigo-7.4.7-v43946-linux32.war
# Sun, 18 Feb 2018 18:47:39 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Sun, 18 Feb 2018 18:47:52 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Sun, 18 Feb 2018 18:47:52 GMT
COPY file:03a78619febe6c5b17d175b71a6dbe271ce2c70c52e354c6642b986d1b28fc2e in webapps/ROOT/index.html 
# Sun, 18 Feb 2018 18:47:53 GMT
COPY file:0a47ea62001ca3cec3ce66ba5a1de976c240bea17f36878bcf94b75e4f0cdf86 in / 
# Sun, 18 Feb 2018 18:47:53 GMT
ENV SWT_GTK3=0
# Sun, 18 Feb 2018 18:47:53 GMT
WORKDIR /workspace
# Sun, 18 Feb 2018 18:47:54 GMT
VOLUME [/workspace]
# Sun, 18 Feb 2018 18:47:54 GMT
EXPOSE 28080/tcp
# Sun, 18 Feb 2018 18:47:55 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 18:47:55 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:c0518139464abb63e1069cd4c638aad760a6cb319660ae2229921b17c703441b`  
		Last Modified: Thu, 15 Feb 2018 13:40:56 GMT  
		Size: 41.9 MB (41859666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72be4c519488d3f9c0893c7e4aa66f806292ac98c1f509b4387b4eb8e4789e9a`  
		Last Modified: Thu, 15 Feb 2018 14:24:47 GMT  
		Size: 9.8 MB (9824909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e5a3e5bf5f97b01c2bf09851057f8cc68748d43fdde36477492ec435aabd55`  
		Last Modified: Thu, 15 Feb 2018 14:24:46 GMT  
		Size: 3.9 MB (3912530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5a761b65438d1a65a32e3d0bbb1c3530a9a5a339f3315b5edc9387250e3ebc`  
		Last Modified: Thu, 15 Feb 2018 15:34:47 GMT  
		Size: 829.7 KB (829694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24fb0b223e8826de07f46f44a8dc80900ab8e46c439d5a3ce685e10ff660538`  
		Last Modified: Thu, 15 Feb 2018 15:34:45 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d695150c276b6e96341885d510d6946666501dbabf26a0ae9a56bd3ea58a9ba`  
		Last Modified: Thu, 15 Feb 2018 15:34:46 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42ca65dcf315de561fef4871a103665aac29136774b3a94bb10df5c8b591864d`  
		Last Modified: Thu, 15 Feb 2018 15:35:19 GMT  
		Size: 149.7 MB (149689725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aede9bbc8e3b39b5c440435c7b183a56240f0480556078e721a1585ba2912876`  
		Last Modified: Thu, 15 Feb 2018 15:34:46 GMT  
		Size: 272.1 KB (272118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13803da070aedc7411bb4cb0eb9f8f653039458dc6778c8c091a2aea078821d1`  
		Last Modified: Thu, 15 Feb 2018 19:25:43 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6edc6e3073e0a2b7deece9df8771e5534595976e155c1fff45136924ab141a0d`  
		Last Modified: Thu, 15 Feb 2018 19:25:43 GMT  
		Size: 520.2 KB (520198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c025e9838031adb474031c3d2119d0f1563a85756ca3b36dd02220535bc6b3a0`  
		Last Modified: Sun, 18 Feb 2018 18:29:12 GMT  
		Size: 10.0 MB (9962697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c82b36e278fe99d0c7a83214206924451203219c0282a8ee676508cbc77418`  
		Last Modified: Sun, 18 Feb 2018 18:29:11 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e464f4c376ef46c6156c7d52ce2d6061a4e8978b48587f6b9ae69a31dc32f6b9`  
		Last Modified: Sun, 18 Feb 2018 18:48:15 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95587c6eebb33868fe2fb7a13451b41a40763b2c580a91fdce7aac461ea02ffb`  
		Last Modified: Sun, 18 Feb 2018 18:48:15 GMT  
		Size: 482.7 KB (482669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74ef3616c708b7b56f46bc692132c1b0accc3c192ce8eebdb42eb23a80e4f53b`  
		Last Modified: Sun, 18 Feb 2018 18:48:13 GMT  
		Size: 4.3 KB (4343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744a5e16606c0d3c05b1adc22ae54f0a13d47cc881464508ca25393efdc513bc`  
		Last Modified: Sun, 18 Feb 2018 18:48:14 GMT  
		Size: 25.8 KB (25769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28e54132357d0334f3d6a68ceb50ee3c5eb2c0b538ea152b28a41d91c324b0dd`  
		Last Modified: Sun, 18 Feb 2018 18:49:12 GMT  
		Size: 81.6 MB (81616059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff0c47673124ad0f6623a395a62539b186edafd8fbd8d995a83e7fcabc97c7f`  
		Last Modified: Sun, 18 Feb 2018 18:48:58 GMT  
		Size: 467.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71157d0bc829c0716d37c37adf3dac6aed9f96836017669486811f19f6d44717`  
		Last Modified: Sun, 18 Feb 2018 18:48:58 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.4.7` - linux; arm64 variant v8

```console
$ docker pull convertigo@sha256:0b15b8a30c16b8bb607a9c168bfd53130ca881db39ff68f7531d55e2a6fbebb2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.8 MB (303829201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10dc116214cc452b07d03115481ada43b8a251677b9cf4c175dcd494422ff7e8`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:04 GMT
ADD file:f17659d511330c9a9c3fadf05151f88e9d532af1734ffadd1da10aa5e2aeb6ac in / 
# Thu, 15 Feb 2018 18:29:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:49:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 22:24:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:24:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:24:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 22:25:01 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 22:25:01 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 22:25:02 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 22:25:03 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 22:25:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 22:31:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 22:31:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 16 Feb 2018 11:29:24 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 16 Feb 2018 11:29:25 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Feb 2018 11:29:26 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 16 Feb 2018 11:29:27 GMT
WORKDIR /usr/local/tomcat
# Fri, 16 Feb 2018 11:29:27 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 16 Feb 2018 11:29:28 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 16 Feb 2018 11:29:28 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Fri, 16 Feb 2018 11:29:30 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 11:29:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 11:29:58 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 16 Feb 2018 11:29:58 GMT
ENV TOMCAT_MAJOR=7
# Sun, 18 Feb 2018 02:08:00 GMT
ENV TOMCAT_VERSION=7.0.85
# Sun, 18 Feb 2018 02:08:01 GMT
ENV TOMCAT_SHA1=243a8be0bb445c412342965ee8fdf751d9c587e7
# Sun, 18 Feb 2018 02:08:02 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz
# Sun, 18 Feb 2018 02:08:03 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc
# Sun, 18 Feb 2018 02:10:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sun, 18 Feb 2018 02:10:13 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sun, 18 Feb 2018 02:10:14 GMT
EXPOSE 8080/tcp
# Sun, 18 Feb 2018 02:10:15 GMT
CMD ["catalina.sh" "run"]
# Sun, 18 Feb 2018 06:07:05 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Sun, 18 Feb 2018 06:07:05 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sun, 18 Feb 2018 06:07:07 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sun, 18 Feb 2018 06:07:08 GMT
WORKDIR /usr/local/tomcat
# Sun, 18 Feb 2018 06:07:16 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 06:07:16 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 06:07:17 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sun, 18 Feb 2018 06:07:18 GMT
ENV TINI_VERSION=0.16.1
# Sun, 18 Feb 2018 06:07:18 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Sun, 18 Feb 2018 06:07:27 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Sun, 18 Feb 2018 06:07:30 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Sun, 18 Feb 2018 06:07:32 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Sun, 18 Feb 2018 06:10:44 GMT
ENV CONVERTIGO_VERSION=7.4.7
# Sun, 18 Feb 2018 06:10:44 GMT
ENV CONVERTIGO_REVISION=43946
# Sun, 18 Feb 2018 06:10:45 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.7/convertigo-7.4.7-v43946-linux32.war
# Sun, 18 Feb 2018 06:10:46 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Sun, 18 Feb 2018 06:11:19 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Sun, 18 Feb 2018 06:11:20 GMT
COPY file:03a78619febe6c5b17d175b71a6dbe271ce2c70c52e354c6642b986d1b28fc2e in webapps/ROOT/index.html 
# Sun, 18 Feb 2018 06:11:21 GMT
COPY file:0a47ea62001ca3cec3ce66ba5a1de976c240bea17f36878bcf94b75e4f0cdf86 in / 
# Sun, 18 Feb 2018 06:11:21 GMT
ENV SWT_GTK3=0
# Sun, 18 Feb 2018 06:11:22 GMT
WORKDIR /workspace
# Sun, 18 Feb 2018 06:11:23 GMT
VOLUME [/workspace]
# Sun, 18 Feb 2018 06:11:23 GMT
EXPOSE 28080/tcp
# Sun, 18 Feb 2018 06:11:24 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 06:11:25 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:b295e5c109fc9f55d14722eb26929ecc106cec04f7d37e867f7da008c53e293b`  
		Last Modified: Thu, 15 Feb 2018 01:14:37 GMT  
		Size: 42.9 MB (42921910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7310b14179e155997ab4625e06eb59600ea20b500835fe5bdca17a52d61e1c45`  
		Last Modified: Thu, 15 Feb 2018 20:15:23 GMT  
		Size: 10.1 MB (10066614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:785fa2a238ab89b203751335a74784cdb5ea9d78eabac46ce433ef327d7ff1db`  
		Last Modified: Thu, 15 Feb 2018 20:15:21 GMT  
		Size: 4.1 MB (4087808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27b9f7b1516b1e4adf336593044ff63a952d866f0ad17f787f3cc5bac283711`  
		Last Modified: Thu, 15 Feb 2018 23:18:00 GMT  
		Size: 838.6 KB (838598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7277740bf0b3c139ecade6b64698af5b1a8fa5f0c57374f30568b79bb2902`  
		Last Modified: Thu, 15 Feb 2018 23:17:58 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032420c17a1f581aa88a8c86d54755b3de9b7c2b3439b546cb7b6efcb40fa016`  
		Last Modified: Thu, 15 Feb 2018 23:17:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e32d4fab1fd44344ecfac22287324375ed241c4c3bb3aecc896f26d2aba886d`  
		Last Modified: Thu, 15 Feb 2018 23:18:47 GMT  
		Size: 152.9 MB (152944353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ff2922a9789418667fcad522c2bc37f7f0cabc93c1a24d369b53e73397182a`  
		Last Modified: Thu, 15 Feb 2018 23:17:58 GMT  
		Size: 272.1 KB (272116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90e926126d3fd9a72cf1ab7a477b85f0fa204943c4b67351e95fd42e6e363ba0`  
		Last Modified: Fri, 16 Feb 2018 12:55:23 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642049ab423f5450448d08a6c82289e64edcedf66b2aaa8e9dc170b3c8d4ed7d`  
		Last Modified: Fri, 16 Feb 2018 12:55:23 GMT  
		Size: 529.4 KB (529350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ede4824c3d8b290e242741f15a193a25e43d219ec3e87e0818fed9ac908cfaf`  
		Last Modified: Sun, 18 Feb 2018 02:55:20 GMT  
		Size: 10.0 MB (10042963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e62f4ff691a96bdbc5fbc19f4c0144c56c9097896f962d0594a9217cce25119`  
		Last Modified: Sun, 18 Feb 2018 02:55:16 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203d0e6946668a978176d04023efcda57ed3e295982e9868201c1da86f22e545`  
		Last Modified: Sun, 18 Feb 2018 06:12:57 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cced1e0b33253988ac7440fc5fd95d1595b84b71b23703bedd95e763f4d5629`  
		Last Modified: Sun, 18 Feb 2018 06:12:58 GMT  
		Size: 476.8 KB (476842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e917de6d5b1c683b9be5f9519ed8496b4d0a773c85199e87a499c586c5b38a54`  
		Last Modified: Sun, 18 Feb 2018 06:12:55 GMT  
		Size: 4.3 KB (4315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d6c839015126866a16a9b9ab3beb6ff5f050b510902e3afdbbab267f61e297`  
		Last Modified: Sun, 18 Feb 2018 06:12:57 GMT  
		Size: 25.8 KB (25773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:031dd05eae6e8c33b465d664d9a62265a22dcf6777c379f13da385560b83872e`  
		Last Modified: Sun, 18 Feb 2018 06:32:57 GMT  
		Size: 81.6 MB (81616021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8ad4b17bed0d453180bc8a40586dc526016263393f976a2d84336172615b4b`  
		Last Modified: Sun, 18 Feb 2018 06:32:39 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc8e79137b7058c665160268d3d380d078e875acf5fa9d08a1ed63528658246`  
		Last Modified: Sun, 18 Feb 2018 06:32:39 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.4.7` - linux; 386

```console
$ docker pull convertigo@sha256:36297701b69c3f4e24d226fb00a9807b4a47d2b4ecec839d754f867453cdf41e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.7 MB (337705765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41a338c7facea3b0f4944b4ec6676c50efabacf6b4a33d764144078e90ab7c62`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Thu, 15 Feb 2018 18:12:00 GMT
ADD file:efda076eaa7f21dc730f082db8e71fd3465cb5b7fda01796074ec390e25d312b in / 
# Thu, 15 Feb 2018 18:24:00 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 09:03:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 09:10:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 18:07:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:07:12 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 18:07:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 18:07:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 18:07:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 16 Feb 2018 18:07:14 GMT
ENV JAVA_VERSION=8u151
# Fri, 16 Feb 2018 18:07:15 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 16 Feb 2018 18:07:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Feb 2018 18:08:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 18:18:02 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 19 Feb 2018 01:35:01 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 19 Feb 2018 01:35:01 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Feb 2018 01:35:02 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 19 Feb 2018 01:35:02 GMT
WORKDIR /usr/local/tomcat
# Mon, 19 Feb 2018 01:35:03 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 19 Feb 2018 01:35:03 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 19 Feb 2018 01:35:03 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Mon, 19 Feb 2018 01:40:26 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 19 Feb 2018 01:40:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Feb 2018 01:43:50 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 19 Feb 2018 01:43:50 GMT
ENV TOMCAT_MAJOR=7
# Mon, 19 Feb 2018 01:43:51 GMT
ENV TOMCAT_VERSION=7.0.85
# Mon, 19 Feb 2018 01:43:51 GMT
ENV TOMCAT_SHA1=243a8be0bb445c412342965ee8fdf751d9c587e7
# Mon, 19 Feb 2018 01:43:51 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz
# Mon, 19 Feb 2018 01:43:52 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc
# Mon, 19 Feb 2018 01:44:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 19 Feb 2018 01:53:07 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 19 Feb 2018 01:53:15 GMT
EXPOSE 8080/tcp
# Mon, 19 Feb 2018 01:53:15 GMT
CMD ["catalina.sh" "run"]
# Mon, 19 Feb 2018 10:58:42 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Mon, 19 Feb 2018 10:58:42 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 19 Feb 2018 10:58:44 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 19 Feb 2018 10:58:44 GMT
WORKDIR /usr/local/tomcat
# Mon, 19 Feb 2018 10:58:51 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Mon, 19 Feb 2018 10:58:51 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Feb 2018 10:58:51 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Mon, 19 Feb 2018 10:58:51 GMT
ENV TINI_VERSION=0.16.1
# Mon, 19 Feb 2018 10:58:52 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Mon, 19 Feb 2018 10:59:01 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Mon, 19 Feb 2018 11:03:58 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Mon, 19 Feb 2018 11:03:59 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Mon, 19 Feb 2018 12:02:18 GMT
ENV CONVERTIGO_VERSION=7.4.7
# Mon, 19 Feb 2018 12:02:18 GMT
ENV CONVERTIGO_REVISION=43946
# Mon, 19 Feb 2018 12:02:19 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.7/convertigo-7.4.7-v43946-linux32.war
# Mon, 19 Feb 2018 12:02:19 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Mon, 19 Feb 2018 12:02:41 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Mon, 19 Feb 2018 12:07:40 GMT
COPY file:03a78619febe6c5b17d175b71a6dbe271ce2c70c52e354c6642b986d1b28fc2e in webapps/ROOT/index.html 
# Mon, 19 Feb 2018 12:07:40 GMT
COPY file:0a47ea62001ca3cec3ce66ba5a1de976c240bea17f36878bcf94b75e4f0cdf86 in / 
# Mon, 19 Feb 2018 12:07:40 GMT
ENV SWT_GTK3=0
# Mon, 19 Feb 2018 12:07:41 GMT
WORKDIR /workspace
# Mon, 19 Feb 2018 12:07:41 GMT
VOLUME [/workspace]
# Mon, 19 Feb 2018 12:07:41 GMT
EXPOSE 28080/tcp
# Mon, 19 Feb 2018 12:07:42 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Mon, 19 Feb 2018 12:07:42 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:9e00c93ed72d016aab52ea3c3a3423ddc9ea91d0005937106ed39c4005989991`  
		Last Modified: Thu, 15 Feb 2018 01:16:02 GMT  
		Size: 45.8 MB (45837726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b842c4f12ce193c6669f6d0ce38aec19cf0f2c7adb70daf9ead694218a108708`  
		Last Modified: Fri, 16 Feb 2018 11:35:51 GMT  
		Size: 11.2 MB (11150751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3c168f821c9302872e46de652da9ba7965adf0095f1b6e5adbdd7c9bd6710c`  
		Last Modified: Fri, 16 Feb 2018 11:35:49 GMT  
		Size: 4.6 MB (4554693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d965939fc12d1154aa65c953062de7f15ec1f9c25f0f1a8fba2e6ae2418cc1`  
		Last Modified: Sat, 17 Feb 2018 08:54:01 GMT  
		Size: 861.2 KB (861227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00d8b4f34effe52ffcb2fef133798e97168c81615216a73788a825e8f4d9b04`  
		Last Modified: Sat, 17 Feb 2018 08:53:58 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:998903c668db9bf30c8df8104776a702627c04bd0dfb32f2a58d7dd4eed26f12`  
		Last Modified: Sat, 17 Feb 2018 08:53:59 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:103026c14ec31451e833db0fd15fd93e3ff6e0708b7efa1339b6c5dde0b9e1e1`  
		Last Modified: Sat, 17 Feb 2018 08:54:51 GMT  
		Size: 168.3 MB (168328825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929c8cbef0b62fab35fbd6945034f797d68d46a189476005bbfba445c8a60b89`  
		Last Modified: Sat, 17 Feb 2018 08:53:59 GMT  
		Size: 272.2 KB (272171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bcfd1885d960f4ab970069c7d7e620d49ab16c652efe467695178178b55fd24`  
		Last Modified: Mon, 19 Feb 2018 09:30:23 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7206c5c7dbfd19c6e4caf8367aef9b89d4896b1d6a6f0a5eb10680627918e6b9`  
		Last Modified: Mon, 19 Feb 2018 09:30:24 GMT  
		Size: 554.6 KB (554604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d21f01c6809a7b6afed30cab18eee6ce1f2ef277befca531a1f5cdcbc96bfdd1`  
		Last Modified: Mon, 19 Feb 2018 09:30:27 GMT  
		Size: 9.9 MB (9930273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7621cadc1c588bf6a09b791d38780b09de613ed6751d325331084180563ce777`  
		Last Modified: Mon, 19 Feb 2018 09:30:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5047268433ff5e10ede803298c21d3f17691c0c96ee03547814623ea6b82ea5a`  
		Last Modified: Mon, 19 Feb 2018 12:45:15 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7961f13c77884abaf5973ab67b4919d30eac1ef8c2275c142086f3fbaafc5bd`  
		Last Modified: Mon, 19 Feb 2018 12:45:15 GMT  
		Size: 489.2 KB (489163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a07987a9990eea1a9d2cad58969de835710fdf9b3ce9dee58da019b3ac3f011`  
		Last Modified: Mon, 19 Feb 2018 12:45:15 GMT  
		Size: 4.3 KB (4290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed811dfb1ecb44965e89f058453392fc41f761a79283e749debbaba3bdc531c`  
		Last Modified: Mon, 19 Feb 2018 12:45:15 GMT  
		Size: 25.8 KB (25773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd79e7d1945c2d9b181eb843a577eb0ee99a2a9a3f4aac43a2fef940a9a56b35`  
		Last Modified: Mon, 19 Feb 2018 13:48:53 GMT  
		Size: 95.7 MB (95693739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476339856a4ea976085bba6a6c2f34fc297d653927276106b146b8a0f93ecd35`  
		Last Modified: Mon, 19 Feb 2018 13:48:34 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e547fbc6b511ee3e44ea036a7588db9023d867beed41a8648d6a775690afd37`  
		Last Modified: Mon, 19 Feb 2018 13:48:34 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `convertigo:7.4.7-alpine`

```console
$ docker pull convertigo@sha256:d541e70ce6e4508d229c133ea760e886acb93d9a1c4e0372a95f34e0d2030fdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `convertigo:7.4.7-alpine` - linux; amd64

```console
$ docker pull convertigo@sha256:2be270ee8b58666b15e9f86f6e7a4b307c6b9f2ce9d7677329265164f0e354ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.1 MB (158136266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45c6b0b45177beea0b75ba293d51019549134c1c4b23dd403ebff5d5e023eb5f`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:51:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Jan 2018 04:51:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:52:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 09:29:05 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 10 Jan 2018 09:29:06 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 09:29:06 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 10 Jan 2018 09:29:07 GMT
WORKDIR /usr/local/tomcat
# Wed, 10 Jan 2018 09:29:07 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 10 Jan 2018 09:29:07 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 18 Jan 2018 21:34:12 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 18 Jan 2018 21:34:13 GMT
ENV TOMCAT_MAJOR=7
# Sun, 18 Feb 2018 01:55:04 GMT
ENV TOMCAT_VERSION=7.0.85
# Sun, 18 Feb 2018 01:55:04 GMT
ENV TOMCAT_SHA1=243a8be0bb445c412342965ee8fdf751d9c587e7
# Sun, 18 Feb 2018 01:55:04 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz
# Sun, 18 Feb 2018 01:55:05 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc
# Sun, 18 Feb 2018 01:55:54 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sun, 18 Feb 2018 01:55:59 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sun, 18 Feb 2018 01:56:10 GMT
EXPOSE 8080/tcp
# Sun, 18 Feb 2018 01:56:10 GMT
CMD ["catalina.sh" "run"]
# Sun, 18 Feb 2018 03:55:10 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Sun, 18 Feb 2018 03:55:10 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sun, 18 Feb 2018 03:55:11 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sun, 18 Feb 2018 03:55:11 GMT
WORKDIR /usr/local/tomcat
# Sun, 18 Feb 2018 03:55:15 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Sun, 18 Feb 2018 03:55:15 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 03:55:16 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sun, 18 Feb 2018 03:55:16 GMT
ENV TINI_VERSION=0.16.1
# Sun, 18 Feb 2018 03:55:16 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Sun, 18 Feb 2018 03:55:27 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Sun, 18 Feb 2018 03:55:31 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Sun, 18 Feb 2018 03:55:32 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Sun, 18 Feb 2018 03:58:52 GMT
ENV CONVERTIGO_VERSION=7.4.7
# Sun, 18 Feb 2018 03:58:52 GMT
ENV CONVERTIGO_REVISION=43946
# Sun, 18 Feb 2018 03:58:52 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.7/convertigo-7.4.7-v43946-linux32.war
# Sun, 18 Feb 2018 03:58:53 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Sun, 18 Feb 2018 03:59:11 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Sun, 18 Feb 2018 03:59:17 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Sun, 18 Feb 2018 03:59:17 GMT
COPY file:4d6653ca1b3348a349f72d73174019bc6689fb60faa86fcae8bc4db7990822c6 in / 
# Sun, 18 Feb 2018 03:59:18 GMT
WORKDIR /workspace
# Sun, 18 Feb 2018 03:59:31 GMT
VOLUME [/workspace]
# Sun, 18 Feb 2018 03:59:31 GMT
EXPOSE 28080/tcp
# Sun, 18 Feb 2018 03:59:32 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 03:59:32 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de5f69f42d765af6ffb6753242b18dd4a33602ad7d76df52064833e5c527cb4`  
		Last Modified: Wed, 10 Jan 2018 04:53:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7536dd895ade2421a9a0fcf6e16485323f9e2e45e917b1ff18b0f648974626`  
		Last Modified: Wed, 10 Jan 2018 04:59:33 GMT  
		Size: 54.5 MB (54453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b43ca85cb2c7ccc62e03067862d35091ee30ce83e7fed9e135b1ef1c6e2e71b`  
		Last Modified: Wed, 10 Jan 2018 09:36:27 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e347d1277b7117551350128385a5b3ebd3b01d11803d3df7b53a7d64b0fdd69e`  
		Last Modified: Sun, 18 Feb 2018 02:17:30 GMT  
		Size: 13.0 MB (13031316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119b6a4b43f2e5b6682d59418aec6fafe29ba532fa25a4bb9821ae8d552d6dc7`  
		Last Modified: Sun, 18 Feb 2018 02:17:26 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3a2adc1c64f580219fdc9db0b745ee51ef36712a82bf93c8e8b0ea7711a3a38`  
		Last Modified: Sun, 18 Feb 2018 04:01:45 GMT  
		Size: 6.0 MB (5963487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41f776d9740d8d89241676935c0a9b34c12037f5678e893d8501f9a9f6afe250`  
		Last Modified: Sun, 18 Feb 2018 04:01:44 GMT  
		Size: 976.9 KB (976874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f69690dbaefd3a739964f5037066784dab64304fe024d6d386a950e38346bcb0`  
		Last Modified: Sun, 18 Feb 2018 04:01:42 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb7bd012d0b1303009171cae6bb018dbc4dcd7b6adab96678f76940241b88fc`  
		Last Modified: Sun, 18 Feb 2018 04:01:42 GMT  
		Size: 25.7 KB (25749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49654679152aa7d586e81791956525a487a0842eb426fe9139e5f1209987ba6c`  
		Last Modified: Sun, 18 Feb 2018 04:04:20 GMT  
		Size: 81.6 MB (81616011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:803bb2adc04412924266f6cea81bf64dcfdec1fed47e8e23df1aa692a625acfc`  
		Last Modified: Sun, 18 Feb 2018 04:04:13 GMT  
		Size: 456.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40af8f922a22efe1357619f815b0f91a342580f0889e06626963bf1adec69e94`  
		Last Modified: Sun, 18 Feb 2018 04:04:14 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.4.7-alpine` - linux; arm variant v6

```console
$ docker pull convertigo@sha256:ca1c4c6e516730852391457a93bb2c36a486a872b83ab4cd7447ab1393b70da5
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.7 MB (154679026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1e51449c132259eb37e2bc5f6e76f35d0f058581eed2bbabf7548f17281764a`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 20:22:19 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 20:22:20 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 20:23:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Dec 2017 20:23:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 20:23:28 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 20:23:28 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 20:23:35 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 20:42:03 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 05 Dec 2017 20:42:03 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 20:42:04 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 05 Dec 2017 20:42:04 GMT
WORKDIR /usr/local/tomcat
# Tue, 05 Dec 2017 20:42:05 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 05 Dec 2017 20:42:05 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 05 Dec 2017 20:42:09 GMT
RUN apk add --no-cache gnupg
# Tue, 05 Dec 2017 20:42:10 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 05 Dec 2017 20:42:22 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 05 Dec 2017 20:42:22 GMT
ENV TOMCAT_MAJOR=7
# Tue, 05 Dec 2017 20:42:23 GMT
ENV TOMCAT_VERSION=7.0.82
# Tue, 05 Dec 2017 20:42:23 GMT
ENV TOMCAT_SHA1=4681bfbc86bb4da76a7aabbb3c545475eb9a8075
# Tue, 05 Dec 2017 20:42:23 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz
# Tue, 05 Dec 2017 20:42:23 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz.asc
# Tue, 05 Dec 2017 20:42:49 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 	; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 05 Dec 2017 20:42:54 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 05 Dec 2017 20:42:54 GMT
EXPOSE 8080/tcp
# Tue, 05 Dec 2017 20:42:54 GMT
CMD ["catalina.sh" "run"]
# Sat, 06 Jan 2018 17:30:23 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Sat, 06 Jan 2018 17:30:24 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 06 Jan 2018 17:30:24 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 06 Jan 2018 17:30:25 GMT
WORKDIR /usr/local/tomcat
# Sat, 06 Jan 2018 17:30:28 GMT
RUN apk --no-cache add     ca-certificates     curl     unzip
# Sat, 06 Jan 2018 17:30:28 GMT
ENV GOSU_VERSION=1.10
# Sat, 06 Jan 2018 17:30:28 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 06 Jan 2018 17:30:28 GMT
ENV TINI_VERSION=0.16.1
# Sat, 06 Jan 2018 17:30:28 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Sat, 06 Jan 2018 17:30:35 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Sat, 06 Jan 2018 17:30:36 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Sat, 06 Jan 2018 17:30:37 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Sat, 06 Jan 2018 17:31:09 GMT
ENV CONVERTIGO_VERSION=7.4.7
# Sat, 06 Jan 2018 17:31:09 GMT
ENV CONVERTIGO_REVISION=43946
# Sat, 06 Jan 2018 17:31:09 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.7/convertigo-7.4.7-v43946-linux32.war
# Sat, 06 Jan 2018 17:31:09 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Sat, 06 Jan 2018 17:31:26 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Sat, 06 Jan 2018 17:31:26 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Sat, 06 Jan 2018 17:31:26 GMT
COPY file:4d6653ca1b3348a349f72d73174019bc6689fb60faa86fcae8bc4db7990822c6 in / 
# Sat, 06 Jan 2018 17:31:27 GMT
WORKDIR /workspace
# Sat, 06 Jan 2018 17:31:27 GMT
VOLUME [/workspace]
# Sat, 06 Jan 2018 17:31:27 GMT
EXPOSE 28080/tcp
# Sat, 06 Jan 2018 17:31:27 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 06 Jan 2018 17:31:28 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75189a5714ff86ba3b00e4d0b8ca506eec4fe942b102e32758bc44952780f6a3`  
		Last Modified: Tue, 05 Dec 2017 20:23:43 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15d7c0e055b96c1979695e21ec3f1d3670ee5d5a6700215e39e846652801c677`  
		Last Modified: Tue, 05 Dec 2017 20:24:54 GMT  
		Size: 52.1 MB (52054188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432a84ace4848d93821991a271e3a7b9aa7d4f0fea859895a92903da5d0f64cf`  
		Last Modified: Tue, 05 Dec 2017 20:45:49 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efebd27d1f6a6d022acafd389df1408f027bdffb457ebcdde7794539be27d698`  
		Last Modified: Tue, 05 Dec 2017 20:45:51 GMT  
		Size: 5.8 MB (5824355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce8389b91c0c3809faf50624a69e3821f7aac9a3296344721c9cbc37060dbd3`  
		Last Modified: Tue, 05 Dec 2017 20:45:49 GMT  
		Size: 110.9 KB (110855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246bef27f273065046ec2927adee406aac384a56ea6fd06697819049ce650957`  
		Last Modified: Tue, 05 Dec 2017 20:45:52 GMT  
		Size: 11.6 MB (11554923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d252431494e26aeba22a629487bd2a42a836a27842db3d17f5b22ead0723a89`  
		Last Modified: Tue, 05 Dec 2017 20:45:49 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e866d83f7dc46f778bc0284958f748b48613193cb523a2b43cc72f6d1338715`  
		Last Modified: Sat, 06 Jan 2018 17:31:38 GMT  
		Size: 637.0 KB (637043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c7038f23e3ce687e43ce2fffdd33c17451e9247f6c8ce9113e922f0c3cca08`  
		Last Modified: Sat, 06 Jan 2018 17:31:38 GMT  
		Size: 813.9 KB (813933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a447eb576e6098270b6b198dc45202a13b40cd12afb2d74a9b235184e9d2261`  
		Last Modified: Sat, 06 Jan 2018 17:31:36 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da3c5ec273b1ba514e198fb0712cf5eced8c276023b36ae269372b7fbc5c1c6`  
		Last Modified: Sat, 06 Jan 2018 17:31:36 GMT  
		Size: 25.8 KB (25753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:036633e4cbba487b1be7484c36291ea903eec177e267b32a2fbca32ada7a751a`  
		Last Modified: Sat, 06 Jan 2018 17:32:14 GMT  
		Size: 81.6 MB (81616051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78ad5ca5bac021cfdc24b0dfc044538c6bcef760cb481475e95392f0f9138f96`  
		Last Modified: Sat, 06 Jan 2018 17:32:01 GMT  
		Size: 453.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5445cc3d7148ee6398aa3c776aea202f8142fb67d398464a908cf0a3b1d7826f`  
		Last Modified: Sat, 06 Jan 2018 17:32:01 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.4.7-alpine` - linux; arm64 variant v8

```console
$ docker pull convertigo@sha256:0489525f350cf49ecf0439cd2151c6aa5d07eda5ae643abde83fe1ff2d62aad5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.8 MB (155798144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8530f7230ba02b0d7eca7c9ad96897823cb8cc6d6b2b3a50cbd5c99a9ac5cfc7`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 11:05:19 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 11:05:21 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 11:11:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Dec 2017 11:11:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 11:11:06 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 11:11:07 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 11:11:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 11:46:14 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 05 Dec 2017 11:46:15 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 11:46:17 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 05 Dec 2017 11:46:31 GMT
WORKDIR /usr/local/tomcat
# Tue, 05 Dec 2017 11:46:32 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 05 Dec 2017 11:46:33 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 19 Jan 2018 02:06:08 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 19 Jan 2018 02:06:09 GMT
ENV TOMCAT_MAJOR=7
# Sun, 18 Feb 2018 02:20:46 GMT
ENV TOMCAT_VERSION=7.0.85
# Sun, 18 Feb 2018 02:20:47 GMT
ENV TOMCAT_SHA1=243a8be0bb445c412342965ee8fdf751d9c587e7
# Sun, 18 Feb 2018 02:20:47 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz
# Sun, 18 Feb 2018 02:20:48 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc
# Sun, 18 Feb 2018 02:21:49 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sun, 18 Feb 2018 02:22:01 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sun, 18 Feb 2018 02:22:01 GMT
EXPOSE 8080/tcp
# Sun, 18 Feb 2018 02:22:02 GMT
CMD ["catalina.sh" "run"]
# Sun, 18 Feb 2018 06:08:47 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Sun, 18 Feb 2018 06:08:47 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sun, 18 Feb 2018 06:08:49 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sun, 18 Feb 2018 06:08:49 GMT
WORKDIR /usr/local/tomcat
# Sun, 18 Feb 2018 06:09:00 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Sun, 18 Feb 2018 06:09:01 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 06:09:01 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sun, 18 Feb 2018 06:09:02 GMT
ENV TINI_VERSION=0.16.1
# Sun, 18 Feb 2018 06:09:03 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Sun, 18 Feb 2018 06:09:24 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Sun, 18 Feb 2018 06:09:26 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Sun, 18 Feb 2018 06:09:28 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Sun, 18 Feb 2018 06:11:43 GMT
ENV CONVERTIGO_VERSION=7.4.7
# Sun, 18 Feb 2018 06:11:44 GMT
ENV CONVERTIGO_REVISION=43946
# Sun, 18 Feb 2018 06:11:45 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.7/convertigo-7.4.7-v43946-linux32.war
# Sun, 18 Feb 2018 06:11:45 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Sun, 18 Feb 2018 06:12:21 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Sun, 18 Feb 2018 06:12:22 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Sun, 18 Feb 2018 06:12:22 GMT
COPY file:4d6653ca1b3348a349f72d73174019bc6689fb60faa86fcae8bc4db7990822c6 in / 
# Sun, 18 Feb 2018 06:12:23 GMT
WORKDIR /workspace
# Sun, 18 Feb 2018 06:12:24 GMT
VOLUME [/workspace]
# Sun, 18 Feb 2018 06:12:25 GMT
EXPOSE 28080/tcp
# Sun, 18 Feb 2018 06:12:25 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 06:12:26 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc4b770fee7695d8ca568c04817dd4e9d077997d617c75c75c6c47038c837df1`  
		Last Modified: Tue, 05 Dec 2017 11:12:04 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:562a715d8887d3b429fa072a31bbf912f1897d49cf115a980301e3a880716eb6`  
		Last Modified: Tue, 05 Dec 2017 11:16:43 GMT  
		Size: 53.2 MB (53167047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d4d7ec54d3a91703889af9a1a64acb1b203e3a4eaea174f74039555b82d5d81`  
		Last Modified: Tue, 05 Dec 2017 11:57:12 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33913517c94511df71df722dff21d5c1b366318674242109985d2a3e8063360c`  
		Last Modified: Sun, 18 Feb 2018 02:57:22 GMT  
		Size: 12.6 MB (12632903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21dbcc83cd8b85e8f612c1176cf59a0999447d958dc53796ef14c44e07d08115`  
		Last Modified: Sun, 18 Feb 2018 02:57:18 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b2cb67f7507e482c89d248ffbaeb40363edae6fdeb359fd77c7c5846ac37195`  
		Last Modified: Sun, 18 Feb 2018 06:14:43 GMT  
		Size: 5.5 MB (5515112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc0eb340fbfaa8251d41cccaff73da0dec039066a1e3fc238e1ed26325810105`  
		Last Modified: Sun, 18 Feb 2018 06:14:41 GMT  
		Size: 848.9 KB (848934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0f9f5adb4eed932e9e97cbfe1bb490d3b6d3429da0f6672818b6a960550557`  
		Last Modified: Sun, 18 Feb 2018 06:14:38 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e931a5e87e23ecdd1a5c81fdaa523e8a661cef36713ae77bb793318d8fc0b934`  
		Last Modified: Sun, 18 Feb 2018 06:14:38 GMT  
		Size: 25.8 KB (25759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f854555cd0b04445b99f09cd08df31eeecece5b81e4aae22f31c6cc643eeb21`  
		Last Modified: Sun, 18 Feb 2018 06:33:50 GMT  
		Size: 81.6 MB (81616009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00217f53d2c1c14c9560003c06bbd266a5e1c93518a049fcbb44d1f0a374ce9`  
		Last Modified: Sun, 18 Feb 2018 06:33:49 GMT  
		Size: 456.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd48e037f4f0016cd622469074d75b52838df4ca7d12c607f21a05dbddf59b7`  
		Last Modified: Sun, 18 Feb 2018 06:33:33 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.4.7-alpine` - linux; 386

```console
$ docker pull convertigo@sha256:aff576ae0380182037c1feda77877b86ae3db29cda61ecc26680fa8dc5d2f79d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.0 MB (158975697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc2e547fda81dea3bab8e34f1a86386e7b2da2e326e0972d756d57473bf689e5`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 11:43:46 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 11:43:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 11:48:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Dec 2017 11:48:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 11:48:53 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 11:48:54 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 11:49:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 12:20:13 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 05 Dec 2017 12:20:13 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 12:20:14 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 05 Dec 2017 12:20:22 GMT
WORKDIR /usr/local/tomcat
# Tue, 05 Dec 2017 12:20:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 05 Dec 2017 12:20:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 19 Jan 2018 21:08:37 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 19 Jan 2018 21:08:37 GMT
ENV TOMCAT_MAJOR=7
# Mon, 19 Feb 2018 02:14:35 GMT
ENV TOMCAT_VERSION=7.0.85
# Mon, 19 Feb 2018 02:14:35 GMT
ENV TOMCAT_SHA1=243a8be0bb445c412342965ee8fdf751d9c587e7
# Mon, 19 Feb 2018 02:14:36 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz
# Mon, 19 Feb 2018 02:14:36 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc
# Mon, 19 Feb 2018 02:26:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 19 Feb 2018 02:34:56 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 19 Feb 2018 02:36:26 GMT
EXPOSE 8080/tcp
# Mon, 19 Feb 2018 02:36:26 GMT
CMD ["catalina.sh" "run"]
# Mon, 19 Feb 2018 11:39:28 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Mon, 19 Feb 2018 11:39:29 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 19 Feb 2018 11:39:30 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 19 Feb 2018 11:39:30 GMT
WORKDIR /usr/local/tomcat
# Mon, 19 Feb 2018 11:39:36 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Mon, 19 Feb 2018 11:42:56 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Feb 2018 11:42:56 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Mon, 19 Feb 2018 11:42:56 GMT
ENV TINI_VERSION=0.16.1
# Mon, 19 Feb 2018 11:42:56 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Mon, 19 Feb 2018 11:43:11 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Mon, 19 Feb 2018 11:45:28 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Mon, 19 Feb 2018 11:45:29 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Mon, 19 Feb 2018 12:25:19 GMT
ENV CONVERTIGO_VERSION=7.4.7
# Mon, 19 Feb 2018 12:25:19 GMT
ENV CONVERTIGO_REVISION=43946
# Mon, 19 Feb 2018 12:25:19 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.7/convertigo-7.4.7-v43946-linux32.war
# Mon, 19 Feb 2018 12:25:20 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Mon, 19 Feb 2018 12:25:40 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Mon, 19 Feb 2018 12:26:42 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Mon, 19 Feb 2018 12:26:42 GMT
COPY file:4d6653ca1b3348a349f72d73174019bc6689fb60faa86fcae8bc4db7990822c6 in / 
# Mon, 19 Feb 2018 12:26:43 GMT
WORKDIR /workspace
# Mon, 19 Feb 2018 12:26:43 GMT
VOLUME [/workspace]
# Mon, 19 Feb 2018 12:26:43 GMT
EXPOSE 28080/tcp
# Mon, 19 Feb 2018 12:26:44 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Mon, 19 Feb 2018 12:26:44 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c133e6dffdd21fda44fae785186d6f9e3a441bb7767286c2ed65a31208c03fe7`  
		Last Modified: Tue, 05 Dec 2017 11:49:43 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a13f30b26486cd97444390397b2837fb87eea601155d93fa6c6062a59a0fc3`  
		Last Modified: Tue, 05 Dec 2017 11:54:03 GMT  
		Size: 55.1 MB (55128267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adccbdae6296dcfdcc5293cc6d7a08bd1b4901a91099655942759a4ae043142c`  
		Last Modified: Tue, 05 Dec 2017 14:09:10 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53701a690e470e02960d931e2654a9ea2ad40ddfe18970c8a94a23cf69e4e039`  
		Last Modified: Mon, 19 Feb 2018 10:07:52 GMT  
		Size: 12.8 MB (12819274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9108958f82299fd35421df151ee588c377d51fd3952b13b8bc1e66d733d1f092`  
		Last Modified: Mon, 19 Feb 2018 10:07:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5493202f1474099e343d71c004a442e296d4a3459b108ae40ebbb0c5ab3bbee1`  
		Last Modified: Mon, 19 Feb 2018 13:19:21 GMT  
		Size: 6.4 MB (6351986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6911a921f3bbe086cb5809b5c54c5f4a5f271e2a6bcab547a2f261d5b8ea56c`  
		Last Modified: Mon, 19 Feb 2018 13:19:20 GMT  
		Size: 904.7 KB (904663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaff6f04d4ab721047ae92a7f29be3c341d79067a09a46ce9f7fb34d81eb0c72`  
		Last Modified: Mon, 19 Feb 2018 13:19:19 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35194656d1812b932b606e15154e38323bfb784e3a0488c55b50b2f216af6af7`  
		Last Modified: Mon, 19 Feb 2018 13:19:19 GMT  
		Size: 25.8 KB (25759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c4caf462de38e73433e997aa8189fb1f2338844cea0fbf5436f4b1a20c4687`  
		Last Modified: Mon, 19 Feb 2018 14:08:55 GMT  
		Size: 81.6 MB (81616007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adfc1a3a19a58c431ed5dfad930a69286467e5195e0f236a1e8f2cdf331b1e10`  
		Last Modified: Mon, 19 Feb 2018 14:08:41 GMT  
		Size: 458.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48aae49d3135f7b961599a6823bcb9ba26cfd9ee6ba221946b222fd737cd4661`  
		Last Modified: Mon, 19 Feb 2018 14:08:39 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `convertigo:7.4-alpine`

```console
$ docker pull convertigo@sha256:d541e70ce6e4508d229c133ea760e886acb93d9a1c4e0372a95f34e0d2030fdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `convertigo:7.4-alpine` - linux; amd64

```console
$ docker pull convertigo@sha256:2be270ee8b58666b15e9f86f6e7a4b307c6b9f2ce9d7677329265164f0e354ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.1 MB (158136266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45c6b0b45177beea0b75ba293d51019549134c1c4b23dd403ebff5d5e023eb5f`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:51:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Jan 2018 04:51:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:52:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 09:29:05 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 10 Jan 2018 09:29:06 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 09:29:06 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 10 Jan 2018 09:29:07 GMT
WORKDIR /usr/local/tomcat
# Wed, 10 Jan 2018 09:29:07 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 10 Jan 2018 09:29:07 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 18 Jan 2018 21:34:12 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 18 Jan 2018 21:34:13 GMT
ENV TOMCAT_MAJOR=7
# Sun, 18 Feb 2018 01:55:04 GMT
ENV TOMCAT_VERSION=7.0.85
# Sun, 18 Feb 2018 01:55:04 GMT
ENV TOMCAT_SHA1=243a8be0bb445c412342965ee8fdf751d9c587e7
# Sun, 18 Feb 2018 01:55:04 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz
# Sun, 18 Feb 2018 01:55:05 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc
# Sun, 18 Feb 2018 01:55:54 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sun, 18 Feb 2018 01:55:59 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sun, 18 Feb 2018 01:56:10 GMT
EXPOSE 8080/tcp
# Sun, 18 Feb 2018 01:56:10 GMT
CMD ["catalina.sh" "run"]
# Sun, 18 Feb 2018 03:55:10 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Sun, 18 Feb 2018 03:55:10 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sun, 18 Feb 2018 03:55:11 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sun, 18 Feb 2018 03:55:11 GMT
WORKDIR /usr/local/tomcat
# Sun, 18 Feb 2018 03:55:15 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Sun, 18 Feb 2018 03:55:15 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 03:55:16 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sun, 18 Feb 2018 03:55:16 GMT
ENV TINI_VERSION=0.16.1
# Sun, 18 Feb 2018 03:55:16 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Sun, 18 Feb 2018 03:55:27 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Sun, 18 Feb 2018 03:55:31 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Sun, 18 Feb 2018 03:55:32 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Sun, 18 Feb 2018 03:58:52 GMT
ENV CONVERTIGO_VERSION=7.4.7
# Sun, 18 Feb 2018 03:58:52 GMT
ENV CONVERTIGO_REVISION=43946
# Sun, 18 Feb 2018 03:58:52 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.7/convertigo-7.4.7-v43946-linux32.war
# Sun, 18 Feb 2018 03:58:53 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Sun, 18 Feb 2018 03:59:11 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Sun, 18 Feb 2018 03:59:17 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Sun, 18 Feb 2018 03:59:17 GMT
COPY file:4d6653ca1b3348a349f72d73174019bc6689fb60faa86fcae8bc4db7990822c6 in / 
# Sun, 18 Feb 2018 03:59:18 GMT
WORKDIR /workspace
# Sun, 18 Feb 2018 03:59:31 GMT
VOLUME [/workspace]
# Sun, 18 Feb 2018 03:59:31 GMT
EXPOSE 28080/tcp
# Sun, 18 Feb 2018 03:59:32 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 03:59:32 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de5f69f42d765af6ffb6753242b18dd4a33602ad7d76df52064833e5c527cb4`  
		Last Modified: Wed, 10 Jan 2018 04:53:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7536dd895ade2421a9a0fcf6e16485323f9e2e45e917b1ff18b0f648974626`  
		Last Modified: Wed, 10 Jan 2018 04:59:33 GMT  
		Size: 54.5 MB (54453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b43ca85cb2c7ccc62e03067862d35091ee30ce83e7fed9e135b1ef1c6e2e71b`  
		Last Modified: Wed, 10 Jan 2018 09:36:27 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e347d1277b7117551350128385a5b3ebd3b01d11803d3df7b53a7d64b0fdd69e`  
		Last Modified: Sun, 18 Feb 2018 02:17:30 GMT  
		Size: 13.0 MB (13031316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119b6a4b43f2e5b6682d59418aec6fafe29ba532fa25a4bb9821ae8d552d6dc7`  
		Last Modified: Sun, 18 Feb 2018 02:17:26 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3a2adc1c64f580219fdc9db0b745ee51ef36712a82bf93c8e8b0ea7711a3a38`  
		Last Modified: Sun, 18 Feb 2018 04:01:45 GMT  
		Size: 6.0 MB (5963487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41f776d9740d8d89241676935c0a9b34c12037f5678e893d8501f9a9f6afe250`  
		Last Modified: Sun, 18 Feb 2018 04:01:44 GMT  
		Size: 976.9 KB (976874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f69690dbaefd3a739964f5037066784dab64304fe024d6d386a950e38346bcb0`  
		Last Modified: Sun, 18 Feb 2018 04:01:42 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb7bd012d0b1303009171cae6bb018dbc4dcd7b6adab96678f76940241b88fc`  
		Last Modified: Sun, 18 Feb 2018 04:01:42 GMT  
		Size: 25.7 KB (25749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49654679152aa7d586e81791956525a487a0842eb426fe9139e5f1209987ba6c`  
		Last Modified: Sun, 18 Feb 2018 04:04:20 GMT  
		Size: 81.6 MB (81616011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:803bb2adc04412924266f6cea81bf64dcfdec1fed47e8e23df1aa692a625acfc`  
		Last Modified: Sun, 18 Feb 2018 04:04:13 GMT  
		Size: 456.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40af8f922a22efe1357619f815b0f91a342580f0889e06626963bf1adec69e94`  
		Last Modified: Sun, 18 Feb 2018 04:04:14 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.4-alpine` - linux; arm variant v6

```console
$ docker pull convertigo@sha256:ca1c4c6e516730852391457a93bb2c36a486a872b83ab4cd7447ab1393b70da5
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.7 MB (154679026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1e51449c132259eb37e2bc5f6e76f35d0f058581eed2bbabf7548f17281764a`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 20:22:19 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 20:22:20 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 20:23:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Dec 2017 20:23:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 20:23:28 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 20:23:28 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 20:23:35 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 20:42:03 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 05 Dec 2017 20:42:03 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 20:42:04 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 05 Dec 2017 20:42:04 GMT
WORKDIR /usr/local/tomcat
# Tue, 05 Dec 2017 20:42:05 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 05 Dec 2017 20:42:05 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 05 Dec 2017 20:42:09 GMT
RUN apk add --no-cache gnupg
# Tue, 05 Dec 2017 20:42:10 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 05 Dec 2017 20:42:22 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 05 Dec 2017 20:42:22 GMT
ENV TOMCAT_MAJOR=7
# Tue, 05 Dec 2017 20:42:23 GMT
ENV TOMCAT_VERSION=7.0.82
# Tue, 05 Dec 2017 20:42:23 GMT
ENV TOMCAT_SHA1=4681bfbc86bb4da76a7aabbb3c545475eb9a8075
# Tue, 05 Dec 2017 20:42:23 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz
# Tue, 05 Dec 2017 20:42:23 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz.asc
# Tue, 05 Dec 2017 20:42:49 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 	; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 05 Dec 2017 20:42:54 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 05 Dec 2017 20:42:54 GMT
EXPOSE 8080/tcp
# Tue, 05 Dec 2017 20:42:54 GMT
CMD ["catalina.sh" "run"]
# Sat, 06 Jan 2018 17:30:23 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Sat, 06 Jan 2018 17:30:24 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 06 Jan 2018 17:30:24 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 06 Jan 2018 17:30:25 GMT
WORKDIR /usr/local/tomcat
# Sat, 06 Jan 2018 17:30:28 GMT
RUN apk --no-cache add     ca-certificates     curl     unzip
# Sat, 06 Jan 2018 17:30:28 GMT
ENV GOSU_VERSION=1.10
# Sat, 06 Jan 2018 17:30:28 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 06 Jan 2018 17:30:28 GMT
ENV TINI_VERSION=0.16.1
# Sat, 06 Jan 2018 17:30:28 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Sat, 06 Jan 2018 17:30:35 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Sat, 06 Jan 2018 17:30:36 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Sat, 06 Jan 2018 17:30:37 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Sat, 06 Jan 2018 17:31:09 GMT
ENV CONVERTIGO_VERSION=7.4.7
# Sat, 06 Jan 2018 17:31:09 GMT
ENV CONVERTIGO_REVISION=43946
# Sat, 06 Jan 2018 17:31:09 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.7/convertigo-7.4.7-v43946-linux32.war
# Sat, 06 Jan 2018 17:31:09 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Sat, 06 Jan 2018 17:31:26 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Sat, 06 Jan 2018 17:31:26 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Sat, 06 Jan 2018 17:31:26 GMT
COPY file:4d6653ca1b3348a349f72d73174019bc6689fb60faa86fcae8bc4db7990822c6 in / 
# Sat, 06 Jan 2018 17:31:27 GMT
WORKDIR /workspace
# Sat, 06 Jan 2018 17:31:27 GMT
VOLUME [/workspace]
# Sat, 06 Jan 2018 17:31:27 GMT
EXPOSE 28080/tcp
# Sat, 06 Jan 2018 17:31:27 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 06 Jan 2018 17:31:28 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75189a5714ff86ba3b00e4d0b8ca506eec4fe942b102e32758bc44952780f6a3`  
		Last Modified: Tue, 05 Dec 2017 20:23:43 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15d7c0e055b96c1979695e21ec3f1d3670ee5d5a6700215e39e846652801c677`  
		Last Modified: Tue, 05 Dec 2017 20:24:54 GMT  
		Size: 52.1 MB (52054188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432a84ace4848d93821991a271e3a7b9aa7d4f0fea859895a92903da5d0f64cf`  
		Last Modified: Tue, 05 Dec 2017 20:45:49 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efebd27d1f6a6d022acafd389df1408f027bdffb457ebcdde7794539be27d698`  
		Last Modified: Tue, 05 Dec 2017 20:45:51 GMT  
		Size: 5.8 MB (5824355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce8389b91c0c3809faf50624a69e3821f7aac9a3296344721c9cbc37060dbd3`  
		Last Modified: Tue, 05 Dec 2017 20:45:49 GMT  
		Size: 110.9 KB (110855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246bef27f273065046ec2927adee406aac384a56ea6fd06697819049ce650957`  
		Last Modified: Tue, 05 Dec 2017 20:45:52 GMT  
		Size: 11.6 MB (11554923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d252431494e26aeba22a629487bd2a42a836a27842db3d17f5b22ead0723a89`  
		Last Modified: Tue, 05 Dec 2017 20:45:49 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e866d83f7dc46f778bc0284958f748b48613193cb523a2b43cc72f6d1338715`  
		Last Modified: Sat, 06 Jan 2018 17:31:38 GMT  
		Size: 637.0 KB (637043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c7038f23e3ce687e43ce2fffdd33c17451e9247f6c8ce9113e922f0c3cca08`  
		Last Modified: Sat, 06 Jan 2018 17:31:38 GMT  
		Size: 813.9 KB (813933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a447eb576e6098270b6b198dc45202a13b40cd12afb2d74a9b235184e9d2261`  
		Last Modified: Sat, 06 Jan 2018 17:31:36 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da3c5ec273b1ba514e198fb0712cf5eced8c276023b36ae269372b7fbc5c1c6`  
		Last Modified: Sat, 06 Jan 2018 17:31:36 GMT  
		Size: 25.8 KB (25753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:036633e4cbba487b1be7484c36291ea903eec177e267b32a2fbca32ada7a751a`  
		Last Modified: Sat, 06 Jan 2018 17:32:14 GMT  
		Size: 81.6 MB (81616051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78ad5ca5bac021cfdc24b0dfc044538c6bcef760cb481475e95392f0f9138f96`  
		Last Modified: Sat, 06 Jan 2018 17:32:01 GMT  
		Size: 453.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5445cc3d7148ee6398aa3c776aea202f8142fb67d398464a908cf0a3b1d7826f`  
		Last Modified: Sat, 06 Jan 2018 17:32:01 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.4-alpine` - linux; arm64 variant v8

```console
$ docker pull convertigo@sha256:0489525f350cf49ecf0439cd2151c6aa5d07eda5ae643abde83fe1ff2d62aad5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.8 MB (155798144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8530f7230ba02b0d7eca7c9ad96897823cb8cc6d6b2b3a50cbd5c99a9ac5cfc7`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 11:05:19 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 11:05:21 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 11:11:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Dec 2017 11:11:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 11:11:06 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 11:11:07 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 11:11:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 11:46:14 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 05 Dec 2017 11:46:15 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 11:46:17 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 05 Dec 2017 11:46:31 GMT
WORKDIR /usr/local/tomcat
# Tue, 05 Dec 2017 11:46:32 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 05 Dec 2017 11:46:33 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 19 Jan 2018 02:06:08 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 19 Jan 2018 02:06:09 GMT
ENV TOMCAT_MAJOR=7
# Sun, 18 Feb 2018 02:20:46 GMT
ENV TOMCAT_VERSION=7.0.85
# Sun, 18 Feb 2018 02:20:47 GMT
ENV TOMCAT_SHA1=243a8be0bb445c412342965ee8fdf751d9c587e7
# Sun, 18 Feb 2018 02:20:47 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz
# Sun, 18 Feb 2018 02:20:48 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc
# Sun, 18 Feb 2018 02:21:49 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sun, 18 Feb 2018 02:22:01 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sun, 18 Feb 2018 02:22:01 GMT
EXPOSE 8080/tcp
# Sun, 18 Feb 2018 02:22:02 GMT
CMD ["catalina.sh" "run"]
# Sun, 18 Feb 2018 06:08:47 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Sun, 18 Feb 2018 06:08:47 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sun, 18 Feb 2018 06:08:49 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sun, 18 Feb 2018 06:08:49 GMT
WORKDIR /usr/local/tomcat
# Sun, 18 Feb 2018 06:09:00 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Sun, 18 Feb 2018 06:09:01 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 06:09:01 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sun, 18 Feb 2018 06:09:02 GMT
ENV TINI_VERSION=0.16.1
# Sun, 18 Feb 2018 06:09:03 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Sun, 18 Feb 2018 06:09:24 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Sun, 18 Feb 2018 06:09:26 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Sun, 18 Feb 2018 06:09:28 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Sun, 18 Feb 2018 06:11:43 GMT
ENV CONVERTIGO_VERSION=7.4.7
# Sun, 18 Feb 2018 06:11:44 GMT
ENV CONVERTIGO_REVISION=43946
# Sun, 18 Feb 2018 06:11:45 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.7/convertigo-7.4.7-v43946-linux32.war
# Sun, 18 Feb 2018 06:11:45 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Sun, 18 Feb 2018 06:12:21 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Sun, 18 Feb 2018 06:12:22 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Sun, 18 Feb 2018 06:12:22 GMT
COPY file:4d6653ca1b3348a349f72d73174019bc6689fb60faa86fcae8bc4db7990822c6 in / 
# Sun, 18 Feb 2018 06:12:23 GMT
WORKDIR /workspace
# Sun, 18 Feb 2018 06:12:24 GMT
VOLUME [/workspace]
# Sun, 18 Feb 2018 06:12:25 GMT
EXPOSE 28080/tcp
# Sun, 18 Feb 2018 06:12:25 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 06:12:26 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc4b770fee7695d8ca568c04817dd4e9d077997d617c75c75c6c47038c837df1`  
		Last Modified: Tue, 05 Dec 2017 11:12:04 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:562a715d8887d3b429fa072a31bbf912f1897d49cf115a980301e3a880716eb6`  
		Last Modified: Tue, 05 Dec 2017 11:16:43 GMT  
		Size: 53.2 MB (53167047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d4d7ec54d3a91703889af9a1a64acb1b203e3a4eaea174f74039555b82d5d81`  
		Last Modified: Tue, 05 Dec 2017 11:57:12 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33913517c94511df71df722dff21d5c1b366318674242109985d2a3e8063360c`  
		Last Modified: Sun, 18 Feb 2018 02:57:22 GMT  
		Size: 12.6 MB (12632903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21dbcc83cd8b85e8f612c1176cf59a0999447d958dc53796ef14c44e07d08115`  
		Last Modified: Sun, 18 Feb 2018 02:57:18 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b2cb67f7507e482c89d248ffbaeb40363edae6fdeb359fd77c7c5846ac37195`  
		Last Modified: Sun, 18 Feb 2018 06:14:43 GMT  
		Size: 5.5 MB (5515112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc0eb340fbfaa8251d41cccaff73da0dec039066a1e3fc238e1ed26325810105`  
		Last Modified: Sun, 18 Feb 2018 06:14:41 GMT  
		Size: 848.9 KB (848934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0f9f5adb4eed932e9e97cbfe1bb490d3b6d3429da0f6672818b6a960550557`  
		Last Modified: Sun, 18 Feb 2018 06:14:38 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e931a5e87e23ecdd1a5c81fdaa523e8a661cef36713ae77bb793318d8fc0b934`  
		Last Modified: Sun, 18 Feb 2018 06:14:38 GMT  
		Size: 25.8 KB (25759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f854555cd0b04445b99f09cd08df31eeecece5b81e4aae22f31c6cc643eeb21`  
		Last Modified: Sun, 18 Feb 2018 06:33:50 GMT  
		Size: 81.6 MB (81616009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00217f53d2c1c14c9560003c06bbd266a5e1c93518a049fcbb44d1f0a374ce9`  
		Last Modified: Sun, 18 Feb 2018 06:33:49 GMT  
		Size: 456.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd48e037f4f0016cd622469074d75b52838df4ca7d12c607f21a05dbddf59b7`  
		Last Modified: Sun, 18 Feb 2018 06:33:33 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.4-alpine` - linux; 386

```console
$ docker pull convertigo@sha256:aff576ae0380182037c1feda77877b86ae3db29cda61ecc26680fa8dc5d2f79d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.0 MB (158975697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc2e547fda81dea3bab8e34f1a86386e7b2da2e326e0972d756d57473bf689e5`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 11:43:46 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 11:43:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 11:48:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Dec 2017 11:48:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 11:48:53 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 11:48:54 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 11:49:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 12:20:13 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 05 Dec 2017 12:20:13 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 12:20:14 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 05 Dec 2017 12:20:22 GMT
WORKDIR /usr/local/tomcat
# Tue, 05 Dec 2017 12:20:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 05 Dec 2017 12:20:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 19 Jan 2018 21:08:37 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 19 Jan 2018 21:08:37 GMT
ENV TOMCAT_MAJOR=7
# Mon, 19 Feb 2018 02:14:35 GMT
ENV TOMCAT_VERSION=7.0.85
# Mon, 19 Feb 2018 02:14:35 GMT
ENV TOMCAT_SHA1=243a8be0bb445c412342965ee8fdf751d9c587e7
# Mon, 19 Feb 2018 02:14:36 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz
# Mon, 19 Feb 2018 02:14:36 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc
# Mon, 19 Feb 2018 02:26:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 19 Feb 2018 02:34:56 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 19 Feb 2018 02:36:26 GMT
EXPOSE 8080/tcp
# Mon, 19 Feb 2018 02:36:26 GMT
CMD ["catalina.sh" "run"]
# Mon, 19 Feb 2018 11:39:28 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Mon, 19 Feb 2018 11:39:29 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 19 Feb 2018 11:39:30 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 19 Feb 2018 11:39:30 GMT
WORKDIR /usr/local/tomcat
# Mon, 19 Feb 2018 11:39:36 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Mon, 19 Feb 2018 11:42:56 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Feb 2018 11:42:56 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Mon, 19 Feb 2018 11:42:56 GMT
ENV TINI_VERSION=0.16.1
# Mon, 19 Feb 2018 11:42:56 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Mon, 19 Feb 2018 11:43:11 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Mon, 19 Feb 2018 11:45:28 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Mon, 19 Feb 2018 11:45:29 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Mon, 19 Feb 2018 12:25:19 GMT
ENV CONVERTIGO_VERSION=7.4.7
# Mon, 19 Feb 2018 12:25:19 GMT
ENV CONVERTIGO_REVISION=43946
# Mon, 19 Feb 2018 12:25:19 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.7/convertigo-7.4.7-v43946-linux32.war
# Mon, 19 Feb 2018 12:25:20 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Mon, 19 Feb 2018 12:25:40 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Mon, 19 Feb 2018 12:26:42 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Mon, 19 Feb 2018 12:26:42 GMT
COPY file:4d6653ca1b3348a349f72d73174019bc6689fb60faa86fcae8bc4db7990822c6 in / 
# Mon, 19 Feb 2018 12:26:43 GMT
WORKDIR /workspace
# Mon, 19 Feb 2018 12:26:43 GMT
VOLUME [/workspace]
# Mon, 19 Feb 2018 12:26:43 GMT
EXPOSE 28080/tcp
# Mon, 19 Feb 2018 12:26:44 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Mon, 19 Feb 2018 12:26:44 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c133e6dffdd21fda44fae785186d6f9e3a441bb7767286c2ed65a31208c03fe7`  
		Last Modified: Tue, 05 Dec 2017 11:49:43 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a13f30b26486cd97444390397b2837fb87eea601155d93fa6c6062a59a0fc3`  
		Last Modified: Tue, 05 Dec 2017 11:54:03 GMT  
		Size: 55.1 MB (55128267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adccbdae6296dcfdcc5293cc6d7a08bd1b4901a91099655942759a4ae043142c`  
		Last Modified: Tue, 05 Dec 2017 14:09:10 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53701a690e470e02960d931e2654a9ea2ad40ddfe18970c8a94a23cf69e4e039`  
		Last Modified: Mon, 19 Feb 2018 10:07:52 GMT  
		Size: 12.8 MB (12819274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9108958f82299fd35421df151ee588c377d51fd3952b13b8bc1e66d733d1f092`  
		Last Modified: Mon, 19 Feb 2018 10:07:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5493202f1474099e343d71c004a442e296d4a3459b108ae40ebbb0c5ab3bbee1`  
		Last Modified: Mon, 19 Feb 2018 13:19:21 GMT  
		Size: 6.4 MB (6351986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6911a921f3bbe086cb5809b5c54c5f4a5f271e2a6bcab547a2f261d5b8ea56c`  
		Last Modified: Mon, 19 Feb 2018 13:19:20 GMT  
		Size: 904.7 KB (904663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaff6f04d4ab721047ae92a7f29be3c341d79067a09a46ce9f7fb34d81eb0c72`  
		Last Modified: Mon, 19 Feb 2018 13:19:19 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35194656d1812b932b606e15154e38323bfb784e3a0488c55b50b2f216af6af7`  
		Last Modified: Mon, 19 Feb 2018 13:19:19 GMT  
		Size: 25.8 KB (25759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c4caf462de38e73433e997aa8189fb1f2338844cea0fbf5436f4b1a20c4687`  
		Last Modified: Mon, 19 Feb 2018 14:08:55 GMT  
		Size: 81.6 MB (81616007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adfc1a3a19a58c431ed5dfad930a69286467e5195e0f236a1e8f2cdf331b1e10`  
		Last Modified: Mon, 19 Feb 2018 14:08:41 GMT  
		Size: 458.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48aae49d3135f7b961599a6823bcb9ba26cfd9ee6ba221946b222fd737cd4661`  
		Last Modified: Mon, 19 Feb 2018 14:08:39 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `convertigo:7.5`

```console
$ docker pull convertigo@sha256:24ba8d105ea8426a40cfab0350725ccd12a941b51a4c82218f46fe4e51de6a0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `convertigo:7.5` - linux; amd64

```console
$ docker pull convertigo@sha256:9ebaf5f7b8ddbc7ba21acd34e0c9b0865e4531037560f9e09539189b5846d9eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **354.9 MB (354886876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58aeb7f0a0bf5c2c85efcc6089e4c715ba42a24ecf3f156c34ffdf5c26d1c3d2`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:55:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:55:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 11:08:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:08:13 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:08:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 11:08:15 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 11:08:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 11:09:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 11:17:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 18:48:35 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 15 Feb 2018 18:48:35 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 18:48:36 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 15 Feb 2018 18:48:36 GMT
WORKDIR /usr/local/tomcat
# Thu, 15 Feb 2018 18:48:37 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 15 Feb 2018 18:48:37 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 15 Feb 2018 18:48:37 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Thu, 15 Feb 2018 18:48:38 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 18:48:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 18:48:53 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 15 Feb 2018 18:48:54 GMT
ENV TOMCAT_MAJOR=7
# Sun, 18 Feb 2018 01:45:03 GMT
ENV TOMCAT_VERSION=7.0.85
# Sun, 18 Feb 2018 01:45:04 GMT
ENV TOMCAT_SHA1=243a8be0bb445c412342965ee8fdf751d9c587e7
# Sun, 18 Feb 2018 01:45:04 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz
# Sun, 18 Feb 2018 01:45:04 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc
# Sun, 18 Feb 2018 01:45:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sun, 18 Feb 2018 01:45:55 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sun, 18 Feb 2018 01:46:06 GMT
EXPOSE 8080/tcp
# Sun, 18 Feb 2018 01:46:06 GMT
CMD ["catalina.sh" "run"]
# Sun, 18 Feb 2018 03:53:11 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Sun, 18 Feb 2018 03:53:11 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sun, 18 Feb 2018 03:53:12 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sun, 18 Feb 2018 03:53:13 GMT
WORKDIR /usr/local/tomcat
# Sun, 18 Feb 2018 03:53:17 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:53:17 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 03:53:17 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sun, 18 Feb 2018 03:53:17 GMT
ENV TINI_VERSION=0.16.1
# Sun, 18 Feb 2018 03:53:18 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Sun, 18 Feb 2018 03:53:26 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Sun, 18 Feb 2018 03:53:40 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Sun, 18 Feb 2018 03:53:41 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Sun, 18 Feb 2018 03:53:41 GMT
ENV CONVERTIGO_VERSION=7.5.0
# Sun, 18 Feb 2018 03:53:54 GMT
ENV CONVERTIGO_REVISION=44235
# Sun, 18 Feb 2018 03:53:54 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.0/convertigo-7.5.0-v44235-linux32.war
# Sun, 18 Feb 2018 03:53:55 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Sun, 18 Feb 2018 03:54:15 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Sun, 18 Feb 2018 03:54:15 GMT
COPY file:03a78619febe6c5b17d175b71a6dbe271ce2c70c52e354c6642b986d1b28fc2e in webapps/ROOT/index.html 
# Sun, 18 Feb 2018 03:54:16 GMT
COPY file:0a47ea62001ca3cec3ce66ba5a1de976c240bea17f36878bcf94b75e4f0cdf86 in / 
# Sun, 18 Feb 2018 03:54:16 GMT
ENV SWT_GTK3=0
# Sun, 18 Feb 2018 03:54:29 GMT
WORKDIR /workspace
# Sun, 18 Feb 2018 03:54:29 GMT
VOLUME [/workspace]
# Sun, 18 Feb 2018 03:54:30 GMT
EXPOSE 28080/tcp
# Sun, 18 Feb 2018 03:54:30 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 03:54:31 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cafa6a79d0be5bd8a64fe52bfc4178072e067e8f5ed5c224d5330107424335`  
		Last Modified: Thu, 15 Feb 2018 04:40:22 GMT  
		Size: 11.1 MB (11107850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fcf5a213c7dfb0aa4eeed5922f9c2b6261cf60bb27f2dd9d761d6030689b39`  
		Last Modified: Thu, 15 Feb 2018 04:40:19 GMT  
		Size: 4.3 MB (4335400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd532571c5d31f61347a950a0d58ec1282046fc8bdda6791f8c34a56a1c792c6`  
		Last Modified: Thu, 15 Feb 2018 13:39:14 GMT  
		Size: 852.3 KB (852290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31600c9f9b48dc3cd9fa7c14415fb9251cd3582028fadbb3d5f1bcb57512ecd0`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e8e9b5d10eec5baacf8bfb0d61d868b1ba263863b08d5346fbb73fcff6bb85`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0710e619e88357033e362f6a8c18d93a0dbf14d31629082877ae8c7f51072113`  
		Last Modified: Thu, 15 Feb 2018 13:39:52 GMT  
		Size: 165.4 MB (165392618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e511da65ffabe622bcb6fa89b699e80f94ec7185a95076cd3b4cabc101bd2d11`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 272.1 KB (272124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfcd79b5752d99c10b7a29d19bbd7c78fda3c82e7e2476250fb76b19bdedeb27`  
		Last Modified: Thu, 15 Feb 2018 19:49:36 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d4311e9998b432748663f250f13af84a06f849472d89e9dc8c755d0fa1212d`  
		Last Modified: Thu, 15 Feb 2018 19:49:37 GMT  
		Size: 545.3 KB (545302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f9d7fb06c56c79acdf91bde80e112045c8e7d7a8c25fbb1b9efc496a951720`  
		Last Modified: Sun, 18 Feb 2018 02:15:28 GMT  
		Size: 10.0 MB (10033359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b57bbc0ee3014496ae8989c0d5d1d29e620f05b456157fe2315b8a52a8a6c059`  
		Last Modified: Sun, 18 Feb 2018 02:15:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6328f83a2d4bb866a52353977d7245b7761ba03dbd2e37730c59cc9b7f995921`  
		Last Modified: Sun, 18 Feb 2018 03:59:58 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114b66f490073bfe7bb93e5fe537e7d120e941a56492f1b279c12a0f91e7dbc7`  
		Last Modified: Sun, 18 Feb 2018 03:59:59 GMT  
		Size: 509.3 KB (509296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e7bb14443ce4de3fbf88c4fa9392369cbf172cd0a49c7a4b52ca9b8629c0db9`  
		Last Modified: Sun, 18 Feb 2018 03:59:56 GMT  
		Size: 4.3 KB (4303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43f54144d7b74559c9d74ba726b163891ba51f01e2343975d3b4f8b1190acaf7`  
		Last Modified: Sun, 18 Feb 2018 03:59:56 GMT  
		Size: 25.8 KB (25764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae0a3fe3210c89e2e2b4e8e90f391caffe4e6f12f5fe74f6f37435c81ce923e0`  
		Last Modified: Sun, 18 Feb 2018 04:00:11 GMT  
		Size: 116.7 MB (116673414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1769f1ed30b02464fc33b45e364bf57e56376d5cec39bb827b104e9c4718aa79`  
		Last Modified: Sun, 18 Feb 2018 03:59:56 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e58b254b42f8d4869cfd845cee4c918b8c9e8237c7fceb31e862a638ac556ec6`  
		Last Modified: Sun, 18 Feb 2018 03:59:56 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.5` - linux; arm variant v7

```console
$ docker pull convertigo@sha256:5c9159abeb3be80824a603e79b38c97cf6d68c4559e71da95f9f1ff511a789d9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.1 MB (334060344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a759877f2c5513f5a4c62e695e5e50f0833756ef60a5b34767e840619987286d`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Thu, 15 Feb 2018 13:30:55 GMT
ADD file:58c4e4829c3db6bdb6063ee3ca04776b696772f592f70cb29d5196788c3608da in / 
# Thu, 15 Feb 2018 13:30:56 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 14:14:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 14:14:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 15:01:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 15:01:56 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 15:01:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 15:01:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 15:01:59 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 15:01:59 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 15:02:06 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 15:02:06 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 15:03:04 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 15:03:09 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 18:54:47 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 15 Feb 2018 18:54:48 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 18:54:49 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 15 Feb 2018 18:54:56 GMT
WORKDIR /usr/local/tomcat
# Thu, 15 Feb 2018 18:55:09 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 15 Feb 2018 18:55:10 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 15 Feb 2018 18:55:17 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Thu, 15 Feb 2018 18:55:24 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 18:55:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 18:55:38 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 15 Feb 2018 18:55:46 GMT
ENV TOMCAT_MAJOR=7
# Sun, 18 Feb 2018 18:14:48 GMT
ENV TOMCAT_VERSION=7.0.85
# Sun, 18 Feb 2018 18:14:48 GMT
ENV TOMCAT_SHA1=243a8be0bb445c412342965ee8fdf751d9c587e7
# Sun, 18 Feb 2018 18:14:48 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz
# Sun, 18 Feb 2018 18:14:48 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc
# Sun, 18 Feb 2018 18:15:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sun, 18 Feb 2018 18:15:39 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sun, 18 Feb 2018 18:15:39 GMT
EXPOSE 8080/tcp
# Sun, 18 Feb 2018 18:15:40 GMT
CMD ["catalina.sh" "run"]
# Sun, 18 Feb 2018 18:46:50 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Sun, 18 Feb 2018 18:46:50 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sun, 18 Feb 2018 18:46:51 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sun, 18 Feb 2018 18:46:52 GMT
WORKDIR /usr/local/tomcat
# Sun, 18 Feb 2018 18:46:57 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 18:46:57 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 18:46:58 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sun, 18 Feb 2018 18:46:58 GMT
ENV TINI_VERSION=0.16.1
# Sun, 18 Feb 2018 18:46:58 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Sun, 18 Feb 2018 18:47:03 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Sun, 18 Feb 2018 18:47:04 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Sun, 18 Feb 2018 18:47:05 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Sun, 18 Feb 2018 18:47:06 GMT
ENV CONVERTIGO_VERSION=7.5.0
# Sun, 18 Feb 2018 18:47:06 GMT
ENV CONVERTIGO_REVISION=44235
# Sun, 18 Feb 2018 18:47:06 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.0/convertigo-7.5.0-v44235-linux32.war
# Sun, 18 Feb 2018 18:47:06 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Sun, 18 Feb 2018 18:47:23 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Sun, 18 Feb 2018 18:47:24 GMT
COPY file:03a78619febe6c5b17d175b71a6dbe271ce2c70c52e354c6642b986d1b28fc2e in webapps/ROOT/index.html 
# Sun, 18 Feb 2018 18:47:24 GMT
COPY file:0a47ea62001ca3cec3ce66ba5a1de976c240bea17f36878bcf94b75e4f0cdf86 in / 
# Sun, 18 Feb 2018 18:47:25 GMT
ENV SWT_GTK3=0
# Sun, 18 Feb 2018 18:47:25 GMT
WORKDIR /workspace
# Sun, 18 Feb 2018 18:47:25 GMT
VOLUME [/workspace]
# Sun, 18 Feb 2018 18:47:26 GMT
EXPOSE 28080/tcp
# Sun, 18 Feb 2018 18:47:26 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 18:47:26 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:c0518139464abb63e1069cd4c638aad760a6cb319660ae2229921b17c703441b`  
		Last Modified: Thu, 15 Feb 2018 13:40:56 GMT  
		Size: 41.9 MB (41859666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72be4c519488d3f9c0893c7e4aa66f806292ac98c1f509b4387b4eb8e4789e9a`  
		Last Modified: Thu, 15 Feb 2018 14:24:47 GMT  
		Size: 9.8 MB (9824909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e5a3e5bf5f97b01c2bf09851057f8cc68748d43fdde36477492ec435aabd55`  
		Last Modified: Thu, 15 Feb 2018 14:24:46 GMT  
		Size: 3.9 MB (3912530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5a761b65438d1a65a32e3d0bbb1c3530a9a5a339f3315b5edc9387250e3ebc`  
		Last Modified: Thu, 15 Feb 2018 15:34:47 GMT  
		Size: 829.7 KB (829694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24fb0b223e8826de07f46f44a8dc80900ab8e46c439d5a3ce685e10ff660538`  
		Last Modified: Thu, 15 Feb 2018 15:34:45 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d695150c276b6e96341885d510d6946666501dbabf26a0ae9a56bd3ea58a9ba`  
		Last Modified: Thu, 15 Feb 2018 15:34:46 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42ca65dcf315de561fef4871a103665aac29136774b3a94bb10df5c8b591864d`  
		Last Modified: Thu, 15 Feb 2018 15:35:19 GMT  
		Size: 149.7 MB (149689725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aede9bbc8e3b39b5c440435c7b183a56240f0480556078e721a1585ba2912876`  
		Last Modified: Thu, 15 Feb 2018 15:34:46 GMT  
		Size: 272.1 KB (272118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13803da070aedc7411bb4cb0eb9f8f653039458dc6778c8c091a2aea078821d1`  
		Last Modified: Thu, 15 Feb 2018 19:25:43 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6edc6e3073e0a2b7deece9df8771e5534595976e155c1fff45136924ab141a0d`  
		Last Modified: Thu, 15 Feb 2018 19:25:43 GMT  
		Size: 520.2 KB (520198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c025e9838031adb474031c3d2119d0f1563a85756ca3b36dd02220535bc6b3a0`  
		Last Modified: Sun, 18 Feb 2018 18:29:12 GMT  
		Size: 10.0 MB (9962697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c82b36e278fe99d0c7a83214206924451203219c0282a8ee676508cbc77418`  
		Last Modified: Sun, 18 Feb 2018 18:29:11 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e464f4c376ef46c6156c7d52ce2d6061a4e8978b48587f6b9ae69a31dc32f6b9`  
		Last Modified: Sun, 18 Feb 2018 18:48:15 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95587c6eebb33868fe2fb7a13451b41a40763b2c580a91fdce7aac461ea02ffb`  
		Last Modified: Sun, 18 Feb 2018 18:48:15 GMT  
		Size: 482.7 KB (482669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74ef3616c708b7b56f46bc692132c1b0accc3c192ce8eebdb42eb23a80e4f53b`  
		Last Modified: Sun, 18 Feb 2018 18:48:13 GMT  
		Size: 4.3 KB (4343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744a5e16606c0d3c05b1adc22ae54f0a13d47cc881464508ca25393efdc513bc`  
		Last Modified: Sun, 18 Feb 2018 18:48:14 GMT  
		Size: 25.8 KB (25769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8206588f45f07da5813afa11ddb072ef9d24fdcbdb642b501244a81cd2a75a7f`  
		Last Modified: Sun, 18 Feb 2018 18:48:28 GMT  
		Size: 116.7 MB (116673466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9434317ef79647bcee0fded947ea41b6c11a010372d894e6755ecfc0dd07da3c`  
		Last Modified: Sun, 18 Feb 2018 18:48:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ce4c5f7c20c91a918b819e095ee5cd9c5e2039cd082b9b1a2d0bc46b2b79a3`  
		Last Modified: Sun, 18 Feb 2018 18:48:13 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.5` - linux; arm64 variant v8

```console
$ docker pull convertigo@sha256:38ebf2796cb5a4b96a904ba88eda232fbb0e253e66ad012df71117af95ddb1ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.9 MB (338886571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e49df4a354595acd016ccc026ad07cd33724bc30f8eac5dd94a9fcc0ae88bbe`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:04 GMT
ADD file:f17659d511330c9a9c3fadf05151f88e9d532af1734ffadd1da10aa5e2aeb6ac in / 
# Thu, 15 Feb 2018 18:29:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:49:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 22:24:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:24:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:24:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 22:25:01 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 22:25:01 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 22:25:02 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 22:25:03 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 22:25:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 22:31:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 22:31:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 16 Feb 2018 11:29:24 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 16 Feb 2018 11:29:25 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Feb 2018 11:29:26 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 16 Feb 2018 11:29:27 GMT
WORKDIR /usr/local/tomcat
# Fri, 16 Feb 2018 11:29:27 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 16 Feb 2018 11:29:28 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 16 Feb 2018 11:29:28 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Fri, 16 Feb 2018 11:29:30 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 11:29:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 11:29:58 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 16 Feb 2018 11:29:58 GMT
ENV TOMCAT_MAJOR=7
# Sun, 18 Feb 2018 02:08:00 GMT
ENV TOMCAT_VERSION=7.0.85
# Sun, 18 Feb 2018 02:08:01 GMT
ENV TOMCAT_SHA1=243a8be0bb445c412342965ee8fdf751d9c587e7
# Sun, 18 Feb 2018 02:08:02 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz
# Sun, 18 Feb 2018 02:08:03 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc
# Sun, 18 Feb 2018 02:10:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sun, 18 Feb 2018 02:10:13 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sun, 18 Feb 2018 02:10:14 GMT
EXPOSE 8080/tcp
# Sun, 18 Feb 2018 02:10:15 GMT
CMD ["catalina.sh" "run"]
# Sun, 18 Feb 2018 06:07:05 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Sun, 18 Feb 2018 06:07:05 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sun, 18 Feb 2018 06:07:07 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sun, 18 Feb 2018 06:07:08 GMT
WORKDIR /usr/local/tomcat
# Sun, 18 Feb 2018 06:07:16 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 06:07:16 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 06:07:17 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sun, 18 Feb 2018 06:07:18 GMT
ENV TINI_VERSION=0.16.1
# Sun, 18 Feb 2018 06:07:18 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Sun, 18 Feb 2018 06:07:27 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Sun, 18 Feb 2018 06:07:30 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Sun, 18 Feb 2018 06:07:32 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Sun, 18 Feb 2018 06:07:32 GMT
ENV CONVERTIGO_VERSION=7.5.0
# Sun, 18 Feb 2018 06:07:33 GMT
ENV CONVERTIGO_REVISION=44235
# Sun, 18 Feb 2018 06:07:34 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.0/convertigo-7.5.0-v44235-linux32.war
# Sun, 18 Feb 2018 06:07:34 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Sun, 18 Feb 2018 06:08:12 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Sun, 18 Feb 2018 06:08:13 GMT
COPY file:03a78619febe6c5b17d175b71a6dbe271ce2c70c52e354c6642b986d1b28fc2e in webapps/ROOT/index.html 
# Sun, 18 Feb 2018 06:08:14 GMT
COPY file:0a47ea62001ca3cec3ce66ba5a1de976c240bea17f36878bcf94b75e4f0cdf86 in / 
# Sun, 18 Feb 2018 06:08:15 GMT
ENV SWT_GTK3=0
# Sun, 18 Feb 2018 06:08:15 GMT
WORKDIR /workspace
# Sun, 18 Feb 2018 06:08:16 GMT
VOLUME [/workspace]
# Sun, 18 Feb 2018 06:08:17 GMT
EXPOSE 28080/tcp
# Sun, 18 Feb 2018 06:08:18 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 06:08:19 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:b295e5c109fc9f55d14722eb26929ecc106cec04f7d37e867f7da008c53e293b`  
		Last Modified: Thu, 15 Feb 2018 01:14:37 GMT  
		Size: 42.9 MB (42921910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7310b14179e155997ab4625e06eb59600ea20b500835fe5bdca17a52d61e1c45`  
		Last Modified: Thu, 15 Feb 2018 20:15:23 GMT  
		Size: 10.1 MB (10066614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:785fa2a238ab89b203751335a74784cdb5ea9d78eabac46ce433ef327d7ff1db`  
		Last Modified: Thu, 15 Feb 2018 20:15:21 GMT  
		Size: 4.1 MB (4087808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27b9f7b1516b1e4adf336593044ff63a952d866f0ad17f787f3cc5bac283711`  
		Last Modified: Thu, 15 Feb 2018 23:18:00 GMT  
		Size: 838.6 KB (838598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7277740bf0b3c139ecade6b64698af5b1a8fa5f0c57374f30568b79bb2902`  
		Last Modified: Thu, 15 Feb 2018 23:17:58 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032420c17a1f581aa88a8c86d54755b3de9b7c2b3439b546cb7b6efcb40fa016`  
		Last Modified: Thu, 15 Feb 2018 23:17:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e32d4fab1fd44344ecfac22287324375ed241c4c3bb3aecc896f26d2aba886d`  
		Last Modified: Thu, 15 Feb 2018 23:18:47 GMT  
		Size: 152.9 MB (152944353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ff2922a9789418667fcad522c2bc37f7f0cabc93c1a24d369b53e73397182a`  
		Last Modified: Thu, 15 Feb 2018 23:17:58 GMT  
		Size: 272.1 KB (272116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90e926126d3fd9a72cf1ab7a477b85f0fa204943c4b67351e95fd42e6e363ba0`  
		Last Modified: Fri, 16 Feb 2018 12:55:23 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642049ab423f5450448d08a6c82289e64edcedf66b2aaa8e9dc170b3c8d4ed7d`  
		Last Modified: Fri, 16 Feb 2018 12:55:23 GMT  
		Size: 529.4 KB (529350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ede4824c3d8b290e242741f15a193a25e43d219ec3e87e0818fed9ac908cfaf`  
		Last Modified: Sun, 18 Feb 2018 02:55:20 GMT  
		Size: 10.0 MB (10042963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e62f4ff691a96bdbc5fbc19f4c0144c56c9097896f962d0594a9217cce25119`  
		Last Modified: Sun, 18 Feb 2018 02:55:16 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203d0e6946668a978176d04023efcda57ed3e295982e9868201c1da86f22e545`  
		Last Modified: Sun, 18 Feb 2018 06:12:57 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cced1e0b33253988ac7440fc5fd95d1595b84b71b23703bedd95e763f4d5629`  
		Last Modified: Sun, 18 Feb 2018 06:12:58 GMT  
		Size: 476.8 KB (476842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e917de6d5b1c683b9be5f9519ed8496b4d0a773c85199e87a499c586c5b38a54`  
		Last Modified: Sun, 18 Feb 2018 06:12:55 GMT  
		Size: 4.3 KB (4315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d6c839015126866a16a9b9ab3beb6ff5f050b510902e3afdbbab267f61e297`  
		Last Modified: Sun, 18 Feb 2018 06:12:57 GMT  
		Size: 25.8 KB (25773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d2d6992b4904cc2f07b66f1a45f875cd76592ec3e9e32a65ae4cf008910355`  
		Last Modified: Sun, 18 Feb 2018 06:13:32 GMT  
		Size: 116.7 MB (116673394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b4232029b6439f49ce857bfc39e5eb0e4799ea62f513f609e53f0658bd789a0`  
		Last Modified: Sun, 18 Feb 2018 06:12:54 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aafbefd638fccfbc1974e15806bfdfbb5214ab3b8f13ae8eefe9620b67d79ecf`  
		Last Modified: Sun, 18 Feb 2018 06:12:54 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.5` - linux; 386

```console
$ docker pull convertigo@sha256:843f42408744b96c0a841fccbf4c7c73042d283a30f7c27562d72faa27791796
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **372.8 MB (372755223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09b6efd9119b759b8597d898986d2371aabbbf56a58f12568dffe1b30bc41355`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Thu, 15 Feb 2018 18:12:00 GMT
ADD file:efda076eaa7f21dc730f082db8e71fd3465cb5b7fda01796074ec390e25d312b in / 
# Thu, 15 Feb 2018 18:24:00 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 09:03:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 09:10:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 18:07:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:07:12 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 18:07:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 18:07:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 18:07:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 16 Feb 2018 18:07:14 GMT
ENV JAVA_VERSION=8u151
# Fri, 16 Feb 2018 18:07:15 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 16 Feb 2018 18:07:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Feb 2018 18:08:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 18:18:02 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 19 Feb 2018 01:35:01 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 19 Feb 2018 01:35:01 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Feb 2018 01:35:02 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 19 Feb 2018 01:35:02 GMT
WORKDIR /usr/local/tomcat
# Mon, 19 Feb 2018 01:35:03 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 19 Feb 2018 01:35:03 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 19 Feb 2018 01:35:03 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Mon, 19 Feb 2018 01:40:26 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 19 Feb 2018 01:40:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Feb 2018 01:43:50 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 19 Feb 2018 01:43:50 GMT
ENV TOMCAT_MAJOR=7
# Mon, 19 Feb 2018 01:43:51 GMT
ENV TOMCAT_VERSION=7.0.85
# Mon, 19 Feb 2018 01:43:51 GMT
ENV TOMCAT_SHA1=243a8be0bb445c412342965ee8fdf751d9c587e7
# Mon, 19 Feb 2018 01:43:51 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz
# Mon, 19 Feb 2018 01:43:52 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc
# Mon, 19 Feb 2018 01:44:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 19 Feb 2018 01:53:07 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 19 Feb 2018 01:53:15 GMT
EXPOSE 8080/tcp
# Mon, 19 Feb 2018 01:53:15 GMT
CMD ["catalina.sh" "run"]
# Mon, 19 Feb 2018 10:58:42 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Mon, 19 Feb 2018 10:58:42 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 19 Feb 2018 10:58:44 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 19 Feb 2018 10:58:44 GMT
WORKDIR /usr/local/tomcat
# Mon, 19 Feb 2018 10:58:51 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Mon, 19 Feb 2018 10:58:51 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Feb 2018 10:58:51 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Mon, 19 Feb 2018 10:58:51 GMT
ENV TINI_VERSION=0.16.1
# Mon, 19 Feb 2018 10:58:52 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Mon, 19 Feb 2018 10:59:01 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Mon, 19 Feb 2018 11:03:58 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Mon, 19 Feb 2018 11:03:59 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Mon, 19 Feb 2018 11:04:00 GMT
ENV CONVERTIGO_VERSION=7.5.0
# Mon, 19 Feb 2018 11:04:00 GMT
ENV CONVERTIGO_REVISION=44235
# Mon, 19 Feb 2018 11:07:01 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.0/convertigo-7.5.0-v44235-linux32.war
# Mon, 19 Feb 2018 11:07:01 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Mon, 19 Feb 2018 11:21:08 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Mon, 19 Feb 2018 11:32:27 GMT
COPY file:03a78619febe6c5b17d175b71a6dbe271ce2c70c52e354c6642b986d1b28fc2e in webapps/ROOT/index.html 
# Mon, 19 Feb 2018 11:32:27 GMT
COPY file:0a47ea62001ca3cec3ce66ba5a1de976c240bea17f36878bcf94b75e4f0cdf86 in / 
# Mon, 19 Feb 2018 11:32:27 GMT
ENV SWT_GTK3=0
# Mon, 19 Feb 2018 11:32:27 GMT
WORKDIR /workspace
# Mon, 19 Feb 2018 11:32:28 GMT
VOLUME [/workspace]
# Mon, 19 Feb 2018 11:32:28 GMT
EXPOSE 28080/tcp
# Mon, 19 Feb 2018 11:32:28 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Mon, 19 Feb 2018 11:32:29 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:9e00c93ed72d016aab52ea3c3a3423ddc9ea91d0005937106ed39c4005989991`  
		Last Modified: Thu, 15 Feb 2018 01:16:02 GMT  
		Size: 45.8 MB (45837726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b842c4f12ce193c6669f6d0ce38aec19cf0f2c7adb70daf9ead694218a108708`  
		Last Modified: Fri, 16 Feb 2018 11:35:51 GMT  
		Size: 11.2 MB (11150751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3c168f821c9302872e46de652da9ba7965adf0095f1b6e5adbdd7c9bd6710c`  
		Last Modified: Fri, 16 Feb 2018 11:35:49 GMT  
		Size: 4.6 MB (4554693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d965939fc12d1154aa65c953062de7f15ec1f9c25f0f1a8fba2e6ae2418cc1`  
		Last Modified: Sat, 17 Feb 2018 08:54:01 GMT  
		Size: 861.2 KB (861227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00d8b4f34effe52ffcb2fef133798e97168c81615216a73788a825e8f4d9b04`  
		Last Modified: Sat, 17 Feb 2018 08:53:58 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:998903c668db9bf30c8df8104776a702627c04bd0dfb32f2a58d7dd4eed26f12`  
		Last Modified: Sat, 17 Feb 2018 08:53:59 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:103026c14ec31451e833db0fd15fd93e3ff6e0708b7efa1339b6c5dde0b9e1e1`  
		Last Modified: Sat, 17 Feb 2018 08:54:51 GMT  
		Size: 168.3 MB (168328825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929c8cbef0b62fab35fbd6945034f797d68d46a189476005bbfba445c8a60b89`  
		Last Modified: Sat, 17 Feb 2018 08:53:59 GMT  
		Size: 272.2 KB (272171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bcfd1885d960f4ab970069c7d7e620d49ab16c652efe467695178178b55fd24`  
		Last Modified: Mon, 19 Feb 2018 09:30:23 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7206c5c7dbfd19c6e4caf8367aef9b89d4896b1d6a6f0a5eb10680627918e6b9`  
		Last Modified: Mon, 19 Feb 2018 09:30:24 GMT  
		Size: 554.6 KB (554604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d21f01c6809a7b6afed30cab18eee6ce1f2ef277befca531a1f5cdcbc96bfdd1`  
		Last Modified: Mon, 19 Feb 2018 09:30:27 GMT  
		Size: 9.9 MB (9930273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7621cadc1c588bf6a09b791d38780b09de613ed6751d325331084180563ce777`  
		Last Modified: Mon, 19 Feb 2018 09:30:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5047268433ff5e10ede803298c21d3f17691c0c96ee03547814623ea6b82ea5a`  
		Last Modified: Mon, 19 Feb 2018 12:45:15 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7961f13c77884abaf5973ab67b4919d30eac1ef8c2275c142086f3fbaafc5bd`  
		Last Modified: Mon, 19 Feb 2018 12:45:15 GMT  
		Size: 489.2 KB (489163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a07987a9990eea1a9d2cad58969de835710fdf9b3ce9dee58da019b3ac3f011`  
		Last Modified: Mon, 19 Feb 2018 12:45:15 GMT  
		Size: 4.3 KB (4290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed811dfb1ecb44965e89f058453392fc41f761a79283e749debbaba3bdc531c`  
		Last Modified: Mon, 19 Feb 2018 12:45:15 GMT  
		Size: 25.8 KB (25773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feaa551a2899ab3094e959dd5044a3250473537720791540904149171fe4b5f2`  
		Last Modified: Mon, 19 Feb 2018 12:45:40 GMT  
		Size: 130.7 MB (130743199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea010a43fbb2ae3c65a07d00412532d32d03e18e52679a19dadfd6e524f6ef7e`  
		Last Modified: Mon, 19 Feb 2018 12:45:14 GMT  
		Size: 467.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e62b585bf853800cb1c9c27796f9d36e271eb3458ccb49e14884b4b0ab5f71`  
		Last Modified: Mon, 19 Feb 2018 12:45:15 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `convertigo:7.5.0`

```console
$ docker pull convertigo@sha256:24ba8d105ea8426a40cfab0350725ccd12a941b51a4c82218f46fe4e51de6a0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `convertigo:7.5.0` - linux; amd64

```console
$ docker pull convertigo@sha256:9ebaf5f7b8ddbc7ba21acd34e0c9b0865e4531037560f9e09539189b5846d9eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **354.9 MB (354886876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58aeb7f0a0bf5c2c85efcc6089e4c715ba42a24ecf3f156c34ffdf5c26d1c3d2`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:55:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:55:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 11:08:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:08:13 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:08:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 11:08:15 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 11:08:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 11:09:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 11:17:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 18:48:35 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 15 Feb 2018 18:48:35 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 18:48:36 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 15 Feb 2018 18:48:36 GMT
WORKDIR /usr/local/tomcat
# Thu, 15 Feb 2018 18:48:37 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 15 Feb 2018 18:48:37 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 15 Feb 2018 18:48:37 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Thu, 15 Feb 2018 18:48:38 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 18:48:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 18:48:53 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 15 Feb 2018 18:48:54 GMT
ENV TOMCAT_MAJOR=7
# Sun, 18 Feb 2018 01:45:03 GMT
ENV TOMCAT_VERSION=7.0.85
# Sun, 18 Feb 2018 01:45:04 GMT
ENV TOMCAT_SHA1=243a8be0bb445c412342965ee8fdf751d9c587e7
# Sun, 18 Feb 2018 01:45:04 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz
# Sun, 18 Feb 2018 01:45:04 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc
# Sun, 18 Feb 2018 01:45:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sun, 18 Feb 2018 01:45:55 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sun, 18 Feb 2018 01:46:06 GMT
EXPOSE 8080/tcp
# Sun, 18 Feb 2018 01:46:06 GMT
CMD ["catalina.sh" "run"]
# Sun, 18 Feb 2018 03:53:11 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Sun, 18 Feb 2018 03:53:11 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sun, 18 Feb 2018 03:53:12 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sun, 18 Feb 2018 03:53:13 GMT
WORKDIR /usr/local/tomcat
# Sun, 18 Feb 2018 03:53:17 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:53:17 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 03:53:17 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sun, 18 Feb 2018 03:53:17 GMT
ENV TINI_VERSION=0.16.1
# Sun, 18 Feb 2018 03:53:18 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Sun, 18 Feb 2018 03:53:26 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Sun, 18 Feb 2018 03:53:40 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Sun, 18 Feb 2018 03:53:41 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Sun, 18 Feb 2018 03:53:41 GMT
ENV CONVERTIGO_VERSION=7.5.0
# Sun, 18 Feb 2018 03:53:54 GMT
ENV CONVERTIGO_REVISION=44235
# Sun, 18 Feb 2018 03:53:54 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.0/convertigo-7.5.0-v44235-linux32.war
# Sun, 18 Feb 2018 03:53:55 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Sun, 18 Feb 2018 03:54:15 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Sun, 18 Feb 2018 03:54:15 GMT
COPY file:03a78619febe6c5b17d175b71a6dbe271ce2c70c52e354c6642b986d1b28fc2e in webapps/ROOT/index.html 
# Sun, 18 Feb 2018 03:54:16 GMT
COPY file:0a47ea62001ca3cec3ce66ba5a1de976c240bea17f36878bcf94b75e4f0cdf86 in / 
# Sun, 18 Feb 2018 03:54:16 GMT
ENV SWT_GTK3=0
# Sun, 18 Feb 2018 03:54:29 GMT
WORKDIR /workspace
# Sun, 18 Feb 2018 03:54:29 GMT
VOLUME [/workspace]
# Sun, 18 Feb 2018 03:54:30 GMT
EXPOSE 28080/tcp
# Sun, 18 Feb 2018 03:54:30 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 03:54:31 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cafa6a79d0be5bd8a64fe52bfc4178072e067e8f5ed5c224d5330107424335`  
		Last Modified: Thu, 15 Feb 2018 04:40:22 GMT  
		Size: 11.1 MB (11107850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fcf5a213c7dfb0aa4eeed5922f9c2b6261cf60bb27f2dd9d761d6030689b39`  
		Last Modified: Thu, 15 Feb 2018 04:40:19 GMT  
		Size: 4.3 MB (4335400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd532571c5d31f61347a950a0d58ec1282046fc8bdda6791f8c34a56a1c792c6`  
		Last Modified: Thu, 15 Feb 2018 13:39:14 GMT  
		Size: 852.3 KB (852290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31600c9f9b48dc3cd9fa7c14415fb9251cd3582028fadbb3d5f1bcb57512ecd0`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e8e9b5d10eec5baacf8bfb0d61d868b1ba263863b08d5346fbb73fcff6bb85`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0710e619e88357033e362f6a8c18d93a0dbf14d31629082877ae8c7f51072113`  
		Last Modified: Thu, 15 Feb 2018 13:39:52 GMT  
		Size: 165.4 MB (165392618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e511da65ffabe622bcb6fa89b699e80f94ec7185a95076cd3b4cabc101bd2d11`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 272.1 KB (272124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfcd79b5752d99c10b7a29d19bbd7c78fda3c82e7e2476250fb76b19bdedeb27`  
		Last Modified: Thu, 15 Feb 2018 19:49:36 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d4311e9998b432748663f250f13af84a06f849472d89e9dc8c755d0fa1212d`  
		Last Modified: Thu, 15 Feb 2018 19:49:37 GMT  
		Size: 545.3 KB (545302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f9d7fb06c56c79acdf91bde80e112045c8e7d7a8c25fbb1b9efc496a951720`  
		Last Modified: Sun, 18 Feb 2018 02:15:28 GMT  
		Size: 10.0 MB (10033359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b57bbc0ee3014496ae8989c0d5d1d29e620f05b456157fe2315b8a52a8a6c059`  
		Last Modified: Sun, 18 Feb 2018 02:15:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6328f83a2d4bb866a52353977d7245b7761ba03dbd2e37730c59cc9b7f995921`  
		Last Modified: Sun, 18 Feb 2018 03:59:58 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114b66f490073bfe7bb93e5fe537e7d120e941a56492f1b279c12a0f91e7dbc7`  
		Last Modified: Sun, 18 Feb 2018 03:59:59 GMT  
		Size: 509.3 KB (509296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e7bb14443ce4de3fbf88c4fa9392369cbf172cd0a49c7a4b52ca9b8629c0db9`  
		Last Modified: Sun, 18 Feb 2018 03:59:56 GMT  
		Size: 4.3 KB (4303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43f54144d7b74559c9d74ba726b163891ba51f01e2343975d3b4f8b1190acaf7`  
		Last Modified: Sun, 18 Feb 2018 03:59:56 GMT  
		Size: 25.8 KB (25764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae0a3fe3210c89e2e2b4e8e90f391caffe4e6f12f5fe74f6f37435c81ce923e0`  
		Last Modified: Sun, 18 Feb 2018 04:00:11 GMT  
		Size: 116.7 MB (116673414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1769f1ed30b02464fc33b45e364bf57e56376d5cec39bb827b104e9c4718aa79`  
		Last Modified: Sun, 18 Feb 2018 03:59:56 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e58b254b42f8d4869cfd845cee4c918b8c9e8237c7fceb31e862a638ac556ec6`  
		Last Modified: Sun, 18 Feb 2018 03:59:56 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.5.0` - linux; arm variant v7

```console
$ docker pull convertigo@sha256:5c9159abeb3be80824a603e79b38c97cf6d68c4559e71da95f9f1ff511a789d9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.1 MB (334060344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a759877f2c5513f5a4c62e695e5e50f0833756ef60a5b34767e840619987286d`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Thu, 15 Feb 2018 13:30:55 GMT
ADD file:58c4e4829c3db6bdb6063ee3ca04776b696772f592f70cb29d5196788c3608da in / 
# Thu, 15 Feb 2018 13:30:56 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 14:14:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 14:14:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 15:01:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 15:01:56 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 15:01:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 15:01:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 15:01:59 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 15:01:59 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 15:02:06 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 15:02:06 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 15:03:04 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 15:03:09 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 18:54:47 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 15 Feb 2018 18:54:48 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 18:54:49 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 15 Feb 2018 18:54:56 GMT
WORKDIR /usr/local/tomcat
# Thu, 15 Feb 2018 18:55:09 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 15 Feb 2018 18:55:10 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 15 Feb 2018 18:55:17 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Thu, 15 Feb 2018 18:55:24 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 18:55:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 18:55:38 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 15 Feb 2018 18:55:46 GMT
ENV TOMCAT_MAJOR=7
# Sun, 18 Feb 2018 18:14:48 GMT
ENV TOMCAT_VERSION=7.0.85
# Sun, 18 Feb 2018 18:14:48 GMT
ENV TOMCAT_SHA1=243a8be0bb445c412342965ee8fdf751d9c587e7
# Sun, 18 Feb 2018 18:14:48 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz
# Sun, 18 Feb 2018 18:14:48 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc
# Sun, 18 Feb 2018 18:15:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sun, 18 Feb 2018 18:15:39 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sun, 18 Feb 2018 18:15:39 GMT
EXPOSE 8080/tcp
# Sun, 18 Feb 2018 18:15:40 GMT
CMD ["catalina.sh" "run"]
# Sun, 18 Feb 2018 18:46:50 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Sun, 18 Feb 2018 18:46:50 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sun, 18 Feb 2018 18:46:51 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sun, 18 Feb 2018 18:46:52 GMT
WORKDIR /usr/local/tomcat
# Sun, 18 Feb 2018 18:46:57 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 18:46:57 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 18:46:58 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sun, 18 Feb 2018 18:46:58 GMT
ENV TINI_VERSION=0.16.1
# Sun, 18 Feb 2018 18:46:58 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Sun, 18 Feb 2018 18:47:03 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Sun, 18 Feb 2018 18:47:04 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Sun, 18 Feb 2018 18:47:05 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Sun, 18 Feb 2018 18:47:06 GMT
ENV CONVERTIGO_VERSION=7.5.0
# Sun, 18 Feb 2018 18:47:06 GMT
ENV CONVERTIGO_REVISION=44235
# Sun, 18 Feb 2018 18:47:06 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.0/convertigo-7.5.0-v44235-linux32.war
# Sun, 18 Feb 2018 18:47:06 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Sun, 18 Feb 2018 18:47:23 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Sun, 18 Feb 2018 18:47:24 GMT
COPY file:03a78619febe6c5b17d175b71a6dbe271ce2c70c52e354c6642b986d1b28fc2e in webapps/ROOT/index.html 
# Sun, 18 Feb 2018 18:47:24 GMT
COPY file:0a47ea62001ca3cec3ce66ba5a1de976c240bea17f36878bcf94b75e4f0cdf86 in / 
# Sun, 18 Feb 2018 18:47:25 GMT
ENV SWT_GTK3=0
# Sun, 18 Feb 2018 18:47:25 GMT
WORKDIR /workspace
# Sun, 18 Feb 2018 18:47:25 GMT
VOLUME [/workspace]
# Sun, 18 Feb 2018 18:47:26 GMT
EXPOSE 28080/tcp
# Sun, 18 Feb 2018 18:47:26 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 18:47:26 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:c0518139464abb63e1069cd4c638aad760a6cb319660ae2229921b17c703441b`  
		Last Modified: Thu, 15 Feb 2018 13:40:56 GMT  
		Size: 41.9 MB (41859666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72be4c519488d3f9c0893c7e4aa66f806292ac98c1f509b4387b4eb8e4789e9a`  
		Last Modified: Thu, 15 Feb 2018 14:24:47 GMT  
		Size: 9.8 MB (9824909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e5a3e5bf5f97b01c2bf09851057f8cc68748d43fdde36477492ec435aabd55`  
		Last Modified: Thu, 15 Feb 2018 14:24:46 GMT  
		Size: 3.9 MB (3912530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5a761b65438d1a65a32e3d0bbb1c3530a9a5a339f3315b5edc9387250e3ebc`  
		Last Modified: Thu, 15 Feb 2018 15:34:47 GMT  
		Size: 829.7 KB (829694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24fb0b223e8826de07f46f44a8dc80900ab8e46c439d5a3ce685e10ff660538`  
		Last Modified: Thu, 15 Feb 2018 15:34:45 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d695150c276b6e96341885d510d6946666501dbabf26a0ae9a56bd3ea58a9ba`  
		Last Modified: Thu, 15 Feb 2018 15:34:46 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42ca65dcf315de561fef4871a103665aac29136774b3a94bb10df5c8b591864d`  
		Last Modified: Thu, 15 Feb 2018 15:35:19 GMT  
		Size: 149.7 MB (149689725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aede9bbc8e3b39b5c440435c7b183a56240f0480556078e721a1585ba2912876`  
		Last Modified: Thu, 15 Feb 2018 15:34:46 GMT  
		Size: 272.1 KB (272118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13803da070aedc7411bb4cb0eb9f8f653039458dc6778c8c091a2aea078821d1`  
		Last Modified: Thu, 15 Feb 2018 19:25:43 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6edc6e3073e0a2b7deece9df8771e5534595976e155c1fff45136924ab141a0d`  
		Last Modified: Thu, 15 Feb 2018 19:25:43 GMT  
		Size: 520.2 KB (520198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c025e9838031adb474031c3d2119d0f1563a85756ca3b36dd02220535bc6b3a0`  
		Last Modified: Sun, 18 Feb 2018 18:29:12 GMT  
		Size: 10.0 MB (9962697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c82b36e278fe99d0c7a83214206924451203219c0282a8ee676508cbc77418`  
		Last Modified: Sun, 18 Feb 2018 18:29:11 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e464f4c376ef46c6156c7d52ce2d6061a4e8978b48587f6b9ae69a31dc32f6b9`  
		Last Modified: Sun, 18 Feb 2018 18:48:15 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95587c6eebb33868fe2fb7a13451b41a40763b2c580a91fdce7aac461ea02ffb`  
		Last Modified: Sun, 18 Feb 2018 18:48:15 GMT  
		Size: 482.7 KB (482669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74ef3616c708b7b56f46bc692132c1b0accc3c192ce8eebdb42eb23a80e4f53b`  
		Last Modified: Sun, 18 Feb 2018 18:48:13 GMT  
		Size: 4.3 KB (4343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744a5e16606c0d3c05b1adc22ae54f0a13d47cc881464508ca25393efdc513bc`  
		Last Modified: Sun, 18 Feb 2018 18:48:14 GMT  
		Size: 25.8 KB (25769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8206588f45f07da5813afa11ddb072ef9d24fdcbdb642b501244a81cd2a75a7f`  
		Last Modified: Sun, 18 Feb 2018 18:48:28 GMT  
		Size: 116.7 MB (116673466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9434317ef79647bcee0fded947ea41b6c11a010372d894e6755ecfc0dd07da3c`  
		Last Modified: Sun, 18 Feb 2018 18:48:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ce4c5f7c20c91a918b819e095ee5cd9c5e2039cd082b9b1a2d0bc46b2b79a3`  
		Last Modified: Sun, 18 Feb 2018 18:48:13 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.5.0` - linux; arm64 variant v8

```console
$ docker pull convertigo@sha256:38ebf2796cb5a4b96a904ba88eda232fbb0e253e66ad012df71117af95ddb1ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.9 MB (338886571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e49df4a354595acd016ccc026ad07cd33724bc30f8eac5dd94a9fcc0ae88bbe`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:04 GMT
ADD file:f17659d511330c9a9c3fadf05151f88e9d532af1734ffadd1da10aa5e2aeb6ac in / 
# Thu, 15 Feb 2018 18:29:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:49:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 22:24:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:24:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:24:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 22:25:01 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 22:25:01 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 22:25:02 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 22:25:03 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 22:25:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 22:31:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 22:31:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 16 Feb 2018 11:29:24 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 16 Feb 2018 11:29:25 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Feb 2018 11:29:26 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 16 Feb 2018 11:29:27 GMT
WORKDIR /usr/local/tomcat
# Fri, 16 Feb 2018 11:29:27 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 16 Feb 2018 11:29:28 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 16 Feb 2018 11:29:28 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Fri, 16 Feb 2018 11:29:30 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 11:29:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 11:29:58 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 16 Feb 2018 11:29:58 GMT
ENV TOMCAT_MAJOR=7
# Sun, 18 Feb 2018 02:08:00 GMT
ENV TOMCAT_VERSION=7.0.85
# Sun, 18 Feb 2018 02:08:01 GMT
ENV TOMCAT_SHA1=243a8be0bb445c412342965ee8fdf751d9c587e7
# Sun, 18 Feb 2018 02:08:02 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz
# Sun, 18 Feb 2018 02:08:03 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc
# Sun, 18 Feb 2018 02:10:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sun, 18 Feb 2018 02:10:13 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sun, 18 Feb 2018 02:10:14 GMT
EXPOSE 8080/tcp
# Sun, 18 Feb 2018 02:10:15 GMT
CMD ["catalina.sh" "run"]
# Sun, 18 Feb 2018 06:07:05 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Sun, 18 Feb 2018 06:07:05 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sun, 18 Feb 2018 06:07:07 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sun, 18 Feb 2018 06:07:08 GMT
WORKDIR /usr/local/tomcat
# Sun, 18 Feb 2018 06:07:16 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 06:07:16 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 06:07:17 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sun, 18 Feb 2018 06:07:18 GMT
ENV TINI_VERSION=0.16.1
# Sun, 18 Feb 2018 06:07:18 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Sun, 18 Feb 2018 06:07:27 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Sun, 18 Feb 2018 06:07:30 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Sun, 18 Feb 2018 06:07:32 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Sun, 18 Feb 2018 06:07:32 GMT
ENV CONVERTIGO_VERSION=7.5.0
# Sun, 18 Feb 2018 06:07:33 GMT
ENV CONVERTIGO_REVISION=44235
# Sun, 18 Feb 2018 06:07:34 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.0/convertigo-7.5.0-v44235-linux32.war
# Sun, 18 Feb 2018 06:07:34 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Sun, 18 Feb 2018 06:08:12 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Sun, 18 Feb 2018 06:08:13 GMT
COPY file:03a78619febe6c5b17d175b71a6dbe271ce2c70c52e354c6642b986d1b28fc2e in webapps/ROOT/index.html 
# Sun, 18 Feb 2018 06:08:14 GMT
COPY file:0a47ea62001ca3cec3ce66ba5a1de976c240bea17f36878bcf94b75e4f0cdf86 in / 
# Sun, 18 Feb 2018 06:08:15 GMT
ENV SWT_GTK3=0
# Sun, 18 Feb 2018 06:08:15 GMT
WORKDIR /workspace
# Sun, 18 Feb 2018 06:08:16 GMT
VOLUME [/workspace]
# Sun, 18 Feb 2018 06:08:17 GMT
EXPOSE 28080/tcp
# Sun, 18 Feb 2018 06:08:18 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 06:08:19 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:b295e5c109fc9f55d14722eb26929ecc106cec04f7d37e867f7da008c53e293b`  
		Last Modified: Thu, 15 Feb 2018 01:14:37 GMT  
		Size: 42.9 MB (42921910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7310b14179e155997ab4625e06eb59600ea20b500835fe5bdca17a52d61e1c45`  
		Last Modified: Thu, 15 Feb 2018 20:15:23 GMT  
		Size: 10.1 MB (10066614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:785fa2a238ab89b203751335a74784cdb5ea9d78eabac46ce433ef327d7ff1db`  
		Last Modified: Thu, 15 Feb 2018 20:15:21 GMT  
		Size: 4.1 MB (4087808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27b9f7b1516b1e4adf336593044ff63a952d866f0ad17f787f3cc5bac283711`  
		Last Modified: Thu, 15 Feb 2018 23:18:00 GMT  
		Size: 838.6 KB (838598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7277740bf0b3c139ecade6b64698af5b1a8fa5f0c57374f30568b79bb2902`  
		Last Modified: Thu, 15 Feb 2018 23:17:58 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032420c17a1f581aa88a8c86d54755b3de9b7c2b3439b546cb7b6efcb40fa016`  
		Last Modified: Thu, 15 Feb 2018 23:17:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e32d4fab1fd44344ecfac22287324375ed241c4c3bb3aecc896f26d2aba886d`  
		Last Modified: Thu, 15 Feb 2018 23:18:47 GMT  
		Size: 152.9 MB (152944353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ff2922a9789418667fcad522c2bc37f7f0cabc93c1a24d369b53e73397182a`  
		Last Modified: Thu, 15 Feb 2018 23:17:58 GMT  
		Size: 272.1 KB (272116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90e926126d3fd9a72cf1ab7a477b85f0fa204943c4b67351e95fd42e6e363ba0`  
		Last Modified: Fri, 16 Feb 2018 12:55:23 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642049ab423f5450448d08a6c82289e64edcedf66b2aaa8e9dc170b3c8d4ed7d`  
		Last Modified: Fri, 16 Feb 2018 12:55:23 GMT  
		Size: 529.4 KB (529350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ede4824c3d8b290e242741f15a193a25e43d219ec3e87e0818fed9ac908cfaf`  
		Last Modified: Sun, 18 Feb 2018 02:55:20 GMT  
		Size: 10.0 MB (10042963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e62f4ff691a96bdbc5fbc19f4c0144c56c9097896f962d0594a9217cce25119`  
		Last Modified: Sun, 18 Feb 2018 02:55:16 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203d0e6946668a978176d04023efcda57ed3e295982e9868201c1da86f22e545`  
		Last Modified: Sun, 18 Feb 2018 06:12:57 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cced1e0b33253988ac7440fc5fd95d1595b84b71b23703bedd95e763f4d5629`  
		Last Modified: Sun, 18 Feb 2018 06:12:58 GMT  
		Size: 476.8 KB (476842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e917de6d5b1c683b9be5f9519ed8496b4d0a773c85199e87a499c586c5b38a54`  
		Last Modified: Sun, 18 Feb 2018 06:12:55 GMT  
		Size: 4.3 KB (4315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d6c839015126866a16a9b9ab3beb6ff5f050b510902e3afdbbab267f61e297`  
		Last Modified: Sun, 18 Feb 2018 06:12:57 GMT  
		Size: 25.8 KB (25773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d2d6992b4904cc2f07b66f1a45f875cd76592ec3e9e32a65ae4cf008910355`  
		Last Modified: Sun, 18 Feb 2018 06:13:32 GMT  
		Size: 116.7 MB (116673394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b4232029b6439f49ce857bfc39e5eb0e4799ea62f513f609e53f0658bd789a0`  
		Last Modified: Sun, 18 Feb 2018 06:12:54 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aafbefd638fccfbc1974e15806bfdfbb5214ab3b8f13ae8eefe9620b67d79ecf`  
		Last Modified: Sun, 18 Feb 2018 06:12:54 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.5.0` - linux; 386

```console
$ docker pull convertigo@sha256:843f42408744b96c0a841fccbf4c7c73042d283a30f7c27562d72faa27791796
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **372.8 MB (372755223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09b6efd9119b759b8597d898986d2371aabbbf56a58f12568dffe1b30bc41355`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Thu, 15 Feb 2018 18:12:00 GMT
ADD file:efda076eaa7f21dc730f082db8e71fd3465cb5b7fda01796074ec390e25d312b in / 
# Thu, 15 Feb 2018 18:24:00 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 09:03:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 09:10:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 18:07:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:07:12 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 18:07:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 18:07:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 18:07:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 16 Feb 2018 18:07:14 GMT
ENV JAVA_VERSION=8u151
# Fri, 16 Feb 2018 18:07:15 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 16 Feb 2018 18:07:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Feb 2018 18:08:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 18:18:02 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 19 Feb 2018 01:35:01 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 19 Feb 2018 01:35:01 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Feb 2018 01:35:02 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 19 Feb 2018 01:35:02 GMT
WORKDIR /usr/local/tomcat
# Mon, 19 Feb 2018 01:35:03 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 19 Feb 2018 01:35:03 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 19 Feb 2018 01:35:03 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Mon, 19 Feb 2018 01:40:26 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 19 Feb 2018 01:40:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Feb 2018 01:43:50 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 19 Feb 2018 01:43:50 GMT
ENV TOMCAT_MAJOR=7
# Mon, 19 Feb 2018 01:43:51 GMT
ENV TOMCAT_VERSION=7.0.85
# Mon, 19 Feb 2018 01:43:51 GMT
ENV TOMCAT_SHA1=243a8be0bb445c412342965ee8fdf751d9c587e7
# Mon, 19 Feb 2018 01:43:51 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz
# Mon, 19 Feb 2018 01:43:52 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc
# Mon, 19 Feb 2018 01:44:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 19 Feb 2018 01:53:07 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 19 Feb 2018 01:53:15 GMT
EXPOSE 8080/tcp
# Mon, 19 Feb 2018 01:53:15 GMT
CMD ["catalina.sh" "run"]
# Mon, 19 Feb 2018 10:58:42 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Mon, 19 Feb 2018 10:58:42 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 19 Feb 2018 10:58:44 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 19 Feb 2018 10:58:44 GMT
WORKDIR /usr/local/tomcat
# Mon, 19 Feb 2018 10:58:51 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Mon, 19 Feb 2018 10:58:51 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Feb 2018 10:58:51 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Mon, 19 Feb 2018 10:58:51 GMT
ENV TINI_VERSION=0.16.1
# Mon, 19 Feb 2018 10:58:52 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Mon, 19 Feb 2018 10:59:01 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Mon, 19 Feb 2018 11:03:58 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Mon, 19 Feb 2018 11:03:59 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Mon, 19 Feb 2018 11:04:00 GMT
ENV CONVERTIGO_VERSION=7.5.0
# Mon, 19 Feb 2018 11:04:00 GMT
ENV CONVERTIGO_REVISION=44235
# Mon, 19 Feb 2018 11:07:01 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.0/convertigo-7.5.0-v44235-linux32.war
# Mon, 19 Feb 2018 11:07:01 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Mon, 19 Feb 2018 11:21:08 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Mon, 19 Feb 2018 11:32:27 GMT
COPY file:03a78619febe6c5b17d175b71a6dbe271ce2c70c52e354c6642b986d1b28fc2e in webapps/ROOT/index.html 
# Mon, 19 Feb 2018 11:32:27 GMT
COPY file:0a47ea62001ca3cec3ce66ba5a1de976c240bea17f36878bcf94b75e4f0cdf86 in / 
# Mon, 19 Feb 2018 11:32:27 GMT
ENV SWT_GTK3=0
# Mon, 19 Feb 2018 11:32:27 GMT
WORKDIR /workspace
# Mon, 19 Feb 2018 11:32:28 GMT
VOLUME [/workspace]
# Mon, 19 Feb 2018 11:32:28 GMT
EXPOSE 28080/tcp
# Mon, 19 Feb 2018 11:32:28 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Mon, 19 Feb 2018 11:32:29 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:9e00c93ed72d016aab52ea3c3a3423ddc9ea91d0005937106ed39c4005989991`  
		Last Modified: Thu, 15 Feb 2018 01:16:02 GMT  
		Size: 45.8 MB (45837726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b842c4f12ce193c6669f6d0ce38aec19cf0f2c7adb70daf9ead694218a108708`  
		Last Modified: Fri, 16 Feb 2018 11:35:51 GMT  
		Size: 11.2 MB (11150751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3c168f821c9302872e46de652da9ba7965adf0095f1b6e5adbdd7c9bd6710c`  
		Last Modified: Fri, 16 Feb 2018 11:35:49 GMT  
		Size: 4.6 MB (4554693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d965939fc12d1154aa65c953062de7f15ec1f9c25f0f1a8fba2e6ae2418cc1`  
		Last Modified: Sat, 17 Feb 2018 08:54:01 GMT  
		Size: 861.2 KB (861227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00d8b4f34effe52ffcb2fef133798e97168c81615216a73788a825e8f4d9b04`  
		Last Modified: Sat, 17 Feb 2018 08:53:58 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:998903c668db9bf30c8df8104776a702627c04bd0dfb32f2a58d7dd4eed26f12`  
		Last Modified: Sat, 17 Feb 2018 08:53:59 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:103026c14ec31451e833db0fd15fd93e3ff6e0708b7efa1339b6c5dde0b9e1e1`  
		Last Modified: Sat, 17 Feb 2018 08:54:51 GMT  
		Size: 168.3 MB (168328825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929c8cbef0b62fab35fbd6945034f797d68d46a189476005bbfba445c8a60b89`  
		Last Modified: Sat, 17 Feb 2018 08:53:59 GMT  
		Size: 272.2 KB (272171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bcfd1885d960f4ab970069c7d7e620d49ab16c652efe467695178178b55fd24`  
		Last Modified: Mon, 19 Feb 2018 09:30:23 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7206c5c7dbfd19c6e4caf8367aef9b89d4896b1d6a6f0a5eb10680627918e6b9`  
		Last Modified: Mon, 19 Feb 2018 09:30:24 GMT  
		Size: 554.6 KB (554604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d21f01c6809a7b6afed30cab18eee6ce1f2ef277befca531a1f5cdcbc96bfdd1`  
		Last Modified: Mon, 19 Feb 2018 09:30:27 GMT  
		Size: 9.9 MB (9930273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7621cadc1c588bf6a09b791d38780b09de613ed6751d325331084180563ce777`  
		Last Modified: Mon, 19 Feb 2018 09:30:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5047268433ff5e10ede803298c21d3f17691c0c96ee03547814623ea6b82ea5a`  
		Last Modified: Mon, 19 Feb 2018 12:45:15 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7961f13c77884abaf5973ab67b4919d30eac1ef8c2275c142086f3fbaafc5bd`  
		Last Modified: Mon, 19 Feb 2018 12:45:15 GMT  
		Size: 489.2 KB (489163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a07987a9990eea1a9d2cad58969de835710fdf9b3ce9dee58da019b3ac3f011`  
		Last Modified: Mon, 19 Feb 2018 12:45:15 GMT  
		Size: 4.3 KB (4290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed811dfb1ecb44965e89f058453392fc41f761a79283e749debbaba3bdc531c`  
		Last Modified: Mon, 19 Feb 2018 12:45:15 GMT  
		Size: 25.8 KB (25773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feaa551a2899ab3094e959dd5044a3250473537720791540904149171fe4b5f2`  
		Last Modified: Mon, 19 Feb 2018 12:45:40 GMT  
		Size: 130.7 MB (130743199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea010a43fbb2ae3c65a07d00412532d32d03e18e52679a19dadfd6e524f6ef7e`  
		Last Modified: Mon, 19 Feb 2018 12:45:14 GMT  
		Size: 467.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e62b585bf853800cb1c9c27796f9d36e271eb3458ccb49e14884b4b0ab5f71`  
		Last Modified: Mon, 19 Feb 2018 12:45:15 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `convertigo:7.5.0-alpine`

```console
$ docker pull convertigo@sha256:45393a534b6c77f6b391dd8f06464ae58ad00042343d2b69cd6d1df2d6b238d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `convertigo:7.5.0-alpine` - linux; amd64

```console
$ docker pull convertigo@sha256:f6fd8316f17cc820cda62bcf0c8fc65845601e7011e2af1847c0a5684bcfe470
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.2 MB (193193604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:815f062edcbbf2184aa649852d654ce96872ef7611648d125a222cafaf786cde`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:51:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Jan 2018 04:51:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:52:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 09:29:05 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 10 Jan 2018 09:29:06 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 09:29:06 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 10 Jan 2018 09:29:07 GMT
WORKDIR /usr/local/tomcat
# Wed, 10 Jan 2018 09:29:07 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 10 Jan 2018 09:29:07 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 18 Jan 2018 21:34:12 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 18 Jan 2018 21:34:13 GMT
ENV TOMCAT_MAJOR=7
# Sun, 18 Feb 2018 01:55:04 GMT
ENV TOMCAT_VERSION=7.0.85
# Sun, 18 Feb 2018 01:55:04 GMT
ENV TOMCAT_SHA1=243a8be0bb445c412342965ee8fdf751d9c587e7
# Sun, 18 Feb 2018 01:55:04 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz
# Sun, 18 Feb 2018 01:55:05 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc
# Sun, 18 Feb 2018 01:55:54 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sun, 18 Feb 2018 01:55:59 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sun, 18 Feb 2018 01:56:10 GMT
EXPOSE 8080/tcp
# Sun, 18 Feb 2018 01:56:10 GMT
CMD ["catalina.sh" "run"]
# Sun, 18 Feb 2018 03:55:10 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Sun, 18 Feb 2018 03:55:10 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sun, 18 Feb 2018 03:55:11 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sun, 18 Feb 2018 03:55:11 GMT
WORKDIR /usr/local/tomcat
# Sun, 18 Feb 2018 03:55:15 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Sun, 18 Feb 2018 03:55:15 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 03:55:16 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sun, 18 Feb 2018 03:55:16 GMT
ENV TINI_VERSION=0.16.1
# Sun, 18 Feb 2018 03:55:16 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Sun, 18 Feb 2018 03:55:27 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Sun, 18 Feb 2018 03:55:31 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Sun, 18 Feb 2018 03:55:32 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Sun, 18 Feb 2018 03:55:33 GMT
ENV CONVERTIGO_VERSION=7.5.0
# Sun, 18 Feb 2018 03:55:46 GMT
ENV CONVERTIGO_REVISION=44235
# Sun, 18 Feb 2018 03:55:46 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.0/convertigo-7.5.0-v44235-linux32.war
# Sun, 18 Feb 2018 03:55:46 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Sun, 18 Feb 2018 03:56:08 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Sun, 18 Feb 2018 03:56:09 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Sun, 18 Feb 2018 03:56:10 GMT
COPY file:4d6653ca1b3348a349f72d73174019bc6689fb60faa86fcae8bc4db7990822c6 in / 
# Sun, 18 Feb 2018 03:56:10 GMT
WORKDIR /workspace
# Sun, 18 Feb 2018 03:56:10 GMT
VOLUME [/workspace]
# Sun, 18 Feb 2018 03:56:11 GMT
EXPOSE 28080/tcp
# Sun, 18 Feb 2018 03:56:11 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 03:56:12 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de5f69f42d765af6ffb6753242b18dd4a33602ad7d76df52064833e5c527cb4`  
		Last Modified: Wed, 10 Jan 2018 04:53:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7536dd895ade2421a9a0fcf6e16485323f9e2e45e917b1ff18b0f648974626`  
		Last Modified: Wed, 10 Jan 2018 04:59:33 GMT  
		Size: 54.5 MB (54453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b43ca85cb2c7ccc62e03067862d35091ee30ce83e7fed9e135b1ef1c6e2e71b`  
		Last Modified: Wed, 10 Jan 2018 09:36:27 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e347d1277b7117551350128385a5b3ebd3b01d11803d3df7b53a7d64b0fdd69e`  
		Last Modified: Sun, 18 Feb 2018 02:17:30 GMT  
		Size: 13.0 MB (13031316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119b6a4b43f2e5b6682d59418aec6fafe29ba532fa25a4bb9821ae8d552d6dc7`  
		Last Modified: Sun, 18 Feb 2018 02:17:26 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3a2adc1c64f580219fdc9db0b745ee51ef36712a82bf93c8e8b0ea7711a3a38`  
		Last Modified: Sun, 18 Feb 2018 04:01:45 GMT  
		Size: 6.0 MB (5963487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41f776d9740d8d89241676935c0a9b34c12037f5678e893d8501f9a9f6afe250`  
		Last Modified: Sun, 18 Feb 2018 04:01:44 GMT  
		Size: 976.9 KB (976874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f69690dbaefd3a739964f5037066784dab64304fe024d6d386a950e38346bcb0`  
		Last Modified: Sun, 18 Feb 2018 04:01:42 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb7bd012d0b1303009171cae6bb018dbc4dcd7b6adab96678f76940241b88fc`  
		Last Modified: Sun, 18 Feb 2018 04:01:42 GMT  
		Size: 25.7 KB (25749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f76a934c14c42f8071c3533057f5080c0dcbedc66ae2fd09b66d2ce4642d3bdd`  
		Last Modified: Sun, 18 Feb 2018 04:01:51 GMT  
		Size: 116.7 MB (116673351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3349121ee1ddccffd8c4da24cc37a97634a3c0b782c42af992467bc5337ea57f`  
		Last Modified: Sun, 18 Feb 2018 04:01:42 GMT  
		Size: 453.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b359d52fc9c5127e02aff0b597a4dda4f1c97dafca34a829122f0d58ac659d41`  
		Last Modified: Sun, 18 Feb 2018 04:01:41 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.5.0-alpine` - linux; arm variant v6

```console
$ docker pull convertigo@sha256:2e84c2f7a6ad22f2e8c9d53c0f7f5ce471fb74a603a6a46e53277611f061900b
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.7 MB (189736473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec89f5c9f3d718fad5fe099ab172f371a94067ec06bcef93d1844259b8e3e5ca`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 20:22:19 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 20:22:20 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 20:23:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Dec 2017 20:23:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 20:23:28 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 20:23:28 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 20:23:35 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 20:42:03 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 05 Dec 2017 20:42:03 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 20:42:04 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 05 Dec 2017 20:42:04 GMT
WORKDIR /usr/local/tomcat
# Tue, 05 Dec 2017 20:42:05 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 05 Dec 2017 20:42:05 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 05 Dec 2017 20:42:09 GMT
RUN apk add --no-cache gnupg
# Tue, 05 Dec 2017 20:42:10 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 05 Dec 2017 20:42:22 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 05 Dec 2017 20:42:22 GMT
ENV TOMCAT_MAJOR=7
# Tue, 05 Dec 2017 20:42:23 GMT
ENV TOMCAT_VERSION=7.0.82
# Tue, 05 Dec 2017 20:42:23 GMT
ENV TOMCAT_SHA1=4681bfbc86bb4da76a7aabbb3c545475eb9a8075
# Tue, 05 Dec 2017 20:42:23 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz
# Tue, 05 Dec 2017 20:42:23 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz.asc
# Tue, 05 Dec 2017 20:42:49 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 	; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 05 Dec 2017 20:42:54 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 05 Dec 2017 20:42:54 GMT
EXPOSE 8080/tcp
# Tue, 05 Dec 2017 20:42:54 GMT
CMD ["catalina.sh" "run"]
# Sat, 06 Jan 2018 17:30:23 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Sat, 06 Jan 2018 17:30:24 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 06 Jan 2018 17:30:24 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 06 Jan 2018 17:30:25 GMT
WORKDIR /usr/local/tomcat
# Sat, 06 Jan 2018 17:30:28 GMT
RUN apk --no-cache add     ca-certificates     curl     unzip
# Sat, 06 Jan 2018 17:30:28 GMT
ENV GOSU_VERSION=1.10
# Sat, 06 Jan 2018 17:30:28 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 06 Jan 2018 17:30:28 GMT
ENV TINI_VERSION=0.16.1
# Sat, 06 Jan 2018 17:30:28 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Sat, 06 Jan 2018 17:30:35 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Sat, 06 Jan 2018 17:30:36 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Sat, 06 Jan 2018 17:30:37 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Sat, 06 Jan 2018 17:30:37 GMT
ENV CONVERTIGO_VERSION=7.5.0
# Sat, 06 Jan 2018 17:30:37 GMT
ENV CONVERTIGO_REVISION=44235
# Sat, 06 Jan 2018 17:30:38 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.0/convertigo-7.5.0-v44235-linux32.war
# Sat, 06 Jan 2018 17:30:38 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Sat, 06 Jan 2018 17:31:00 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Sat, 06 Jan 2018 17:31:00 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Sat, 06 Jan 2018 17:31:01 GMT
COPY file:4d6653ca1b3348a349f72d73174019bc6689fb60faa86fcae8bc4db7990822c6 in / 
# Sat, 06 Jan 2018 17:31:01 GMT
WORKDIR /workspace
# Sat, 06 Jan 2018 17:31:01 GMT
VOLUME [/workspace]
# Sat, 06 Jan 2018 17:31:01 GMT
EXPOSE 28080/tcp
# Sat, 06 Jan 2018 17:31:02 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 06 Jan 2018 17:31:02 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75189a5714ff86ba3b00e4d0b8ca506eec4fe942b102e32758bc44952780f6a3`  
		Last Modified: Tue, 05 Dec 2017 20:23:43 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15d7c0e055b96c1979695e21ec3f1d3670ee5d5a6700215e39e846652801c677`  
		Last Modified: Tue, 05 Dec 2017 20:24:54 GMT  
		Size: 52.1 MB (52054188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432a84ace4848d93821991a271e3a7b9aa7d4f0fea859895a92903da5d0f64cf`  
		Last Modified: Tue, 05 Dec 2017 20:45:49 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efebd27d1f6a6d022acafd389df1408f027bdffb457ebcdde7794539be27d698`  
		Last Modified: Tue, 05 Dec 2017 20:45:51 GMT  
		Size: 5.8 MB (5824355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce8389b91c0c3809faf50624a69e3821f7aac9a3296344721c9cbc37060dbd3`  
		Last Modified: Tue, 05 Dec 2017 20:45:49 GMT  
		Size: 110.9 KB (110855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246bef27f273065046ec2927adee406aac384a56ea6fd06697819049ce650957`  
		Last Modified: Tue, 05 Dec 2017 20:45:52 GMT  
		Size: 11.6 MB (11554923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d252431494e26aeba22a629487bd2a42a836a27842db3d17f5b22ead0723a89`  
		Last Modified: Tue, 05 Dec 2017 20:45:49 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e866d83f7dc46f778bc0284958f748b48613193cb523a2b43cc72f6d1338715`  
		Last Modified: Sat, 06 Jan 2018 17:31:38 GMT  
		Size: 637.0 KB (637043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c7038f23e3ce687e43ce2fffdd33c17451e9247f6c8ce9113e922f0c3cca08`  
		Last Modified: Sat, 06 Jan 2018 17:31:38 GMT  
		Size: 813.9 KB (813933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a447eb576e6098270b6b198dc45202a13b40cd12afb2d74a9b235184e9d2261`  
		Last Modified: Sat, 06 Jan 2018 17:31:36 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da3c5ec273b1ba514e198fb0712cf5eced8c276023b36ae269372b7fbc5c1c6`  
		Last Modified: Sat, 06 Jan 2018 17:31:36 GMT  
		Size: 25.8 KB (25753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a30e61828f77243b7d19205416fd9c917320f459000400ac959b825127a13a2`  
		Last Modified: Sat, 06 Jan 2018 17:31:52 GMT  
		Size: 116.7 MB (116673496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f6776956dca444da322f650ca6a25ba13f2a9ef96daef2723f6c3e2d28bf216`  
		Last Modified: Sat, 06 Jan 2018 17:31:36 GMT  
		Size: 453.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b405a573196c60a49307beafa9ab2cc36cba01d86bf9cdde32b4bfb5d9e514d`  
		Last Modified: Sat, 06 Jan 2018 17:31:36 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.5.0-alpine` - linux; arm64 variant v8

```console
$ docker pull convertigo@sha256:bf8a96caec0e6d3478d9386b678a6aede24bc219d022b5feb1d5c852d7c7ef03
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.9 MB (190855565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5d400a73738f4afef84529919659ba2da7cf2e84c7fbdaa9ed73f709f4763b1`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 11:05:19 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 11:05:21 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 11:11:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Dec 2017 11:11:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 11:11:06 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 11:11:07 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 11:11:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 11:46:14 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 05 Dec 2017 11:46:15 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 11:46:17 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 05 Dec 2017 11:46:31 GMT
WORKDIR /usr/local/tomcat
# Tue, 05 Dec 2017 11:46:32 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 05 Dec 2017 11:46:33 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 19 Jan 2018 02:06:08 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 19 Jan 2018 02:06:09 GMT
ENV TOMCAT_MAJOR=7
# Sun, 18 Feb 2018 02:20:46 GMT
ENV TOMCAT_VERSION=7.0.85
# Sun, 18 Feb 2018 02:20:47 GMT
ENV TOMCAT_SHA1=243a8be0bb445c412342965ee8fdf751d9c587e7
# Sun, 18 Feb 2018 02:20:47 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz
# Sun, 18 Feb 2018 02:20:48 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc
# Sun, 18 Feb 2018 02:21:49 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sun, 18 Feb 2018 02:22:01 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sun, 18 Feb 2018 02:22:01 GMT
EXPOSE 8080/tcp
# Sun, 18 Feb 2018 02:22:02 GMT
CMD ["catalina.sh" "run"]
# Sun, 18 Feb 2018 06:08:47 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Sun, 18 Feb 2018 06:08:47 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sun, 18 Feb 2018 06:08:49 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sun, 18 Feb 2018 06:08:49 GMT
WORKDIR /usr/local/tomcat
# Sun, 18 Feb 2018 06:09:00 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Sun, 18 Feb 2018 06:09:01 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 06:09:01 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sun, 18 Feb 2018 06:09:02 GMT
ENV TINI_VERSION=0.16.1
# Sun, 18 Feb 2018 06:09:03 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Sun, 18 Feb 2018 06:09:24 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Sun, 18 Feb 2018 06:09:26 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Sun, 18 Feb 2018 06:09:28 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Sun, 18 Feb 2018 06:09:29 GMT
ENV CONVERTIGO_VERSION=7.5.0
# Sun, 18 Feb 2018 06:09:29 GMT
ENV CONVERTIGO_REVISION=44235
# Sun, 18 Feb 2018 06:09:30 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.0/convertigo-7.5.0-v44235-linux32.war
# Sun, 18 Feb 2018 06:09:30 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Sun, 18 Feb 2018 06:10:12 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Sun, 18 Feb 2018 06:10:13 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Sun, 18 Feb 2018 06:10:13 GMT
COPY file:4d6653ca1b3348a349f72d73174019bc6689fb60faa86fcae8bc4db7990822c6 in / 
# Sun, 18 Feb 2018 06:10:14 GMT
WORKDIR /workspace
# Sun, 18 Feb 2018 06:10:15 GMT
VOLUME [/workspace]
# Sun, 18 Feb 2018 06:10:16 GMT
EXPOSE 28080/tcp
# Sun, 18 Feb 2018 06:10:16 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 06:10:17 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc4b770fee7695d8ca568c04817dd4e9d077997d617c75c75c6c47038c837df1`  
		Last Modified: Tue, 05 Dec 2017 11:12:04 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:562a715d8887d3b429fa072a31bbf912f1897d49cf115a980301e3a880716eb6`  
		Last Modified: Tue, 05 Dec 2017 11:16:43 GMT  
		Size: 53.2 MB (53167047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d4d7ec54d3a91703889af9a1a64acb1b203e3a4eaea174f74039555b82d5d81`  
		Last Modified: Tue, 05 Dec 2017 11:57:12 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33913517c94511df71df722dff21d5c1b366318674242109985d2a3e8063360c`  
		Last Modified: Sun, 18 Feb 2018 02:57:22 GMT  
		Size: 12.6 MB (12632903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21dbcc83cd8b85e8f612c1176cf59a0999447d958dc53796ef14c44e07d08115`  
		Last Modified: Sun, 18 Feb 2018 02:57:18 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b2cb67f7507e482c89d248ffbaeb40363edae6fdeb359fd77c7c5846ac37195`  
		Last Modified: Sun, 18 Feb 2018 06:14:43 GMT  
		Size: 5.5 MB (5515112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc0eb340fbfaa8251d41cccaff73da0dec039066a1e3fc238e1ed26325810105`  
		Last Modified: Sun, 18 Feb 2018 06:14:41 GMT  
		Size: 848.9 KB (848934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0f9f5adb4eed932e9e97cbfe1bb490d3b6d3429da0f6672818b6a960550557`  
		Last Modified: Sun, 18 Feb 2018 06:14:38 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e931a5e87e23ecdd1a5c81fdaa523e8a661cef36713ae77bb793318d8fc0b934`  
		Last Modified: Sun, 18 Feb 2018 06:14:38 GMT  
		Size: 25.8 KB (25759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:129306e86e2e7bd73c4e785af88398b404b30d803733308c40486cac7f76eb37`  
		Last Modified: Sun, 18 Feb 2018 06:26:11 GMT  
		Size: 116.7 MB (116673427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2c70eb88f3dbc5f0e8b3af0aff9f543efb276e097132eda62bdbb05680756b`  
		Last Modified: Sun, 18 Feb 2018 06:14:38 GMT  
		Size: 458.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ba2df9ba6f700961238f20b9747840a7872e1e81813aa66a6cf05e8f9b9d36`  
		Last Modified: Sun, 18 Feb 2018 06:14:38 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.5.0-alpine` - linux; 386

```console
$ docker pull convertigo@sha256:7e7969a512c7146f6190d945f6e0359137a46f1bca21024fcbfbb9dbcdd5612e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.0 MB (194033083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b310243763b8534957cbcc8a44317ed6af9982239b9c42ee0300cebc9a9ebade`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 11:43:46 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 11:43:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 11:48:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Dec 2017 11:48:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 11:48:53 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 11:48:54 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 11:49:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 12:20:13 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 05 Dec 2017 12:20:13 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 12:20:14 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 05 Dec 2017 12:20:22 GMT
WORKDIR /usr/local/tomcat
# Tue, 05 Dec 2017 12:20:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 05 Dec 2017 12:20:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 19 Jan 2018 21:08:37 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 19 Jan 2018 21:08:37 GMT
ENV TOMCAT_MAJOR=7
# Mon, 19 Feb 2018 02:14:35 GMT
ENV TOMCAT_VERSION=7.0.85
# Mon, 19 Feb 2018 02:14:35 GMT
ENV TOMCAT_SHA1=243a8be0bb445c412342965ee8fdf751d9c587e7
# Mon, 19 Feb 2018 02:14:36 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz
# Mon, 19 Feb 2018 02:14:36 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc
# Mon, 19 Feb 2018 02:26:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 19 Feb 2018 02:34:56 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 19 Feb 2018 02:36:26 GMT
EXPOSE 8080/tcp
# Mon, 19 Feb 2018 02:36:26 GMT
CMD ["catalina.sh" "run"]
# Mon, 19 Feb 2018 11:39:28 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Mon, 19 Feb 2018 11:39:29 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 19 Feb 2018 11:39:30 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 19 Feb 2018 11:39:30 GMT
WORKDIR /usr/local/tomcat
# Mon, 19 Feb 2018 11:39:36 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Mon, 19 Feb 2018 11:42:56 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Feb 2018 11:42:56 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Mon, 19 Feb 2018 11:42:56 GMT
ENV TINI_VERSION=0.16.1
# Mon, 19 Feb 2018 11:42:56 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Mon, 19 Feb 2018 11:43:11 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Mon, 19 Feb 2018 11:45:28 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Mon, 19 Feb 2018 11:45:29 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Mon, 19 Feb 2018 11:45:29 GMT
ENV CONVERTIGO_VERSION=7.5.0
# Mon, 19 Feb 2018 11:45:30 GMT
ENV CONVERTIGO_REVISION=44235
# Mon, 19 Feb 2018 11:45:30 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.0/convertigo-7.5.0-v44235-linux32.war
# Mon, 19 Feb 2018 11:45:30 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Mon, 19 Feb 2018 11:45:52 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Mon, 19 Feb 2018 11:55:45 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Mon, 19 Feb 2018 11:55:45 GMT
COPY file:4d6653ca1b3348a349f72d73174019bc6689fb60faa86fcae8bc4db7990822c6 in / 
# Mon, 19 Feb 2018 11:55:45 GMT
WORKDIR /workspace
# Mon, 19 Feb 2018 11:55:46 GMT
VOLUME [/workspace]
# Mon, 19 Feb 2018 11:55:46 GMT
EXPOSE 28080/tcp
# Mon, 19 Feb 2018 11:55:46 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Mon, 19 Feb 2018 11:55:47 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c133e6dffdd21fda44fae785186d6f9e3a441bb7767286c2ed65a31208c03fe7`  
		Last Modified: Tue, 05 Dec 2017 11:49:43 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a13f30b26486cd97444390397b2837fb87eea601155d93fa6c6062a59a0fc3`  
		Last Modified: Tue, 05 Dec 2017 11:54:03 GMT  
		Size: 55.1 MB (55128267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adccbdae6296dcfdcc5293cc6d7a08bd1b4901a91099655942759a4ae043142c`  
		Last Modified: Tue, 05 Dec 2017 14:09:10 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53701a690e470e02960d931e2654a9ea2ad40ddfe18970c8a94a23cf69e4e039`  
		Last Modified: Mon, 19 Feb 2018 10:07:52 GMT  
		Size: 12.8 MB (12819274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9108958f82299fd35421df151ee588c377d51fd3952b13b8bc1e66d733d1f092`  
		Last Modified: Mon, 19 Feb 2018 10:07:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5493202f1474099e343d71c004a442e296d4a3459b108ae40ebbb0c5ab3bbee1`  
		Last Modified: Mon, 19 Feb 2018 13:19:21 GMT  
		Size: 6.4 MB (6351986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6911a921f3bbe086cb5809b5c54c5f4a5f271e2a6bcab547a2f261d5b8ea56c`  
		Last Modified: Mon, 19 Feb 2018 13:19:20 GMT  
		Size: 904.7 KB (904663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaff6f04d4ab721047ae92a7f29be3c341d79067a09a46ce9f7fb34d81eb0c72`  
		Last Modified: Mon, 19 Feb 2018 13:19:19 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35194656d1812b932b606e15154e38323bfb784e3a0488c55b50b2f216af6af7`  
		Last Modified: Mon, 19 Feb 2018 13:19:19 GMT  
		Size: 25.8 KB (25759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d56cf9edde1aedd6653cd6a7d20ae51520f0512cba905d9007d92f280875e3`  
		Last Modified: Mon, 19 Feb 2018 13:19:40 GMT  
		Size: 116.7 MB (116673392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7e87badd9498a7b34fc66c11998b16c815495ed3f3b5169811dd291465307b`  
		Last Modified: Mon, 19 Feb 2018 13:19:19 GMT  
		Size: 460.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ee7cf68d82ee7a0474428036ec07d1afbc7583344bd5d508d5d550853447a0`  
		Last Modified: Mon, 19 Feb 2018 13:19:19 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `convertigo:7.5-alpine`

```console
$ docker pull convertigo@sha256:45393a534b6c77f6b391dd8f06464ae58ad00042343d2b69cd6d1df2d6b238d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `convertigo:7.5-alpine` - linux; amd64

```console
$ docker pull convertigo@sha256:f6fd8316f17cc820cda62bcf0c8fc65845601e7011e2af1847c0a5684bcfe470
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.2 MB (193193604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:815f062edcbbf2184aa649852d654ce96872ef7611648d125a222cafaf786cde`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:51:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Jan 2018 04:51:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:52:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 09:29:05 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 10 Jan 2018 09:29:06 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 09:29:06 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 10 Jan 2018 09:29:07 GMT
WORKDIR /usr/local/tomcat
# Wed, 10 Jan 2018 09:29:07 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 10 Jan 2018 09:29:07 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 18 Jan 2018 21:34:12 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 18 Jan 2018 21:34:13 GMT
ENV TOMCAT_MAJOR=7
# Sun, 18 Feb 2018 01:55:04 GMT
ENV TOMCAT_VERSION=7.0.85
# Sun, 18 Feb 2018 01:55:04 GMT
ENV TOMCAT_SHA1=243a8be0bb445c412342965ee8fdf751d9c587e7
# Sun, 18 Feb 2018 01:55:04 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz
# Sun, 18 Feb 2018 01:55:05 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc
# Sun, 18 Feb 2018 01:55:54 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sun, 18 Feb 2018 01:55:59 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sun, 18 Feb 2018 01:56:10 GMT
EXPOSE 8080/tcp
# Sun, 18 Feb 2018 01:56:10 GMT
CMD ["catalina.sh" "run"]
# Sun, 18 Feb 2018 03:55:10 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Sun, 18 Feb 2018 03:55:10 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sun, 18 Feb 2018 03:55:11 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sun, 18 Feb 2018 03:55:11 GMT
WORKDIR /usr/local/tomcat
# Sun, 18 Feb 2018 03:55:15 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Sun, 18 Feb 2018 03:55:15 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 03:55:16 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sun, 18 Feb 2018 03:55:16 GMT
ENV TINI_VERSION=0.16.1
# Sun, 18 Feb 2018 03:55:16 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Sun, 18 Feb 2018 03:55:27 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Sun, 18 Feb 2018 03:55:31 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Sun, 18 Feb 2018 03:55:32 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Sun, 18 Feb 2018 03:55:33 GMT
ENV CONVERTIGO_VERSION=7.5.0
# Sun, 18 Feb 2018 03:55:46 GMT
ENV CONVERTIGO_REVISION=44235
# Sun, 18 Feb 2018 03:55:46 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.0/convertigo-7.5.0-v44235-linux32.war
# Sun, 18 Feb 2018 03:55:46 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Sun, 18 Feb 2018 03:56:08 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Sun, 18 Feb 2018 03:56:09 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Sun, 18 Feb 2018 03:56:10 GMT
COPY file:4d6653ca1b3348a349f72d73174019bc6689fb60faa86fcae8bc4db7990822c6 in / 
# Sun, 18 Feb 2018 03:56:10 GMT
WORKDIR /workspace
# Sun, 18 Feb 2018 03:56:10 GMT
VOLUME [/workspace]
# Sun, 18 Feb 2018 03:56:11 GMT
EXPOSE 28080/tcp
# Sun, 18 Feb 2018 03:56:11 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 03:56:12 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de5f69f42d765af6ffb6753242b18dd4a33602ad7d76df52064833e5c527cb4`  
		Last Modified: Wed, 10 Jan 2018 04:53:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7536dd895ade2421a9a0fcf6e16485323f9e2e45e917b1ff18b0f648974626`  
		Last Modified: Wed, 10 Jan 2018 04:59:33 GMT  
		Size: 54.5 MB (54453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b43ca85cb2c7ccc62e03067862d35091ee30ce83e7fed9e135b1ef1c6e2e71b`  
		Last Modified: Wed, 10 Jan 2018 09:36:27 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e347d1277b7117551350128385a5b3ebd3b01d11803d3df7b53a7d64b0fdd69e`  
		Last Modified: Sun, 18 Feb 2018 02:17:30 GMT  
		Size: 13.0 MB (13031316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119b6a4b43f2e5b6682d59418aec6fafe29ba532fa25a4bb9821ae8d552d6dc7`  
		Last Modified: Sun, 18 Feb 2018 02:17:26 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3a2adc1c64f580219fdc9db0b745ee51ef36712a82bf93c8e8b0ea7711a3a38`  
		Last Modified: Sun, 18 Feb 2018 04:01:45 GMT  
		Size: 6.0 MB (5963487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41f776d9740d8d89241676935c0a9b34c12037f5678e893d8501f9a9f6afe250`  
		Last Modified: Sun, 18 Feb 2018 04:01:44 GMT  
		Size: 976.9 KB (976874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f69690dbaefd3a739964f5037066784dab64304fe024d6d386a950e38346bcb0`  
		Last Modified: Sun, 18 Feb 2018 04:01:42 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb7bd012d0b1303009171cae6bb018dbc4dcd7b6adab96678f76940241b88fc`  
		Last Modified: Sun, 18 Feb 2018 04:01:42 GMT  
		Size: 25.7 KB (25749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f76a934c14c42f8071c3533057f5080c0dcbedc66ae2fd09b66d2ce4642d3bdd`  
		Last Modified: Sun, 18 Feb 2018 04:01:51 GMT  
		Size: 116.7 MB (116673351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3349121ee1ddccffd8c4da24cc37a97634a3c0b782c42af992467bc5337ea57f`  
		Last Modified: Sun, 18 Feb 2018 04:01:42 GMT  
		Size: 453.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b359d52fc9c5127e02aff0b597a4dda4f1c97dafca34a829122f0d58ac659d41`  
		Last Modified: Sun, 18 Feb 2018 04:01:41 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.5-alpine` - linux; arm variant v6

```console
$ docker pull convertigo@sha256:2e84c2f7a6ad22f2e8c9d53c0f7f5ce471fb74a603a6a46e53277611f061900b
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.7 MB (189736473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec89f5c9f3d718fad5fe099ab172f371a94067ec06bcef93d1844259b8e3e5ca`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 20:22:19 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 20:22:20 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 20:23:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Dec 2017 20:23:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 20:23:28 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 20:23:28 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 20:23:35 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 20:42:03 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 05 Dec 2017 20:42:03 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 20:42:04 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 05 Dec 2017 20:42:04 GMT
WORKDIR /usr/local/tomcat
# Tue, 05 Dec 2017 20:42:05 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 05 Dec 2017 20:42:05 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 05 Dec 2017 20:42:09 GMT
RUN apk add --no-cache gnupg
# Tue, 05 Dec 2017 20:42:10 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 05 Dec 2017 20:42:22 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 05 Dec 2017 20:42:22 GMT
ENV TOMCAT_MAJOR=7
# Tue, 05 Dec 2017 20:42:23 GMT
ENV TOMCAT_VERSION=7.0.82
# Tue, 05 Dec 2017 20:42:23 GMT
ENV TOMCAT_SHA1=4681bfbc86bb4da76a7aabbb3c545475eb9a8075
# Tue, 05 Dec 2017 20:42:23 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz
# Tue, 05 Dec 2017 20:42:23 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz.asc
# Tue, 05 Dec 2017 20:42:49 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 	; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 05 Dec 2017 20:42:54 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 05 Dec 2017 20:42:54 GMT
EXPOSE 8080/tcp
# Tue, 05 Dec 2017 20:42:54 GMT
CMD ["catalina.sh" "run"]
# Sat, 06 Jan 2018 17:30:23 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Sat, 06 Jan 2018 17:30:24 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 06 Jan 2018 17:30:24 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 06 Jan 2018 17:30:25 GMT
WORKDIR /usr/local/tomcat
# Sat, 06 Jan 2018 17:30:28 GMT
RUN apk --no-cache add     ca-certificates     curl     unzip
# Sat, 06 Jan 2018 17:30:28 GMT
ENV GOSU_VERSION=1.10
# Sat, 06 Jan 2018 17:30:28 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 06 Jan 2018 17:30:28 GMT
ENV TINI_VERSION=0.16.1
# Sat, 06 Jan 2018 17:30:28 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Sat, 06 Jan 2018 17:30:35 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Sat, 06 Jan 2018 17:30:36 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Sat, 06 Jan 2018 17:30:37 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Sat, 06 Jan 2018 17:30:37 GMT
ENV CONVERTIGO_VERSION=7.5.0
# Sat, 06 Jan 2018 17:30:37 GMT
ENV CONVERTIGO_REVISION=44235
# Sat, 06 Jan 2018 17:30:38 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.0/convertigo-7.5.0-v44235-linux32.war
# Sat, 06 Jan 2018 17:30:38 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Sat, 06 Jan 2018 17:31:00 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Sat, 06 Jan 2018 17:31:00 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Sat, 06 Jan 2018 17:31:01 GMT
COPY file:4d6653ca1b3348a349f72d73174019bc6689fb60faa86fcae8bc4db7990822c6 in / 
# Sat, 06 Jan 2018 17:31:01 GMT
WORKDIR /workspace
# Sat, 06 Jan 2018 17:31:01 GMT
VOLUME [/workspace]
# Sat, 06 Jan 2018 17:31:01 GMT
EXPOSE 28080/tcp
# Sat, 06 Jan 2018 17:31:02 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 06 Jan 2018 17:31:02 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75189a5714ff86ba3b00e4d0b8ca506eec4fe942b102e32758bc44952780f6a3`  
		Last Modified: Tue, 05 Dec 2017 20:23:43 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15d7c0e055b96c1979695e21ec3f1d3670ee5d5a6700215e39e846652801c677`  
		Last Modified: Tue, 05 Dec 2017 20:24:54 GMT  
		Size: 52.1 MB (52054188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432a84ace4848d93821991a271e3a7b9aa7d4f0fea859895a92903da5d0f64cf`  
		Last Modified: Tue, 05 Dec 2017 20:45:49 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efebd27d1f6a6d022acafd389df1408f027bdffb457ebcdde7794539be27d698`  
		Last Modified: Tue, 05 Dec 2017 20:45:51 GMT  
		Size: 5.8 MB (5824355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce8389b91c0c3809faf50624a69e3821f7aac9a3296344721c9cbc37060dbd3`  
		Last Modified: Tue, 05 Dec 2017 20:45:49 GMT  
		Size: 110.9 KB (110855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246bef27f273065046ec2927adee406aac384a56ea6fd06697819049ce650957`  
		Last Modified: Tue, 05 Dec 2017 20:45:52 GMT  
		Size: 11.6 MB (11554923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d252431494e26aeba22a629487bd2a42a836a27842db3d17f5b22ead0723a89`  
		Last Modified: Tue, 05 Dec 2017 20:45:49 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e866d83f7dc46f778bc0284958f748b48613193cb523a2b43cc72f6d1338715`  
		Last Modified: Sat, 06 Jan 2018 17:31:38 GMT  
		Size: 637.0 KB (637043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c7038f23e3ce687e43ce2fffdd33c17451e9247f6c8ce9113e922f0c3cca08`  
		Last Modified: Sat, 06 Jan 2018 17:31:38 GMT  
		Size: 813.9 KB (813933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a447eb576e6098270b6b198dc45202a13b40cd12afb2d74a9b235184e9d2261`  
		Last Modified: Sat, 06 Jan 2018 17:31:36 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da3c5ec273b1ba514e198fb0712cf5eced8c276023b36ae269372b7fbc5c1c6`  
		Last Modified: Sat, 06 Jan 2018 17:31:36 GMT  
		Size: 25.8 KB (25753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a30e61828f77243b7d19205416fd9c917320f459000400ac959b825127a13a2`  
		Last Modified: Sat, 06 Jan 2018 17:31:52 GMT  
		Size: 116.7 MB (116673496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f6776956dca444da322f650ca6a25ba13f2a9ef96daef2723f6c3e2d28bf216`  
		Last Modified: Sat, 06 Jan 2018 17:31:36 GMT  
		Size: 453.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b405a573196c60a49307beafa9ab2cc36cba01d86bf9cdde32b4bfb5d9e514d`  
		Last Modified: Sat, 06 Jan 2018 17:31:36 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.5-alpine` - linux; arm64 variant v8

```console
$ docker pull convertigo@sha256:bf8a96caec0e6d3478d9386b678a6aede24bc219d022b5feb1d5c852d7c7ef03
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.9 MB (190855565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5d400a73738f4afef84529919659ba2da7cf2e84c7fbdaa9ed73f709f4763b1`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 11:05:19 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 11:05:21 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 11:11:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Dec 2017 11:11:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 11:11:06 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 11:11:07 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 11:11:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 11:46:14 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 05 Dec 2017 11:46:15 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 11:46:17 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 05 Dec 2017 11:46:31 GMT
WORKDIR /usr/local/tomcat
# Tue, 05 Dec 2017 11:46:32 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 05 Dec 2017 11:46:33 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 19 Jan 2018 02:06:08 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 19 Jan 2018 02:06:09 GMT
ENV TOMCAT_MAJOR=7
# Sun, 18 Feb 2018 02:20:46 GMT
ENV TOMCAT_VERSION=7.0.85
# Sun, 18 Feb 2018 02:20:47 GMT
ENV TOMCAT_SHA1=243a8be0bb445c412342965ee8fdf751d9c587e7
# Sun, 18 Feb 2018 02:20:47 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz
# Sun, 18 Feb 2018 02:20:48 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc
# Sun, 18 Feb 2018 02:21:49 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sun, 18 Feb 2018 02:22:01 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sun, 18 Feb 2018 02:22:01 GMT
EXPOSE 8080/tcp
# Sun, 18 Feb 2018 02:22:02 GMT
CMD ["catalina.sh" "run"]
# Sun, 18 Feb 2018 06:08:47 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Sun, 18 Feb 2018 06:08:47 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sun, 18 Feb 2018 06:08:49 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sun, 18 Feb 2018 06:08:49 GMT
WORKDIR /usr/local/tomcat
# Sun, 18 Feb 2018 06:09:00 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Sun, 18 Feb 2018 06:09:01 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 06:09:01 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sun, 18 Feb 2018 06:09:02 GMT
ENV TINI_VERSION=0.16.1
# Sun, 18 Feb 2018 06:09:03 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Sun, 18 Feb 2018 06:09:24 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Sun, 18 Feb 2018 06:09:26 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Sun, 18 Feb 2018 06:09:28 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Sun, 18 Feb 2018 06:09:29 GMT
ENV CONVERTIGO_VERSION=7.5.0
# Sun, 18 Feb 2018 06:09:29 GMT
ENV CONVERTIGO_REVISION=44235
# Sun, 18 Feb 2018 06:09:30 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.0/convertigo-7.5.0-v44235-linux32.war
# Sun, 18 Feb 2018 06:09:30 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Sun, 18 Feb 2018 06:10:12 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Sun, 18 Feb 2018 06:10:13 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Sun, 18 Feb 2018 06:10:13 GMT
COPY file:4d6653ca1b3348a349f72d73174019bc6689fb60faa86fcae8bc4db7990822c6 in / 
# Sun, 18 Feb 2018 06:10:14 GMT
WORKDIR /workspace
# Sun, 18 Feb 2018 06:10:15 GMT
VOLUME [/workspace]
# Sun, 18 Feb 2018 06:10:16 GMT
EXPOSE 28080/tcp
# Sun, 18 Feb 2018 06:10:16 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 06:10:17 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc4b770fee7695d8ca568c04817dd4e9d077997d617c75c75c6c47038c837df1`  
		Last Modified: Tue, 05 Dec 2017 11:12:04 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:562a715d8887d3b429fa072a31bbf912f1897d49cf115a980301e3a880716eb6`  
		Last Modified: Tue, 05 Dec 2017 11:16:43 GMT  
		Size: 53.2 MB (53167047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d4d7ec54d3a91703889af9a1a64acb1b203e3a4eaea174f74039555b82d5d81`  
		Last Modified: Tue, 05 Dec 2017 11:57:12 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33913517c94511df71df722dff21d5c1b366318674242109985d2a3e8063360c`  
		Last Modified: Sun, 18 Feb 2018 02:57:22 GMT  
		Size: 12.6 MB (12632903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21dbcc83cd8b85e8f612c1176cf59a0999447d958dc53796ef14c44e07d08115`  
		Last Modified: Sun, 18 Feb 2018 02:57:18 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b2cb67f7507e482c89d248ffbaeb40363edae6fdeb359fd77c7c5846ac37195`  
		Last Modified: Sun, 18 Feb 2018 06:14:43 GMT  
		Size: 5.5 MB (5515112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc0eb340fbfaa8251d41cccaff73da0dec039066a1e3fc238e1ed26325810105`  
		Last Modified: Sun, 18 Feb 2018 06:14:41 GMT  
		Size: 848.9 KB (848934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0f9f5adb4eed932e9e97cbfe1bb490d3b6d3429da0f6672818b6a960550557`  
		Last Modified: Sun, 18 Feb 2018 06:14:38 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e931a5e87e23ecdd1a5c81fdaa523e8a661cef36713ae77bb793318d8fc0b934`  
		Last Modified: Sun, 18 Feb 2018 06:14:38 GMT  
		Size: 25.8 KB (25759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:129306e86e2e7bd73c4e785af88398b404b30d803733308c40486cac7f76eb37`  
		Last Modified: Sun, 18 Feb 2018 06:26:11 GMT  
		Size: 116.7 MB (116673427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2c70eb88f3dbc5f0e8b3af0aff9f543efb276e097132eda62bdbb05680756b`  
		Last Modified: Sun, 18 Feb 2018 06:14:38 GMT  
		Size: 458.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ba2df9ba6f700961238f20b9747840a7872e1e81813aa66a6cf05e8f9b9d36`  
		Last Modified: Sun, 18 Feb 2018 06:14:38 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.5-alpine` - linux; 386

```console
$ docker pull convertigo@sha256:7e7969a512c7146f6190d945f6e0359137a46f1bca21024fcbfbb9dbcdd5612e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.0 MB (194033083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b310243763b8534957cbcc8a44317ed6af9982239b9c42ee0300cebc9a9ebade`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 11:43:46 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 11:43:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 11:48:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Dec 2017 11:48:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 11:48:53 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 11:48:54 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 11:49:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 12:20:13 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 05 Dec 2017 12:20:13 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 12:20:14 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 05 Dec 2017 12:20:22 GMT
WORKDIR /usr/local/tomcat
# Tue, 05 Dec 2017 12:20:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 05 Dec 2017 12:20:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 19 Jan 2018 21:08:37 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 19 Jan 2018 21:08:37 GMT
ENV TOMCAT_MAJOR=7
# Mon, 19 Feb 2018 02:14:35 GMT
ENV TOMCAT_VERSION=7.0.85
# Mon, 19 Feb 2018 02:14:35 GMT
ENV TOMCAT_SHA1=243a8be0bb445c412342965ee8fdf751d9c587e7
# Mon, 19 Feb 2018 02:14:36 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz
# Mon, 19 Feb 2018 02:14:36 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc
# Mon, 19 Feb 2018 02:26:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 19 Feb 2018 02:34:56 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 19 Feb 2018 02:36:26 GMT
EXPOSE 8080/tcp
# Mon, 19 Feb 2018 02:36:26 GMT
CMD ["catalina.sh" "run"]
# Mon, 19 Feb 2018 11:39:28 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Mon, 19 Feb 2018 11:39:29 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 19 Feb 2018 11:39:30 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 19 Feb 2018 11:39:30 GMT
WORKDIR /usr/local/tomcat
# Mon, 19 Feb 2018 11:39:36 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Mon, 19 Feb 2018 11:42:56 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Feb 2018 11:42:56 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Mon, 19 Feb 2018 11:42:56 GMT
ENV TINI_VERSION=0.16.1
# Mon, 19 Feb 2018 11:42:56 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Mon, 19 Feb 2018 11:43:11 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Mon, 19 Feb 2018 11:45:28 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Mon, 19 Feb 2018 11:45:29 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Mon, 19 Feb 2018 11:45:29 GMT
ENV CONVERTIGO_VERSION=7.5.0
# Mon, 19 Feb 2018 11:45:30 GMT
ENV CONVERTIGO_REVISION=44235
# Mon, 19 Feb 2018 11:45:30 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.0/convertigo-7.5.0-v44235-linux32.war
# Mon, 19 Feb 2018 11:45:30 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Mon, 19 Feb 2018 11:45:52 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Mon, 19 Feb 2018 11:55:45 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Mon, 19 Feb 2018 11:55:45 GMT
COPY file:4d6653ca1b3348a349f72d73174019bc6689fb60faa86fcae8bc4db7990822c6 in / 
# Mon, 19 Feb 2018 11:55:45 GMT
WORKDIR /workspace
# Mon, 19 Feb 2018 11:55:46 GMT
VOLUME [/workspace]
# Mon, 19 Feb 2018 11:55:46 GMT
EXPOSE 28080/tcp
# Mon, 19 Feb 2018 11:55:46 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Mon, 19 Feb 2018 11:55:47 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c133e6dffdd21fda44fae785186d6f9e3a441bb7767286c2ed65a31208c03fe7`  
		Last Modified: Tue, 05 Dec 2017 11:49:43 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a13f30b26486cd97444390397b2837fb87eea601155d93fa6c6062a59a0fc3`  
		Last Modified: Tue, 05 Dec 2017 11:54:03 GMT  
		Size: 55.1 MB (55128267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adccbdae6296dcfdcc5293cc6d7a08bd1b4901a91099655942759a4ae043142c`  
		Last Modified: Tue, 05 Dec 2017 14:09:10 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53701a690e470e02960d931e2654a9ea2ad40ddfe18970c8a94a23cf69e4e039`  
		Last Modified: Mon, 19 Feb 2018 10:07:52 GMT  
		Size: 12.8 MB (12819274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9108958f82299fd35421df151ee588c377d51fd3952b13b8bc1e66d733d1f092`  
		Last Modified: Mon, 19 Feb 2018 10:07:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5493202f1474099e343d71c004a442e296d4a3459b108ae40ebbb0c5ab3bbee1`  
		Last Modified: Mon, 19 Feb 2018 13:19:21 GMT  
		Size: 6.4 MB (6351986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6911a921f3bbe086cb5809b5c54c5f4a5f271e2a6bcab547a2f261d5b8ea56c`  
		Last Modified: Mon, 19 Feb 2018 13:19:20 GMT  
		Size: 904.7 KB (904663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaff6f04d4ab721047ae92a7f29be3c341d79067a09a46ce9f7fb34d81eb0c72`  
		Last Modified: Mon, 19 Feb 2018 13:19:19 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35194656d1812b932b606e15154e38323bfb784e3a0488c55b50b2f216af6af7`  
		Last Modified: Mon, 19 Feb 2018 13:19:19 GMT  
		Size: 25.8 KB (25759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d56cf9edde1aedd6653cd6a7d20ae51520f0512cba905d9007d92f280875e3`  
		Last Modified: Mon, 19 Feb 2018 13:19:40 GMT  
		Size: 116.7 MB (116673392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7e87badd9498a7b34fc66c11998b16c815495ed3f3b5169811dd291465307b`  
		Last Modified: Mon, 19 Feb 2018 13:19:19 GMT  
		Size: 460.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ee7cf68d82ee7a0474428036ec07d1afbc7583344bd5d508d5d550853447a0`  
		Last Modified: Mon, 19 Feb 2018 13:19:19 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `convertigo:alpine`

```console
$ docker pull convertigo@sha256:45393a534b6c77f6b391dd8f06464ae58ad00042343d2b69cd6d1df2d6b238d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `convertigo:alpine` - linux; amd64

```console
$ docker pull convertigo@sha256:f6fd8316f17cc820cda62bcf0c8fc65845601e7011e2af1847c0a5684bcfe470
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.2 MB (193193604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:815f062edcbbf2184aa649852d654ce96872ef7611648d125a222cafaf786cde`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:51:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Jan 2018 04:51:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:52:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 09:29:05 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 10 Jan 2018 09:29:06 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 09:29:06 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 10 Jan 2018 09:29:07 GMT
WORKDIR /usr/local/tomcat
# Wed, 10 Jan 2018 09:29:07 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 10 Jan 2018 09:29:07 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 18 Jan 2018 21:34:12 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 18 Jan 2018 21:34:13 GMT
ENV TOMCAT_MAJOR=7
# Sun, 18 Feb 2018 01:55:04 GMT
ENV TOMCAT_VERSION=7.0.85
# Sun, 18 Feb 2018 01:55:04 GMT
ENV TOMCAT_SHA1=243a8be0bb445c412342965ee8fdf751d9c587e7
# Sun, 18 Feb 2018 01:55:04 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz
# Sun, 18 Feb 2018 01:55:05 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc
# Sun, 18 Feb 2018 01:55:54 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sun, 18 Feb 2018 01:55:59 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sun, 18 Feb 2018 01:56:10 GMT
EXPOSE 8080/tcp
# Sun, 18 Feb 2018 01:56:10 GMT
CMD ["catalina.sh" "run"]
# Sun, 18 Feb 2018 03:55:10 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Sun, 18 Feb 2018 03:55:10 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sun, 18 Feb 2018 03:55:11 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sun, 18 Feb 2018 03:55:11 GMT
WORKDIR /usr/local/tomcat
# Sun, 18 Feb 2018 03:55:15 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Sun, 18 Feb 2018 03:55:15 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 03:55:16 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sun, 18 Feb 2018 03:55:16 GMT
ENV TINI_VERSION=0.16.1
# Sun, 18 Feb 2018 03:55:16 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Sun, 18 Feb 2018 03:55:27 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Sun, 18 Feb 2018 03:55:31 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Sun, 18 Feb 2018 03:55:32 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Sun, 18 Feb 2018 03:55:33 GMT
ENV CONVERTIGO_VERSION=7.5.0
# Sun, 18 Feb 2018 03:55:46 GMT
ENV CONVERTIGO_REVISION=44235
# Sun, 18 Feb 2018 03:55:46 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.0/convertigo-7.5.0-v44235-linux32.war
# Sun, 18 Feb 2018 03:55:46 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Sun, 18 Feb 2018 03:56:08 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Sun, 18 Feb 2018 03:56:09 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Sun, 18 Feb 2018 03:56:10 GMT
COPY file:4d6653ca1b3348a349f72d73174019bc6689fb60faa86fcae8bc4db7990822c6 in / 
# Sun, 18 Feb 2018 03:56:10 GMT
WORKDIR /workspace
# Sun, 18 Feb 2018 03:56:10 GMT
VOLUME [/workspace]
# Sun, 18 Feb 2018 03:56:11 GMT
EXPOSE 28080/tcp
# Sun, 18 Feb 2018 03:56:11 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 03:56:12 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de5f69f42d765af6ffb6753242b18dd4a33602ad7d76df52064833e5c527cb4`  
		Last Modified: Wed, 10 Jan 2018 04:53:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7536dd895ade2421a9a0fcf6e16485323f9e2e45e917b1ff18b0f648974626`  
		Last Modified: Wed, 10 Jan 2018 04:59:33 GMT  
		Size: 54.5 MB (54453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b43ca85cb2c7ccc62e03067862d35091ee30ce83e7fed9e135b1ef1c6e2e71b`  
		Last Modified: Wed, 10 Jan 2018 09:36:27 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e347d1277b7117551350128385a5b3ebd3b01d11803d3df7b53a7d64b0fdd69e`  
		Last Modified: Sun, 18 Feb 2018 02:17:30 GMT  
		Size: 13.0 MB (13031316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119b6a4b43f2e5b6682d59418aec6fafe29ba532fa25a4bb9821ae8d552d6dc7`  
		Last Modified: Sun, 18 Feb 2018 02:17:26 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3a2adc1c64f580219fdc9db0b745ee51ef36712a82bf93c8e8b0ea7711a3a38`  
		Last Modified: Sun, 18 Feb 2018 04:01:45 GMT  
		Size: 6.0 MB (5963487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41f776d9740d8d89241676935c0a9b34c12037f5678e893d8501f9a9f6afe250`  
		Last Modified: Sun, 18 Feb 2018 04:01:44 GMT  
		Size: 976.9 KB (976874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f69690dbaefd3a739964f5037066784dab64304fe024d6d386a950e38346bcb0`  
		Last Modified: Sun, 18 Feb 2018 04:01:42 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb7bd012d0b1303009171cae6bb018dbc4dcd7b6adab96678f76940241b88fc`  
		Last Modified: Sun, 18 Feb 2018 04:01:42 GMT  
		Size: 25.7 KB (25749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f76a934c14c42f8071c3533057f5080c0dcbedc66ae2fd09b66d2ce4642d3bdd`  
		Last Modified: Sun, 18 Feb 2018 04:01:51 GMT  
		Size: 116.7 MB (116673351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3349121ee1ddccffd8c4da24cc37a97634a3c0b782c42af992467bc5337ea57f`  
		Last Modified: Sun, 18 Feb 2018 04:01:42 GMT  
		Size: 453.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b359d52fc9c5127e02aff0b597a4dda4f1c97dafca34a829122f0d58ac659d41`  
		Last Modified: Sun, 18 Feb 2018 04:01:41 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:alpine` - linux; arm variant v6

```console
$ docker pull convertigo@sha256:2e84c2f7a6ad22f2e8c9d53c0f7f5ce471fb74a603a6a46e53277611f061900b
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.7 MB (189736473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec89f5c9f3d718fad5fe099ab172f371a94067ec06bcef93d1844259b8e3e5ca`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 20:22:19 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 20:22:20 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 20:23:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Dec 2017 20:23:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 20:23:28 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 20:23:28 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 20:23:35 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 20:42:03 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 05 Dec 2017 20:42:03 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 20:42:04 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 05 Dec 2017 20:42:04 GMT
WORKDIR /usr/local/tomcat
# Tue, 05 Dec 2017 20:42:05 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 05 Dec 2017 20:42:05 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 05 Dec 2017 20:42:09 GMT
RUN apk add --no-cache gnupg
# Tue, 05 Dec 2017 20:42:10 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 05 Dec 2017 20:42:22 GMT
RUN set -ex; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 05 Dec 2017 20:42:22 GMT
ENV TOMCAT_MAJOR=7
# Tue, 05 Dec 2017 20:42:23 GMT
ENV TOMCAT_VERSION=7.0.82
# Tue, 05 Dec 2017 20:42:23 GMT
ENV TOMCAT_SHA1=4681bfbc86bb4da76a7aabbb3c545475eb9a8075
# Tue, 05 Dec 2017 20:42:23 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz
# Tue, 05 Dec 2017 20:42:23 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz.asc
# Tue, 05 Dec 2017 20:42:49 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 	; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 05 Dec 2017 20:42:54 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 05 Dec 2017 20:42:54 GMT
EXPOSE 8080/tcp
# Tue, 05 Dec 2017 20:42:54 GMT
CMD ["catalina.sh" "run"]
# Sat, 06 Jan 2018 17:30:23 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Sat, 06 Jan 2018 17:30:24 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 06 Jan 2018 17:30:24 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 06 Jan 2018 17:30:25 GMT
WORKDIR /usr/local/tomcat
# Sat, 06 Jan 2018 17:30:28 GMT
RUN apk --no-cache add     ca-certificates     curl     unzip
# Sat, 06 Jan 2018 17:30:28 GMT
ENV GOSU_VERSION=1.10
# Sat, 06 Jan 2018 17:30:28 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 06 Jan 2018 17:30:28 GMT
ENV TINI_VERSION=0.16.1
# Sat, 06 Jan 2018 17:30:28 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Sat, 06 Jan 2018 17:30:35 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Sat, 06 Jan 2018 17:30:36 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Sat, 06 Jan 2018 17:30:37 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Sat, 06 Jan 2018 17:30:37 GMT
ENV CONVERTIGO_VERSION=7.5.0
# Sat, 06 Jan 2018 17:30:37 GMT
ENV CONVERTIGO_REVISION=44235
# Sat, 06 Jan 2018 17:30:38 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.0/convertigo-7.5.0-v44235-linux32.war
# Sat, 06 Jan 2018 17:30:38 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Sat, 06 Jan 2018 17:31:00 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Sat, 06 Jan 2018 17:31:00 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Sat, 06 Jan 2018 17:31:01 GMT
COPY file:4d6653ca1b3348a349f72d73174019bc6689fb60faa86fcae8bc4db7990822c6 in / 
# Sat, 06 Jan 2018 17:31:01 GMT
WORKDIR /workspace
# Sat, 06 Jan 2018 17:31:01 GMT
VOLUME [/workspace]
# Sat, 06 Jan 2018 17:31:01 GMT
EXPOSE 28080/tcp
# Sat, 06 Jan 2018 17:31:02 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 06 Jan 2018 17:31:02 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75189a5714ff86ba3b00e4d0b8ca506eec4fe942b102e32758bc44952780f6a3`  
		Last Modified: Tue, 05 Dec 2017 20:23:43 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15d7c0e055b96c1979695e21ec3f1d3670ee5d5a6700215e39e846652801c677`  
		Last Modified: Tue, 05 Dec 2017 20:24:54 GMT  
		Size: 52.1 MB (52054188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432a84ace4848d93821991a271e3a7b9aa7d4f0fea859895a92903da5d0f64cf`  
		Last Modified: Tue, 05 Dec 2017 20:45:49 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efebd27d1f6a6d022acafd389df1408f027bdffb457ebcdde7794539be27d698`  
		Last Modified: Tue, 05 Dec 2017 20:45:51 GMT  
		Size: 5.8 MB (5824355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce8389b91c0c3809faf50624a69e3821f7aac9a3296344721c9cbc37060dbd3`  
		Last Modified: Tue, 05 Dec 2017 20:45:49 GMT  
		Size: 110.9 KB (110855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246bef27f273065046ec2927adee406aac384a56ea6fd06697819049ce650957`  
		Last Modified: Tue, 05 Dec 2017 20:45:52 GMT  
		Size: 11.6 MB (11554923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d252431494e26aeba22a629487bd2a42a836a27842db3d17f5b22ead0723a89`  
		Last Modified: Tue, 05 Dec 2017 20:45:49 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e866d83f7dc46f778bc0284958f748b48613193cb523a2b43cc72f6d1338715`  
		Last Modified: Sat, 06 Jan 2018 17:31:38 GMT  
		Size: 637.0 KB (637043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c7038f23e3ce687e43ce2fffdd33c17451e9247f6c8ce9113e922f0c3cca08`  
		Last Modified: Sat, 06 Jan 2018 17:31:38 GMT  
		Size: 813.9 KB (813933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a447eb576e6098270b6b198dc45202a13b40cd12afb2d74a9b235184e9d2261`  
		Last Modified: Sat, 06 Jan 2018 17:31:36 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da3c5ec273b1ba514e198fb0712cf5eced8c276023b36ae269372b7fbc5c1c6`  
		Last Modified: Sat, 06 Jan 2018 17:31:36 GMT  
		Size: 25.8 KB (25753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a30e61828f77243b7d19205416fd9c917320f459000400ac959b825127a13a2`  
		Last Modified: Sat, 06 Jan 2018 17:31:52 GMT  
		Size: 116.7 MB (116673496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f6776956dca444da322f650ca6a25ba13f2a9ef96daef2723f6c3e2d28bf216`  
		Last Modified: Sat, 06 Jan 2018 17:31:36 GMT  
		Size: 453.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b405a573196c60a49307beafa9ab2cc36cba01d86bf9cdde32b4bfb5d9e514d`  
		Last Modified: Sat, 06 Jan 2018 17:31:36 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:alpine` - linux; arm64 variant v8

```console
$ docker pull convertigo@sha256:bf8a96caec0e6d3478d9386b678a6aede24bc219d022b5feb1d5c852d7c7ef03
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.9 MB (190855565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5d400a73738f4afef84529919659ba2da7cf2e84c7fbdaa9ed73f709f4763b1`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 11:05:19 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 11:05:21 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 11:11:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Dec 2017 11:11:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 11:11:06 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 11:11:07 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 11:11:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 11:46:14 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 05 Dec 2017 11:46:15 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 11:46:17 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 05 Dec 2017 11:46:31 GMT
WORKDIR /usr/local/tomcat
# Tue, 05 Dec 2017 11:46:32 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 05 Dec 2017 11:46:33 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 19 Jan 2018 02:06:08 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 19 Jan 2018 02:06:09 GMT
ENV TOMCAT_MAJOR=7
# Sun, 18 Feb 2018 02:20:46 GMT
ENV TOMCAT_VERSION=7.0.85
# Sun, 18 Feb 2018 02:20:47 GMT
ENV TOMCAT_SHA1=243a8be0bb445c412342965ee8fdf751d9c587e7
# Sun, 18 Feb 2018 02:20:47 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz
# Sun, 18 Feb 2018 02:20:48 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc
# Sun, 18 Feb 2018 02:21:49 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sun, 18 Feb 2018 02:22:01 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sun, 18 Feb 2018 02:22:01 GMT
EXPOSE 8080/tcp
# Sun, 18 Feb 2018 02:22:02 GMT
CMD ["catalina.sh" "run"]
# Sun, 18 Feb 2018 06:08:47 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Sun, 18 Feb 2018 06:08:47 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sun, 18 Feb 2018 06:08:49 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sun, 18 Feb 2018 06:08:49 GMT
WORKDIR /usr/local/tomcat
# Sun, 18 Feb 2018 06:09:00 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Sun, 18 Feb 2018 06:09:01 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 06:09:01 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sun, 18 Feb 2018 06:09:02 GMT
ENV TINI_VERSION=0.16.1
# Sun, 18 Feb 2018 06:09:03 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Sun, 18 Feb 2018 06:09:24 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Sun, 18 Feb 2018 06:09:26 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Sun, 18 Feb 2018 06:09:28 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Sun, 18 Feb 2018 06:09:29 GMT
ENV CONVERTIGO_VERSION=7.5.0
# Sun, 18 Feb 2018 06:09:29 GMT
ENV CONVERTIGO_REVISION=44235
# Sun, 18 Feb 2018 06:09:30 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.0/convertigo-7.5.0-v44235-linux32.war
# Sun, 18 Feb 2018 06:09:30 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Sun, 18 Feb 2018 06:10:12 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Sun, 18 Feb 2018 06:10:13 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Sun, 18 Feb 2018 06:10:13 GMT
COPY file:4d6653ca1b3348a349f72d73174019bc6689fb60faa86fcae8bc4db7990822c6 in / 
# Sun, 18 Feb 2018 06:10:14 GMT
WORKDIR /workspace
# Sun, 18 Feb 2018 06:10:15 GMT
VOLUME [/workspace]
# Sun, 18 Feb 2018 06:10:16 GMT
EXPOSE 28080/tcp
# Sun, 18 Feb 2018 06:10:16 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 06:10:17 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc4b770fee7695d8ca568c04817dd4e9d077997d617c75c75c6c47038c837df1`  
		Last Modified: Tue, 05 Dec 2017 11:12:04 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:562a715d8887d3b429fa072a31bbf912f1897d49cf115a980301e3a880716eb6`  
		Last Modified: Tue, 05 Dec 2017 11:16:43 GMT  
		Size: 53.2 MB (53167047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d4d7ec54d3a91703889af9a1a64acb1b203e3a4eaea174f74039555b82d5d81`  
		Last Modified: Tue, 05 Dec 2017 11:57:12 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33913517c94511df71df722dff21d5c1b366318674242109985d2a3e8063360c`  
		Last Modified: Sun, 18 Feb 2018 02:57:22 GMT  
		Size: 12.6 MB (12632903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21dbcc83cd8b85e8f612c1176cf59a0999447d958dc53796ef14c44e07d08115`  
		Last Modified: Sun, 18 Feb 2018 02:57:18 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b2cb67f7507e482c89d248ffbaeb40363edae6fdeb359fd77c7c5846ac37195`  
		Last Modified: Sun, 18 Feb 2018 06:14:43 GMT  
		Size: 5.5 MB (5515112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc0eb340fbfaa8251d41cccaff73da0dec039066a1e3fc238e1ed26325810105`  
		Last Modified: Sun, 18 Feb 2018 06:14:41 GMT  
		Size: 848.9 KB (848934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0f9f5adb4eed932e9e97cbfe1bb490d3b6d3429da0f6672818b6a960550557`  
		Last Modified: Sun, 18 Feb 2018 06:14:38 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e931a5e87e23ecdd1a5c81fdaa523e8a661cef36713ae77bb793318d8fc0b934`  
		Last Modified: Sun, 18 Feb 2018 06:14:38 GMT  
		Size: 25.8 KB (25759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:129306e86e2e7bd73c4e785af88398b404b30d803733308c40486cac7f76eb37`  
		Last Modified: Sun, 18 Feb 2018 06:26:11 GMT  
		Size: 116.7 MB (116673427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2c70eb88f3dbc5f0e8b3af0aff9f543efb276e097132eda62bdbb05680756b`  
		Last Modified: Sun, 18 Feb 2018 06:14:38 GMT  
		Size: 458.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ba2df9ba6f700961238f20b9747840a7872e1e81813aa66a6cf05e8f9b9d36`  
		Last Modified: Sun, 18 Feb 2018 06:14:38 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:alpine` - linux; 386

```console
$ docker pull convertigo@sha256:7e7969a512c7146f6190d945f6e0359137a46f1bca21024fcbfbb9dbcdd5612e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.0 MB (194033083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b310243763b8534957cbcc8a44317ed6af9982239b9c42ee0300cebc9a9ebade`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 11:43:46 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 11:43:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 11:48:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Dec 2017 11:48:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 11:48:53 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 11:48:54 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 11:49:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 12:20:13 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 05 Dec 2017 12:20:13 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 12:20:14 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 05 Dec 2017 12:20:22 GMT
WORKDIR /usr/local/tomcat
# Tue, 05 Dec 2017 12:20:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 05 Dec 2017 12:20:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 19 Jan 2018 21:08:37 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 19 Jan 2018 21:08:37 GMT
ENV TOMCAT_MAJOR=7
# Mon, 19 Feb 2018 02:14:35 GMT
ENV TOMCAT_VERSION=7.0.85
# Mon, 19 Feb 2018 02:14:35 GMT
ENV TOMCAT_SHA1=243a8be0bb445c412342965ee8fdf751d9c587e7
# Mon, 19 Feb 2018 02:14:36 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz
# Mon, 19 Feb 2018 02:14:36 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc
# Mon, 19 Feb 2018 02:26:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 19 Feb 2018 02:34:56 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 19 Feb 2018 02:36:26 GMT
EXPOSE 8080/tcp
# Mon, 19 Feb 2018 02:36:26 GMT
CMD ["catalina.sh" "run"]
# Mon, 19 Feb 2018 11:39:28 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Mon, 19 Feb 2018 11:39:29 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 19 Feb 2018 11:39:30 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 19 Feb 2018 11:39:30 GMT
WORKDIR /usr/local/tomcat
# Mon, 19 Feb 2018 11:39:36 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Mon, 19 Feb 2018 11:42:56 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Feb 2018 11:42:56 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Mon, 19 Feb 2018 11:42:56 GMT
ENV TINI_VERSION=0.16.1
# Mon, 19 Feb 2018 11:42:56 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Mon, 19 Feb 2018 11:43:11 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Mon, 19 Feb 2018 11:45:28 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Mon, 19 Feb 2018 11:45:29 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Mon, 19 Feb 2018 11:45:29 GMT
ENV CONVERTIGO_VERSION=7.5.0
# Mon, 19 Feb 2018 11:45:30 GMT
ENV CONVERTIGO_REVISION=44235
# Mon, 19 Feb 2018 11:45:30 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.0/convertigo-7.5.0-v44235-linux32.war
# Mon, 19 Feb 2018 11:45:30 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Mon, 19 Feb 2018 11:45:52 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Mon, 19 Feb 2018 11:55:45 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Mon, 19 Feb 2018 11:55:45 GMT
COPY file:4d6653ca1b3348a349f72d73174019bc6689fb60faa86fcae8bc4db7990822c6 in / 
# Mon, 19 Feb 2018 11:55:45 GMT
WORKDIR /workspace
# Mon, 19 Feb 2018 11:55:46 GMT
VOLUME [/workspace]
# Mon, 19 Feb 2018 11:55:46 GMT
EXPOSE 28080/tcp
# Mon, 19 Feb 2018 11:55:46 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Mon, 19 Feb 2018 11:55:47 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c133e6dffdd21fda44fae785186d6f9e3a441bb7767286c2ed65a31208c03fe7`  
		Last Modified: Tue, 05 Dec 2017 11:49:43 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a13f30b26486cd97444390397b2837fb87eea601155d93fa6c6062a59a0fc3`  
		Last Modified: Tue, 05 Dec 2017 11:54:03 GMT  
		Size: 55.1 MB (55128267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adccbdae6296dcfdcc5293cc6d7a08bd1b4901a91099655942759a4ae043142c`  
		Last Modified: Tue, 05 Dec 2017 14:09:10 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53701a690e470e02960d931e2654a9ea2ad40ddfe18970c8a94a23cf69e4e039`  
		Last Modified: Mon, 19 Feb 2018 10:07:52 GMT  
		Size: 12.8 MB (12819274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9108958f82299fd35421df151ee588c377d51fd3952b13b8bc1e66d733d1f092`  
		Last Modified: Mon, 19 Feb 2018 10:07:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5493202f1474099e343d71c004a442e296d4a3459b108ae40ebbb0c5ab3bbee1`  
		Last Modified: Mon, 19 Feb 2018 13:19:21 GMT  
		Size: 6.4 MB (6351986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6911a921f3bbe086cb5809b5c54c5f4a5f271e2a6bcab547a2f261d5b8ea56c`  
		Last Modified: Mon, 19 Feb 2018 13:19:20 GMT  
		Size: 904.7 KB (904663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaff6f04d4ab721047ae92a7f29be3c341d79067a09a46ce9f7fb34d81eb0c72`  
		Last Modified: Mon, 19 Feb 2018 13:19:19 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35194656d1812b932b606e15154e38323bfb784e3a0488c55b50b2f216af6af7`  
		Last Modified: Mon, 19 Feb 2018 13:19:19 GMT  
		Size: 25.8 KB (25759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d56cf9edde1aedd6653cd6a7d20ae51520f0512cba905d9007d92f280875e3`  
		Last Modified: Mon, 19 Feb 2018 13:19:40 GMT  
		Size: 116.7 MB (116673392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7e87badd9498a7b34fc66c11998b16c815495ed3f3b5169811dd291465307b`  
		Last Modified: Mon, 19 Feb 2018 13:19:19 GMT  
		Size: 460.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ee7cf68d82ee7a0474428036ec07d1afbc7583344bd5d508d5d550853447a0`  
		Last Modified: Mon, 19 Feb 2018 13:19:19 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `convertigo:latest`

```console
$ docker pull convertigo@sha256:24ba8d105ea8426a40cfab0350725ccd12a941b51a4c82218f46fe4e51de6a0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `convertigo:latest` - linux; amd64

```console
$ docker pull convertigo@sha256:9ebaf5f7b8ddbc7ba21acd34e0c9b0865e4531037560f9e09539189b5846d9eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **354.9 MB (354886876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58aeb7f0a0bf5c2c85efcc6089e4c715ba42a24ecf3f156c34ffdf5c26d1c3d2`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:55:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:55:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 11:08:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:08:13 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:08:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 11:08:15 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 11:08:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 11:09:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 11:17:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 18:48:35 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 15 Feb 2018 18:48:35 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 18:48:36 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 15 Feb 2018 18:48:36 GMT
WORKDIR /usr/local/tomcat
# Thu, 15 Feb 2018 18:48:37 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 15 Feb 2018 18:48:37 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 15 Feb 2018 18:48:37 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Thu, 15 Feb 2018 18:48:38 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 18:48:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 18:48:53 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 15 Feb 2018 18:48:54 GMT
ENV TOMCAT_MAJOR=7
# Sun, 18 Feb 2018 01:45:03 GMT
ENV TOMCAT_VERSION=7.0.85
# Sun, 18 Feb 2018 01:45:04 GMT
ENV TOMCAT_SHA1=243a8be0bb445c412342965ee8fdf751d9c587e7
# Sun, 18 Feb 2018 01:45:04 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz
# Sun, 18 Feb 2018 01:45:04 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc
# Sun, 18 Feb 2018 01:45:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sun, 18 Feb 2018 01:45:55 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sun, 18 Feb 2018 01:46:06 GMT
EXPOSE 8080/tcp
# Sun, 18 Feb 2018 01:46:06 GMT
CMD ["catalina.sh" "run"]
# Sun, 18 Feb 2018 03:53:11 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Sun, 18 Feb 2018 03:53:11 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sun, 18 Feb 2018 03:53:12 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sun, 18 Feb 2018 03:53:13 GMT
WORKDIR /usr/local/tomcat
# Sun, 18 Feb 2018 03:53:17 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 03:53:17 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 03:53:17 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sun, 18 Feb 2018 03:53:17 GMT
ENV TINI_VERSION=0.16.1
# Sun, 18 Feb 2018 03:53:18 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Sun, 18 Feb 2018 03:53:26 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Sun, 18 Feb 2018 03:53:40 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Sun, 18 Feb 2018 03:53:41 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Sun, 18 Feb 2018 03:53:41 GMT
ENV CONVERTIGO_VERSION=7.5.0
# Sun, 18 Feb 2018 03:53:54 GMT
ENV CONVERTIGO_REVISION=44235
# Sun, 18 Feb 2018 03:53:54 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.0/convertigo-7.5.0-v44235-linux32.war
# Sun, 18 Feb 2018 03:53:55 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Sun, 18 Feb 2018 03:54:15 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Sun, 18 Feb 2018 03:54:15 GMT
COPY file:03a78619febe6c5b17d175b71a6dbe271ce2c70c52e354c6642b986d1b28fc2e in webapps/ROOT/index.html 
# Sun, 18 Feb 2018 03:54:16 GMT
COPY file:0a47ea62001ca3cec3ce66ba5a1de976c240bea17f36878bcf94b75e4f0cdf86 in / 
# Sun, 18 Feb 2018 03:54:16 GMT
ENV SWT_GTK3=0
# Sun, 18 Feb 2018 03:54:29 GMT
WORKDIR /workspace
# Sun, 18 Feb 2018 03:54:29 GMT
VOLUME [/workspace]
# Sun, 18 Feb 2018 03:54:30 GMT
EXPOSE 28080/tcp
# Sun, 18 Feb 2018 03:54:30 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 03:54:31 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cafa6a79d0be5bd8a64fe52bfc4178072e067e8f5ed5c224d5330107424335`  
		Last Modified: Thu, 15 Feb 2018 04:40:22 GMT  
		Size: 11.1 MB (11107850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fcf5a213c7dfb0aa4eeed5922f9c2b6261cf60bb27f2dd9d761d6030689b39`  
		Last Modified: Thu, 15 Feb 2018 04:40:19 GMT  
		Size: 4.3 MB (4335400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd532571c5d31f61347a950a0d58ec1282046fc8bdda6791f8c34a56a1c792c6`  
		Last Modified: Thu, 15 Feb 2018 13:39:14 GMT  
		Size: 852.3 KB (852290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31600c9f9b48dc3cd9fa7c14415fb9251cd3582028fadbb3d5f1bcb57512ecd0`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e8e9b5d10eec5baacf8bfb0d61d868b1ba263863b08d5346fbb73fcff6bb85`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0710e619e88357033e362f6a8c18d93a0dbf14d31629082877ae8c7f51072113`  
		Last Modified: Thu, 15 Feb 2018 13:39:52 GMT  
		Size: 165.4 MB (165392618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e511da65ffabe622bcb6fa89b699e80f94ec7185a95076cd3b4cabc101bd2d11`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 272.1 KB (272124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfcd79b5752d99c10b7a29d19bbd7c78fda3c82e7e2476250fb76b19bdedeb27`  
		Last Modified: Thu, 15 Feb 2018 19:49:36 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d4311e9998b432748663f250f13af84a06f849472d89e9dc8c755d0fa1212d`  
		Last Modified: Thu, 15 Feb 2018 19:49:37 GMT  
		Size: 545.3 KB (545302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f9d7fb06c56c79acdf91bde80e112045c8e7d7a8c25fbb1b9efc496a951720`  
		Last Modified: Sun, 18 Feb 2018 02:15:28 GMT  
		Size: 10.0 MB (10033359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b57bbc0ee3014496ae8989c0d5d1d29e620f05b456157fe2315b8a52a8a6c059`  
		Last Modified: Sun, 18 Feb 2018 02:15:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6328f83a2d4bb866a52353977d7245b7761ba03dbd2e37730c59cc9b7f995921`  
		Last Modified: Sun, 18 Feb 2018 03:59:58 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114b66f490073bfe7bb93e5fe537e7d120e941a56492f1b279c12a0f91e7dbc7`  
		Last Modified: Sun, 18 Feb 2018 03:59:59 GMT  
		Size: 509.3 KB (509296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e7bb14443ce4de3fbf88c4fa9392369cbf172cd0a49c7a4b52ca9b8629c0db9`  
		Last Modified: Sun, 18 Feb 2018 03:59:56 GMT  
		Size: 4.3 KB (4303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43f54144d7b74559c9d74ba726b163891ba51f01e2343975d3b4f8b1190acaf7`  
		Last Modified: Sun, 18 Feb 2018 03:59:56 GMT  
		Size: 25.8 KB (25764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae0a3fe3210c89e2e2b4e8e90f391caffe4e6f12f5fe74f6f37435c81ce923e0`  
		Last Modified: Sun, 18 Feb 2018 04:00:11 GMT  
		Size: 116.7 MB (116673414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1769f1ed30b02464fc33b45e364bf57e56376d5cec39bb827b104e9c4718aa79`  
		Last Modified: Sun, 18 Feb 2018 03:59:56 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e58b254b42f8d4869cfd845cee4c918b8c9e8237c7fceb31e862a638ac556ec6`  
		Last Modified: Sun, 18 Feb 2018 03:59:56 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:latest` - linux; arm variant v7

```console
$ docker pull convertigo@sha256:5c9159abeb3be80824a603e79b38c97cf6d68c4559e71da95f9f1ff511a789d9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.1 MB (334060344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a759877f2c5513f5a4c62e695e5e50f0833756ef60a5b34767e840619987286d`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Thu, 15 Feb 2018 13:30:55 GMT
ADD file:58c4e4829c3db6bdb6063ee3ca04776b696772f592f70cb29d5196788c3608da in / 
# Thu, 15 Feb 2018 13:30:56 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 14:14:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 14:14:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 15:01:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 15:01:56 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 15:01:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 15:01:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 15:01:59 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 15:01:59 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 15:02:06 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 15:02:06 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 15:03:04 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 15:03:09 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 18:54:47 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 15 Feb 2018 18:54:48 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 18:54:49 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 15 Feb 2018 18:54:56 GMT
WORKDIR /usr/local/tomcat
# Thu, 15 Feb 2018 18:55:09 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 15 Feb 2018 18:55:10 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 15 Feb 2018 18:55:17 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Thu, 15 Feb 2018 18:55:24 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 18:55:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 18:55:38 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 15 Feb 2018 18:55:46 GMT
ENV TOMCAT_MAJOR=7
# Sun, 18 Feb 2018 18:14:48 GMT
ENV TOMCAT_VERSION=7.0.85
# Sun, 18 Feb 2018 18:14:48 GMT
ENV TOMCAT_SHA1=243a8be0bb445c412342965ee8fdf751d9c587e7
# Sun, 18 Feb 2018 18:14:48 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz
# Sun, 18 Feb 2018 18:14:48 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc
# Sun, 18 Feb 2018 18:15:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sun, 18 Feb 2018 18:15:39 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sun, 18 Feb 2018 18:15:39 GMT
EXPOSE 8080/tcp
# Sun, 18 Feb 2018 18:15:40 GMT
CMD ["catalina.sh" "run"]
# Sun, 18 Feb 2018 18:46:50 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Sun, 18 Feb 2018 18:46:50 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sun, 18 Feb 2018 18:46:51 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sun, 18 Feb 2018 18:46:52 GMT
WORKDIR /usr/local/tomcat
# Sun, 18 Feb 2018 18:46:57 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 18:46:57 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 18:46:58 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sun, 18 Feb 2018 18:46:58 GMT
ENV TINI_VERSION=0.16.1
# Sun, 18 Feb 2018 18:46:58 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Sun, 18 Feb 2018 18:47:03 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Sun, 18 Feb 2018 18:47:04 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Sun, 18 Feb 2018 18:47:05 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Sun, 18 Feb 2018 18:47:06 GMT
ENV CONVERTIGO_VERSION=7.5.0
# Sun, 18 Feb 2018 18:47:06 GMT
ENV CONVERTIGO_REVISION=44235
# Sun, 18 Feb 2018 18:47:06 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.0/convertigo-7.5.0-v44235-linux32.war
# Sun, 18 Feb 2018 18:47:06 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Sun, 18 Feb 2018 18:47:23 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Sun, 18 Feb 2018 18:47:24 GMT
COPY file:03a78619febe6c5b17d175b71a6dbe271ce2c70c52e354c6642b986d1b28fc2e in webapps/ROOT/index.html 
# Sun, 18 Feb 2018 18:47:24 GMT
COPY file:0a47ea62001ca3cec3ce66ba5a1de976c240bea17f36878bcf94b75e4f0cdf86 in / 
# Sun, 18 Feb 2018 18:47:25 GMT
ENV SWT_GTK3=0
# Sun, 18 Feb 2018 18:47:25 GMT
WORKDIR /workspace
# Sun, 18 Feb 2018 18:47:25 GMT
VOLUME [/workspace]
# Sun, 18 Feb 2018 18:47:26 GMT
EXPOSE 28080/tcp
# Sun, 18 Feb 2018 18:47:26 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 18:47:26 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:c0518139464abb63e1069cd4c638aad760a6cb319660ae2229921b17c703441b`  
		Last Modified: Thu, 15 Feb 2018 13:40:56 GMT  
		Size: 41.9 MB (41859666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72be4c519488d3f9c0893c7e4aa66f806292ac98c1f509b4387b4eb8e4789e9a`  
		Last Modified: Thu, 15 Feb 2018 14:24:47 GMT  
		Size: 9.8 MB (9824909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e5a3e5bf5f97b01c2bf09851057f8cc68748d43fdde36477492ec435aabd55`  
		Last Modified: Thu, 15 Feb 2018 14:24:46 GMT  
		Size: 3.9 MB (3912530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5a761b65438d1a65a32e3d0bbb1c3530a9a5a339f3315b5edc9387250e3ebc`  
		Last Modified: Thu, 15 Feb 2018 15:34:47 GMT  
		Size: 829.7 KB (829694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24fb0b223e8826de07f46f44a8dc80900ab8e46c439d5a3ce685e10ff660538`  
		Last Modified: Thu, 15 Feb 2018 15:34:45 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d695150c276b6e96341885d510d6946666501dbabf26a0ae9a56bd3ea58a9ba`  
		Last Modified: Thu, 15 Feb 2018 15:34:46 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42ca65dcf315de561fef4871a103665aac29136774b3a94bb10df5c8b591864d`  
		Last Modified: Thu, 15 Feb 2018 15:35:19 GMT  
		Size: 149.7 MB (149689725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aede9bbc8e3b39b5c440435c7b183a56240f0480556078e721a1585ba2912876`  
		Last Modified: Thu, 15 Feb 2018 15:34:46 GMT  
		Size: 272.1 KB (272118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13803da070aedc7411bb4cb0eb9f8f653039458dc6778c8c091a2aea078821d1`  
		Last Modified: Thu, 15 Feb 2018 19:25:43 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6edc6e3073e0a2b7deece9df8771e5534595976e155c1fff45136924ab141a0d`  
		Last Modified: Thu, 15 Feb 2018 19:25:43 GMT  
		Size: 520.2 KB (520198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c025e9838031adb474031c3d2119d0f1563a85756ca3b36dd02220535bc6b3a0`  
		Last Modified: Sun, 18 Feb 2018 18:29:12 GMT  
		Size: 10.0 MB (9962697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c82b36e278fe99d0c7a83214206924451203219c0282a8ee676508cbc77418`  
		Last Modified: Sun, 18 Feb 2018 18:29:11 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e464f4c376ef46c6156c7d52ce2d6061a4e8978b48587f6b9ae69a31dc32f6b9`  
		Last Modified: Sun, 18 Feb 2018 18:48:15 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95587c6eebb33868fe2fb7a13451b41a40763b2c580a91fdce7aac461ea02ffb`  
		Last Modified: Sun, 18 Feb 2018 18:48:15 GMT  
		Size: 482.7 KB (482669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74ef3616c708b7b56f46bc692132c1b0accc3c192ce8eebdb42eb23a80e4f53b`  
		Last Modified: Sun, 18 Feb 2018 18:48:13 GMT  
		Size: 4.3 KB (4343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744a5e16606c0d3c05b1adc22ae54f0a13d47cc881464508ca25393efdc513bc`  
		Last Modified: Sun, 18 Feb 2018 18:48:14 GMT  
		Size: 25.8 KB (25769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8206588f45f07da5813afa11ddb072ef9d24fdcbdb642b501244a81cd2a75a7f`  
		Last Modified: Sun, 18 Feb 2018 18:48:28 GMT  
		Size: 116.7 MB (116673466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9434317ef79647bcee0fded947ea41b6c11a010372d894e6755ecfc0dd07da3c`  
		Last Modified: Sun, 18 Feb 2018 18:48:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ce4c5f7c20c91a918b819e095ee5cd9c5e2039cd082b9b1a2d0bc46b2b79a3`  
		Last Modified: Sun, 18 Feb 2018 18:48:13 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:latest` - linux; arm64 variant v8

```console
$ docker pull convertigo@sha256:38ebf2796cb5a4b96a904ba88eda232fbb0e253e66ad012df71117af95ddb1ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.9 MB (338886571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e49df4a354595acd016ccc026ad07cd33724bc30f8eac5dd94a9fcc0ae88bbe`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:04 GMT
ADD file:f17659d511330c9a9c3fadf05151f88e9d532af1734ffadd1da10aa5e2aeb6ac in / 
# Thu, 15 Feb 2018 18:29:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 19:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:49:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 22:24:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:24:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:24:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 22:25:01 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 22:25:01 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 22:25:02 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 22:25:03 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 22:25:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 22:31:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 22:31:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 16 Feb 2018 11:29:24 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 16 Feb 2018 11:29:25 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Feb 2018 11:29:26 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 16 Feb 2018 11:29:27 GMT
WORKDIR /usr/local/tomcat
# Fri, 16 Feb 2018 11:29:27 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 16 Feb 2018 11:29:28 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 16 Feb 2018 11:29:28 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Fri, 16 Feb 2018 11:29:30 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 11:29:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 11:29:58 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 16 Feb 2018 11:29:58 GMT
ENV TOMCAT_MAJOR=7
# Sun, 18 Feb 2018 02:08:00 GMT
ENV TOMCAT_VERSION=7.0.85
# Sun, 18 Feb 2018 02:08:01 GMT
ENV TOMCAT_SHA1=243a8be0bb445c412342965ee8fdf751d9c587e7
# Sun, 18 Feb 2018 02:08:02 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz
# Sun, 18 Feb 2018 02:08:03 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc
# Sun, 18 Feb 2018 02:10:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sun, 18 Feb 2018 02:10:13 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sun, 18 Feb 2018 02:10:14 GMT
EXPOSE 8080/tcp
# Sun, 18 Feb 2018 02:10:15 GMT
CMD ["catalina.sh" "run"]
# Sun, 18 Feb 2018 06:07:05 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Sun, 18 Feb 2018 06:07:05 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sun, 18 Feb 2018 06:07:07 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sun, 18 Feb 2018 06:07:08 GMT
WORKDIR /usr/local/tomcat
# Sun, 18 Feb 2018 06:07:16 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 06:07:16 GMT
ENV GOSU_VERSION=1.10
# Sun, 18 Feb 2018 06:07:17 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sun, 18 Feb 2018 06:07:18 GMT
ENV TINI_VERSION=0.16.1
# Sun, 18 Feb 2018 06:07:18 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Sun, 18 Feb 2018 06:07:27 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Sun, 18 Feb 2018 06:07:30 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Sun, 18 Feb 2018 06:07:32 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Sun, 18 Feb 2018 06:07:32 GMT
ENV CONVERTIGO_VERSION=7.5.0
# Sun, 18 Feb 2018 06:07:33 GMT
ENV CONVERTIGO_REVISION=44235
# Sun, 18 Feb 2018 06:07:34 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.0/convertigo-7.5.0-v44235-linux32.war
# Sun, 18 Feb 2018 06:07:34 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Sun, 18 Feb 2018 06:08:12 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Sun, 18 Feb 2018 06:08:13 GMT
COPY file:03a78619febe6c5b17d175b71a6dbe271ce2c70c52e354c6642b986d1b28fc2e in webapps/ROOT/index.html 
# Sun, 18 Feb 2018 06:08:14 GMT
COPY file:0a47ea62001ca3cec3ce66ba5a1de976c240bea17f36878bcf94b75e4f0cdf86 in / 
# Sun, 18 Feb 2018 06:08:15 GMT
ENV SWT_GTK3=0
# Sun, 18 Feb 2018 06:08:15 GMT
WORKDIR /workspace
# Sun, 18 Feb 2018 06:08:16 GMT
VOLUME [/workspace]
# Sun, 18 Feb 2018 06:08:17 GMT
EXPOSE 28080/tcp
# Sun, 18 Feb 2018 06:08:18 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sun, 18 Feb 2018 06:08:19 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:b295e5c109fc9f55d14722eb26929ecc106cec04f7d37e867f7da008c53e293b`  
		Last Modified: Thu, 15 Feb 2018 01:14:37 GMT  
		Size: 42.9 MB (42921910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7310b14179e155997ab4625e06eb59600ea20b500835fe5bdca17a52d61e1c45`  
		Last Modified: Thu, 15 Feb 2018 20:15:23 GMT  
		Size: 10.1 MB (10066614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:785fa2a238ab89b203751335a74784cdb5ea9d78eabac46ce433ef327d7ff1db`  
		Last Modified: Thu, 15 Feb 2018 20:15:21 GMT  
		Size: 4.1 MB (4087808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27b9f7b1516b1e4adf336593044ff63a952d866f0ad17f787f3cc5bac283711`  
		Last Modified: Thu, 15 Feb 2018 23:18:00 GMT  
		Size: 838.6 KB (838598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7277740bf0b3c139ecade6b64698af5b1a8fa5f0c57374f30568b79bb2902`  
		Last Modified: Thu, 15 Feb 2018 23:17:58 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032420c17a1f581aa88a8c86d54755b3de9b7c2b3439b546cb7b6efcb40fa016`  
		Last Modified: Thu, 15 Feb 2018 23:17:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e32d4fab1fd44344ecfac22287324375ed241c4c3bb3aecc896f26d2aba886d`  
		Last Modified: Thu, 15 Feb 2018 23:18:47 GMT  
		Size: 152.9 MB (152944353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ff2922a9789418667fcad522c2bc37f7f0cabc93c1a24d369b53e73397182a`  
		Last Modified: Thu, 15 Feb 2018 23:17:58 GMT  
		Size: 272.1 KB (272116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90e926126d3fd9a72cf1ab7a477b85f0fa204943c4b67351e95fd42e6e363ba0`  
		Last Modified: Fri, 16 Feb 2018 12:55:23 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642049ab423f5450448d08a6c82289e64edcedf66b2aaa8e9dc170b3c8d4ed7d`  
		Last Modified: Fri, 16 Feb 2018 12:55:23 GMT  
		Size: 529.4 KB (529350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ede4824c3d8b290e242741f15a193a25e43d219ec3e87e0818fed9ac908cfaf`  
		Last Modified: Sun, 18 Feb 2018 02:55:20 GMT  
		Size: 10.0 MB (10042963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e62f4ff691a96bdbc5fbc19f4c0144c56c9097896f962d0594a9217cce25119`  
		Last Modified: Sun, 18 Feb 2018 02:55:16 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203d0e6946668a978176d04023efcda57ed3e295982e9868201c1da86f22e545`  
		Last Modified: Sun, 18 Feb 2018 06:12:57 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cced1e0b33253988ac7440fc5fd95d1595b84b71b23703bedd95e763f4d5629`  
		Last Modified: Sun, 18 Feb 2018 06:12:58 GMT  
		Size: 476.8 KB (476842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e917de6d5b1c683b9be5f9519ed8496b4d0a773c85199e87a499c586c5b38a54`  
		Last Modified: Sun, 18 Feb 2018 06:12:55 GMT  
		Size: 4.3 KB (4315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d6c839015126866a16a9b9ab3beb6ff5f050b510902e3afdbbab267f61e297`  
		Last Modified: Sun, 18 Feb 2018 06:12:57 GMT  
		Size: 25.8 KB (25773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d2d6992b4904cc2f07b66f1a45f875cd76592ec3e9e32a65ae4cf008910355`  
		Last Modified: Sun, 18 Feb 2018 06:13:32 GMT  
		Size: 116.7 MB (116673394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b4232029b6439f49ce857bfc39e5eb0e4799ea62f513f609e53f0658bd789a0`  
		Last Modified: Sun, 18 Feb 2018 06:12:54 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aafbefd638fccfbc1974e15806bfdfbb5214ab3b8f13ae8eefe9620b67d79ecf`  
		Last Modified: Sun, 18 Feb 2018 06:12:54 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:latest` - linux; 386

```console
$ docker pull convertigo@sha256:843f42408744b96c0a841fccbf4c7c73042d283a30f7c27562d72faa27791796
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **372.8 MB (372755223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09b6efd9119b759b8597d898986d2371aabbbf56a58f12568dffe1b30bc41355`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Thu, 15 Feb 2018 18:12:00 GMT
ADD file:efda076eaa7f21dc730f082db8e71fd3465cb5b7fda01796074ec390e25d312b in / 
# Thu, 15 Feb 2018 18:24:00 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 09:03:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 09:10:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 18:07:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:07:12 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 18:07:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 18:07:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 18:07:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 16 Feb 2018 18:07:14 GMT
ENV JAVA_VERSION=8u151
# Fri, 16 Feb 2018 18:07:15 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 16 Feb 2018 18:07:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Feb 2018 18:08:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 18:18:02 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 19 Feb 2018 01:35:01 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 19 Feb 2018 01:35:01 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Feb 2018 01:35:02 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 19 Feb 2018 01:35:02 GMT
WORKDIR /usr/local/tomcat
# Mon, 19 Feb 2018 01:35:03 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 19 Feb 2018 01:35:03 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 19 Feb 2018 01:35:03 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Mon, 19 Feb 2018 01:40:26 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 19 Feb 2018 01:40:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Feb 2018 01:43:50 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Mon, 19 Feb 2018 01:43:50 GMT
ENV TOMCAT_MAJOR=7
# Mon, 19 Feb 2018 01:43:51 GMT
ENV TOMCAT_VERSION=7.0.85
# Mon, 19 Feb 2018 01:43:51 GMT
ENV TOMCAT_SHA1=243a8be0bb445c412342965ee8fdf751d9c587e7
# Mon, 19 Feb 2018 01:43:51 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz
# Mon, 19 Feb 2018 01:43:52 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.85/bin/apache-tomcat-7.0.85.tar.gz.asc
# Mon, 19 Feb 2018 01:44:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Mon, 19 Feb 2018 01:53:07 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Mon, 19 Feb 2018 01:53:15 GMT
EXPOSE 8080/tcp
# Mon, 19 Feb 2018 01:53:15 GMT
CMD ["catalina.sh" "run"]
# Mon, 19 Feb 2018 10:58:42 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Mon, 19 Feb 2018 10:58:42 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 19 Feb 2018 10:58:44 GMT
RUN mkdir -p "$CATALINA_HOME"
# Mon, 19 Feb 2018 10:58:44 GMT
WORKDIR /usr/local/tomcat
# Mon, 19 Feb 2018 10:58:51 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Mon, 19 Feb 2018 10:58:51 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Feb 2018 10:58:51 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Mon, 19 Feb 2018 10:58:51 GMT
ENV TINI_VERSION=0.16.1
# Mon, 19 Feb 2018 10:58:52 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Mon, 19 Feb 2018 10:59:01 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Mon, 19 Feb 2018 11:03:58 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Mon, 19 Feb 2018 11:03:59 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Mon, 19 Feb 2018 11:04:00 GMT
ENV CONVERTIGO_VERSION=7.5.0
# Mon, 19 Feb 2018 11:04:00 GMT
ENV CONVERTIGO_REVISION=44235
# Mon, 19 Feb 2018 11:07:01 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.0/convertigo-7.5.0-v44235-linux32.war
# Mon, 19 Feb 2018 11:07:01 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Mon, 19 Feb 2018 11:21:08 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Mon, 19 Feb 2018 11:32:27 GMT
COPY file:03a78619febe6c5b17d175b71a6dbe271ce2c70c52e354c6642b986d1b28fc2e in webapps/ROOT/index.html 
# Mon, 19 Feb 2018 11:32:27 GMT
COPY file:0a47ea62001ca3cec3ce66ba5a1de976c240bea17f36878bcf94b75e4f0cdf86 in / 
# Mon, 19 Feb 2018 11:32:27 GMT
ENV SWT_GTK3=0
# Mon, 19 Feb 2018 11:32:27 GMT
WORKDIR /workspace
# Mon, 19 Feb 2018 11:32:28 GMT
VOLUME [/workspace]
# Mon, 19 Feb 2018 11:32:28 GMT
EXPOSE 28080/tcp
# Mon, 19 Feb 2018 11:32:28 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Mon, 19 Feb 2018 11:32:29 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:9e00c93ed72d016aab52ea3c3a3423ddc9ea91d0005937106ed39c4005989991`  
		Last Modified: Thu, 15 Feb 2018 01:16:02 GMT  
		Size: 45.8 MB (45837726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b842c4f12ce193c6669f6d0ce38aec19cf0f2c7adb70daf9ead694218a108708`  
		Last Modified: Fri, 16 Feb 2018 11:35:51 GMT  
		Size: 11.2 MB (11150751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3c168f821c9302872e46de652da9ba7965adf0095f1b6e5adbdd7c9bd6710c`  
		Last Modified: Fri, 16 Feb 2018 11:35:49 GMT  
		Size: 4.6 MB (4554693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d965939fc12d1154aa65c953062de7f15ec1f9c25f0f1a8fba2e6ae2418cc1`  
		Last Modified: Sat, 17 Feb 2018 08:54:01 GMT  
		Size: 861.2 KB (861227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00d8b4f34effe52ffcb2fef133798e97168c81615216a73788a825e8f4d9b04`  
		Last Modified: Sat, 17 Feb 2018 08:53:58 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:998903c668db9bf30c8df8104776a702627c04bd0dfb32f2a58d7dd4eed26f12`  
		Last Modified: Sat, 17 Feb 2018 08:53:59 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:103026c14ec31451e833db0fd15fd93e3ff6e0708b7efa1339b6c5dde0b9e1e1`  
		Last Modified: Sat, 17 Feb 2018 08:54:51 GMT  
		Size: 168.3 MB (168328825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929c8cbef0b62fab35fbd6945034f797d68d46a189476005bbfba445c8a60b89`  
		Last Modified: Sat, 17 Feb 2018 08:53:59 GMT  
		Size: 272.2 KB (272171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bcfd1885d960f4ab970069c7d7e620d49ab16c652efe467695178178b55fd24`  
		Last Modified: Mon, 19 Feb 2018 09:30:23 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7206c5c7dbfd19c6e4caf8367aef9b89d4896b1d6a6f0a5eb10680627918e6b9`  
		Last Modified: Mon, 19 Feb 2018 09:30:24 GMT  
		Size: 554.6 KB (554604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d21f01c6809a7b6afed30cab18eee6ce1f2ef277befca531a1f5cdcbc96bfdd1`  
		Last Modified: Mon, 19 Feb 2018 09:30:27 GMT  
		Size: 9.9 MB (9930273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7621cadc1c588bf6a09b791d38780b09de613ed6751d325331084180563ce777`  
		Last Modified: Mon, 19 Feb 2018 09:30:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5047268433ff5e10ede803298c21d3f17691c0c96ee03547814623ea6b82ea5a`  
		Last Modified: Mon, 19 Feb 2018 12:45:15 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7961f13c77884abaf5973ab67b4919d30eac1ef8c2275c142086f3fbaafc5bd`  
		Last Modified: Mon, 19 Feb 2018 12:45:15 GMT  
		Size: 489.2 KB (489163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a07987a9990eea1a9d2cad58969de835710fdf9b3ce9dee58da019b3ac3f011`  
		Last Modified: Mon, 19 Feb 2018 12:45:15 GMT  
		Size: 4.3 KB (4290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed811dfb1ecb44965e89f058453392fc41f761a79283e749debbaba3bdc531c`  
		Last Modified: Mon, 19 Feb 2018 12:45:15 GMT  
		Size: 25.8 KB (25773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feaa551a2899ab3094e959dd5044a3250473537720791540904149171fe4b5f2`  
		Last Modified: Mon, 19 Feb 2018 12:45:40 GMT  
		Size: 130.7 MB (130743199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea010a43fbb2ae3c65a07d00412532d32d03e18e52679a19dadfd6e524f6ef7e`  
		Last Modified: Mon, 19 Feb 2018 12:45:14 GMT  
		Size: 467.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e62b585bf853800cb1c9c27796f9d36e271eb3458ccb49e14884b4b0ab5f71`  
		Last Modified: Mon, 19 Feb 2018 12:45:15 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
