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
$ docker pull convertigo@sha256:50ee57d63f8ec2153fb3f45bfae6e4969732d490bfc58c0280e25f5004ee35b6
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
$ docker pull convertigo@sha256:142ae810363a7613cae4cb49a05938af86d977c5de5d4c706fecc53f4d180b41
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (298996931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4500ae665dc84629220cc15a07419f9fe97118b320694b2de0ca38ec382d39dd`
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
# Thu, 15 Feb 2018 18:55:46 GMT
ENV TOMCAT_VERSION=7.0.84
# Thu, 15 Feb 2018 18:55:46 GMT
ENV TOMCAT_SHA1=e2940f45dde581741e2639e831d08498b6bb9d3a
# Thu, 15 Feb 2018 18:55:46 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz
# Thu, 15 Feb 2018 18:55:47 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc
# Thu, 15 Feb 2018 18:56:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 15 Feb 2018 18:56:35 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 15 Feb 2018 18:56:35 GMT
EXPOSE 8080/tcp
# Thu, 15 Feb 2018 18:56:35 GMT
CMD ["catalina.sh" "run"]
# Thu, 15 Feb 2018 19:56:58 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Thu, 15 Feb 2018 19:56:59 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 15 Feb 2018 19:57:07 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 15 Feb 2018 19:57:14 GMT
WORKDIR /usr/local/tomcat
# Thu, 15 Feb 2018 19:57:19 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:57:20 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 19:57:20 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 15 Feb 2018 19:57:20 GMT
ENV TINI_VERSION=0.16.1
# Thu, 15 Feb 2018 19:57:20 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Thu, 15 Feb 2018 20:04:15 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Thu, 15 Feb 2018 20:04:22 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Thu, 15 Feb 2018 20:04:23 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Thu, 15 Feb 2018 20:04:24 GMT
ENV CONVERTIGO_VERSION=7.4.7
# Thu, 15 Feb 2018 20:04:24 GMT
ENV CONVERTIGO_REVISION=43946
# Thu, 15 Feb 2018 20:04:24 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.7/convertigo-7.4.7-v43946-linux32.war
# Thu, 15 Feb 2018 20:04:25 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Thu, 15 Feb 2018 20:07:13 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Thu, 15 Feb 2018 20:07:14 GMT
COPY file:03a78619febe6c5b17d175b71a6dbe271ce2c70c52e354c6642b986d1b28fc2e in webapps/ROOT/index.html 
# Thu, 15 Feb 2018 20:07:14 GMT
COPY file:0a47ea62001ca3cec3ce66ba5a1de976c240bea17f36878bcf94b75e4f0cdf86 in / 
# Thu, 15 Feb 2018 20:07:14 GMT
ENV SWT_GTK3=0
# Thu, 15 Feb 2018 20:07:15 GMT
WORKDIR /workspace
# Thu, 15 Feb 2018 20:07:15 GMT
VOLUME [/workspace]
# Thu, 15 Feb 2018 20:07:16 GMT
EXPOSE 28080/tcp
# Thu, 15 Feb 2018 20:07:16 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 20:07:16 GMT
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
	-	`sha256:e05bf36595c3481d7d05dc42588368b33e4ce8a930636e3b3cf726f67992697f`  
		Last Modified: Thu, 15 Feb 2018 19:25:45 GMT  
		Size: 10.0 MB (9956728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baacc7e100cc5485faaf9747b01c29df51b6bc5ce1685db3f8df8a12dd8f26bf`  
		Last Modified: Thu, 15 Feb 2018 19:25:42 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b6759e6f36cc653698a5e1d0ffde8ed2b2d6a1119fdc7f23dba4cd4ed5d480`  
		Last Modified: Thu, 15 Feb 2018 20:07:36 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88f4e6fe92008bbd7e7a0ca8f4b4256732f25d2405f42e7efa9db0a9769034b`  
		Last Modified: Thu, 15 Feb 2018 20:07:35 GMT  
		Size: 482.7 KB (482666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ebaa3c4df30cdc48e477cd7da48f0648de237f6a254959648e73b131d15df8`  
		Last Modified: Thu, 15 Feb 2018 20:07:33 GMT  
		Size: 4.3 KB (4332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee864ed85d5e906e7aa3a1091990cbde67e4c81ed45ccf69f35ad64aa652b0b0`  
		Last Modified: Thu, 15 Feb 2018 20:07:33 GMT  
		Size: 25.8 KB (25767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1330b4f7e43f3d29ba548f6e9b1ee8f752c5a5c56d9696687080a287e61520`  
		Last Modified: Thu, 15 Feb 2018 20:07:47 GMT  
		Size: 81.6 MB (81616037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260811a7eaa1d53bb48551f4c4373c9deb1e3da0fe20fcee58b721a096d3f9eb`  
		Last Modified: Thu, 15 Feb 2018 20:07:33 GMT  
		Size: 466.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c54da7128013df86c63d54fcad65f39681e8bd393acf6791a0d0e2f90791a796`  
		Last Modified: Thu, 15 Feb 2018 20:07:34 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.4` - linux; arm64 variant v8

```console
$ docker pull convertigo@sha256:14dad9f88cdc4b79d9d95d7bb29247f567110b000305db8598dfec29a1b42781
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.8 MB (303823322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7e87524899bb8de5c6219eab034480e51169a0993c60c96f87d8aacbc73c738`
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
# Fri, 16 Feb 2018 11:30:00 GMT
ENV TOMCAT_VERSION=7.0.84
# Fri, 16 Feb 2018 11:30:00 GMT
ENV TOMCAT_SHA1=e2940f45dde581741e2639e831d08498b6bb9d3a
# Fri, 16 Feb 2018 11:30:01 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz
# Fri, 16 Feb 2018 11:30:02 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc
# Fri, 16 Feb 2018 11:32:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Fri, 16 Feb 2018 11:32:29 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 16 Feb 2018 11:32:36 GMT
EXPOSE 8080/tcp
# Fri, 16 Feb 2018 11:32:37 GMT
CMD ["catalina.sh" "run"]
# Fri, 16 Feb 2018 14:48:41 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Fri, 16 Feb 2018 14:48:42 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 16 Feb 2018 14:48:44 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 16 Feb 2018 14:48:44 GMT
WORKDIR /usr/local/tomcat
# Fri, 16 Feb 2018 14:48:53 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 14:48:54 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Feb 2018 14:48:54 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 16 Feb 2018 14:48:55 GMT
ENV TINI_VERSION=0.16.1
# Fri, 16 Feb 2018 14:48:55 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Fri, 16 Feb 2018 14:49:04 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Fri, 16 Feb 2018 14:49:07 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Fri, 16 Feb 2018 14:49:09 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Fri, 16 Feb 2018 14:50:23 GMT
ENV CONVERTIGO_VERSION=7.4.7
# Fri, 16 Feb 2018 14:50:24 GMT
ENV CONVERTIGO_REVISION=43946
# Fri, 16 Feb 2018 14:50:24 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.7/convertigo-7.4.7-v43946-linux32.war
# Fri, 16 Feb 2018 14:50:25 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Fri, 16 Feb 2018 14:50:55 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Fri, 16 Feb 2018 14:50:56 GMT
COPY file:03a78619febe6c5b17d175b71a6dbe271ce2c70c52e354c6642b986d1b28fc2e in webapps/ROOT/index.html 
# Fri, 16 Feb 2018 14:50:57 GMT
COPY file:0a47ea62001ca3cec3ce66ba5a1de976c240bea17f36878bcf94b75e4f0cdf86 in / 
# Fri, 16 Feb 2018 14:50:58 GMT
ENV SWT_GTK3=0
# Fri, 16 Feb 2018 14:50:58 GMT
WORKDIR /workspace
# Fri, 16 Feb 2018 14:50:59 GMT
VOLUME [/workspace]
# Fri, 16 Feb 2018 14:51:00 GMT
EXPOSE 28080/tcp
# Fri, 16 Feb 2018 14:51:01 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Fri, 16 Feb 2018 14:51:01 GMT
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
	-	`sha256:7709f52308e020dbf6302d86313711003d21a815bb37e32036207d4eec292a75`  
		Last Modified: Fri, 16 Feb 2018 12:55:26 GMT  
		Size: 10.0 MB (10037071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8494fbc30fa5d504aec5ced8092104358ba38cb99dab9bcc1fdbb9b2680650d7`  
		Last Modified: Fri, 16 Feb 2018 12:55:22 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c253a6e7a3eab3849a9338d3380e9948b8ebf6b17f91891611f93926f7499fdb`  
		Last Modified: Fri, 16 Feb 2018 14:51:29 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d31c0de6f8eb4e424b031b14bc17c0a3a2dfc68a6087c57cf6b593b0f524fe3`  
		Last Modified: Fri, 16 Feb 2018 14:51:29 GMT  
		Size: 476.8 KB (476841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe01a19f0c54038ee21fd759ae32272bd37de82d9408f62ea2382d3c2d92b214`  
		Last Modified: Fri, 16 Feb 2018 14:51:26 GMT  
		Size: 4.3 KB (4312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd5f3a52097392d9a849ff2a84a4d08a341f9819638f51a01b2dd25d63b29156`  
		Last Modified: Fri, 16 Feb 2018 14:51:26 GMT  
		Size: 25.8 KB (25768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2f1a36046c8e9ab8b4b8f03922a434c4d204e72f2150fdf7c8f99811dc4e02`  
		Last Modified: Fri, 16 Feb 2018 14:56:12 GMT  
		Size: 81.6 MB (81616047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d5761ea15c922f52d2853b17d2ea02775269bfa60d266428eae10d4229bdf7`  
		Last Modified: Fri, 16 Feb 2018 14:52:38 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42217b84aaa16e8b87b0bc6746ce6666b20e3d3b45f1eb97fa06bce8c74dc62`  
		Last Modified: Fri, 16 Feb 2018 14:52:38 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.4` - linux; 386

```console
$ docker pull convertigo@sha256:3869597296b6376fb99886102fb81022b51164ee350e9eaf47db082f95472c4a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.7 MB (338719282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63fb0b8821232cfec0d10eb16e3994d102f72b726648747b1b1d8c77bb1f6ae4`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Tue, 12 Dec 2017 14:28:39 GMT
ADD file:a6cfca6b73e41be73fc4e964d25ccb94f9c3538d1bd6623f5f203d3594167a5f in / 
# Tue, 12 Dec 2017 14:28:39 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:45:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:46:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Dec 2017 15:21:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 15:21:28 GMT
ENV LANG=C.UTF-8
# Wed, 13 Dec 2017 15:21:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 13 Dec 2017 15:21:30 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 13 Dec 2017 15:21:30 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 13 Dec 2017 15:21:30 GMT
ENV JAVA_VERSION=8u151
# Wed, 13 Dec 2017 15:21:31 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Wed, 13 Dec 2017 15:21:31 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 13 Dec 2017 15:22:49 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 13 Dec 2017 15:22:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Dec 2017 18:55:07 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 13 Dec 2017 18:55:07 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 18:55:09 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 13 Dec 2017 18:55:09 GMT
WORKDIR /usr/local/tomcat
# Wed, 13 Dec 2017 18:55:09 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 13 Dec 2017 18:55:09 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 13 Dec 2017 18:55:10 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Thu, 11 Jan 2018 12:03:22 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 11 Jan 2018 12:03:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Jan 2018 12:03:34 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 19 Jan 2018 20:37:18 GMT
ENV TOMCAT_MAJOR=7
# Thu, 25 Jan 2018 14:57:12 GMT
ENV TOMCAT_VERSION=7.0.84
# Thu, 25 Jan 2018 14:57:12 GMT
ENV TOMCAT_SHA1=e2940f45dde581741e2639e831d08498b6bb9d3a
# Thu, 25 Jan 2018 14:57:12 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz
# Thu, 25 Jan 2018 14:57:13 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc
# Thu, 25 Jan 2018 14:58:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 25 Jan 2018 14:59:44 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 25 Jan 2018 14:59:44 GMT
EXPOSE 8080/tcp
# Thu, 25 Jan 2018 14:59:44 GMT
CMD ["catalina.sh" "run"]
# Wed, 14 Feb 2018 13:25:17 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Wed, 14 Feb 2018 13:25:17 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 14 Feb 2018 13:25:19 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 14 Feb 2018 13:35:39 GMT
WORKDIR /usr/local/tomcat
# Wed, 14 Feb 2018 13:35:52 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Feb 2018 13:40:58 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Feb 2018 13:40:59 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 14 Feb 2018 13:40:59 GMT
ENV TINI_VERSION=0.16.1
# Wed, 14 Feb 2018 13:40:59 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Wed, 14 Feb 2018 13:48:47 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Wed, 14 Feb 2018 13:48:48 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Wed, 14 Feb 2018 13:48:50 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Wed, 14 Feb 2018 14:04:57 GMT
ENV CONVERTIGO_VERSION=7.4.7
# Wed, 14 Feb 2018 14:04:57 GMT
ENV CONVERTIGO_REVISION=43946
# Wed, 14 Feb 2018 14:04:57 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.7/convertigo-7.4.7-v43946-linux32.war
# Wed, 14 Feb 2018 14:04:57 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Wed, 14 Feb 2018 14:10:11 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Wed, 14 Feb 2018 14:10:11 GMT
COPY file:03a78619febe6c5b17d175b71a6dbe271ce2c70c52e354c6642b986d1b28fc2e in webapps/ROOT/index.html 
# Wed, 14 Feb 2018 14:10:12 GMT
COPY file:0a47ea62001ca3cec3ce66ba5a1de976c240bea17f36878bcf94b75e4f0cdf86 in / 
# Wed, 14 Feb 2018 14:10:12 GMT
ENV SWT_GTK3=0
# Wed, 14 Feb 2018 14:10:12 GMT
WORKDIR /workspace
# Wed, 14 Feb 2018 14:10:12 GMT
VOLUME [/workspace]
# Wed, 14 Feb 2018 14:10:13 GMT
EXPOSE 28080/tcp
# Wed, 14 Feb 2018 14:10:13 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 14 Feb 2018 14:10:13 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:50d72515450fee13bee4f8be703ed400c6fc2f1bc9a5699f1d6917eb6dde6aa0`  
		Last Modified: Tue, 12 Dec 2017 15:01:52 GMT  
		Size: 45.8 MB (45827066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a9ff72840f920dca068cca81368ea4b369a74d6ec40929d4cb4a6b4e6d2264`  
		Last Modified: Wed, 13 Dec 2017 14:58:26 GMT  
		Size: 11.2 MB (11150413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3e33c1d09c88921e13b6b46cc0476040037bbe57b669dbbc9d16f17cde6298`  
		Last Modified: Wed, 13 Dec 2017 14:58:25 GMT  
		Size: 4.6 MB (4554619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9934e17bca1f4fdf8114e6baf80eb11eb18b0d425c8568b35fac04d2913dee5`  
		Last Modified: Wed, 13 Dec 2017 15:40:37 GMT  
		Size: 861.1 KB (861149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f54df81eda17ba5ce500a3bbd23abd9db02eb57b697611b88f6249bb15cdfd`  
		Last Modified: Wed, 13 Dec 2017 15:40:36 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ba1f721572ed69c9b8af65e4025129031d6cc4cf7aceb610cd20f66310723a`  
		Last Modified: Wed, 13 Dec 2017 15:40:36 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730b226ae3de1d490bbc8f2cc5f9fa5f67d1b6a38b6c12f8b43f2e6e1ebc5865`  
		Last Modified: Wed, 13 Dec 2017 15:41:29 GMT  
		Size: 168.3 MB (168325773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5f9e2d852693f2983e4d5ff8d80cdb2479dccaa6679adea10c6f53c6dd8e76`  
		Last Modified: Wed, 13 Dec 2017 15:40:36 GMT  
		Size: 272.1 KB (272145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87166c27d9d7699aacb48a2aa6e37c0cb2972ea4a83e6a6e332bb7b3f63e504d`  
		Last Modified: Wed, 13 Dec 2017 19:32:30 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e461ab6796aa5f0818b70f00715b83858c17fd14b8e76f81f1197aac669f276a`  
		Last Modified: Thu, 11 Jan 2018 12:50:16 GMT  
		Size: 554.6 KB (554558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14942cd33ac3c914f79a5a61edfde958d9c2f772091d1dda63473a4d50e2b8b9`  
		Last Modified: Thu, 25 Jan 2018 19:49:53 GMT  
		Size: 9.9 MB (9925559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5343a45c1c72be03f0a897ec5e37b25b8e66ef8baf6afa607d48ae1c657b58e5`  
		Last Modified: Thu, 25 Jan 2018 19:49:50 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f19687ce470afa60d236dcd21a49db6e82e63e3f8e9fe1ffca6237e2df1c39b3`  
		Last Modified: Wed, 14 Feb 2018 14:30:07 GMT  
		Size: 1.0 MB (1032845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9a25091b153d9350d1b17f88db15e62b3d4f59969c9468309b81b9d0acf7d3c`  
		Last Modified: Wed, 14 Feb 2018 14:30:06 GMT  
		Size: 489.2 KB (489165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa58546e6cb62b7198bc37bf89d47d13fc9046e8fc8038b951bafeea6711a1c`  
		Last Modified: Wed, 14 Feb 2018 14:30:05 GMT  
		Size: 4.3 KB (4288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d4a40e3bef789a4347430d5fad02bcfe014fe686e4221b7adea0f8b49368ba`  
		Last Modified: Wed, 14 Feb 2018 14:30:05 GMT  
		Size: 25.8 KB (25779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc36ac27494bf0bfcfde144d478caf9677798ec61e07b915c7964b8d6f3e0568`  
		Last Modified: Wed, 14 Feb 2018 14:57:45 GMT  
		Size: 95.7 MB (95693723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8890342273f81725a7702cd32faeda7115b85de6f3fa96ce1efc2fc38fa924de`  
		Last Modified: Wed, 14 Feb 2018 14:57:29 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a05464ae6eb4358c493f9976b007c537ca54b8277cfd34f9ab523d08a605503`  
		Last Modified: Wed, 14 Feb 2018 14:57:29 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `convertigo:7.4.7`

```console
$ docker pull convertigo@sha256:50ee57d63f8ec2153fb3f45bfae6e4969732d490bfc58c0280e25f5004ee35b6
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
$ docker pull convertigo@sha256:142ae810363a7613cae4cb49a05938af86d977c5de5d4c706fecc53f4d180b41
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (298996931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4500ae665dc84629220cc15a07419f9fe97118b320694b2de0ca38ec382d39dd`
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
# Thu, 15 Feb 2018 18:55:46 GMT
ENV TOMCAT_VERSION=7.0.84
# Thu, 15 Feb 2018 18:55:46 GMT
ENV TOMCAT_SHA1=e2940f45dde581741e2639e831d08498b6bb9d3a
# Thu, 15 Feb 2018 18:55:46 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz
# Thu, 15 Feb 2018 18:55:47 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc
# Thu, 15 Feb 2018 18:56:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 15 Feb 2018 18:56:35 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 15 Feb 2018 18:56:35 GMT
EXPOSE 8080/tcp
# Thu, 15 Feb 2018 18:56:35 GMT
CMD ["catalina.sh" "run"]
# Thu, 15 Feb 2018 19:56:58 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Thu, 15 Feb 2018 19:56:59 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 15 Feb 2018 19:57:07 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 15 Feb 2018 19:57:14 GMT
WORKDIR /usr/local/tomcat
# Thu, 15 Feb 2018 19:57:19 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:57:20 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 19:57:20 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 15 Feb 2018 19:57:20 GMT
ENV TINI_VERSION=0.16.1
# Thu, 15 Feb 2018 19:57:20 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Thu, 15 Feb 2018 20:04:15 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Thu, 15 Feb 2018 20:04:22 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Thu, 15 Feb 2018 20:04:23 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Thu, 15 Feb 2018 20:04:24 GMT
ENV CONVERTIGO_VERSION=7.4.7
# Thu, 15 Feb 2018 20:04:24 GMT
ENV CONVERTIGO_REVISION=43946
# Thu, 15 Feb 2018 20:04:24 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.7/convertigo-7.4.7-v43946-linux32.war
# Thu, 15 Feb 2018 20:04:25 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Thu, 15 Feb 2018 20:07:13 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Thu, 15 Feb 2018 20:07:14 GMT
COPY file:03a78619febe6c5b17d175b71a6dbe271ce2c70c52e354c6642b986d1b28fc2e in webapps/ROOT/index.html 
# Thu, 15 Feb 2018 20:07:14 GMT
COPY file:0a47ea62001ca3cec3ce66ba5a1de976c240bea17f36878bcf94b75e4f0cdf86 in / 
# Thu, 15 Feb 2018 20:07:14 GMT
ENV SWT_GTK3=0
# Thu, 15 Feb 2018 20:07:15 GMT
WORKDIR /workspace
# Thu, 15 Feb 2018 20:07:15 GMT
VOLUME [/workspace]
# Thu, 15 Feb 2018 20:07:16 GMT
EXPOSE 28080/tcp
# Thu, 15 Feb 2018 20:07:16 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 20:07:16 GMT
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
	-	`sha256:e05bf36595c3481d7d05dc42588368b33e4ce8a930636e3b3cf726f67992697f`  
		Last Modified: Thu, 15 Feb 2018 19:25:45 GMT  
		Size: 10.0 MB (9956728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baacc7e100cc5485faaf9747b01c29df51b6bc5ce1685db3f8df8a12dd8f26bf`  
		Last Modified: Thu, 15 Feb 2018 19:25:42 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b6759e6f36cc653698a5e1d0ffde8ed2b2d6a1119fdc7f23dba4cd4ed5d480`  
		Last Modified: Thu, 15 Feb 2018 20:07:36 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88f4e6fe92008bbd7e7a0ca8f4b4256732f25d2405f42e7efa9db0a9769034b`  
		Last Modified: Thu, 15 Feb 2018 20:07:35 GMT  
		Size: 482.7 KB (482666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ebaa3c4df30cdc48e477cd7da48f0648de237f6a254959648e73b131d15df8`  
		Last Modified: Thu, 15 Feb 2018 20:07:33 GMT  
		Size: 4.3 KB (4332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee864ed85d5e906e7aa3a1091990cbde67e4c81ed45ccf69f35ad64aa652b0b0`  
		Last Modified: Thu, 15 Feb 2018 20:07:33 GMT  
		Size: 25.8 KB (25767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1330b4f7e43f3d29ba548f6e9b1ee8f752c5a5c56d9696687080a287e61520`  
		Last Modified: Thu, 15 Feb 2018 20:07:47 GMT  
		Size: 81.6 MB (81616037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260811a7eaa1d53bb48551f4c4373c9deb1e3da0fe20fcee58b721a096d3f9eb`  
		Last Modified: Thu, 15 Feb 2018 20:07:33 GMT  
		Size: 466.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c54da7128013df86c63d54fcad65f39681e8bd393acf6791a0d0e2f90791a796`  
		Last Modified: Thu, 15 Feb 2018 20:07:34 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.4.7` - linux; arm64 variant v8

```console
$ docker pull convertigo@sha256:14dad9f88cdc4b79d9d95d7bb29247f567110b000305db8598dfec29a1b42781
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.8 MB (303823322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7e87524899bb8de5c6219eab034480e51169a0993c60c96f87d8aacbc73c738`
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
# Fri, 16 Feb 2018 11:30:00 GMT
ENV TOMCAT_VERSION=7.0.84
# Fri, 16 Feb 2018 11:30:00 GMT
ENV TOMCAT_SHA1=e2940f45dde581741e2639e831d08498b6bb9d3a
# Fri, 16 Feb 2018 11:30:01 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz
# Fri, 16 Feb 2018 11:30:02 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc
# Fri, 16 Feb 2018 11:32:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Fri, 16 Feb 2018 11:32:29 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 16 Feb 2018 11:32:36 GMT
EXPOSE 8080/tcp
# Fri, 16 Feb 2018 11:32:37 GMT
CMD ["catalina.sh" "run"]
# Fri, 16 Feb 2018 14:48:41 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Fri, 16 Feb 2018 14:48:42 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 16 Feb 2018 14:48:44 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 16 Feb 2018 14:48:44 GMT
WORKDIR /usr/local/tomcat
# Fri, 16 Feb 2018 14:48:53 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 14:48:54 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Feb 2018 14:48:54 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 16 Feb 2018 14:48:55 GMT
ENV TINI_VERSION=0.16.1
# Fri, 16 Feb 2018 14:48:55 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Fri, 16 Feb 2018 14:49:04 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Fri, 16 Feb 2018 14:49:07 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Fri, 16 Feb 2018 14:49:09 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Fri, 16 Feb 2018 14:50:23 GMT
ENV CONVERTIGO_VERSION=7.4.7
# Fri, 16 Feb 2018 14:50:24 GMT
ENV CONVERTIGO_REVISION=43946
# Fri, 16 Feb 2018 14:50:24 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.7/convertigo-7.4.7-v43946-linux32.war
# Fri, 16 Feb 2018 14:50:25 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Fri, 16 Feb 2018 14:50:55 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Fri, 16 Feb 2018 14:50:56 GMT
COPY file:03a78619febe6c5b17d175b71a6dbe271ce2c70c52e354c6642b986d1b28fc2e in webapps/ROOT/index.html 
# Fri, 16 Feb 2018 14:50:57 GMT
COPY file:0a47ea62001ca3cec3ce66ba5a1de976c240bea17f36878bcf94b75e4f0cdf86 in / 
# Fri, 16 Feb 2018 14:50:58 GMT
ENV SWT_GTK3=0
# Fri, 16 Feb 2018 14:50:58 GMT
WORKDIR /workspace
# Fri, 16 Feb 2018 14:50:59 GMT
VOLUME [/workspace]
# Fri, 16 Feb 2018 14:51:00 GMT
EXPOSE 28080/tcp
# Fri, 16 Feb 2018 14:51:01 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Fri, 16 Feb 2018 14:51:01 GMT
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
	-	`sha256:7709f52308e020dbf6302d86313711003d21a815bb37e32036207d4eec292a75`  
		Last Modified: Fri, 16 Feb 2018 12:55:26 GMT  
		Size: 10.0 MB (10037071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8494fbc30fa5d504aec5ced8092104358ba38cb99dab9bcc1fdbb9b2680650d7`  
		Last Modified: Fri, 16 Feb 2018 12:55:22 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c253a6e7a3eab3849a9338d3380e9948b8ebf6b17f91891611f93926f7499fdb`  
		Last Modified: Fri, 16 Feb 2018 14:51:29 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d31c0de6f8eb4e424b031b14bc17c0a3a2dfc68a6087c57cf6b593b0f524fe3`  
		Last Modified: Fri, 16 Feb 2018 14:51:29 GMT  
		Size: 476.8 KB (476841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe01a19f0c54038ee21fd759ae32272bd37de82d9408f62ea2382d3c2d92b214`  
		Last Modified: Fri, 16 Feb 2018 14:51:26 GMT  
		Size: 4.3 KB (4312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd5f3a52097392d9a849ff2a84a4d08a341f9819638f51a01b2dd25d63b29156`  
		Last Modified: Fri, 16 Feb 2018 14:51:26 GMT  
		Size: 25.8 KB (25768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2f1a36046c8e9ab8b4b8f03922a434c4d204e72f2150fdf7c8f99811dc4e02`  
		Last Modified: Fri, 16 Feb 2018 14:56:12 GMT  
		Size: 81.6 MB (81616047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d5761ea15c922f52d2853b17d2ea02775269bfa60d266428eae10d4229bdf7`  
		Last Modified: Fri, 16 Feb 2018 14:52:38 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42217b84aaa16e8b87b0bc6746ce6666b20e3d3b45f1eb97fa06bce8c74dc62`  
		Last Modified: Fri, 16 Feb 2018 14:52:38 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.4.7` - linux; 386

```console
$ docker pull convertigo@sha256:3869597296b6376fb99886102fb81022b51164ee350e9eaf47db082f95472c4a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.7 MB (338719282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63fb0b8821232cfec0d10eb16e3994d102f72b726648747b1b1d8c77bb1f6ae4`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Tue, 12 Dec 2017 14:28:39 GMT
ADD file:a6cfca6b73e41be73fc4e964d25ccb94f9c3538d1bd6623f5f203d3594167a5f in / 
# Tue, 12 Dec 2017 14:28:39 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:45:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:46:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Dec 2017 15:21:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 15:21:28 GMT
ENV LANG=C.UTF-8
# Wed, 13 Dec 2017 15:21:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 13 Dec 2017 15:21:30 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 13 Dec 2017 15:21:30 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 13 Dec 2017 15:21:30 GMT
ENV JAVA_VERSION=8u151
# Wed, 13 Dec 2017 15:21:31 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Wed, 13 Dec 2017 15:21:31 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 13 Dec 2017 15:22:49 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 13 Dec 2017 15:22:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Dec 2017 18:55:07 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 13 Dec 2017 18:55:07 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 18:55:09 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 13 Dec 2017 18:55:09 GMT
WORKDIR /usr/local/tomcat
# Wed, 13 Dec 2017 18:55:09 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 13 Dec 2017 18:55:09 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 13 Dec 2017 18:55:10 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Thu, 11 Jan 2018 12:03:22 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 11 Jan 2018 12:03:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Jan 2018 12:03:34 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 19 Jan 2018 20:37:18 GMT
ENV TOMCAT_MAJOR=7
# Thu, 25 Jan 2018 14:57:12 GMT
ENV TOMCAT_VERSION=7.0.84
# Thu, 25 Jan 2018 14:57:12 GMT
ENV TOMCAT_SHA1=e2940f45dde581741e2639e831d08498b6bb9d3a
# Thu, 25 Jan 2018 14:57:12 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz
# Thu, 25 Jan 2018 14:57:13 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc
# Thu, 25 Jan 2018 14:58:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 25 Jan 2018 14:59:44 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 25 Jan 2018 14:59:44 GMT
EXPOSE 8080/tcp
# Thu, 25 Jan 2018 14:59:44 GMT
CMD ["catalina.sh" "run"]
# Wed, 14 Feb 2018 13:25:17 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Wed, 14 Feb 2018 13:25:17 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 14 Feb 2018 13:25:19 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 14 Feb 2018 13:35:39 GMT
WORKDIR /usr/local/tomcat
# Wed, 14 Feb 2018 13:35:52 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Feb 2018 13:40:58 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Feb 2018 13:40:59 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 14 Feb 2018 13:40:59 GMT
ENV TINI_VERSION=0.16.1
# Wed, 14 Feb 2018 13:40:59 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Wed, 14 Feb 2018 13:48:47 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Wed, 14 Feb 2018 13:48:48 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Wed, 14 Feb 2018 13:48:50 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Wed, 14 Feb 2018 14:04:57 GMT
ENV CONVERTIGO_VERSION=7.4.7
# Wed, 14 Feb 2018 14:04:57 GMT
ENV CONVERTIGO_REVISION=43946
# Wed, 14 Feb 2018 14:04:57 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.7/convertigo-7.4.7-v43946-linux32.war
# Wed, 14 Feb 2018 14:04:57 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Wed, 14 Feb 2018 14:10:11 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Wed, 14 Feb 2018 14:10:11 GMT
COPY file:03a78619febe6c5b17d175b71a6dbe271ce2c70c52e354c6642b986d1b28fc2e in webapps/ROOT/index.html 
# Wed, 14 Feb 2018 14:10:12 GMT
COPY file:0a47ea62001ca3cec3ce66ba5a1de976c240bea17f36878bcf94b75e4f0cdf86 in / 
# Wed, 14 Feb 2018 14:10:12 GMT
ENV SWT_GTK3=0
# Wed, 14 Feb 2018 14:10:12 GMT
WORKDIR /workspace
# Wed, 14 Feb 2018 14:10:12 GMT
VOLUME [/workspace]
# Wed, 14 Feb 2018 14:10:13 GMT
EXPOSE 28080/tcp
# Wed, 14 Feb 2018 14:10:13 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 14 Feb 2018 14:10:13 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:50d72515450fee13bee4f8be703ed400c6fc2f1bc9a5699f1d6917eb6dde6aa0`  
		Last Modified: Tue, 12 Dec 2017 15:01:52 GMT  
		Size: 45.8 MB (45827066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a9ff72840f920dca068cca81368ea4b369a74d6ec40929d4cb4a6b4e6d2264`  
		Last Modified: Wed, 13 Dec 2017 14:58:26 GMT  
		Size: 11.2 MB (11150413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3e33c1d09c88921e13b6b46cc0476040037bbe57b669dbbc9d16f17cde6298`  
		Last Modified: Wed, 13 Dec 2017 14:58:25 GMT  
		Size: 4.6 MB (4554619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9934e17bca1f4fdf8114e6baf80eb11eb18b0d425c8568b35fac04d2913dee5`  
		Last Modified: Wed, 13 Dec 2017 15:40:37 GMT  
		Size: 861.1 KB (861149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f54df81eda17ba5ce500a3bbd23abd9db02eb57b697611b88f6249bb15cdfd`  
		Last Modified: Wed, 13 Dec 2017 15:40:36 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ba1f721572ed69c9b8af65e4025129031d6cc4cf7aceb610cd20f66310723a`  
		Last Modified: Wed, 13 Dec 2017 15:40:36 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730b226ae3de1d490bbc8f2cc5f9fa5f67d1b6a38b6c12f8b43f2e6e1ebc5865`  
		Last Modified: Wed, 13 Dec 2017 15:41:29 GMT  
		Size: 168.3 MB (168325773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5f9e2d852693f2983e4d5ff8d80cdb2479dccaa6679adea10c6f53c6dd8e76`  
		Last Modified: Wed, 13 Dec 2017 15:40:36 GMT  
		Size: 272.1 KB (272145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87166c27d9d7699aacb48a2aa6e37c0cb2972ea4a83e6a6e332bb7b3f63e504d`  
		Last Modified: Wed, 13 Dec 2017 19:32:30 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e461ab6796aa5f0818b70f00715b83858c17fd14b8e76f81f1197aac669f276a`  
		Last Modified: Thu, 11 Jan 2018 12:50:16 GMT  
		Size: 554.6 KB (554558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14942cd33ac3c914f79a5a61edfde958d9c2f772091d1dda63473a4d50e2b8b9`  
		Last Modified: Thu, 25 Jan 2018 19:49:53 GMT  
		Size: 9.9 MB (9925559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5343a45c1c72be03f0a897ec5e37b25b8e66ef8baf6afa607d48ae1c657b58e5`  
		Last Modified: Thu, 25 Jan 2018 19:49:50 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f19687ce470afa60d236dcd21a49db6e82e63e3f8e9fe1ffca6237e2df1c39b3`  
		Last Modified: Wed, 14 Feb 2018 14:30:07 GMT  
		Size: 1.0 MB (1032845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9a25091b153d9350d1b17f88db15e62b3d4f59969c9468309b81b9d0acf7d3c`  
		Last Modified: Wed, 14 Feb 2018 14:30:06 GMT  
		Size: 489.2 KB (489165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa58546e6cb62b7198bc37bf89d47d13fc9046e8fc8038b951bafeea6711a1c`  
		Last Modified: Wed, 14 Feb 2018 14:30:05 GMT  
		Size: 4.3 KB (4288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d4a40e3bef789a4347430d5fad02bcfe014fe686e4221b7adea0f8b49368ba`  
		Last Modified: Wed, 14 Feb 2018 14:30:05 GMT  
		Size: 25.8 KB (25779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc36ac27494bf0bfcfde144d478caf9677798ec61e07b915c7964b8d6f3e0568`  
		Last Modified: Wed, 14 Feb 2018 14:57:45 GMT  
		Size: 95.7 MB (95693723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8890342273f81725a7702cd32faeda7115b85de6f3fa96ce1efc2fc38fa924de`  
		Last Modified: Wed, 14 Feb 2018 14:57:29 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a05464ae6eb4358c493f9976b007c537ca54b8277cfd34f9ab523d08a605503`  
		Last Modified: Wed, 14 Feb 2018 14:57:29 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `convertigo:7.4.7-alpine`

```console
$ docker pull convertigo@sha256:d91f3c2f7393fab3877929d1f56a199e3c21113990c7856c651bf40ba508e906
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
$ docker pull convertigo@sha256:c33dc02d658c3567d08ff26c22e6430f77745a430a9a6e2eadb9406980107910
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.4 MB (155388846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bdbc70404edf68a631dccfce5e5a6c49bb7da035b0164cdaf52efaf0bf3f2c3`
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
# Thu, 25 Jan 2018 02:03:48 GMT
ENV TOMCAT_VERSION=7.0.84
# Thu, 25 Jan 2018 02:03:49 GMT
ENV TOMCAT_SHA1=e2940f45dde581741e2639e831d08498b6bb9d3a
# Thu, 25 Jan 2018 02:03:50 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz
# Thu, 25 Jan 2018 02:03:50 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc
# Thu, 25 Jan 2018 02:04:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 25 Jan 2018 02:04:40 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 25 Jan 2018 02:04:41 GMT
EXPOSE 8080/tcp
# Thu, 25 Jan 2018 02:04:42 GMT
CMD ["catalina.sh" "run"]
# Wed, 14 Feb 2018 05:00:44 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Wed, 14 Feb 2018 05:00:44 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 14 Feb 2018 05:00:46 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 14 Feb 2018 05:00:49 GMT
WORKDIR /usr/local/tomcat
# Wed, 14 Feb 2018 05:00:55 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Wed, 14 Feb 2018 05:00:56 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Feb 2018 05:00:56 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 14 Feb 2018 05:00:57 GMT
ENV TINI_VERSION=0.16.1
# Wed, 14 Feb 2018 05:00:58 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Wed, 14 Feb 2018 05:04:09 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Wed, 14 Feb 2018 05:04:10 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Wed, 14 Feb 2018 05:04:12 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Wed, 14 Feb 2018 05:06:49 GMT
ENV CONVERTIGO_VERSION=7.4.7
# Wed, 14 Feb 2018 05:06:49 GMT
ENV CONVERTIGO_REVISION=43946
# Wed, 14 Feb 2018 05:06:50 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.7/convertigo-7.4.7-v43946-linux32.war
# Wed, 14 Feb 2018 05:06:50 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Wed, 14 Feb 2018 05:07:27 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Wed, 14 Feb 2018 05:07:28 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Wed, 14 Feb 2018 05:07:28 GMT
COPY file:4d6653ca1b3348a349f72d73174019bc6689fb60faa86fcae8bc4db7990822c6 in / 
# Wed, 14 Feb 2018 05:07:29 GMT
WORKDIR /workspace
# Wed, 14 Feb 2018 05:07:30 GMT
VOLUME [/workspace]
# Wed, 14 Feb 2018 05:07:30 GMT
EXPOSE 28080/tcp
# Wed, 14 Feb 2018 05:07:31 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 14 Feb 2018 05:07:32 GMT
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
	-	`sha256:9e89d1ae58004f978e01de216b529bb08391ed88239b29d3fa09cb3e82a59ab0`  
		Last Modified: Thu, 25 Jan 2018 02:38:17 GMT  
		Size: 12.2 MB (12223642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad4482c64a34b4aef1d5f267cca9351bcf9c4d1015e9c6449ee37ac91ff7b82`  
		Last Modified: Thu, 25 Jan 2018 02:38:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41943110e4fc339ba71bbb58eb3ab7012da0782719f9ba20d8fa16e3c0521e5`  
		Last Modified: Wed, 14 Feb 2018 05:09:41 GMT  
		Size: 5.5 MB (5515069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce13ce8d0ea7e33efae14af0648f3bae7f4a95bfdb7bf2b4c96f57ed316af9b`  
		Last Modified: Wed, 14 Feb 2018 05:09:40 GMT  
		Size: 848.9 KB (848932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:765ea599ba39983bb9d238801f7c5ec9fd9a23368ea035555d633dab268d4c14`  
		Last Modified: Wed, 14 Feb 2018 05:09:38 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88444ec41197c7ea2cd8341443cf7c69a072af56d2e4715aa25386086106ab91`  
		Last Modified: Wed, 14 Feb 2018 05:09:38 GMT  
		Size: 25.8 KB (25757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c89e189e297ac6cc96bce0aac9ae47904f4ed60b8174577e878ea9d04da51af8`  
		Last Modified: Wed, 14 Feb 2018 05:09:53 GMT  
		Size: 81.6 MB (81616022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678c40e3e5e84d020c2309ae85135034a1d8b0c46988ec1d5cb0589c49b02e0b`  
		Last Modified: Wed, 14 Feb 2018 05:09:38 GMT  
		Size: 453.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ed6e8f76b08a48f3d44880863aa3d225255d475725a4f0964d1621809b32ef`  
		Last Modified: Wed, 14 Feb 2018 05:09:39 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.4.7-alpine` - linux; 386

```console
$ docker pull convertigo@sha256:05c2df35081f43c25fec9f657e44d3ed958c45ebe72f4ba4e765111c8f16a542
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.6 MB (158592110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09bbe9e546299def89e088bfc3223a5267d44baaf8be1700d89926c64eaee30f`
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
# Thu, 25 Jan 2018 15:49:24 GMT
ENV TOMCAT_VERSION=7.0.84
# Thu, 25 Jan 2018 15:49:25 GMT
ENV TOMCAT_SHA1=e2940f45dde581741e2639e831d08498b6bb9d3a
# Thu, 25 Jan 2018 15:49:25 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz
# Thu, 25 Jan 2018 15:49:26 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc
# Thu, 25 Jan 2018 16:20:39 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 25 Jan 2018 16:26:20 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 25 Jan 2018 16:36:21 GMT
EXPOSE 8080/tcp
# Thu, 25 Jan 2018 16:36:21 GMT
CMD ["catalina.sh" "run"]
# Wed, 14 Feb 2018 13:58:18 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Wed, 14 Feb 2018 13:58:18 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 14 Feb 2018 13:58:19 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 14 Feb 2018 13:58:19 GMT
WORKDIR /usr/local/tomcat
# Wed, 14 Feb 2018 13:58:27 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Wed, 14 Feb 2018 13:58:27 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Feb 2018 13:58:27 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 14 Feb 2018 13:58:28 GMT
ENV TINI_VERSION=0.16.1
# Wed, 14 Feb 2018 13:58:28 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Wed, 14 Feb 2018 13:58:40 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Wed, 14 Feb 2018 13:58:40 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Wed, 14 Feb 2018 13:58:42 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Wed, 14 Feb 2018 14:19:27 GMT
ENV CONVERTIGO_VERSION=7.4.7
# Wed, 14 Feb 2018 14:19:27 GMT
ENV CONVERTIGO_REVISION=43946
# Wed, 14 Feb 2018 14:19:27 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.7/convertigo-7.4.7-v43946-linux32.war
# Wed, 14 Feb 2018 14:19:28 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Wed, 14 Feb 2018 14:19:47 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Wed, 14 Feb 2018 14:19:48 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Wed, 14 Feb 2018 14:19:48 GMT
COPY file:4d6653ca1b3348a349f72d73174019bc6689fb60faa86fcae8bc4db7990822c6 in / 
# Wed, 14 Feb 2018 14:19:48 GMT
WORKDIR /workspace
# Wed, 14 Feb 2018 14:19:49 GMT
VOLUME [/workspace]
# Wed, 14 Feb 2018 14:19:49 GMT
EXPOSE 28080/tcp
# Wed, 14 Feb 2018 14:19:49 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 14 Feb 2018 14:19:50 GMT
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
	-	`sha256:c4c24a11df20b8d8f1fdc44485f66c47e23b030bfcd0269e5b2ec85ecd9e8a7a`  
		Last Modified: Thu, 25 Jan 2018 19:51:42 GMT  
		Size: 12.4 MB (12435784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d286804ec5e152ebb873ba7b5d9b343a6cda1738912b5fe0e543b6de5291e68`  
		Last Modified: Thu, 25 Jan 2018 19:51:35 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:930bc4f5eeab85c91c1bcd1a4a4624cc683a486d4d2c2680733beab88512506d`  
		Last Modified: Wed, 14 Feb 2018 14:39:57 GMT  
		Size: 6.4 MB (6351910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd9bd76abfed79a17155d0efc4f969b3bec34f93d0aeaaf3c62c64854ee070b1`  
		Last Modified: Wed, 14 Feb 2018 14:39:53 GMT  
		Size: 904.6 KB (904642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286c7b016c090d3bc12fa883b3846bf10b1abd1aa5300ebee60a20cef7556771`  
		Last Modified: Wed, 14 Feb 2018 14:39:53 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aac3472fdf9eeddcfb7bd3b4c41651eb2658c4e1f2c32232cb2eb906e5e1ddd`  
		Last Modified: Wed, 14 Feb 2018 14:39:53 GMT  
		Size: 25.8 KB (25759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ccf7ba0ebe7cf52cb91a0f255e81546ae4c96bee29cbaeadd141932f8fec19`  
		Last Modified: Wed, 14 Feb 2018 15:24:03 GMT  
		Size: 81.6 MB (81616010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3bc5560e2cd2625c55ca13a3a79bb5d9520e602380c79d2a040f7a2335e1d3`  
		Last Modified: Wed, 14 Feb 2018 15:23:48 GMT  
		Size: 456.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:332545d5ef29402b59d6d14beccd81a60e50498714f81c1cb674adeacdbc9dd8`  
		Last Modified: Wed, 14 Feb 2018 15:23:48 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `convertigo:7.4-alpine`

```console
$ docker pull convertigo@sha256:d91f3c2f7393fab3877929d1f56a199e3c21113990c7856c651bf40ba508e906
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
$ docker pull convertigo@sha256:c33dc02d658c3567d08ff26c22e6430f77745a430a9a6e2eadb9406980107910
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.4 MB (155388846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bdbc70404edf68a631dccfce5e5a6c49bb7da035b0164cdaf52efaf0bf3f2c3`
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
# Thu, 25 Jan 2018 02:03:48 GMT
ENV TOMCAT_VERSION=7.0.84
# Thu, 25 Jan 2018 02:03:49 GMT
ENV TOMCAT_SHA1=e2940f45dde581741e2639e831d08498b6bb9d3a
# Thu, 25 Jan 2018 02:03:50 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz
# Thu, 25 Jan 2018 02:03:50 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc
# Thu, 25 Jan 2018 02:04:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 25 Jan 2018 02:04:40 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 25 Jan 2018 02:04:41 GMT
EXPOSE 8080/tcp
# Thu, 25 Jan 2018 02:04:42 GMT
CMD ["catalina.sh" "run"]
# Wed, 14 Feb 2018 05:00:44 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Wed, 14 Feb 2018 05:00:44 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 14 Feb 2018 05:00:46 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 14 Feb 2018 05:00:49 GMT
WORKDIR /usr/local/tomcat
# Wed, 14 Feb 2018 05:00:55 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Wed, 14 Feb 2018 05:00:56 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Feb 2018 05:00:56 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 14 Feb 2018 05:00:57 GMT
ENV TINI_VERSION=0.16.1
# Wed, 14 Feb 2018 05:00:58 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Wed, 14 Feb 2018 05:04:09 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Wed, 14 Feb 2018 05:04:10 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Wed, 14 Feb 2018 05:04:12 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Wed, 14 Feb 2018 05:06:49 GMT
ENV CONVERTIGO_VERSION=7.4.7
# Wed, 14 Feb 2018 05:06:49 GMT
ENV CONVERTIGO_REVISION=43946
# Wed, 14 Feb 2018 05:06:50 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.7/convertigo-7.4.7-v43946-linux32.war
# Wed, 14 Feb 2018 05:06:50 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Wed, 14 Feb 2018 05:07:27 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Wed, 14 Feb 2018 05:07:28 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Wed, 14 Feb 2018 05:07:28 GMT
COPY file:4d6653ca1b3348a349f72d73174019bc6689fb60faa86fcae8bc4db7990822c6 in / 
# Wed, 14 Feb 2018 05:07:29 GMT
WORKDIR /workspace
# Wed, 14 Feb 2018 05:07:30 GMT
VOLUME [/workspace]
# Wed, 14 Feb 2018 05:07:30 GMT
EXPOSE 28080/tcp
# Wed, 14 Feb 2018 05:07:31 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 14 Feb 2018 05:07:32 GMT
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
	-	`sha256:9e89d1ae58004f978e01de216b529bb08391ed88239b29d3fa09cb3e82a59ab0`  
		Last Modified: Thu, 25 Jan 2018 02:38:17 GMT  
		Size: 12.2 MB (12223642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad4482c64a34b4aef1d5f267cca9351bcf9c4d1015e9c6449ee37ac91ff7b82`  
		Last Modified: Thu, 25 Jan 2018 02:38:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41943110e4fc339ba71bbb58eb3ab7012da0782719f9ba20d8fa16e3c0521e5`  
		Last Modified: Wed, 14 Feb 2018 05:09:41 GMT  
		Size: 5.5 MB (5515069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce13ce8d0ea7e33efae14af0648f3bae7f4a95bfdb7bf2b4c96f57ed316af9b`  
		Last Modified: Wed, 14 Feb 2018 05:09:40 GMT  
		Size: 848.9 KB (848932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:765ea599ba39983bb9d238801f7c5ec9fd9a23368ea035555d633dab268d4c14`  
		Last Modified: Wed, 14 Feb 2018 05:09:38 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88444ec41197c7ea2cd8341443cf7c69a072af56d2e4715aa25386086106ab91`  
		Last Modified: Wed, 14 Feb 2018 05:09:38 GMT  
		Size: 25.8 KB (25757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c89e189e297ac6cc96bce0aac9ae47904f4ed60b8174577e878ea9d04da51af8`  
		Last Modified: Wed, 14 Feb 2018 05:09:53 GMT  
		Size: 81.6 MB (81616022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678c40e3e5e84d020c2309ae85135034a1d8b0c46988ec1d5cb0589c49b02e0b`  
		Last Modified: Wed, 14 Feb 2018 05:09:38 GMT  
		Size: 453.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ed6e8f76b08a48f3d44880863aa3d225255d475725a4f0964d1621809b32ef`  
		Last Modified: Wed, 14 Feb 2018 05:09:39 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.4-alpine` - linux; 386

```console
$ docker pull convertigo@sha256:05c2df35081f43c25fec9f657e44d3ed958c45ebe72f4ba4e765111c8f16a542
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.6 MB (158592110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09bbe9e546299def89e088bfc3223a5267d44baaf8be1700d89926c64eaee30f`
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
# Thu, 25 Jan 2018 15:49:24 GMT
ENV TOMCAT_VERSION=7.0.84
# Thu, 25 Jan 2018 15:49:25 GMT
ENV TOMCAT_SHA1=e2940f45dde581741e2639e831d08498b6bb9d3a
# Thu, 25 Jan 2018 15:49:25 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz
# Thu, 25 Jan 2018 15:49:26 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc
# Thu, 25 Jan 2018 16:20:39 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 25 Jan 2018 16:26:20 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 25 Jan 2018 16:36:21 GMT
EXPOSE 8080/tcp
# Thu, 25 Jan 2018 16:36:21 GMT
CMD ["catalina.sh" "run"]
# Wed, 14 Feb 2018 13:58:18 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Wed, 14 Feb 2018 13:58:18 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 14 Feb 2018 13:58:19 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 14 Feb 2018 13:58:19 GMT
WORKDIR /usr/local/tomcat
# Wed, 14 Feb 2018 13:58:27 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Wed, 14 Feb 2018 13:58:27 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Feb 2018 13:58:27 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 14 Feb 2018 13:58:28 GMT
ENV TINI_VERSION=0.16.1
# Wed, 14 Feb 2018 13:58:28 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Wed, 14 Feb 2018 13:58:40 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Wed, 14 Feb 2018 13:58:40 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Wed, 14 Feb 2018 13:58:42 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Wed, 14 Feb 2018 14:19:27 GMT
ENV CONVERTIGO_VERSION=7.4.7
# Wed, 14 Feb 2018 14:19:27 GMT
ENV CONVERTIGO_REVISION=43946
# Wed, 14 Feb 2018 14:19:27 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.7/convertigo-7.4.7-v43946-linux32.war
# Wed, 14 Feb 2018 14:19:28 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Wed, 14 Feb 2018 14:19:47 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Wed, 14 Feb 2018 14:19:48 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Wed, 14 Feb 2018 14:19:48 GMT
COPY file:4d6653ca1b3348a349f72d73174019bc6689fb60faa86fcae8bc4db7990822c6 in / 
# Wed, 14 Feb 2018 14:19:48 GMT
WORKDIR /workspace
# Wed, 14 Feb 2018 14:19:49 GMT
VOLUME [/workspace]
# Wed, 14 Feb 2018 14:19:49 GMT
EXPOSE 28080/tcp
# Wed, 14 Feb 2018 14:19:49 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 14 Feb 2018 14:19:50 GMT
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
	-	`sha256:c4c24a11df20b8d8f1fdc44485f66c47e23b030bfcd0269e5b2ec85ecd9e8a7a`  
		Last Modified: Thu, 25 Jan 2018 19:51:42 GMT  
		Size: 12.4 MB (12435784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d286804ec5e152ebb873ba7b5d9b343a6cda1738912b5fe0e543b6de5291e68`  
		Last Modified: Thu, 25 Jan 2018 19:51:35 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:930bc4f5eeab85c91c1bcd1a4a4624cc683a486d4d2c2680733beab88512506d`  
		Last Modified: Wed, 14 Feb 2018 14:39:57 GMT  
		Size: 6.4 MB (6351910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd9bd76abfed79a17155d0efc4f969b3bec34f93d0aeaaf3c62c64854ee070b1`  
		Last Modified: Wed, 14 Feb 2018 14:39:53 GMT  
		Size: 904.6 KB (904642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286c7b016c090d3bc12fa883b3846bf10b1abd1aa5300ebee60a20cef7556771`  
		Last Modified: Wed, 14 Feb 2018 14:39:53 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aac3472fdf9eeddcfb7bd3b4c41651eb2658c4e1f2c32232cb2eb906e5e1ddd`  
		Last Modified: Wed, 14 Feb 2018 14:39:53 GMT  
		Size: 25.8 KB (25759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ccf7ba0ebe7cf52cb91a0f255e81546ae4c96bee29cbaeadd141932f8fec19`  
		Last Modified: Wed, 14 Feb 2018 15:24:03 GMT  
		Size: 81.6 MB (81616010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3bc5560e2cd2625c55ca13a3a79bb5d9520e602380c79d2a040f7a2335e1d3`  
		Last Modified: Wed, 14 Feb 2018 15:23:48 GMT  
		Size: 456.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:332545d5ef29402b59d6d14beccd81a60e50498714f81c1cb674adeacdbc9dd8`  
		Last Modified: Wed, 14 Feb 2018 15:23:48 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `convertigo:7.5`

```console
$ docker pull convertigo@sha256:a3934fe3699fa8784f0a459f669c3ace4505e67842a67740ff5a83c7506888f2
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
$ docker pull convertigo@sha256:d0a3c733249bed5910e10d111b3e42842d340b05eaa8b70c6b1ede9c72c2805d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.1 MB (334054399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af32c8455740acf6500420529cb2a3d1271883c74bf54c8ea8030a057328c353`
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
# Thu, 15 Feb 2018 18:55:46 GMT
ENV TOMCAT_VERSION=7.0.84
# Thu, 15 Feb 2018 18:55:46 GMT
ENV TOMCAT_SHA1=e2940f45dde581741e2639e831d08498b6bb9d3a
# Thu, 15 Feb 2018 18:55:46 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz
# Thu, 15 Feb 2018 18:55:47 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc
# Thu, 15 Feb 2018 18:56:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 15 Feb 2018 18:56:35 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 15 Feb 2018 18:56:35 GMT
EXPOSE 8080/tcp
# Thu, 15 Feb 2018 18:56:35 GMT
CMD ["catalina.sh" "run"]
# Thu, 15 Feb 2018 19:56:58 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Thu, 15 Feb 2018 19:56:59 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 15 Feb 2018 19:57:07 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 15 Feb 2018 19:57:14 GMT
WORKDIR /usr/local/tomcat
# Thu, 15 Feb 2018 19:57:19 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:57:20 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 19:57:20 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 15 Feb 2018 19:57:20 GMT
ENV TINI_VERSION=0.16.1
# Thu, 15 Feb 2018 19:57:20 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Thu, 15 Feb 2018 20:04:15 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Thu, 15 Feb 2018 20:04:22 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Thu, 15 Feb 2018 20:04:23 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Thu, 15 Feb 2018 20:22:39 GMT
ENV CONVERTIGO_VERSION=7.5.0
# Thu, 15 Feb 2018 20:22:40 GMT
ENV CONVERTIGO_REVISION=44235
# Thu, 15 Feb 2018 20:22:40 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.0/convertigo-7.5.0-v44235-linux32.war
# Thu, 15 Feb 2018 20:22:40 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Thu, 15 Feb 2018 20:22:55 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Thu, 15 Feb 2018 20:22:55 GMT
COPY file:03a78619febe6c5b17d175b71a6dbe271ce2c70c52e354c6642b986d1b28fc2e in webapps/ROOT/index.html 
# Thu, 15 Feb 2018 20:22:56 GMT
COPY file:0a47ea62001ca3cec3ce66ba5a1de976c240bea17f36878bcf94b75e4f0cdf86 in / 
# Thu, 15 Feb 2018 20:22:56 GMT
ENV SWT_GTK3=0
# Thu, 15 Feb 2018 20:22:56 GMT
WORKDIR /workspace
# Thu, 15 Feb 2018 20:22:57 GMT
VOLUME [/workspace]
# Thu, 15 Feb 2018 20:22:57 GMT
EXPOSE 28080/tcp
# Thu, 15 Feb 2018 20:22:57 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 20:22:58 GMT
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
	-	`sha256:e05bf36595c3481d7d05dc42588368b33e4ce8a930636e3b3cf726f67992697f`  
		Last Modified: Thu, 15 Feb 2018 19:25:45 GMT  
		Size: 10.0 MB (9956728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baacc7e100cc5485faaf9747b01c29df51b6bc5ce1685db3f8df8a12dd8f26bf`  
		Last Modified: Thu, 15 Feb 2018 19:25:42 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b6759e6f36cc653698a5e1d0ffde8ed2b2d6a1119fdc7f23dba4cd4ed5d480`  
		Last Modified: Thu, 15 Feb 2018 20:07:36 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88f4e6fe92008bbd7e7a0ca8f4b4256732f25d2405f42e7efa9db0a9769034b`  
		Last Modified: Thu, 15 Feb 2018 20:07:35 GMT  
		Size: 482.7 KB (482666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ebaa3c4df30cdc48e477cd7da48f0648de237f6a254959648e73b131d15df8`  
		Last Modified: Thu, 15 Feb 2018 20:07:33 GMT  
		Size: 4.3 KB (4332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee864ed85d5e906e7aa3a1091990cbde67e4c81ed45ccf69f35ad64aa652b0b0`  
		Last Modified: Thu, 15 Feb 2018 20:07:33 GMT  
		Size: 25.8 KB (25767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d24ba63df3e6bb56a7bacd6c6d83d8893b30a511c74c489c4831932dd8e0f11`  
		Last Modified: Thu, 15 Feb 2018 20:23:35 GMT  
		Size: 116.7 MB (116673507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd61705f348e45cd45a97c5d6fea1eddad86e8231bd1587f8a22c87f056c4d35`  
		Last Modified: Thu, 15 Feb 2018 20:23:20 GMT  
		Size: 464.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ebc4d709f2f0ad911c283a1f2037f8d5eaa6f5b3eed4e32704ba76ff52f2af3`  
		Last Modified: Thu, 15 Feb 2018 20:23:19 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.5` - linux; arm64 variant v8

```console
$ docker pull convertigo@sha256:786e4c97fd04aee57417eba4d3aa018e1cb9f24d1b7b206ccfee75e6beda3c1e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.9 MB (338880665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9af424d72844bc648cd5f07436cfd63ab591a5ac1eb5996e9c28f5acb0999c7f`
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
# Fri, 16 Feb 2018 11:30:00 GMT
ENV TOMCAT_VERSION=7.0.84
# Fri, 16 Feb 2018 11:30:00 GMT
ENV TOMCAT_SHA1=e2940f45dde581741e2639e831d08498b6bb9d3a
# Fri, 16 Feb 2018 11:30:01 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz
# Fri, 16 Feb 2018 11:30:02 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc
# Fri, 16 Feb 2018 11:32:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Fri, 16 Feb 2018 11:32:29 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 16 Feb 2018 11:32:36 GMT
EXPOSE 8080/tcp
# Fri, 16 Feb 2018 11:32:37 GMT
CMD ["catalina.sh" "run"]
# Fri, 16 Feb 2018 14:48:41 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Fri, 16 Feb 2018 14:48:42 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 16 Feb 2018 14:48:44 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 16 Feb 2018 14:48:44 GMT
WORKDIR /usr/local/tomcat
# Fri, 16 Feb 2018 14:48:53 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 14:48:54 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Feb 2018 14:48:54 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 16 Feb 2018 14:48:55 GMT
ENV TINI_VERSION=0.16.1
# Fri, 16 Feb 2018 14:48:55 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Fri, 16 Feb 2018 14:49:04 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Fri, 16 Feb 2018 14:49:07 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Fri, 16 Feb 2018 14:49:09 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Fri, 16 Feb 2018 14:49:09 GMT
ENV CONVERTIGO_VERSION=7.5.0
# Fri, 16 Feb 2018 14:49:10 GMT
ENV CONVERTIGO_REVISION=44235
# Fri, 16 Feb 2018 14:49:11 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.0/convertigo-7.5.0-v44235-linux32.war
# Fri, 16 Feb 2018 14:49:11 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Fri, 16 Feb 2018 14:49:51 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Fri, 16 Feb 2018 14:49:52 GMT
COPY file:03a78619febe6c5b17d175b71a6dbe271ce2c70c52e354c6642b986d1b28fc2e in webapps/ROOT/index.html 
# Fri, 16 Feb 2018 14:49:53 GMT
COPY file:0a47ea62001ca3cec3ce66ba5a1de976c240bea17f36878bcf94b75e4f0cdf86 in / 
# Fri, 16 Feb 2018 14:49:53 GMT
ENV SWT_GTK3=0
# Fri, 16 Feb 2018 14:49:54 GMT
WORKDIR /workspace
# Fri, 16 Feb 2018 14:49:55 GMT
VOLUME [/workspace]
# Fri, 16 Feb 2018 14:49:56 GMT
EXPOSE 28080/tcp
# Fri, 16 Feb 2018 14:49:56 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Fri, 16 Feb 2018 14:49:57 GMT
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
	-	`sha256:7709f52308e020dbf6302d86313711003d21a815bb37e32036207d4eec292a75`  
		Last Modified: Fri, 16 Feb 2018 12:55:26 GMT  
		Size: 10.0 MB (10037071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8494fbc30fa5d504aec5ced8092104358ba38cb99dab9bcc1fdbb9b2680650d7`  
		Last Modified: Fri, 16 Feb 2018 12:55:22 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c253a6e7a3eab3849a9338d3380e9948b8ebf6b17f91891611f93926f7499fdb`  
		Last Modified: Fri, 16 Feb 2018 14:51:29 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d31c0de6f8eb4e424b031b14bc17c0a3a2dfc68a6087c57cf6b593b0f524fe3`  
		Last Modified: Fri, 16 Feb 2018 14:51:29 GMT  
		Size: 476.8 KB (476841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe01a19f0c54038ee21fd759ae32272bd37de82d9408f62ea2382d3c2d92b214`  
		Last Modified: Fri, 16 Feb 2018 14:51:26 GMT  
		Size: 4.3 KB (4312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd5f3a52097392d9a849ff2a84a4d08a341f9819638f51a01b2dd25d63b29156`  
		Last Modified: Fri, 16 Feb 2018 14:51:26 GMT  
		Size: 25.8 KB (25768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee32d897a11020d92c24d366bc484a805b3c9911c42685d452c03f7fef1b885`  
		Last Modified: Fri, 16 Feb 2018 14:51:49 GMT  
		Size: 116.7 MB (116673392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4750aa7e438e7e0e9c9d776ecaac24dab46fe7065628240e24fa0576088d5fa0`  
		Last Modified: Fri, 16 Feb 2018 14:51:26 GMT  
		Size: 466.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03dfd239ac1b0f7ec5d60b584f5e0a0a72a04c54d2a35d32017c1b0e5ccdccde`  
		Last Modified: Fri, 16 Feb 2018 14:51:26 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.5` - linux; 386

```console
$ docker pull convertigo@sha256:d3be25a453b6f8ff89a28f3918629fc21448755d5e616935f9c1359074576ef0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **373.8 MB (373768745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f896f27e92e68c94efe64cf089fe76cf433e176826f1e373946a60f90a8a5eef`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Tue, 12 Dec 2017 14:28:39 GMT
ADD file:a6cfca6b73e41be73fc4e964d25ccb94f9c3538d1bd6623f5f203d3594167a5f in / 
# Tue, 12 Dec 2017 14:28:39 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:45:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:46:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Dec 2017 15:21:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 15:21:28 GMT
ENV LANG=C.UTF-8
# Wed, 13 Dec 2017 15:21:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 13 Dec 2017 15:21:30 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 13 Dec 2017 15:21:30 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 13 Dec 2017 15:21:30 GMT
ENV JAVA_VERSION=8u151
# Wed, 13 Dec 2017 15:21:31 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Wed, 13 Dec 2017 15:21:31 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 13 Dec 2017 15:22:49 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 13 Dec 2017 15:22:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Dec 2017 18:55:07 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 13 Dec 2017 18:55:07 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 18:55:09 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 13 Dec 2017 18:55:09 GMT
WORKDIR /usr/local/tomcat
# Wed, 13 Dec 2017 18:55:09 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 13 Dec 2017 18:55:09 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 13 Dec 2017 18:55:10 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Thu, 11 Jan 2018 12:03:22 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 11 Jan 2018 12:03:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Jan 2018 12:03:34 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 19 Jan 2018 20:37:18 GMT
ENV TOMCAT_MAJOR=7
# Thu, 25 Jan 2018 14:57:12 GMT
ENV TOMCAT_VERSION=7.0.84
# Thu, 25 Jan 2018 14:57:12 GMT
ENV TOMCAT_SHA1=e2940f45dde581741e2639e831d08498b6bb9d3a
# Thu, 25 Jan 2018 14:57:12 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz
# Thu, 25 Jan 2018 14:57:13 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc
# Thu, 25 Jan 2018 14:58:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 25 Jan 2018 14:59:44 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 25 Jan 2018 14:59:44 GMT
EXPOSE 8080/tcp
# Thu, 25 Jan 2018 14:59:44 GMT
CMD ["catalina.sh" "run"]
# Wed, 14 Feb 2018 13:25:17 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Wed, 14 Feb 2018 13:25:17 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 14 Feb 2018 13:25:19 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 14 Feb 2018 13:35:39 GMT
WORKDIR /usr/local/tomcat
# Wed, 14 Feb 2018 13:35:52 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Feb 2018 13:40:58 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Feb 2018 13:40:59 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 14 Feb 2018 13:40:59 GMT
ENV TINI_VERSION=0.16.1
# Wed, 14 Feb 2018 13:40:59 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Wed, 14 Feb 2018 13:48:47 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Wed, 14 Feb 2018 13:48:48 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Wed, 14 Feb 2018 13:48:50 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Wed, 14 Feb 2018 13:48:50 GMT
ENV CONVERTIGO_VERSION=7.5.0
# Wed, 14 Feb 2018 13:48:50 GMT
ENV CONVERTIGO_REVISION=44235
# Wed, 14 Feb 2018 13:48:51 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.0/convertigo-7.5.0-v44235-linux32.war
# Wed, 14 Feb 2018 13:48:51 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Wed, 14 Feb 2018 13:49:30 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Wed, 14 Feb 2018 13:49:30 GMT
COPY file:03a78619febe6c5b17d175b71a6dbe271ce2c70c52e354c6642b986d1b28fc2e in webapps/ROOT/index.html 
# Wed, 14 Feb 2018 13:49:31 GMT
COPY file:0a47ea62001ca3cec3ce66ba5a1de976c240bea17f36878bcf94b75e4f0cdf86 in / 
# Wed, 14 Feb 2018 13:49:31 GMT
ENV SWT_GTK3=0
# Wed, 14 Feb 2018 13:49:32 GMT
WORKDIR /workspace
# Wed, 14 Feb 2018 13:49:32 GMT
VOLUME [/workspace]
# Wed, 14 Feb 2018 13:49:32 GMT
EXPOSE 28080/tcp
# Wed, 14 Feb 2018 13:49:33 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 14 Feb 2018 13:49:33 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:50d72515450fee13bee4f8be703ed400c6fc2f1bc9a5699f1d6917eb6dde6aa0`  
		Last Modified: Tue, 12 Dec 2017 15:01:52 GMT  
		Size: 45.8 MB (45827066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a9ff72840f920dca068cca81368ea4b369a74d6ec40929d4cb4a6b4e6d2264`  
		Last Modified: Wed, 13 Dec 2017 14:58:26 GMT  
		Size: 11.2 MB (11150413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3e33c1d09c88921e13b6b46cc0476040037bbe57b669dbbc9d16f17cde6298`  
		Last Modified: Wed, 13 Dec 2017 14:58:25 GMT  
		Size: 4.6 MB (4554619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9934e17bca1f4fdf8114e6baf80eb11eb18b0d425c8568b35fac04d2913dee5`  
		Last Modified: Wed, 13 Dec 2017 15:40:37 GMT  
		Size: 861.1 KB (861149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f54df81eda17ba5ce500a3bbd23abd9db02eb57b697611b88f6249bb15cdfd`  
		Last Modified: Wed, 13 Dec 2017 15:40:36 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ba1f721572ed69c9b8af65e4025129031d6cc4cf7aceb610cd20f66310723a`  
		Last Modified: Wed, 13 Dec 2017 15:40:36 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730b226ae3de1d490bbc8f2cc5f9fa5f67d1b6a38b6c12f8b43f2e6e1ebc5865`  
		Last Modified: Wed, 13 Dec 2017 15:41:29 GMT  
		Size: 168.3 MB (168325773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5f9e2d852693f2983e4d5ff8d80cdb2479dccaa6679adea10c6f53c6dd8e76`  
		Last Modified: Wed, 13 Dec 2017 15:40:36 GMT  
		Size: 272.1 KB (272145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87166c27d9d7699aacb48a2aa6e37c0cb2972ea4a83e6a6e332bb7b3f63e504d`  
		Last Modified: Wed, 13 Dec 2017 19:32:30 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e461ab6796aa5f0818b70f00715b83858c17fd14b8e76f81f1197aac669f276a`  
		Last Modified: Thu, 11 Jan 2018 12:50:16 GMT  
		Size: 554.6 KB (554558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14942cd33ac3c914f79a5a61edfde958d9c2f772091d1dda63473a4d50e2b8b9`  
		Last Modified: Thu, 25 Jan 2018 19:49:53 GMT  
		Size: 9.9 MB (9925559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5343a45c1c72be03f0a897ec5e37b25b8e66ef8baf6afa607d48ae1c657b58e5`  
		Last Modified: Thu, 25 Jan 2018 19:49:50 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f19687ce470afa60d236dcd21a49db6e82e63e3f8e9fe1ffca6237e2df1c39b3`  
		Last Modified: Wed, 14 Feb 2018 14:30:07 GMT  
		Size: 1.0 MB (1032845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9a25091b153d9350d1b17f88db15e62b3d4f59969c9468309b81b9d0acf7d3c`  
		Last Modified: Wed, 14 Feb 2018 14:30:06 GMT  
		Size: 489.2 KB (489165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa58546e6cb62b7198bc37bf89d47d13fc9046e8fc8038b951bafeea6711a1c`  
		Last Modified: Wed, 14 Feb 2018 14:30:05 GMT  
		Size: 4.3 KB (4288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d4a40e3bef789a4347430d5fad02bcfe014fe686e4221b7adea0f8b49368ba`  
		Last Modified: Wed, 14 Feb 2018 14:30:05 GMT  
		Size: 25.8 KB (25779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9833dfb5d98d882bc31968a3ab823dd48bed20ed61d816dfcf0f456285b43702`  
		Last Modified: Wed, 14 Feb 2018 14:30:28 GMT  
		Size: 130.7 MB (130743185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f5a834153e7bcd25f0756945f111d7ee3c1e569513e9b79864c6bfdec96476`  
		Last Modified: Wed, 14 Feb 2018 14:30:05 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:450657f076202a82a68b39b7c99d6012fbd0b25c06f22b9e759dc050f4fa5f70`  
		Last Modified: Wed, 14 Feb 2018 14:30:05 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `convertigo:7.5.0`

```console
$ docker pull convertigo@sha256:a3934fe3699fa8784f0a459f669c3ace4505e67842a67740ff5a83c7506888f2
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
$ docker pull convertigo@sha256:d0a3c733249bed5910e10d111b3e42842d340b05eaa8b70c6b1ede9c72c2805d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.1 MB (334054399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af32c8455740acf6500420529cb2a3d1271883c74bf54c8ea8030a057328c353`
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
# Thu, 15 Feb 2018 18:55:46 GMT
ENV TOMCAT_VERSION=7.0.84
# Thu, 15 Feb 2018 18:55:46 GMT
ENV TOMCAT_SHA1=e2940f45dde581741e2639e831d08498b6bb9d3a
# Thu, 15 Feb 2018 18:55:46 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz
# Thu, 15 Feb 2018 18:55:47 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc
# Thu, 15 Feb 2018 18:56:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 15 Feb 2018 18:56:35 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 15 Feb 2018 18:56:35 GMT
EXPOSE 8080/tcp
# Thu, 15 Feb 2018 18:56:35 GMT
CMD ["catalina.sh" "run"]
# Thu, 15 Feb 2018 19:56:58 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Thu, 15 Feb 2018 19:56:59 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 15 Feb 2018 19:57:07 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 15 Feb 2018 19:57:14 GMT
WORKDIR /usr/local/tomcat
# Thu, 15 Feb 2018 19:57:19 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:57:20 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 19:57:20 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 15 Feb 2018 19:57:20 GMT
ENV TINI_VERSION=0.16.1
# Thu, 15 Feb 2018 19:57:20 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Thu, 15 Feb 2018 20:04:15 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Thu, 15 Feb 2018 20:04:22 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Thu, 15 Feb 2018 20:04:23 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Thu, 15 Feb 2018 20:22:39 GMT
ENV CONVERTIGO_VERSION=7.5.0
# Thu, 15 Feb 2018 20:22:40 GMT
ENV CONVERTIGO_REVISION=44235
# Thu, 15 Feb 2018 20:22:40 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.0/convertigo-7.5.0-v44235-linux32.war
# Thu, 15 Feb 2018 20:22:40 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Thu, 15 Feb 2018 20:22:55 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Thu, 15 Feb 2018 20:22:55 GMT
COPY file:03a78619febe6c5b17d175b71a6dbe271ce2c70c52e354c6642b986d1b28fc2e in webapps/ROOT/index.html 
# Thu, 15 Feb 2018 20:22:56 GMT
COPY file:0a47ea62001ca3cec3ce66ba5a1de976c240bea17f36878bcf94b75e4f0cdf86 in / 
# Thu, 15 Feb 2018 20:22:56 GMT
ENV SWT_GTK3=0
# Thu, 15 Feb 2018 20:22:56 GMT
WORKDIR /workspace
# Thu, 15 Feb 2018 20:22:57 GMT
VOLUME [/workspace]
# Thu, 15 Feb 2018 20:22:57 GMT
EXPOSE 28080/tcp
# Thu, 15 Feb 2018 20:22:57 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 20:22:58 GMT
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
	-	`sha256:e05bf36595c3481d7d05dc42588368b33e4ce8a930636e3b3cf726f67992697f`  
		Last Modified: Thu, 15 Feb 2018 19:25:45 GMT  
		Size: 10.0 MB (9956728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baacc7e100cc5485faaf9747b01c29df51b6bc5ce1685db3f8df8a12dd8f26bf`  
		Last Modified: Thu, 15 Feb 2018 19:25:42 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b6759e6f36cc653698a5e1d0ffde8ed2b2d6a1119fdc7f23dba4cd4ed5d480`  
		Last Modified: Thu, 15 Feb 2018 20:07:36 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88f4e6fe92008bbd7e7a0ca8f4b4256732f25d2405f42e7efa9db0a9769034b`  
		Last Modified: Thu, 15 Feb 2018 20:07:35 GMT  
		Size: 482.7 KB (482666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ebaa3c4df30cdc48e477cd7da48f0648de237f6a254959648e73b131d15df8`  
		Last Modified: Thu, 15 Feb 2018 20:07:33 GMT  
		Size: 4.3 KB (4332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee864ed85d5e906e7aa3a1091990cbde67e4c81ed45ccf69f35ad64aa652b0b0`  
		Last Modified: Thu, 15 Feb 2018 20:07:33 GMT  
		Size: 25.8 KB (25767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d24ba63df3e6bb56a7bacd6c6d83d8893b30a511c74c489c4831932dd8e0f11`  
		Last Modified: Thu, 15 Feb 2018 20:23:35 GMT  
		Size: 116.7 MB (116673507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd61705f348e45cd45a97c5d6fea1eddad86e8231bd1587f8a22c87f056c4d35`  
		Last Modified: Thu, 15 Feb 2018 20:23:20 GMT  
		Size: 464.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ebc4d709f2f0ad911c283a1f2037f8d5eaa6f5b3eed4e32704ba76ff52f2af3`  
		Last Modified: Thu, 15 Feb 2018 20:23:19 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.5.0` - linux; arm64 variant v8

```console
$ docker pull convertigo@sha256:786e4c97fd04aee57417eba4d3aa018e1cb9f24d1b7b206ccfee75e6beda3c1e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.9 MB (338880665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9af424d72844bc648cd5f07436cfd63ab591a5ac1eb5996e9c28f5acb0999c7f`
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
# Fri, 16 Feb 2018 11:30:00 GMT
ENV TOMCAT_VERSION=7.0.84
# Fri, 16 Feb 2018 11:30:00 GMT
ENV TOMCAT_SHA1=e2940f45dde581741e2639e831d08498b6bb9d3a
# Fri, 16 Feb 2018 11:30:01 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz
# Fri, 16 Feb 2018 11:30:02 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc
# Fri, 16 Feb 2018 11:32:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Fri, 16 Feb 2018 11:32:29 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 16 Feb 2018 11:32:36 GMT
EXPOSE 8080/tcp
# Fri, 16 Feb 2018 11:32:37 GMT
CMD ["catalina.sh" "run"]
# Fri, 16 Feb 2018 14:48:41 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Fri, 16 Feb 2018 14:48:42 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 16 Feb 2018 14:48:44 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 16 Feb 2018 14:48:44 GMT
WORKDIR /usr/local/tomcat
# Fri, 16 Feb 2018 14:48:53 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 14:48:54 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Feb 2018 14:48:54 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 16 Feb 2018 14:48:55 GMT
ENV TINI_VERSION=0.16.1
# Fri, 16 Feb 2018 14:48:55 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Fri, 16 Feb 2018 14:49:04 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Fri, 16 Feb 2018 14:49:07 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Fri, 16 Feb 2018 14:49:09 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Fri, 16 Feb 2018 14:49:09 GMT
ENV CONVERTIGO_VERSION=7.5.0
# Fri, 16 Feb 2018 14:49:10 GMT
ENV CONVERTIGO_REVISION=44235
# Fri, 16 Feb 2018 14:49:11 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.0/convertigo-7.5.0-v44235-linux32.war
# Fri, 16 Feb 2018 14:49:11 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Fri, 16 Feb 2018 14:49:51 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Fri, 16 Feb 2018 14:49:52 GMT
COPY file:03a78619febe6c5b17d175b71a6dbe271ce2c70c52e354c6642b986d1b28fc2e in webapps/ROOT/index.html 
# Fri, 16 Feb 2018 14:49:53 GMT
COPY file:0a47ea62001ca3cec3ce66ba5a1de976c240bea17f36878bcf94b75e4f0cdf86 in / 
# Fri, 16 Feb 2018 14:49:53 GMT
ENV SWT_GTK3=0
# Fri, 16 Feb 2018 14:49:54 GMT
WORKDIR /workspace
# Fri, 16 Feb 2018 14:49:55 GMT
VOLUME [/workspace]
# Fri, 16 Feb 2018 14:49:56 GMT
EXPOSE 28080/tcp
# Fri, 16 Feb 2018 14:49:56 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Fri, 16 Feb 2018 14:49:57 GMT
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
	-	`sha256:7709f52308e020dbf6302d86313711003d21a815bb37e32036207d4eec292a75`  
		Last Modified: Fri, 16 Feb 2018 12:55:26 GMT  
		Size: 10.0 MB (10037071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8494fbc30fa5d504aec5ced8092104358ba38cb99dab9bcc1fdbb9b2680650d7`  
		Last Modified: Fri, 16 Feb 2018 12:55:22 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c253a6e7a3eab3849a9338d3380e9948b8ebf6b17f91891611f93926f7499fdb`  
		Last Modified: Fri, 16 Feb 2018 14:51:29 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d31c0de6f8eb4e424b031b14bc17c0a3a2dfc68a6087c57cf6b593b0f524fe3`  
		Last Modified: Fri, 16 Feb 2018 14:51:29 GMT  
		Size: 476.8 KB (476841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe01a19f0c54038ee21fd759ae32272bd37de82d9408f62ea2382d3c2d92b214`  
		Last Modified: Fri, 16 Feb 2018 14:51:26 GMT  
		Size: 4.3 KB (4312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd5f3a52097392d9a849ff2a84a4d08a341f9819638f51a01b2dd25d63b29156`  
		Last Modified: Fri, 16 Feb 2018 14:51:26 GMT  
		Size: 25.8 KB (25768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee32d897a11020d92c24d366bc484a805b3c9911c42685d452c03f7fef1b885`  
		Last Modified: Fri, 16 Feb 2018 14:51:49 GMT  
		Size: 116.7 MB (116673392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4750aa7e438e7e0e9c9d776ecaac24dab46fe7065628240e24fa0576088d5fa0`  
		Last Modified: Fri, 16 Feb 2018 14:51:26 GMT  
		Size: 466.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03dfd239ac1b0f7ec5d60b584f5e0a0a72a04c54d2a35d32017c1b0e5ccdccde`  
		Last Modified: Fri, 16 Feb 2018 14:51:26 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.5.0` - linux; 386

```console
$ docker pull convertigo@sha256:d3be25a453b6f8ff89a28f3918629fc21448755d5e616935f9c1359074576ef0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **373.8 MB (373768745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f896f27e92e68c94efe64cf089fe76cf433e176826f1e373946a60f90a8a5eef`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Tue, 12 Dec 2017 14:28:39 GMT
ADD file:a6cfca6b73e41be73fc4e964d25ccb94f9c3538d1bd6623f5f203d3594167a5f in / 
# Tue, 12 Dec 2017 14:28:39 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:45:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:46:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Dec 2017 15:21:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 15:21:28 GMT
ENV LANG=C.UTF-8
# Wed, 13 Dec 2017 15:21:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 13 Dec 2017 15:21:30 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 13 Dec 2017 15:21:30 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 13 Dec 2017 15:21:30 GMT
ENV JAVA_VERSION=8u151
# Wed, 13 Dec 2017 15:21:31 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Wed, 13 Dec 2017 15:21:31 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 13 Dec 2017 15:22:49 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 13 Dec 2017 15:22:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Dec 2017 18:55:07 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 13 Dec 2017 18:55:07 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 18:55:09 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 13 Dec 2017 18:55:09 GMT
WORKDIR /usr/local/tomcat
# Wed, 13 Dec 2017 18:55:09 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 13 Dec 2017 18:55:09 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 13 Dec 2017 18:55:10 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Thu, 11 Jan 2018 12:03:22 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 11 Jan 2018 12:03:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Jan 2018 12:03:34 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 19 Jan 2018 20:37:18 GMT
ENV TOMCAT_MAJOR=7
# Thu, 25 Jan 2018 14:57:12 GMT
ENV TOMCAT_VERSION=7.0.84
# Thu, 25 Jan 2018 14:57:12 GMT
ENV TOMCAT_SHA1=e2940f45dde581741e2639e831d08498b6bb9d3a
# Thu, 25 Jan 2018 14:57:12 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz
# Thu, 25 Jan 2018 14:57:13 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc
# Thu, 25 Jan 2018 14:58:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 25 Jan 2018 14:59:44 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 25 Jan 2018 14:59:44 GMT
EXPOSE 8080/tcp
# Thu, 25 Jan 2018 14:59:44 GMT
CMD ["catalina.sh" "run"]
# Wed, 14 Feb 2018 13:25:17 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Wed, 14 Feb 2018 13:25:17 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 14 Feb 2018 13:25:19 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 14 Feb 2018 13:35:39 GMT
WORKDIR /usr/local/tomcat
# Wed, 14 Feb 2018 13:35:52 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Feb 2018 13:40:58 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Feb 2018 13:40:59 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 14 Feb 2018 13:40:59 GMT
ENV TINI_VERSION=0.16.1
# Wed, 14 Feb 2018 13:40:59 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Wed, 14 Feb 2018 13:48:47 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Wed, 14 Feb 2018 13:48:48 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Wed, 14 Feb 2018 13:48:50 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Wed, 14 Feb 2018 13:48:50 GMT
ENV CONVERTIGO_VERSION=7.5.0
# Wed, 14 Feb 2018 13:48:50 GMT
ENV CONVERTIGO_REVISION=44235
# Wed, 14 Feb 2018 13:48:51 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.0/convertigo-7.5.0-v44235-linux32.war
# Wed, 14 Feb 2018 13:48:51 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Wed, 14 Feb 2018 13:49:30 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Wed, 14 Feb 2018 13:49:30 GMT
COPY file:03a78619febe6c5b17d175b71a6dbe271ce2c70c52e354c6642b986d1b28fc2e in webapps/ROOT/index.html 
# Wed, 14 Feb 2018 13:49:31 GMT
COPY file:0a47ea62001ca3cec3ce66ba5a1de976c240bea17f36878bcf94b75e4f0cdf86 in / 
# Wed, 14 Feb 2018 13:49:31 GMT
ENV SWT_GTK3=0
# Wed, 14 Feb 2018 13:49:32 GMT
WORKDIR /workspace
# Wed, 14 Feb 2018 13:49:32 GMT
VOLUME [/workspace]
# Wed, 14 Feb 2018 13:49:32 GMT
EXPOSE 28080/tcp
# Wed, 14 Feb 2018 13:49:33 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 14 Feb 2018 13:49:33 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:50d72515450fee13bee4f8be703ed400c6fc2f1bc9a5699f1d6917eb6dde6aa0`  
		Last Modified: Tue, 12 Dec 2017 15:01:52 GMT  
		Size: 45.8 MB (45827066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a9ff72840f920dca068cca81368ea4b369a74d6ec40929d4cb4a6b4e6d2264`  
		Last Modified: Wed, 13 Dec 2017 14:58:26 GMT  
		Size: 11.2 MB (11150413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3e33c1d09c88921e13b6b46cc0476040037bbe57b669dbbc9d16f17cde6298`  
		Last Modified: Wed, 13 Dec 2017 14:58:25 GMT  
		Size: 4.6 MB (4554619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9934e17bca1f4fdf8114e6baf80eb11eb18b0d425c8568b35fac04d2913dee5`  
		Last Modified: Wed, 13 Dec 2017 15:40:37 GMT  
		Size: 861.1 KB (861149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f54df81eda17ba5ce500a3bbd23abd9db02eb57b697611b88f6249bb15cdfd`  
		Last Modified: Wed, 13 Dec 2017 15:40:36 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ba1f721572ed69c9b8af65e4025129031d6cc4cf7aceb610cd20f66310723a`  
		Last Modified: Wed, 13 Dec 2017 15:40:36 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730b226ae3de1d490bbc8f2cc5f9fa5f67d1b6a38b6c12f8b43f2e6e1ebc5865`  
		Last Modified: Wed, 13 Dec 2017 15:41:29 GMT  
		Size: 168.3 MB (168325773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5f9e2d852693f2983e4d5ff8d80cdb2479dccaa6679adea10c6f53c6dd8e76`  
		Last Modified: Wed, 13 Dec 2017 15:40:36 GMT  
		Size: 272.1 KB (272145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87166c27d9d7699aacb48a2aa6e37c0cb2972ea4a83e6a6e332bb7b3f63e504d`  
		Last Modified: Wed, 13 Dec 2017 19:32:30 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e461ab6796aa5f0818b70f00715b83858c17fd14b8e76f81f1197aac669f276a`  
		Last Modified: Thu, 11 Jan 2018 12:50:16 GMT  
		Size: 554.6 KB (554558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14942cd33ac3c914f79a5a61edfde958d9c2f772091d1dda63473a4d50e2b8b9`  
		Last Modified: Thu, 25 Jan 2018 19:49:53 GMT  
		Size: 9.9 MB (9925559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5343a45c1c72be03f0a897ec5e37b25b8e66ef8baf6afa607d48ae1c657b58e5`  
		Last Modified: Thu, 25 Jan 2018 19:49:50 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f19687ce470afa60d236dcd21a49db6e82e63e3f8e9fe1ffca6237e2df1c39b3`  
		Last Modified: Wed, 14 Feb 2018 14:30:07 GMT  
		Size: 1.0 MB (1032845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9a25091b153d9350d1b17f88db15e62b3d4f59969c9468309b81b9d0acf7d3c`  
		Last Modified: Wed, 14 Feb 2018 14:30:06 GMT  
		Size: 489.2 KB (489165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa58546e6cb62b7198bc37bf89d47d13fc9046e8fc8038b951bafeea6711a1c`  
		Last Modified: Wed, 14 Feb 2018 14:30:05 GMT  
		Size: 4.3 KB (4288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d4a40e3bef789a4347430d5fad02bcfe014fe686e4221b7adea0f8b49368ba`  
		Last Modified: Wed, 14 Feb 2018 14:30:05 GMT  
		Size: 25.8 KB (25779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9833dfb5d98d882bc31968a3ab823dd48bed20ed61d816dfcf0f456285b43702`  
		Last Modified: Wed, 14 Feb 2018 14:30:28 GMT  
		Size: 130.7 MB (130743185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f5a834153e7bcd25f0756945f111d7ee3c1e569513e9b79864c6bfdec96476`  
		Last Modified: Wed, 14 Feb 2018 14:30:05 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:450657f076202a82a68b39b7c99d6012fbd0b25c06f22b9e759dc050f4fa5f70`  
		Last Modified: Wed, 14 Feb 2018 14:30:05 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `convertigo:7.5.0-alpine`

```console
$ docker pull convertigo@sha256:257c78d2a20fbb813ed5e3a045e6cee332d5bdc67007bbcb132dde256f09f470
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
$ docker pull convertigo@sha256:726cfe6eb22c8c124405ca0aec5f699ae8aa9ee3245c23ee1d8e99dbec214a5a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.4 MB (190446270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23f10e56bc3b77431ab65d408d166dcc18f25194a807377682b9f74227492b5a`
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
# Thu, 25 Jan 2018 02:03:48 GMT
ENV TOMCAT_VERSION=7.0.84
# Thu, 25 Jan 2018 02:03:49 GMT
ENV TOMCAT_SHA1=e2940f45dde581741e2639e831d08498b6bb9d3a
# Thu, 25 Jan 2018 02:03:50 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz
# Thu, 25 Jan 2018 02:03:50 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc
# Thu, 25 Jan 2018 02:04:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 25 Jan 2018 02:04:40 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 25 Jan 2018 02:04:41 GMT
EXPOSE 8080/tcp
# Thu, 25 Jan 2018 02:04:42 GMT
CMD ["catalina.sh" "run"]
# Wed, 14 Feb 2018 05:00:44 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Wed, 14 Feb 2018 05:00:44 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 14 Feb 2018 05:00:46 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 14 Feb 2018 05:00:49 GMT
WORKDIR /usr/local/tomcat
# Wed, 14 Feb 2018 05:00:55 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Wed, 14 Feb 2018 05:00:56 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Feb 2018 05:00:56 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 14 Feb 2018 05:00:57 GMT
ENV TINI_VERSION=0.16.1
# Wed, 14 Feb 2018 05:00:58 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Wed, 14 Feb 2018 05:04:09 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Wed, 14 Feb 2018 05:04:10 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Wed, 14 Feb 2018 05:04:12 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Wed, 14 Feb 2018 05:04:13 GMT
ENV CONVERTIGO_VERSION=7.5.0
# Wed, 14 Feb 2018 05:04:14 GMT
ENV CONVERTIGO_REVISION=44235
# Wed, 14 Feb 2018 05:04:14 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.0/convertigo-7.5.0-v44235-linux32.war
# Wed, 14 Feb 2018 05:04:15 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Thu, 15 Feb 2018 04:59:30 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Thu, 15 Feb 2018 04:59:31 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Thu, 15 Feb 2018 04:59:32 GMT
COPY file:4d6653ca1b3348a349f72d73174019bc6689fb60faa86fcae8bc4db7990822c6 in / 
# Thu, 15 Feb 2018 04:59:32 GMT
WORKDIR /workspace
# Thu, 15 Feb 2018 04:59:33 GMT
VOLUME [/workspace]
# Thu, 15 Feb 2018 04:59:34 GMT
EXPOSE 28080/tcp
# Thu, 15 Feb 2018 04:59:35 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 04:59:35 GMT
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
	-	`sha256:9e89d1ae58004f978e01de216b529bb08391ed88239b29d3fa09cb3e82a59ab0`  
		Last Modified: Thu, 25 Jan 2018 02:38:17 GMT  
		Size: 12.2 MB (12223642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad4482c64a34b4aef1d5f267cca9351bcf9c4d1015e9c6449ee37ac91ff7b82`  
		Last Modified: Thu, 25 Jan 2018 02:38:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41943110e4fc339ba71bbb58eb3ab7012da0782719f9ba20d8fa16e3c0521e5`  
		Last Modified: Wed, 14 Feb 2018 05:09:41 GMT  
		Size: 5.5 MB (5515069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce13ce8d0ea7e33efae14af0648f3bae7f4a95bfdb7bf2b4c96f57ed316af9b`  
		Last Modified: Wed, 14 Feb 2018 05:09:40 GMT  
		Size: 848.9 KB (848932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:765ea599ba39983bb9d238801f7c5ec9fd9a23368ea035555d633dab268d4c14`  
		Last Modified: Wed, 14 Feb 2018 05:09:38 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88444ec41197c7ea2cd8341443cf7c69a072af56d2e4715aa25386086106ab91`  
		Last Modified: Wed, 14 Feb 2018 05:09:38 GMT  
		Size: 25.8 KB (25757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc72caa80b617b78115e9de7d34e8b63c46bf86b553c4d4121a238812dff0e85`  
		Last Modified: Thu, 15 Feb 2018 05:00:26 GMT  
		Size: 116.7 MB (116673442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e5be8092801830046d2d926ec0e5d1cf6ea3d1e944cebcdf61ab03f6e0a677`  
		Last Modified: Thu, 15 Feb 2018 05:00:08 GMT  
		Size: 456.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dfccc11b3cef66bcdd39841e116cb9d9f51de390c68587bc1f2a539b1999d69`  
		Last Modified: Thu, 15 Feb 2018 05:00:07 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.5.0-alpine` - linux; 386

```console
$ docker pull convertigo@sha256:265f321e90e31324856e52c9d7c9de037b30d8a0edc744966987c1e3c4bcc1ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.6 MB (193649485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a3911e359647e911499ebe885019dac2c4a9ae73e78e4cbdee7cc5c7f20bbb9`
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
# Thu, 25 Jan 2018 15:49:24 GMT
ENV TOMCAT_VERSION=7.0.84
# Thu, 25 Jan 2018 15:49:25 GMT
ENV TOMCAT_SHA1=e2940f45dde581741e2639e831d08498b6bb9d3a
# Thu, 25 Jan 2018 15:49:25 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz
# Thu, 25 Jan 2018 15:49:26 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc
# Thu, 25 Jan 2018 16:20:39 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 25 Jan 2018 16:26:20 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 25 Jan 2018 16:36:21 GMT
EXPOSE 8080/tcp
# Thu, 25 Jan 2018 16:36:21 GMT
CMD ["catalina.sh" "run"]
# Wed, 14 Feb 2018 13:58:18 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Wed, 14 Feb 2018 13:58:18 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 14 Feb 2018 13:58:19 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 14 Feb 2018 13:58:19 GMT
WORKDIR /usr/local/tomcat
# Wed, 14 Feb 2018 13:58:27 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Wed, 14 Feb 2018 13:58:27 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Feb 2018 13:58:27 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 14 Feb 2018 13:58:28 GMT
ENV TINI_VERSION=0.16.1
# Wed, 14 Feb 2018 13:58:28 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Wed, 14 Feb 2018 13:58:40 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Wed, 14 Feb 2018 13:58:40 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Wed, 14 Feb 2018 13:58:42 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Wed, 14 Feb 2018 13:58:42 GMT
ENV CONVERTIGO_VERSION=7.5.0
# Wed, 14 Feb 2018 13:58:42 GMT
ENV CONVERTIGO_REVISION=44235
# Wed, 14 Feb 2018 13:58:42 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.0/convertigo-7.5.0-v44235-linux32.war
# Wed, 14 Feb 2018 13:58:43 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Wed, 14 Feb 2018 14:01:01 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Wed, 14 Feb 2018 14:01:01 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Wed, 14 Feb 2018 14:01:01 GMT
COPY file:4d6653ca1b3348a349f72d73174019bc6689fb60faa86fcae8bc4db7990822c6 in / 
# Wed, 14 Feb 2018 14:01:02 GMT
WORKDIR /workspace
# Wed, 14 Feb 2018 14:01:02 GMT
VOLUME [/workspace]
# Wed, 14 Feb 2018 14:01:02 GMT
EXPOSE 28080/tcp
# Wed, 14 Feb 2018 14:01:03 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 14 Feb 2018 14:01:03 GMT
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
	-	`sha256:c4c24a11df20b8d8f1fdc44485f66c47e23b030bfcd0269e5b2ec85ecd9e8a7a`  
		Last Modified: Thu, 25 Jan 2018 19:51:42 GMT  
		Size: 12.4 MB (12435784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d286804ec5e152ebb873ba7b5d9b343a6cda1738912b5fe0e543b6de5291e68`  
		Last Modified: Thu, 25 Jan 2018 19:51:35 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:930bc4f5eeab85c91c1bcd1a4a4624cc683a486d4d2c2680733beab88512506d`  
		Last Modified: Wed, 14 Feb 2018 14:39:57 GMT  
		Size: 6.4 MB (6351910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd9bd76abfed79a17155d0efc4f969b3bec34f93d0aeaaf3c62c64854ee070b1`  
		Last Modified: Wed, 14 Feb 2018 14:39:53 GMT  
		Size: 904.6 KB (904642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286c7b016c090d3bc12fa883b3846bf10b1abd1aa5300ebee60a20cef7556771`  
		Last Modified: Wed, 14 Feb 2018 14:39:53 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aac3472fdf9eeddcfb7bd3b4c41651eb2658c4e1f2c32232cb2eb906e5e1ddd`  
		Last Modified: Wed, 14 Feb 2018 14:39:53 GMT  
		Size: 25.8 KB (25759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c7a1630613ea8fb184b5fb65dae59e8b1ca0b39690f5d89772b882c959fa8df`  
		Last Modified: Wed, 14 Feb 2018 14:40:10 GMT  
		Size: 116.7 MB (116673385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20bafc74c5f9f627b62b0ed339245d572f739413b66b383fbb1c6632de52768d`  
		Last Modified: Wed, 14 Feb 2018 14:39:53 GMT  
		Size: 455.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3ed15c3ef57477ab54eec3819ada750d7e3cd03fe354074e7699072b0f003e5`  
		Last Modified: Wed, 14 Feb 2018 14:39:53 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `convertigo:7.5-alpine`

```console
$ docker pull convertigo@sha256:257c78d2a20fbb813ed5e3a045e6cee332d5bdc67007bbcb132dde256f09f470
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
$ docker pull convertigo@sha256:726cfe6eb22c8c124405ca0aec5f699ae8aa9ee3245c23ee1d8e99dbec214a5a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.4 MB (190446270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23f10e56bc3b77431ab65d408d166dcc18f25194a807377682b9f74227492b5a`
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
# Thu, 25 Jan 2018 02:03:48 GMT
ENV TOMCAT_VERSION=7.0.84
# Thu, 25 Jan 2018 02:03:49 GMT
ENV TOMCAT_SHA1=e2940f45dde581741e2639e831d08498b6bb9d3a
# Thu, 25 Jan 2018 02:03:50 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz
# Thu, 25 Jan 2018 02:03:50 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc
# Thu, 25 Jan 2018 02:04:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 25 Jan 2018 02:04:40 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 25 Jan 2018 02:04:41 GMT
EXPOSE 8080/tcp
# Thu, 25 Jan 2018 02:04:42 GMT
CMD ["catalina.sh" "run"]
# Wed, 14 Feb 2018 05:00:44 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Wed, 14 Feb 2018 05:00:44 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 14 Feb 2018 05:00:46 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 14 Feb 2018 05:00:49 GMT
WORKDIR /usr/local/tomcat
# Wed, 14 Feb 2018 05:00:55 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Wed, 14 Feb 2018 05:00:56 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Feb 2018 05:00:56 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 14 Feb 2018 05:00:57 GMT
ENV TINI_VERSION=0.16.1
# Wed, 14 Feb 2018 05:00:58 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Wed, 14 Feb 2018 05:04:09 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Wed, 14 Feb 2018 05:04:10 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Wed, 14 Feb 2018 05:04:12 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Wed, 14 Feb 2018 05:04:13 GMT
ENV CONVERTIGO_VERSION=7.5.0
# Wed, 14 Feb 2018 05:04:14 GMT
ENV CONVERTIGO_REVISION=44235
# Wed, 14 Feb 2018 05:04:14 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.0/convertigo-7.5.0-v44235-linux32.war
# Wed, 14 Feb 2018 05:04:15 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Thu, 15 Feb 2018 04:59:30 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Thu, 15 Feb 2018 04:59:31 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Thu, 15 Feb 2018 04:59:32 GMT
COPY file:4d6653ca1b3348a349f72d73174019bc6689fb60faa86fcae8bc4db7990822c6 in / 
# Thu, 15 Feb 2018 04:59:32 GMT
WORKDIR /workspace
# Thu, 15 Feb 2018 04:59:33 GMT
VOLUME [/workspace]
# Thu, 15 Feb 2018 04:59:34 GMT
EXPOSE 28080/tcp
# Thu, 15 Feb 2018 04:59:35 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 04:59:35 GMT
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
	-	`sha256:9e89d1ae58004f978e01de216b529bb08391ed88239b29d3fa09cb3e82a59ab0`  
		Last Modified: Thu, 25 Jan 2018 02:38:17 GMT  
		Size: 12.2 MB (12223642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad4482c64a34b4aef1d5f267cca9351bcf9c4d1015e9c6449ee37ac91ff7b82`  
		Last Modified: Thu, 25 Jan 2018 02:38:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41943110e4fc339ba71bbb58eb3ab7012da0782719f9ba20d8fa16e3c0521e5`  
		Last Modified: Wed, 14 Feb 2018 05:09:41 GMT  
		Size: 5.5 MB (5515069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce13ce8d0ea7e33efae14af0648f3bae7f4a95bfdb7bf2b4c96f57ed316af9b`  
		Last Modified: Wed, 14 Feb 2018 05:09:40 GMT  
		Size: 848.9 KB (848932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:765ea599ba39983bb9d238801f7c5ec9fd9a23368ea035555d633dab268d4c14`  
		Last Modified: Wed, 14 Feb 2018 05:09:38 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88444ec41197c7ea2cd8341443cf7c69a072af56d2e4715aa25386086106ab91`  
		Last Modified: Wed, 14 Feb 2018 05:09:38 GMT  
		Size: 25.8 KB (25757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc72caa80b617b78115e9de7d34e8b63c46bf86b553c4d4121a238812dff0e85`  
		Last Modified: Thu, 15 Feb 2018 05:00:26 GMT  
		Size: 116.7 MB (116673442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e5be8092801830046d2d926ec0e5d1cf6ea3d1e944cebcdf61ab03f6e0a677`  
		Last Modified: Thu, 15 Feb 2018 05:00:08 GMT  
		Size: 456.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dfccc11b3cef66bcdd39841e116cb9d9f51de390c68587bc1f2a539b1999d69`  
		Last Modified: Thu, 15 Feb 2018 05:00:07 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.5-alpine` - linux; 386

```console
$ docker pull convertigo@sha256:265f321e90e31324856e52c9d7c9de037b30d8a0edc744966987c1e3c4bcc1ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.6 MB (193649485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a3911e359647e911499ebe885019dac2c4a9ae73e78e4cbdee7cc5c7f20bbb9`
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
# Thu, 25 Jan 2018 15:49:24 GMT
ENV TOMCAT_VERSION=7.0.84
# Thu, 25 Jan 2018 15:49:25 GMT
ENV TOMCAT_SHA1=e2940f45dde581741e2639e831d08498b6bb9d3a
# Thu, 25 Jan 2018 15:49:25 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz
# Thu, 25 Jan 2018 15:49:26 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc
# Thu, 25 Jan 2018 16:20:39 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 25 Jan 2018 16:26:20 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 25 Jan 2018 16:36:21 GMT
EXPOSE 8080/tcp
# Thu, 25 Jan 2018 16:36:21 GMT
CMD ["catalina.sh" "run"]
# Wed, 14 Feb 2018 13:58:18 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Wed, 14 Feb 2018 13:58:18 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 14 Feb 2018 13:58:19 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 14 Feb 2018 13:58:19 GMT
WORKDIR /usr/local/tomcat
# Wed, 14 Feb 2018 13:58:27 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Wed, 14 Feb 2018 13:58:27 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Feb 2018 13:58:27 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 14 Feb 2018 13:58:28 GMT
ENV TINI_VERSION=0.16.1
# Wed, 14 Feb 2018 13:58:28 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Wed, 14 Feb 2018 13:58:40 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Wed, 14 Feb 2018 13:58:40 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Wed, 14 Feb 2018 13:58:42 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Wed, 14 Feb 2018 13:58:42 GMT
ENV CONVERTIGO_VERSION=7.5.0
# Wed, 14 Feb 2018 13:58:42 GMT
ENV CONVERTIGO_REVISION=44235
# Wed, 14 Feb 2018 13:58:42 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.0/convertigo-7.5.0-v44235-linux32.war
# Wed, 14 Feb 2018 13:58:43 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Wed, 14 Feb 2018 14:01:01 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Wed, 14 Feb 2018 14:01:01 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Wed, 14 Feb 2018 14:01:01 GMT
COPY file:4d6653ca1b3348a349f72d73174019bc6689fb60faa86fcae8bc4db7990822c6 in / 
# Wed, 14 Feb 2018 14:01:02 GMT
WORKDIR /workspace
# Wed, 14 Feb 2018 14:01:02 GMT
VOLUME [/workspace]
# Wed, 14 Feb 2018 14:01:02 GMT
EXPOSE 28080/tcp
# Wed, 14 Feb 2018 14:01:03 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 14 Feb 2018 14:01:03 GMT
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
	-	`sha256:c4c24a11df20b8d8f1fdc44485f66c47e23b030bfcd0269e5b2ec85ecd9e8a7a`  
		Last Modified: Thu, 25 Jan 2018 19:51:42 GMT  
		Size: 12.4 MB (12435784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d286804ec5e152ebb873ba7b5d9b343a6cda1738912b5fe0e543b6de5291e68`  
		Last Modified: Thu, 25 Jan 2018 19:51:35 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:930bc4f5eeab85c91c1bcd1a4a4624cc683a486d4d2c2680733beab88512506d`  
		Last Modified: Wed, 14 Feb 2018 14:39:57 GMT  
		Size: 6.4 MB (6351910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd9bd76abfed79a17155d0efc4f969b3bec34f93d0aeaaf3c62c64854ee070b1`  
		Last Modified: Wed, 14 Feb 2018 14:39:53 GMT  
		Size: 904.6 KB (904642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286c7b016c090d3bc12fa883b3846bf10b1abd1aa5300ebee60a20cef7556771`  
		Last Modified: Wed, 14 Feb 2018 14:39:53 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aac3472fdf9eeddcfb7bd3b4c41651eb2658c4e1f2c32232cb2eb906e5e1ddd`  
		Last Modified: Wed, 14 Feb 2018 14:39:53 GMT  
		Size: 25.8 KB (25759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c7a1630613ea8fb184b5fb65dae59e8b1ca0b39690f5d89772b882c959fa8df`  
		Last Modified: Wed, 14 Feb 2018 14:40:10 GMT  
		Size: 116.7 MB (116673385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20bafc74c5f9f627b62b0ed339245d572f739413b66b383fbb1c6632de52768d`  
		Last Modified: Wed, 14 Feb 2018 14:39:53 GMT  
		Size: 455.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3ed15c3ef57477ab54eec3819ada750d7e3cd03fe354074e7699072b0f003e5`  
		Last Modified: Wed, 14 Feb 2018 14:39:53 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `convertigo:alpine`

```console
$ docker pull convertigo@sha256:257c78d2a20fbb813ed5e3a045e6cee332d5bdc67007bbcb132dde256f09f470
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
$ docker pull convertigo@sha256:726cfe6eb22c8c124405ca0aec5f699ae8aa9ee3245c23ee1d8e99dbec214a5a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.4 MB (190446270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23f10e56bc3b77431ab65d408d166dcc18f25194a807377682b9f74227492b5a`
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
# Thu, 25 Jan 2018 02:03:48 GMT
ENV TOMCAT_VERSION=7.0.84
# Thu, 25 Jan 2018 02:03:49 GMT
ENV TOMCAT_SHA1=e2940f45dde581741e2639e831d08498b6bb9d3a
# Thu, 25 Jan 2018 02:03:50 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz
# Thu, 25 Jan 2018 02:03:50 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc
# Thu, 25 Jan 2018 02:04:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 25 Jan 2018 02:04:40 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 25 Jan 2018 02:04:41 GMT
EXPOSE 8080/tcp
# Thu, 25 Jan 2018 02:04:42 GMT
CMD ["catalina.sh" "run"]
# Wed, 14 Feb 2018 05:00:44 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Wed, 14 Feb 2018 05:00:44 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 14 Feb 2018 05:00:46 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 14 Feb 2018 05:00:49 GMT
WORKDIR /usr/local/tomcat
# Wed, 14 Feb 2018 05:00:55 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Wed, 14 Feb 2018 05:00:56 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Feb 2018 05:00:56 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 14 Feb 2018 05:00:57 GMT
ENV TINI_VERSION=0.16.1
# Wed, 14 Feb 2018 05:00:58 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Wed, 14 Feb 2018 05:04:09 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Wed, 14 Feb 2018 05:04:10 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Wed, 14 Feb 2018 05:04:12 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Wed, 14 Feb 2018 05:04:13 GMT
ENV CONVERTIGO_VERSION=7.5.0
# Wed, 14 Feb 2018 05:04:14 GMT
ENV CONVERTIGO_REVISION=44235
# Wed, 14 Feb 2018 05:04:14 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.0/convertigo-7.5.0-v44235-linux32.war
# Wed, 14 Feb 2018 05:04:15 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Thu, 15 Feb 2018 04:59:30 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Thu, 15 Feb 2018 04:59:31 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Thu, 15 Feb 2018 04:59:32 GMT
COPY file:4d6653ca1b3348a349f72d73174019bc6689fb60faa86fcae8bc4db7990822c6 in / 
# Thu, 15 Feb 2018 04:59:32 GMT
WORKDIR /workspace
# Thu, 15 Feb 2018 04:59:33 GMT
VOLUME [/workspace]
# Thu, 15 Feb 2018 04:59:34 GMT
EXPOSE 28080/tcp
# Thu, 15 Feb 2018 04:59:35 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 04:59:35 GMT
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
	-	`sha256:9e89d1ae58004f978e01de216b529bb08391ed88239b29d3fa09cb3e82a59ab0`  
		Last Modified: Thu, 25 Jan 2018 02:38:17 GMT  
		Size: 12.2 MB (12223642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad4482c64a34b4aef1d5f267cca9351bcf9c4d1015e9c6449ee37ac91ff7b82`  
		Last Modified: Thu, 25 Jan 2018 02:38:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41943110e4fc339ba71bbb58eb3ab7012da0782719f9ba20d8fa16e3c0521e5`  
		Last Modified: Wed, 14 Feb 2018 05:09:41 GMT  
		Size: 5.5 MB (5515069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce13ce8d0ea7e33efae14af0648f3bae7f4a95bfdb7bf2b4c96f57ed316af9b`  
		Last Modified: Wed, 14 Feb 2018 05:09:40 GMT  
		Size: 848.9 KB (848932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:765ea599ba39983bb9d238801f7c5ec9fd9a23368ea035555d633dab268d4c14`  
		Last Modified: Wed, 14 Feb 2018 05:09:38 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88444ec41197c7ea2cd8341443cf7c69a072af56d2e4715aa25386086106ab91`  
		Last Modified: Wed, 14 Feb 2018 05:09:38 GMT  
		Size: 25.8 KB (25757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc72caa80b617b78115e9de7d34e8b63c46bf86b553c4d4121a238812dff0e85`  
		Last Modified: Thu, 15 Feb 2018 05:00:26 GMT  
		Size: 116.7 MB (116673442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e5be8092801830046d2d926ec0e5d1cf6ea3d1e944cebcdf61ab03f6e0a677`  
		Last Modified: Thu, 15 Feb 2018 05:00:08 GMT  
		Size: 456.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dfccc11b3cef66bcdd39841e116cb9d9f51de390c68587bc1f2a539b1999d69`  
		Last Modified: Thu, 15 Feb 2018 05:00:07 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:alpine` - linux; 386

```console
$ docker pull convertigo@sha256:265f321e90e31324856e52c9d7c9de037b30d8a0edc744966987c1e3c4bcc1ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.6 MB (193649485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a3911e359647e911499ebe885019dac2c4a9ae73e78e4cbdee7cc5c7f20bbb9`
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
# Thu, 25 Jan 2018 15:49:24 GMT
ENV TOMCAT_VERSION=7.0.84
# Thu, 25 Jan 2018 15:49:25 GMT
ENV TOMCAT_SHA1=e2940f45dde581741e2639e831d08498b6bb9d3a
# Thu, 25 Jan 2018 15:49:25 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz
# Thu, 25 Jan 2018 15:49:26 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc
# Thu, 25 Jan 2018 16:20:39 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 25 Jan 2018 16:26:20 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 25 Jan 2018 16:36:21 GMT
EXPOSE 8080/tcp
# Thu, 25 Jan 2018 16:36:21 GMT
CMD ["catalina.sh" "run"]
# Wed, 14 Feb 2018 13:58:18 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Wed, 14 Feb 2018 13:58:18 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 14 Feb 2018 13:58:19 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 14 Feb 2018 13:58:19 GMT
WORKDIR /usr/local/tomcat
# Wed, 14 Feb 2018 13:58:27 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Wed, 14 Feb 2018 13:58:27 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Feb 2018 13:58:27 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 14 Feb 2018 13:58:28 GMT
ENV TINI_VERSION=0.16.1
# Wed, 14 Feb 2018 13:58:28 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Wed, 14 Feb 2018 13:58:40 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Wed, 14 Feb 2018 13:58:40 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Wed, 14 Feb 2018 13:58:42 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Wed, 14 Feb 2018 13:58:42 GMT
ENV CONVERTIGO_VERSION=7.5.0
# Wed, 14 Feb 2018 13:58:42 GMT
ENV CONVERTIGO_REVISION=44235
# Wed, 14 Feb 2018 13:58:42 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.0/convertigo-7.5.0-v44235-linux32.war
# Wed, 14 Feb 2018 13:58:43 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Wed, 14 Feb 2018 14:01:01 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Wed, 14 Feb 2018 14:01:01 GMT
COPY file:6c901b8550c2906f0c134295c617b19c0877bc00b11aad7930ae1900acf1217f in webapps/ROOT/index.html 
# Wed, 14 Feb 2018 14:01:01 GMT
COPY file:4d6653ca1b3348a349f72d73174019bc6689fb60faa86fcae8bc4db7990822c6 in / 
# Wed, 14 Feb 2018 14:01:02 GMT
WORKDIR /workspace
# Wed, 14 Feb 2018 14:01:02 GMT
VOLUME [/workspace]
# Wed, 14 Feb 2018 14:01:02 GMT
EXPOSE 28080/tcp
# Wed, 14 Feb 2018 14:01:03 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 14 Feb 2018 14:01:03 GMT
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
	-	`sha256:c4c24a11df20b8d8f1fdc44485f66c47e23b030bfcd0269e5b2ec85ecd9e8a7a`  
		Last Modified: Thu, 25 Jan 2018 19:51:42 GMT  
		Size: 12.4 MB (12435784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d286804ec5e152ebb873ba7b5d9b343a6cda1738912b5fe0e543b6de5291e68`  
		Last Modified: Thu, 25 Jan 2018 19:51:35 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:930bc4f5eeab85c91c1bcd1a4a4624cc683a486d4d2c2680733beab88512506d`  
		Last Modified: Wed, 14 Feb 2018 14:39:57 GMT  
		Size: 6.4 MB (6351910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd9bd76abfed79a17155d0efc4f969b3bec34f93d0aeaaf3c62c64854ee070b1`  
		Last Modified: Wed, 14 Feb 2018 14:39:53 GMT  
		Size: 904.6 KB (904642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286c7b016c090d3bc12fa883b3846bf10b1abd1aa5300ebee60a20cef7556771`  
		Last Modified: Wed, 14 Feb 2018 14:39:53 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aac3472fdf9eeddcfb7bd3b4c41651eb2658c4e1f2c32232cb2eb906e5e1ddd`  
		Last Modified: Wed, 14 Feb 2018 14:39:53 GMT  
		Size: 25.8 KB (25759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c7a1630613ea8fb184b5fb65dae59e8b1ca0b39690f5d89772b882c959fa8df`  
		Last Modified: Wed, 14 Feb 2018 14:40:10 GMT  
		Size: 116.7 MB (116673385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20bafc74c5f9f627b62b0ed339245d572f739413b66b383fbb1c6632de52768d`  
		Last Modified: Wed, 14 Feb 2018 14:39:53 GMT  
		Size: 455.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3ed15c3ef57477ab54eec3819ada750d7e3cd03fe354074e7699072b0f003e5`  
		Last Modified: Wed, 14 Feb 2018 14:39:53 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `convertigo:latest`

```console
$ docker pull convertigo@sha256:a3934fe3699fa8784f0a459f669c3ace4505e67842a67740ff5a83c7506888f2
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
$ docker pull convertigo@sha256:d0a3c733249bed5910e10d111b3e42842d340b05eaa8b70c6b1ede9c72c2805d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.1 MB (334054399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af32c8455740acf6500420529cb2a3d1271883c74bf54c8ea8030a057328c353`
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
# Thu, 15 Feb 2018 18:55:46 GMT
ENV TOMCAT_VERSION=7.0.84
# Thu, 15 Feb 2018 18:55:46 GMT
ENV TOMCAT_SHA1=e2940f45dde581741e2639e831d08498b6bb9d3a
# Thu, 15 Feb 2018 18:55:46 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz
# Thu, 15 Feb 2018 18:55:47 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc
# Thu, 15 Feb 2018 18:56:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 15 Feb 2018 18:56:35 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 15 Feb 2018 18:56:35 GMT
EXPOSE 8080/tcp
# Thu, 15 Feb 2018 18:56:35 GMT
CMD ["catalina.sh" "run"]
# Thu, 15 Feb 2018 19:56:58 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Thu, 15 Feb 2018 19:56:59 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 15 Feb 2018 19:57:07 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 15 Feb 2018 19:57:14 GMT
WORKDIR /usr/local/tomcat
# Thu, 15 Feb 2018 19:57:19 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 19:57:20 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 19:57:20 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 15 Feb 2018 19:57:20 GMT
ENV TINI_VERSION=0.16.1
# Thu, 15 Feb 2018 19:57:20 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Thu, 15 Feb 2018 20:04:15 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Thu, 15 Feb 2018 20:04:22 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Thu, 15 Feb 2018 20:04:23 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Thu, 15 Feb 2018 20:22:39 GMT
ENV CONVERTIGO_VERSION=7.5.0
# Thu, 15 Feb 2018 20:22:40 GMT
ENV CONVERTIGO_REVISION=44235
# Thu, 15 Feb 2018 20:22:40 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.0/convertigo-7.5.0-v44235-linux32.war
# Thu, 15 Feb 2018 20:22:40 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Thu, 15 Feb 2018 20:22:55 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Thu, 15 Feb 2018 20:22:55 GMT
COPY file:03a78619febe6c5b17d175b71a6dbe271ce2c70c52e354c6642b986d1b28fc2e in webapps/ROOT/index.html 
# Thu, 15 Feb 2018 20:22:56 GMT
COPY file:0a47ea62001ca3cec3ce66ba5a1de976c240bea17f36878bcf94b75e4f0cdf86 in / 
# Thu, 15 Feb 2018 20:22:56 GMT
ENV SWT_GTK3=0
# Thu, 15 Feb 2018 20:22:56 GMT
WORKDIR /workspace
# Thu, 15 Feb 2018 20:22:57 GMT
VOLUME [/workspace]
# Thu, 15 Feb 2018 20:22:57 GMT
EXPOSE 28080/tcp
# Thu, 15 Feb 2018 20:22:57 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 20:22:58 GMT
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
	-	`sha256:e05bf36595c3481d7d05dc42588368b33e4ce8a930636e3b3cf726f67992697f`  
		Last Modified: Thu, 15 Feb 2018 19:25:45 GMT  
		Size: 10.0 MB (9956728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baacc7e100cc5485faaf9747b01c29df51b6bc5ce1685db3f8df8a12dd8f26bf`  
		Last Modified: Thu, 15 Feb 2018 19:25:42 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b6759e6f36cc653698a5e1d0ffde8ed2b2d6a1119fdc7f23dba4cd4ed5d480`  
		Last Modified: Thu, 15 Feb 2018 20:07:36 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88f4e6fe92008bbd7e7a0ca8f4b4256732f25d2405f42e7efa9db0a9769034b`  
		Last Modified: Thu, 15 Feb 2018 20:07:35 GMT  
		Size: 482.7 KB (482666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ebaa3c4df30cdc48e477cd7da48f0648de237f6a254959648e73b131d15df8`  
		Last Modified: Thu, 15 Feb 2018 20:07:33 GMT  
		Size: 4.3 KB (4332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee864ed85d5e906e7aa3a1091990cbde67e4c81ed45ccf69f35ad64aa652b0b0`  
		Last Modified: Thu, 15 Feb 2018 20:07:33 GMT  
		Size: 25.8 KB (25767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d24ba63df3e6bb56a7bacd6c6d83d8893b30a511c74c489c4831932dd8e0f11`  
		Last Modified: Thu, 15 Feb 2018 20:23:35 GMT  
		Size: 116.7 MB (116673507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd61705f348e45cd45a97c5d6fea1eddad86e8231bd1587f8a22c87f056c4d35`  
		Last Modified: Thu, 15 Feb 2018 20:23:20 GMT  
		Size: 464.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ebc4d709f2f0ad911c283a1f2037f8d5eaa6f5b3eed4e32704ba76ff52f2af3`  
		Last Modified: Thu, 15 Feb 2018 20:23:19 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:latest` - linux; arm64 variant v8

```console
$ docker pull convertigo@sha256:786e4c97fd04aee57417eba4d3aa018e1cb9f24d1b7b206ccfee75e6beda3c1e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.9 MB (338880665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9af424d72844bc648cd5f07436cfd63ab591a5ac1eb5996e9c28f5acb0999c7f`
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
# Fri, 16 Feb 2018 11:30:00 GMT
ENV TOMCAT_VERSION=7.0.84
# Fri, 16 Feb 2018 11:30:00 GMT
ENV TOMCAT_SHA1=e2940f45dde581741e2639e831d08498b6bb9d3a
# Fri, 16 Feb 2018 11:30:01 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz
# Fri, 16 Feb 2018 11:30:02 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc
# Fri, 16 Feb 2018 11:32:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Fri, 16 Feb 2018 11:32:29 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 16 Feb 2018 11:32:36 GMT
EXPOSE 8080/tcp
# Fri, 16 Feb 2018 11:32:37 GMT
CMD ["catalina.sh" "run"]
# Fri, 16 Feb 2018 14:48:41 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Fri, 16 Feb 2018 14:48:42 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 16 Feb 2018 14:48:44 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 16 Feb 2018 14:48:44 GMT
WORKDIR /usr/local/tomcat
# Fri, 16 Feb 2018 14:48:53 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 14:48:54 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Feb 2018 14:48:54 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 16 Feb 2018 14:48:55 GMT
ENV TINI_VERSION=0.16.1
# Fri, 16 Feb 2018 14:48:55 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Fri, 16 Feb 2018 14:49:04 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Fri, 16 Feb 2018 14:49:07 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Fri, 16 Feb 2018 14:49:09 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Fri, 16 Feb 2018 14:49:09 GMT
ENV CONVERTIGO_VERSION=7.5.0
# Fri, 16 Feb 2018 14:49:10 GMT
ENV CONVERTIGO_REVISION=44235
# Fri, 16 Feb 2018 14:49:11 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.0/convertigo-7.5.0-v44235-linux32.war
# Fri, 16 Feb 2018 14:49:11 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Fri, 16 Feb 2018 14:49:51 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Fri, 16 Feb 2018 14:49:52 GMT
COPY file:03a78619febe6c5b17d175b71a6dbe271ce2c70c52e354c6642b986d1b28fc2e in webapps/ROOT/index.html 
# Fri, 16 Feb 2018 14:49:53 GMT
COPY file:0a47ea62001ca3cec3ce66ba5a1de976c240bea17f36878bcf94b75e4f0cdf86 in / 
# Fri, 16 Feb 2018 14:49:53 GMT
ENV SWT_GTK3=0
# Fri, 16 Feb 2018 14:49:54 GMT
WORKDIR /workspace
# Fri, 16 Feb 2018 14:49:55 GMT
VOLUME [/workspace]
# Fri, 16 Feb 2018 14:49:56 GMT
EXPOSE 28080/tcp
# Fri, 16 Feb 2018 14:49:56 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Fri, 16 Feb 2018 14:49:57 GMT
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
	-	`sha256:7709f52308e020dbf6302d86313711003d21a815bb37e32036207d4eec292a75`  
		Last Modified: Fri, 16 Feb 2018 12:55:26 GMT  
		Size: 10.0 MB (10037071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8494fbc30fa5d504aec5ced8092104358ba38cb99dab9bcc1fdbb9b2680650d7`  
		Last Modified: Fri, 16 Feb 2018 12:55:22 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c253a6e7a3eab3849a9338d3380e9948b8ebf6b17f91891611f93926f7499fdb`  
		Last Modified: Fri, 16 Feb 2018 14:51:29 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d31c0de6f8eb4e424b031b14bc17c0a3a2dfc68a6087c57cf6b593b0f524fe3`  
		Last Modified: Fri, 16 Feb 2018 14:51:29 GMT  
		Size: 476.8 KB (476841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe01a19f0c54038ee21fd759ae32272bd37de82d9408f62ea2382d3c2d92b214`  
		Last Modified: Fri, 16 Feb 2018 14:51:26 GMT  
		Size: 4.3 KB (4312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd5f3a52097392d9a849ff2a84a4d08a341f9819638f51a01b2dd25d63b29156`  
		Last Modified: Fri, 16 Feb 2018 14:51:26 GMT  
		Size: 25.8 KB (25768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee32d897a11020d92c24d366bc484a805b3c9911c42685d452c03f7fef1b885`  
		Last Modified: Fri, 16 Feb 2018 14:51:49 GMT  
		Size: 116.7 MB (116673392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4750aa7e438e7e0e9c9d776ecaac24dab46fe7065628240e24fa0576088d5fa0`  
		Last Modified: Fri, 16 Feb 2018 14:51:26 GMT  
		Size: 466.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03dfd239ac1b0f7ec5d60b584f5e0a0a72a04c54d2a35d32017c1b0e5ccdccde`  
		Last Modified: Fri, 16 Feb 2018 14:51:26 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:latest` - linux; 386

```console
$ docker pull convertigo@sha256:d3be25a453b6f8ff89a28f3918629fc21448755d5e616935f9c1359074576ef0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **373.8 MB (373768745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f896f27e92e68c94efe64cf089fe76cf433e176826f1e373946a60f90a8a5eef`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Tue, 12 Dec 2017 14:28:39 GMT
ADD file:a6cfca6b73e41be73fc4e964d25ccb94f9c3538d1bd6623f5f203d3594167a5f in / 
# Tue, 12 Dec 2017 14:28:39 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:45:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:46:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Dec 2017 15:21:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 15:21:28 GMT
ENV LANG=C.UTF-8
# Wed, 13 Dec 2017 15:21:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 13 Dec 2017 15:21:30 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 13 Dec 2017 15:21:30 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 13 Dec 2017 15:21:30 GMT
ENV JAVA_VERSION=8u151
# Wed, 13 Dec 2017 15:21:31 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Wed, 13 Dec 2017 15:21:31 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 13 Dec 2017 15:22:49 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 13 Dec 2017 15:22:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Dec 2017 18:55:07 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 13 Dec 2017 18:55:07 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 18:55:09 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 13 Dec 2017 18:55:09 GMT
WORKDIR /usr/local/tomcat
# Wed, 13 Dec 2017 18:55:09 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 13 Dec 2017 18:55:09 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 13 Dec 2017 18:55:10 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Thu, 11 Jan 2018 12:03:22 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 11 Jan 2018 12:03:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Jan 2018 12:03:34 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 19 Jan 2018 20:37:18 GMT
ENV TOMCAT_MAJOR=7
# Thu, 25 Jan 2018 14:57:12 GMT
ENV TOMCAT_VERSION=7.0.84
# Thu, 25 Jan 2018 14:57:12 GMT
ENV TOMCAT_SHA1=e2940f45dde581741e2639e831d08498b6bb9d3a
# Thu, 25 Jan 2018 14:57:12 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz
# Thu, 25 Jan 2018 14:57:13 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc
# Thu, 25 Jan 2018 14:58:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 25 Jan 2018 14:59:44 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 25 Jan 2018 14:59:44 GMT
EXPOSE 8080/tcp
# Thu, 25 Jan 2018 14:59:44 GMT
CMD ["catalina.sh" "run"]
# Wed, 14 Feb 2018 13:25:17 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Wed, 14 Feb 2018 13:25:17 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 14 Feb 2018 13:25:19 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 14 Feb 2018 13:35:39 GMT
WORKDIR /usr/local/tomcat
# Wed, 14 Feb 2018 13:35:52 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Feb 2018 13:40:58 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Feb 2018 13:40:59 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 14 Feb 2018 13:40:59 GMT
ENV TINI_VERSION=0.16.1
# Wed, 14 Feb 2018 13:40:59 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Wed, 14 Feb 2018 13:48:47 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Wed, 14 Feb 2018 13:48:48 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Wed, 14 Feb 2018 13:48:50 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Wed, 14 Feb 2018 13:48:50 GMT
ENV CONVERTIGO_VERSION=7.5.0
# Wed, 14 Feb 2018 13:48:50 GMT
ENV CONVERTIGO_REVISION=44235
# Wed, 14 Feb 2018 13:48:51 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.0/convertigo-7.5.0-v44235-linux32.war
# Wed, 14 Feb 2018 13:48:51 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Wed, 14 Feb 2018 13:49:30 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Wed, 14 Feb 2018 13:49:30 GMT
COPY file:03a78619febe6c5b17d175b71a6dbe271ce2c70c52e354c6642b986d1b28fc2e in webapps/ROOT/index.html 
# Wed, 14 Feb 2018 13:49:31 GMT
COPY file:0a47ea62001ca3cec3ce66ba5a1de976c240bea17f36878bcf94b75e4f0cdf86 in / 
# Wed, 14 Feb 2018 13:49:31 GMT
ENV SWT_GTK3=0
# Wed, 14 Feb 2018 13:49:32 GMT
WORKDIR /workspace
# Wed, 14 Feb 2018 13:49:32 GMT
VOLUME [/workspace]
# Wed, 14 Feb 2018 13:49:32 GMT
EXPOSE 28080/tcp
# Wed, 14 Feb 2018 13:49:33 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 14 Feb 2018 13:49:33 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:50d72515450fee13bee4f8be703ed400c6fc2f1bc9a5699f1d6917eb6dde6aa0`  
		Last Modified: Tue, 12 Dec 2017 15:01:52 GMT  
		Size: 45.8 MB (45827066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a9ff72840f920dca068cca81368ea4b369a74d6ec40929d4cb4a6b4e6d2264`  
		Last Modified: Wed, 13 Dec 2017 14:58:26 GMT  
		Size: 11.2 MB (11150413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3e33c1d09c88921e13b6b46cc0476040037bbe57b669dbbc9d16f17cde6298`  
		Last Modified: Wed, 13 Dec 2017 14:58:25 GMT  
		Size: 4.6 MB (4554619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9934e17bca1f4fdf8114e6baf80eb11eb18b0d425c8568b35fac04d2913dee5`  
		Last Modified: Wed, 13 Dec 2017 15:40:37 GMT  
		Size: 861.1 KB (861149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f54df81eda17ba5ce500a3bbd23abd9db02eb57b697611b88f6249bb15cdfd`  
		Last Modified: Wed, 13 Dec 2017 15:40:36 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ba1f721572ed69c9b8af65e4025129031d6cc4cf7aceb610cd20f66310723a`  
		Last Modified: Wed, 13 Dec 2017 15:40:36 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730b226ae3de1d490bbc8f2cc5f9fa5f67d1b6a38b6c12f8b43f2e6e1ebc5865`  
		Last Modified: Wed, 13 Dec 2017 15:41:29 GMT  
		Size: 168.3 MB (168325773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5f9e2d852693f2983e4d5ff8d80cdb2479dccaa6679adea10c6f53c6dd8e76`  
		Last Modified: Wed, 13 Dec 2017 15:40:36 GMT  
		Size: 272.1 KB (272145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87166c27d9d7699aacb48a2aa6e37c0cb2972ea4a83e6a6e332bb7b3f63e504d`  
		Last Modified: Wed, 13 Dec 2017 19:32:30 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e461ab6796aa5f0818b70f00715b83858c17fd14b8e76f81f1197aac669f276a`  
		Last Modified: Thu, 11 Jan 2018 12:50:16 GMT  
		Size: 554.6 KB (554558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14942cd33ac3c914f79a5a61edfde958d9c2f772091d1dda63473a4d50e2b8b9`  
		Last Modified: Thu, 25 Jan 2018 19:49:53 GMT  
		Size: 9.9 MB (9925559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5343a45c1c72be03f0a897ec5e37b25b8e66ef8baf6afa607d48ae1c657b58e5`  
		Last Modified: Thu, 25 Jan 2018 19:49:50 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f19687ce470afa60d236dcd21a49db6e82e63e3f8e9fe1ffca6237e2df1c39b3`  
		Last Modified: Wed, 14 Feb 2018 14:30:07 GMT  
		Size: 1.0 MB (1032845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9a25091b153d9350d1b17f88db15e62b3d4f59969c9468309b81b9d0acf7d3c`  
		Last Modified: Wed, 14 Feb 2018 14:30:06 GMT  
		Size: 489.2 KB (489165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa58546e6cb62b7198bc37bf89d47d13fc9046e8fc8038b951bafeea6711a1c`  
		Last Modified: Wed, 14 Feb 2018 14:30:05 GMT  
		Size: 4.3 KB (4288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d4a40e3bef789a4347430d5fad02bcfe014fe686e4221b7adea0f8b49368ba`  
		Last Modified: Wed, 14 Feb 2018 14:30:05 GMT  
		Size: 25.8 KB (25779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9833dfb5d98d882bc31968a3ab823dd48bed20ed61d816dfcf0f456285b43702`  
		Last Modified: Wed, 14 Feb 2018 14:30:28 GMT  
		Size: 130.7 MB (130743185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f5a834153e7bcd25f0756945f111d7ee3c1e569513e9b79864c6bfdec96476`  
		Last Modified: Wed, 14 Feb 2018 14:30:05 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:450657f076202a82a68b39b7c99d6012fbd0b25c06f22b9e759dc050f4fa5f70`  
		Last Modified: Wed, 14 Feb 2018 14:30:05 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
