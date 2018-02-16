## `convertigo:latest`

```console
$ docker pull convertigo@sha256:87ad4bb64829eb71b4ca355b1ae15048e9e2f19dda8f8e41012bb6341c7661ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `convertigo:latest` - linux; amd64

```console
$ docker pull convertigo@sha256:0c6d7dd2ea22ed8cba42e5a47c58d0fd01d6c0c29eb6d88d01c839fc1286beb6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **354.9 MB (354882527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db11e46224151e813c97752558c76c6a4fa97b4c032c01955810429022406850`
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
# Thu, 15 Feb 2018 18:48:54 GMT
ENV TOMCAT_VERSION=7.0.84
# Thu, 15 Feb 2018 18:48:54 GMT
ENV TOMCAT_SHA1=e2940f45dde581741e2639e831d08498b6bb9d3a
# Thu, 15 Feb 2018 18:48:54 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz
# Thu, 15 Feb 2018 18:48:55 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc
# Thu, 15 Feb 2018 18:49:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 15 Feb 2018 18:49:53 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 15 Feb 2018 18:50:00 GMT
EXPOSE 8080/tcp
# Thu, 15 Feb 2018 18:50:00 GMT
CMD ["catalina.sh" "run"]
# Thu, 15 Feb 2018 22:44:08 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Thu, 15 Feb 2018 22:44:08 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 15 Feb 2018 22:44:09 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 15 Feb 2018 22:44:10 GMT
WORKDIR /usr/local/tomcat
# Thu, 15 Feb 2018 22:44:14 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:44:14 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 22:44:14 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 15 Feb 2018 22:44:15 GMT
ENV TINI_VERSION=0.16.1
# Thu, 15 Feb 2018 22:44:15 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Thu, 15 Feb 2018 22:45:21 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Thu, 15 Feb 2018 22:45:28 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Thu, 15 Feb 2018 22:45:29 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Thu, 15 Feb 2018 22:45:30 GMT
ENV CONVERTIGO_VERSION=7.5.0
# Thu, 15 Feb 2018 22:45:30 GMT
ENV CONVERTIGO_REVISION=44235
# Thu, 15 Feb 2018 22:45:30 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.0/convertigo-7.5.0-v44235-linux32.war
# Thu, 15 Feb 2018 22:45:30 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Thu, 15 Feb 2018 22:45:55 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Thu, 15 Feb 2018 22:45:55 GMT
COPY file:03a78619febe6c5b17d175b71a6dbe271ce2c70c52e354c6642b986d1b28fc2e in webapps/ROOT/index.html 
# Thu, 15 Feb 2018 22:45:56 GMT
COPY file:0a47ea62001ca3cec3ce66ba5a1de976c240bea17f36878bcf94b75e4f0cdf86 in / 
# Thu, 15 Feb 2018 22:45:56 GMT
ENV SWT_GTK3=0
# Thu, 15 Feb 2018 22:45:56 GMT
WORKDIR /workspace
# Thu, 15 Feb 2018 22:45:56 GMT
VOLUME [/workspace]
# Thu, 15 Feb 2018 22:45:57 GMT
EXPOSE 28080/tcp
# Thu, 15 Feb 2018 22:45:57 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 22:46:11 GMT
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
	-	`sha256:c047c5d35e36463ba6398bd8a1b60fe08ecbf39b5b6267314caa55516296a714`  
		Last Modified: Thu, 15 Feb 2018 19:49:39 GMT  
		Size: 10.0 MB (10029030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a82864ef128d969609822b0cfc36702a676890a2b54b04a6d86117c258e7cb5d`  
		Last Modified: Thu, 15 Feb 2018 19:49:36 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b22e3bb7371473227e943873f7de104c6aa4575a702c0dd98814ef9e45a9e12`  
		Last Modified: Thu, 15 Feb 2018 22:47:36 GMT  
		Size: 334.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa5783289c24476a021d9905633269aef8d5f088430e9fe4bae3f2c1a8dc23f`  
		Last Modified: Thu, 15 Feb 2018 22:47:36 GMT  
		Size: 509.3 KB (509293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f3719ac8b1654441229b84f68fece8cab73b8c1fc0fbd96fee1e5bcac583abf`  
		Last Modified: Thu, 15 Feb 2018 22:47:33 GMT  
		Size: 4.3 KB (4294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56e3ea19420d8f66ce094d375e8d9befcce65987e962b23f926809d17c1ac4b`  
		Last Modified: Thu, 15 Feb 2018 22:47:33 GMT  
		Size: 25.8 KB (25777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7fcc840263956f2308034236d5f0fb212af6576bdbcc1c11a5bcfafb572b8b3`  
		Last Modified: Thu, 15 Feb 2018 22:47:47 GMT  
		Size: 116.7 MB (116673394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce25e1d45df2b64901791c8191687c3fb1f661c05e28d884710b0cc0085e7fe`  
		Last Modified: Thu, 15 Feb 2018 22:47:33 GMT  
		Size: 466.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b28bde3c84dc793deacdbee8254a356b239166722469532c6debf539e7fb0bd4`  
		Last Modified: Thu, 15 Feb 2018 22:47:34 GMT  
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
$ docker pull convertigo@sha256:b149a0c1941928bd78d69e66bc6da8d03c4d46b31d4dcdc1ff1a46da2145919e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.8 MB (339836493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:121263057492501559b96fb00d1a9e5ab41108c3eb75fffdf4e355f4193a611f`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Tue, 12 Dec 2017 18:33:14 GMT
ADD file:ae07a2e0bd59c986cf9cec3d7ce9a3db8f8034bac7b69938557e472980c70cdc in / 
# Tue, 12 Dec 2017 18:33:14 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 16:14:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 16:14:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 15 Dec 2017 20:58:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 20:58:37 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 20:58:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 15 Dec 2017 20:58:41 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 15 Dec 2017 20:58:42 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 15 Dec 2017 20:58:43 GMT
ENV JAVA_VERSION=8u151
# Fri, 15 Dec 2017 20:58:44 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 15 Dec 2017 20:58:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 15 Dec 2017 21:04:54 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 15 Dec 2017 21:05:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 16 Dec 2017 10:10:00 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 16 Dec 2017 10:10:00 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 16 Dec 2017 10:10:02 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 16 Dec 2017 10:10:03 GMT
WORKDIR /usr/local/tomcat
# Sat, 16 Dec 2017 10:10:04 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 16 Dec 2017 10:10:04 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 16 Dec 2017 10:10:05 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Thu, 11 Jan 2018 01:41:04 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 11 Jan 2018 01:41:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Jan 2018 01:41:17 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 19 Jan 2018 01:52:09 GMT
ENV TOMCAT_MAJOR=7
# Thu, 25 Jan 2018 01:51:45 GMT
ENV TOMCAT_VERSION=7.0.84
# Thu, 25 Jan 2018 01:51:46 GMT
ENV TOMCAT_SHA1=e2940f45dde581741e2639e831d08498b6bb9d3a
# Thu, 25 Jan 2018 01:51:47 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz
# Thu, 25 Jan 2018 01:51:47 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.84/bin/apache-tomcat-7.0.84.tar.gz.asc
# Thu, 25 Jan 2018 01:53:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 25 Jan 2018 01:53:53 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 25 Jan 2018 01:53:54 GMT
EXPOSE 8080/tcp
# Thu, 25 Jan 2018 01:53:54 GMT
CMD ["catalina.sh" "run"]
# Wed, 14 Feb 2018 04:58:51 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Wed, 14 Feb 2018 04:58:52 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 14 Feb 2018 04:58:54 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 14 Feb 2018 04:58:54 GMT
WORKDIR /usr/local/tomcat
# Wed, 14 Feb 2018 04:59:10 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Feb 2018 04:59:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Feb 2018 04:59:11 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 14 Feb 2018 04:59:11 GMT
ENV TINI_VERSION=0.16.1
# Wed, 14 Feb 2018 04:59:12 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Wed, 14 Feb 2018 04:59:22 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Wed, 14 Feb 2018 04:59:24 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Wed, 14 Feb 2018 04:59:26 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Wed, 14 Feb 2018 04:59:27 GMT
ENV CONVERTIGO_VERSION=7.5.0
# Wed, 14 Feb 2018 04:59:27 GMT
ENV CONVERTIGO_REVISION=44235
# Wed, 14 Feb 2018 04:59:28 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.0/convertigo-7.5.0-v44235-linux32.war
# Wed, 14 Feb 2018 04:59:28 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Wed, 14 Feb 2018 05:00:17 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Wed, 14 Feb 2018 05:00:18 GMT
COPY file:03a78619febe6c5b17d175b71a6dbe271ce2c70c52e354c6642b986d1b28fc2e in webapps/ROOT/index.html 
# Wed, 14 Feb 2018 05:00:18 GMT
COPY file:0a47ea62001ca3cec3ce66ba5a1de976c240bea17f36878bcf94b75e4f0cdf86 in / 
# Wed, 14 Feb 2018 05:00:19 GMT
ENV SWT_GTK3=0
# Wed, 14 Feb 2018 05:00:20 GMT
WORKDIR /workspace
# Wed, 14 Feb 2018 05:00:20 GMT
VOLUME [/workspace]
# Wed, 14 Feb 2018 05:00:21 GMT
EXPOSE 28080/tcp
# Wed, 14 Feb 2018 05:00:22 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Wed, 14 Feb 2018 05:00:22 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:91ea0aed359111bf5beb30e4bebd50fac25bc40a69e1bb3bf0f8e3c6dcd5fa7f`  
		Last Modified: Tue, 12 Dec 2017 18:47:08 GMT  
		Size: 42.9 MB (42912813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc2797c29bc6ab5e2ad91b16dea60d7b6f0d4fffb5261f539870b43a7ffca40e`  
		Last Modified: Fri, 15 Dec 2017 17:19:24 GMT  
		Size: 10.1 MB (10066285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8edcd3d8093caa7ca86f40f4413c1ae7ca97ae1480289f06339fff174a2a7d6a`  
		Last Modified: Fri, 15 Dec 2017 17:19:21 GMT  
		Size: 4.1 MB (4087788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f31246b5599b4756f87191a766804687d5f15a88e38a5b108d7613423ab64c8`  
		Last Modified: Fri, 15 Dec 2017 21:22:48 GMT  
		Size: 838.6 KB (838563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84785722d48b3ef39cace79c620140140e100cce300e268f5270d590e3f27e3d`  
		Last Modified: Fri, 15 Dec 2017 21:22:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958399e00727fffe5a1dfdd3f64b57aa5d3146002cda35d3ce71e21759e90af2`  
		Last Modified: Fri, 15 Dec 2017 21:22:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea374b82a560199da7b95231208f6c3fa2a26e756c9b0d38810372fa085599b`  
		Last Modified: Fri, 15 Dec 2017 21:23:31 GMT  
		Size: 152.9 MB (152943803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada60257965e0220f59accda053fdc32841d2f63b4890e56d892b2c287c5fe0b`  
		Last Modified: Fri, 15 Dec 2017 21:22:48 GMT  
		Size: 272.1 KB (272148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:384196059354f6c0551050aaa4fd01297c043cc3765fd3385a4ab6c091ad3a6d`  
		Last Modified: Sat, 16 Dec 2017 10:17:37 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2cefd256ccb38b76c77c5ab62cd08bbf8efae080e4a974f61d2f3e404cc50c7`  
		Last Modified: Thu, 11 Jan 2018 02:00:35 GMT  
		Size: 529.4 KB (529374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7406f454f1404ab1a5c54fa58af1a2d285877a4ef140469634ad652d50454a9`  
		Last Modified: Thu, 25 Jan 2018 02:36:57 GMT  
		Size: 10.0 MB (10037226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1220f407d267e1df6b8ce404917fa0a57eb58fcc7af5403a9390a19dc861addf`  
		Last Modified: Thu, 25 Jan 2018 02:36:55 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080deb82a35907544b0657be6e3a2b0aa10668b580182cf7ccc2a1e2c4b352e7`  
		Last Modified: Wed, 14 Feb 2018 05:07:57 GMT  
		Size: 966.0 KB (965974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d914bbd4dec8a526e5abaef8d4939262bf4863d3d89ef4fc378cff29ca4905`  
		Last Modified: Wed, 14 Feb 2018 05:07:58 GMT  
		Size: 476.8 KB (476848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb410387a2993d3d7461af94519830c41d9a3bb6404376af786359cded24e99`  
		Last Modified: Wed, 14 Feb 2018 05:07:55 GMT  
		Size: 4.3 KB (4315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7487ac0b3fbbb17a20d6d347591dbadb0f02ca821905ad83e94672617821b2ab`  
		Last Modified: Wed, 14 Feb 2018 05:07:55 GMT  
		Size: 25.8 KB (25770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0fb04e5da6321d0e616a3755f0e437935dcd944c7bce36d8a6b2950adb2d9c5`  
		Last Modified: Wed, 14 Feb 2018 05:08:12 GMT  
		Size: 116.7 MB (116673385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ded2d9f7347dc1f5aa2e741d4d9e5f2254bbb988cf849df1edbf5d27a6b9bb43`  
		Last Modified: Wed, 14 Feb 2018 05:07:55 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c166cb712d9dc112a3e32d8780d2f640e37a05f0b35c78b47a45ef3a9a0e559`  
		Last Modified: Wed, 14 Feb 2018 05:07:55 GMT  
		Size: 1.1 KB (1071 bytes)  
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
