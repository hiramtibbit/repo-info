<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `convertigo`

-	[`convertigo:7.4`](#convertigo74)
-	[`convertigo:7.4.8`](#convertigo748)
-	[`convertigo:7.4.8-alpine`](#convertigo748-alpine)
-	[`convertigo:7.4-alpine`](#convertigo74-alpine)
-	[`convertigo:7.5`](#convertigo75)
-	[`convertigo:7.5.5`](#convertigo755)
-	[`convertigo:7.5.5-alpine`](#convertigo755-alpine)
-	[`convertigo:7.5-alpine`](#convertigo75-alpine)
-	[`convertigo:alpine`](#convertigoalpine)
-	[`convertigo:latest`](#convertigolatest)

## `convertigo:7.4`

```console
$ docker pull convertigo@sha256:c65ed249caf15b5a47075aae719b1f4b2471f1c61ecda10b42ecef38b1852acc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `convertigo:7.4` - linux; amd64

```console
$ docker pull convertigo@sha256:1b7f153c7bab50529f8a6ee76f47d847d72e3fb6daf06dcaf7862bbec5d273c1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.3 MB (285318244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac64bf3bc837e8f3b6d448ea329397fe11e79247dd9647f9a71fba83f9a42397`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 08:27:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:29:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 08:29:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 08:29:45 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 08:29:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 08:29:46 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 08:29:46 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 08:30:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 16:55:01 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 06 Feb 2019 16:55:01 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 16:55:03 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 06 Feb 2019 16:55:03 GMT
WORKDIR /usr/local/tomcat
# Wed, 06 Feb 2019 16:55:04 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 06 Feb 2019 16:55:04 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 06 Feb 2019 16:55:04 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 06 Feb 2019 16:55:06 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 16:55:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 16:55:16 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 06 Feb 2019 16:55:16 GMT
ENV TOMCAT_MAJOR=7
# Fri, 22 Feb 2019 01:38:46 GMT
ENV TOMCAT_VERSION=7.0.93
# Fri, 22 Feb 2019 01:38:46 GMT
ENV TOMCAT_SHA512=7ae5186f63df7821b7de4e4c92780a27ccc678119614ad074349c3d02bd2f764ac08fa72f776e880e98aad2617de01521eb3de6fe57e4a749c8c04f28e042f0a
# Fri, 22 Feb 2019 01:38:47 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz
# Fri, 22 Feb 2019 01:38:47 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc
# Fri, 22 Feb 2019 01:39:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Fri, 22 Feb 2019 01:39:48 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 22 Feb 2019 01:39:48 GMT
EXPOSE 8080
# Fri, 22 Feb 2019 01:39:48 GMT
CMD ["catalina.sh" "run"]
# Fri, 22 Feb 2019 02:13:40 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Fri, 22 Feb 2019 02:13:40 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 22 Feb 2019 02:13:42 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 22 Feb 2019 02:13:43 GMT
WORKDIR /usr/local/tomcat
# Fri, 22 Feb 2019 02:13:48 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Fri, 22 Feb 2019 02:13:48 GMT
ENV GOSU_VERSION=1.10
# Fri, 22 Feb 2019 02:13:48 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 22 Feb 2019 02:14:56 GMT
ENV TINI_VERSION=0.17.0
# Fri, 22 Feb 2019 02:14:57 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Fri, 22 Feb 2019 02:15:02 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Fri, 22 Feb 2019 02:15:04 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Fri, 22 Feb 2019 02:15:06 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Fri, 22 Feb 2019 02:15:06 GMT
ENV CONVERTIGO_VERSION=7.4.8
# Fri, 22 Feb 2019 02:15:06 GMT
ENV CONVERTIGO_REVISION=44478
# Fri, 22 Feb 2019 02:15:07 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.8/convertigo-7.4.8-v44478-linux32.war
# Fri, 22 Feb 2019 02:15:08 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Fri, 22 Feb 2019 02:15:19 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Fri, 22 Feb 2019 02:15:19 GMT
COPY file:b5bd0566057785adb2589ced522fc8697237dae618549557ce65ad5368cf8938 in webapps/ROOT/index.html 
# Fri, 22 Feb 2019 02:15:20 GMT
COPY file:92202dec06475967df944234eb1273db2cd0176d1466e5fc3b977040008eba49 in / 
# Fri, 22 Feb 2019 02:15:21 GMT
ENV SWT_GTK3=0
# Fri, 22 Feb 2019 02:15:21 GMT
WORKDIR /workspace
# Fri, 22 Feb 2019 02:15:21 GMT
VOLUME [/workspace]
# Fri, 22 Feb 2019 02:15:22 GMT
EXPOSE 28080
# Fri, 22 Feb 2019 02:15:22 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Fri, 22 Feb 2019 02:15:23 GMT
CMD ["convertigo"]
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
	-	`sha256:eea0f08c7492aa49cb62b7fc7cf5a3b91e5c83c182cecddaba75903f09a1c67e`  
		Last Modified: Wed, 06 Feb 2019 08:52:24 GMT  
		Size: 852.9 KB (852911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca74b3d90c15cc3066bb46f8b6cdb617805b39e46ba39b891e4592b601abaee1`  
		Last Modified: Wed, 06 Feb 2019 08:54:24 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f11a643c4a8511e3f7d00a7f7c01059bf804876833992895eebbbaf108399655`  
		Last Modified: Wed, 06 Feb 2019 08:54:24 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05eafed73b65f1719e1ad5446e1f57859feb2f71f0b21d5f0bd25fb7d0d6dbd5`  
		Last Modified: Wed, 06 Feb 2019 08:54:52 GMT  
		Size: 122.1 MB (122121101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f24105f282aadee3e59151424724bc5962ef2aea0b9516f71e9a307e2fde7112`  
		Last Modified: Wed, 06 Feb 2019 17:15:16 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27e73cbbd3f3821d48e165fd1c6905d23efe9651ed5f7d8d6374883a89ddbaf`  
		Last Modified: Wed, 06 Feb 2019 17:15:17 GMT  
		Size: 528.4 KB (528443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e09b82a92ead396ff26d0940ca9c97437d9f7382ea193262f3298e8601f7474`  
		Last Modified: Fri, 22 Feb 2019 01:44:05 GMT  
		Size: 18.2 MB (18183671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7bfd50176d08c40e08ceea4665c6219525fefd8e0f12e8fca5493354fb2afcb`  
		Last Modified: Fri, 22 Feb 2019 01:44:02 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a701a3abc23cf39f10aed52dbc80d595cf4d05a8ee4aa9c53fe8fdcf8534d97a`  
		Last Modified: Fri, 22 Feb 2019 02:15:53 GMT  
		Size: 994.1 KB (994143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46eec643e69c0a4ba89c9d4aa63397cb39e19fc3c264d2b64589beacb683e6c2`  
		Last Modified: Fri, 22 Feb 2019 02:16:28 GMT  
		Size: 509.7 KB (509708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27a1d3b6e01996eabf513947ab9555047112821c317ea93daf295b32af79346`  
		Last Modified: Fri, 22 Feb 2019 02:16:27 GMT  
		Size: 4.3 KB (4265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caec7fb4a550402465aafa1efc2e8b1ecce049684e0a2787f0fcee07797d188e`  
		Last Modified: Fri, 22 Feb 2019 02:16:27 GMT  
		Size: 25.9 KB (25948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38274525327ad19833c99fbd762c6d8760e0bb3725c13cf50307b01dad50c9c3`  
		Last Modified: Fri, 22 Feb 2019 02:16:35 GMT  
		Size: 81.6 MB (81630385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:157491665bdb5d1ee4f4dd6faaa8eef2bff40897dbe3aa9e4b2fedc9dc9c2e02`  
		Last Modified: Fri, 22 Feb 2019 02:16:27 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a21251f1e4b113ab3cc7603ad56ae7d3a92e80a2c402b9c2a5e0aa250cbe22`  
		Last Modified: Fri, 22 Feb 2019 02:16:27 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.4` - linux; arm variant v7

```console
$ docker pull convertigo@sha256:caf9633546553c667d786da7011b478e77e94e33634caeb616bb57ab1e808af5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.0 MB (295956340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f1ca13c7159478802d7535519a5ed18fd964d2d99811d9138acc02431e4b9ad`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:13:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:59:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:59:16 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:59:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 05 May 2018 12:59:19 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 12:59:27 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 12:59:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 05 May 2018 13:00:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 05 May 2018 13:00:28 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 05 May 2018 15:54:31 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 05 May 2018 15:54:31 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 05 May 2018 15:54:32 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 05 May 2018 15:54:33 GMT
WORKDIR /usr/local/tomcat
# Sat, 05 May 2018 15:54:33 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 05 May 2018 15:54:34 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 05 May 2018 15:54:34 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Sat, 05 May 2018 15:54:35 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 15:54:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 15:54:48 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 05 May 2018 15:54:48 GMT
ENV TOMCAT_MAJOR=7
# Sat, 07 Jul 2018 12:21:40 GMT
ENV TOMCAT_VERSION=7.0.90
# Sat, 07 Jul 2018 12:21:41 GMT
ENV TOMCAT_SHA512=c7a47135b99684425260cd906cf5c9a5226837d3681d84ae4e3bb199068e97f0e63d07393d91ca0436204a1dc92bf9bd9a4a1c4c893187703e023503bbd81901
# Sat, 07 Jul 2018 12:21:41 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz
# Sat, 07 Jul 2018 12:21:41 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc
# Wed, 01 Aug 2018 12:39:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Wed, 01 Aug 2018 12:39:46 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 01 Aug 2018 12:39:49 GMT
EXPOSE 8080/tcp
# Wed, 01 Aug 2018 12:39:49 GMT
CMD ["catalina.sh" "run"]
# Wed, 01 Aug 2018 13:22:11 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Wed, 01 Aug 2018 13:22:11 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 01 Aug 2018 13:22:12 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 01 Aug 2018 13:22:13 GMT
WORKDIR /usr/local/tomcat
# Wed, 01 Aug 2018 13:22:19 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Wed, 01 Aug 2018 13:22:20 GMT
ENV GOSU_VERSION=1.10
# Wed, 01 Aug 2018 13:22:20 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 01 Aug 2018 13:22:52 GMT
ENV TINI_VERSION=0.17.0
# Wed, 01 Aug 2018 13:22:52 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Tue, 25 Dec 2018 12:59:06 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Tue, 25 Dec 2018 12:59:08 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Tue, 25 Dec 2018 12:59:10 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Tue, 25 Dec 2018 12:59:10 GMT
ENV CONVERTIGO_VERSION=7.4.8
# Tue, 25 Dec 2018 12:59:11 GMT
ENV CONVERTIGO_REVISION=44478
# Tue, 25 Dec 2018 12:59:11 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.8/convertigo-7.4.8-v44478-linux32.war
# Tue, 25 Dec 2018 12:59:12 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Tue, 25 Dec 2018 13:00:04 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Tue, 25 Dec 2018 13:00:05 GMT
COPY file:b5bd0566057785adb2589ced522fc8697237dae618549557ce65ad5368cf8938 in webapps/ROOT/index.html 
# Tue, 25 Dec 2018 13:00:06 GMT
COPY file:92202dec06475967df944234eb1273db2cd0176d1466e5fc3b977040008eba49 in / 
# Tue, 25 Dec 2018 13:00:07 GMT
ENV SWT_GTK3=0
# Tue, 25 Dec 2018 13:00:07 GMT
WORKDIR /workspace
# Tue, 25 Dec 2018 13:00:07 GMT
VOLUME [/workspace]
# Tue, 25 Dec 2018 13:00:08 GMT
EXPOSE 28080
# Tue, 25 Dec 2018 13:00:08 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 25 Dec 2018 13:00:09 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed57f83cc7c78757972312a1b5a30524f861523c5390d062845f18c696f48ea`  
		Last Modified: Sat, 05 May 2018 12:35:37 GMT  
		Size: 9.5 MB (9472475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859203aede279201e8caf07cf2963456c56bac72a64071079dc9db6fb65ed1a2`  
		Last Modified: Sat, 05 May 2018 12:35:34 GMT  
		Size: 3.9 MB (3912835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df26ddf71ea9e82f175e400809b8f06871dd0937c5a90f4ffe95286544a9f719`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 830.3 KB (830332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c21322a9c89724512d6ea5faa10299c60c8a605d6f563c84c28177db8d2770`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2270f04a4be61f52577232813fff92e797d3fc190d52f71411afc26b0911f8e4`  
		Last Modified: Sat, 05 May 2018 13:29:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2dc1aba58c8cd285639cac6b03c823e5fcdb91aa8922652e7d9387aaca6fa4`  
		Last Modified: Sat, 05 May 2018 13:29:37 GMT  
		Size: 139.5 MB (139501760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02869ec2bb3864b06abd435610eb6849d5c62426517de1a603ef6fe43c7d3815`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 272.1 KB (272082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289a355206a5e4f55a89ee04aff3ea7521228ac5dd89e2068978f78acbbd0a54`  
		Last Modified: Sat, 05 May 2018 16:08:23 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf947ee846151b3e82b979ab8f3027c037e1a8dc7a1c2976128213dcb515eced`  
		Last Modified: Sat, 05 May 2018 16:08:24 GMT  
		Size: 519.8 KB (519803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc44ea6baa81c1119dd6637b87028c7ac9a35f16680a4cdb8fa7a65295b9b56c`  
		Last Modified: Wed, 01 Aug 2018 13:02:49 GMT  
		Size: 16.3 MB (16281202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edbf1f55b4009d5b8fe3b4adb1ad6ec97e745b06f1ac456386ae0203f90a31e5`  
		Last Modified: Wed, 01 Aug 2018 13:02:44 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a340f18f8d09e1349704539c8a7da88fb26998dee221c73eea10c0b38bc910`  
		Last Modified: Wed, 01 Aug 2018 13:23:33 GMT  
		Size: 956.1 KB (956126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a64318216d1461cdbe3be92ab78c5b61eb1d925ac82845ece699dbe5ef906b`  
		Last Modified: Tue, 25 Dec 2018 13:00:50 GMT  
		Size: 483.0 KB (483033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136a08a90447df57aed82e42022b43d4e8ecae8e1a23f53fd82e92c8d1ab89a4`  
		Last Modified: Tue, 25 Dec 2018 13:00:49 GMT  
		Size: 4.4 KB (4354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe5f61da977ed793d8fd96c2a33e711ade8e0b01dd5363ae36fa659427fe19f`  
		Last Modified: Tue, 25 Dec 2018 13:00:49 GMT  
		Size: 26.0 KB (25952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f295e8158e629f69343e600e22fd7d4c57bfdabc38298618670ae632250d7a3`  
		Last Modified: Tue, 25 Dec 2018 13:01:04 GMT  
		Size: 81.6 MB (81630416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ebaf61cfd12d373e79177f47341c71c28bd0091de2077dab92db894c1d56d84`  
		Last Modified: Tue, 25 Dec 2018 13:00:48 GMT  
		Size: 472.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e274b5d75bb1a238a4f784c3f188f7fad0a46b4c6271dc927ddd31c7a5d74fe1`  
		Last Modified: Tue, 25 Dec 2018 13:00:49 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.4` - linux; arm64 variant v8

```console
$ docker pull convertigo@sha256:c572bd8df58cf34f09c30947f98a270d7798308987f6518304dfdb1b3f4d651f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.6 MB (271584790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7c340c8cf4f37c183fcae0c9e082b75f7336d489847f85686fa65c30d7d73ea`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:38:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 12:02:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:21:27 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 12:21:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 12:21:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 12:21:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 12:21:39 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 12:21:41 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 12:27:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 19:20:47 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 06 Feb 2019 19:20:48 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 19:20:50 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 06 Feb 2019 19:20:51 GMT
WORKDIR /usr/local/tomcat
# Wed, 06 Feb 2019 19:20:52 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 06 Feb 2019 19:20:53 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 06 Feb 2019 19:20:54 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 06 Feb 2019 19:20:56 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 19:21:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:21:15 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 06 Feb 2019 19:21:16 GMT
ENV TOMCAT_MAJOR=7
# Fri, 22 Feb 2019 13:04:11 GMT
ENV TOMCAT_VERSION=7.0.93
# Fri, 22 Feb 2019 13:04:12 GMT
ENV TOMCAT_SHA512=7ae5186f63df7821b7de4e4c92780a27ccc678119614ad074349c3d02bd2f764ac08fa72f776e880e98aad2617de01521eb3de6fe57e4a749c8c04f28e042f0a
# Fri, 22 Feb 2019 13:04:13 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz
# Fri, 22 Feb 2019 13:04:15 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc
# Fri, 22 Feb 2019 13:06:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Fri, 22 Feb 2019 13:07:00 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 22 Feb 2019 13:07:01 GMT
EXPOSE 8080
# Fri, 22 Feb 2019 13:07:03 GMT
CMD ["catalina.sh" "run"]
# Fri, 22 Feb 2019 14:48:12 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Fri, 22 Feb 2019 14:48:13 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 22 Feb 2019 14:48:17 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 22 Feb 2019 14:48:18 GMT
WORKDIR /usr/local/tomcat
# Fri, 22 Feb 2019 14:48:34 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Fri, 22 Feb 2019 14:48:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 22 Feb 2019 14:48:35 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 22 Feb 2019 14:51:59 GMT
ENV TINI_VERSION=0.17.0
# Fri, 22 Feb 2019 14:52:00 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Fri, 22 Feb 2019 14:52:10 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Fri, 22 Feb 2019 14:52:17 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Fri, 22 Feb 2019 14:52:21 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Fri, 22 Feb 2019 14:52:22 GMT
ENV CONVERTIGO_VERSION=7.4.8
# Fri, 22 Feb 2019 14:52:23 GMT
ENV CONVERTIGO_REVISION=44478
# Fri, 22 Feb 2019 14:52:24 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.8/convertigo-7.4.8-v44478-linux32.war
# Fri, 22 Feb 2019 14:52:25 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Fri, 22 Feb 2019 14:53:30 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Fri, 22 Feb 2019 14:53:31 GMT
COPY file:b5bd0566057785adb2589ced522fc8697237dae618549557ce65ad5368cf8938 in webapps/ROOT/index.html 
# Fri, 22 Feb 2019 14:53:32 GMT
COPY file:92202dec06475967df944234eb1273db2cd0176d1466e5fc3b977040008eba49 in / 
# Fri, 22 Feb 2019 14:53:33 GMT
ENV SWT_GTK3=0
# Fri, 22 Feb 2019 14:53:34 GMT
WORKDIR /workspace
# Fri, 22 Feb 2019 14:53:35 GMT
VOLUME [/workspace]
# Fri, 22 Feb 2019 14:53:36 GMT
EXPOSE 28080
# Fri, 22 Feb 2019 14:53:37 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Fri, 22 Feb 2019 14:53:38 GMT
CMD ["convertigo"]
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
	-	`sha256:1f78a9a3946c048cd1989adcb19ce142726814f9404f8ba27e6f67109ffbbcb4`  
		Last Modified: Wed, 06 Feb 2019 12:38:38 GMT  
		Size: 839.2 KB (839181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878c79f6988625ee5f4324e98135b17b7efeaa9075d4564d50ae21a8d7d0a5d9`  
		Last Modified: Wed, 06 Feb 2019 12:43:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783443219103599e6e7f0ceca2dfa1f8d755ced3dd4f5d8dffe801d82c6f1c26`  
		Last Modified: Wed, 06 Feb 2019 12:43:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d15746098decd81522d87e08b556d729daed66739f70ccbcf9a4049b5ba3f5e`  
		Last Modified: Wed, 06 Feb 2019 12:44:11 GMT  
		Size: 112.8 MB (112756331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af34ab79342334e7bc1d9757658d3461da30732c2fd14f60503135e1cdbf2c9`  
		Last Modified: Wed, 06 Feb 2019 20:22:34 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e2786a2229963b665c9fa8cde0a6dd1d4f32716bf9245a2468b8bdb494ae53`  
		Last Modified: Wed, 06 Feb 2019 20:22:34 GMT  
		Size: 513.2 KB (513189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0310382eb300f045745f0b9122b226ab501b5b7fac32dc310d4ed084f17ccdd7`  
		Last Modified: Fri, 22 Feb 2019 13:20:01 GMT  
		Size: 17.4 MB (17425369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7458b5f71c0b9fcd177ae83a2a756285123e1e224231c52523f5fd513b3a41d8`  
		Last Modified: Fri, 22 Feb 2019 13:19:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:393cb9cd53c8f5e2440872be1d9d22d019c3a27768c59c5ba25d37ecf260cd20`  
		Last Modified: Fri, 22 Feb 2019 14:54:52 GMT  
		Size: 963.7 KB (963677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0f923e340f20330fae86af6b5c21c515811c28bf6ba9367b45df3ab082f8cf`  
		Last Modified: Fri, 22 Feb 2019 14:55:59 GMT  
		Size: 477.2 KB (477233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68803a9715a595c584c3311ce3bf956ea33816274d9c3ef49b2ad3d605c07463`  
		Last Modified: Fri, 22 Feb 2019 14:55:57 GMT  
		Size: 4.3 KB (4269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336fe7453b4715ad9cfb0093fc892194d0cc9382b5ecc167b9ff9da88049c2a8`  
		Last Modified: Fri, 22 Feb 2019 14:55:57 GMT  
		Size: 26.0 KB (25951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae367ed13ce7d0eda1c1ecd99e8d268bfd20f0fd2f816e243b1307a9cc692ca`  
		Last Modified: Fri, 22 Feb 2019 14:56:13 GMT  
		Size: 81.6 MB (81630436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83df08e3566627f2fa2185b8b9b6ea99a48bb315f8f7559692d225f6281fa73`  
		Last Modified: Fri, 22 Feb 2019 14:55:57 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:165505e87ca9bd9e69231517ae5663e55d1bcbc4f783598aded445fcecf2cb20`  
		Last Modified: Fri, 22 Feb 2019 14:55:57 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.4` - linux; 386

```console
$ docker pull convertigo@sha256:d3fc8d3afaf812dffe388864d13c7751628a13a21c4117cc17f38e90d145f17e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.6 MB (291647966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edce0a7a281ca26f7b89b33356ec02f82ce3c2c773e521601386feaa4b2194b7`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:07 GMT
ADD file:70c26933810136bdb5c394bab98ac1119dd6ab650db410d21a0a16098b8a6ae2 in / 
# Wed, 06 Feb 2019 12:01:08 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 01:49:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:49:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 06:21:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 06:23:57 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 06:23:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 07 Feb 2019 06:23:59 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 07 Feb 2019 06:23:59 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 07 Feb 2019 06:23:59 GMT
ENV JAVA_VERSION=8u181
# Thu, 07 Feb 2019 06:23:59 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Thu, 07 Feb 2019 06:24:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 07 Feb 2019 11:17:08 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 07 Feb 2019 11:17:08 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Feb 2019 11:17:09 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 07 Feb 2019 11:17:09 GMT
WORKDIR /usr/local/tomcat
# Thu, 07 Feb 2019 11:17:09 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 07 Feb 2019 11:17:10 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 07 Feb 2019 11:17:10 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Thu, 07 Feb 2019 11:17:10 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 11:17:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 11:17:16 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 07 Feb 2019 11:17:16 GMT
ENV TOMCAT_MAJOR=7
# Thu, 07 Feb 2019 11:17:16 GMT
ENV TOMCAT_VERSION=7.0.92
# Thu, 07 Feb 2019 11:17:16 GMT
ENV TOMCAT_SHA512=e5e17ea68956df5d4c220f2e2891953b362b4fadd391f7cb9bc00d86986aa2e2499176d59c393f41db9ab3e0d7f1ab492a881f85c6650514a7f02f047d4eb2b0
# Thu, 07 Feb 2019 11:17:17 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz
# Thu, 07 Feb 2019 11:17:17 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc
# Thu, 07 Feb 2019 11:18:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 07 Feb 2019 11:18:02 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 07 Feb 2019 11:18:02 GMT
EXPOSE 8080
# Thu, 07 Feb 2019 11:18:02 GMT
CMD ["catalina.sh" "run"]
# Thu, 07 Feb 2019 11:25:26 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Thu, 07 Feb 2019 11:25:26 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 07 Feb 2019 11:25:27 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 07 Feb 2019 11:25:27 GMT
WORKDIR /usr/local/tomcat
# Thu, 07 Feb 2019 11:25:32 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 11:25:32 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Feb 2019 11:25:32 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 07 Feb 2019 11:26:21 GMT
ENV TINI_VERSION=0.17.0
# Thu, 07 Feb 2019 11:26:21 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Thu, 07 Feb 2019 11:26:25 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Thu, 07 Feb 2019 11:26:26 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Thu, 07 Feb 2019 11:26:26 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Thu, 07 Feb 2019 11:26:27 GMT
ENV CONVERTIGO_VERSION=7.4.8
# Thu, 07 Feb 2019 11:26:27 GMT
ENV CONVERTIGO_REVISION=44478
# Thu, 07 Feb 2019 11:26:27 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.8/convertigo-7.4.8-v44478-linux32.war
# Thu, 07 Feb 2019 11:26:27 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Thu, 07 Feb 2019 11:26:48 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Thu, 07 Feb 2019 11:26:48 GMT
COPY file:b5bd0566057785adb2589ced522fc8697237dae618549557ce65ad5368cf8938 in webapps/ROOT/index.html 
# Thu, 07 Feb 2019 11:26:49 GMT
COPY file:92202dec06475967df944234eb1273db2cd0176d1466e5fc3b977040008eba49 in / 
# Thu, 07 Feb 2019 11:26:49 GMT
ENV SWT_GTK3=0
# Thu, 07 Feb 2019 11:26:49 GMT
WORKDIR /workspace
# Thu, 07 Feb 2019 11:26:49 GMT
VOLUME [/workspace]
# Thu, 07 Feb 2019 11:26:49 GMT
EXPOSE 28080
# Thu, 07 Feb 2019 11:26:50 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Thu, 07 Feb 2019 11:26:50 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:56c1dc1a93dfeb7eb66abd8197c3fdfe7d7393c9757be0a44ca2f624b6e5c684`  
		Last Modified: Wed, 06 Feb 2019 12:07:42 GMT  
		Size: 46.1 MB (46069815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d401cb48eb9dd4b814e64479a4a5e9150a56d439c01778f0b95ff0689f82cd17`  
		Last Modified: Thu, 07 Feb 2019 02:03:03 GMT  
		Size: 10.8 MB (10799008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c068a67acc556d25d2fd2dc13d5929a34ee0395cd208b418f73bf15fc17e0955`  
		Last Modified: Thu, 07 Feb 2019 02:03:02 GMT  
		Size: 4.6 MB (4560874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404daee469e7110f87d6cff18a56b702c9a559f4ed1a9dbfc19dd4b7f467a8f6`  
		Last Modified: Thu, 07 Feb 2019 06:39:52 GMT  
		Size: 861.8 KB (861782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb0682ae720b17c31fb2604657fce4f6666c5d10dcc28fbdddb7975c40d0580`  
		Last Modified: Thu, 07 Feb 2019 06:41:04 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2468d39d4f0a7aefb8c7ff17aaf6f1d629af13da8f2ba011b60f91a4406c232f`  
		Last Modified: Thu, 07 Feb 2019 06:41:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cae5e57702086236a1f8f63a621c95b430457a22febdd0cee00cb145ea7c53f`  
		Last Modified: Thu, 07 Feb 2019 06:41:28 GMT  
		Size: 122.6 MB (122608632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a924ceba4ea8f04dd3004d45e948f6f9f4ea34494f653ea86812e16d7a670c1a`  
		Last Modified: Thu, 07 Feb 2019 11:23:01 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eed460517fd5ebdebb3402a79839430123e8255ba1b2797f70d1d6b3785ea16`  
		Last Modified: Thu, 07 Feb 2019 11:23:01 GMT  
		Size: 540.4 KB (540388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9441ad77461b115352e95527db85baf1aba71122742d0911195132e7e6d76b7`  
		Last Modified: Thu, 07 Feb 2019 11:23:04 GMT  
		Size: 10.0 MB (9989623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00fd5f7362393da3b6d94217cc3e409b1be4c12794983705c702a436e978192e`  
		Last Modified: Thu, 07 Feb 2019 11:23:02 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b349bceaf6f3a9c298dd12832bb6ac8cf304612f1e90cc111a0f6cc448501fbe`  
		Last Modified: Thu, 07 Feb 2019 11:27:14 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2af0236eab7bdb8e33a2552209164419453f5da85a5a88b6fa391f9ce8bd7c2`  
		Last Modified: Thu, 07 Feb 2019 11:27:54 GMT  
		Size: 489.6 KB (489613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5366e4f10d30a04cd7688cce2991305037e049eaf087d7b89eadc2bcc282a76`  
		Last Modified: Thu, 07 Feb 2019 11:27:53 GMT  
		Size: 4.2 KB (4248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfa55d749a2a13e448629f7cb5ce933410794722c80ee5d3376f1aaf95e34f71`  
		Last Modified: Thu, 07 Feb 2019 11:27:53 GMT  
		Size: 26.0 KB (25974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfed5f7e8f2141b862ad491090e93dccdec8b30c51c87ca3701367ea4bb2b53b`  
		Last Modified: Thu, 07 Feb 2019 11:28:05 GMT  
		Size: 95.7 MB (95695440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9cf1c3f516194356a94071531f6adc07309c60e6b18a6fa3ef0f442f1748af4`  
		Last Modified: Thu, 07 Feb 2019 11:27:53 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e62b58f92be3c0c297f8dbccb791b0ae39ca8b5ad2aab2649ba7c0bac915cf5`  
		Last Modified: Thu, 07 Feb 2019 11:27:53 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `convertigo:7.4.8`

```console
$ docker pull convertigo@sha256:c65ed249caf15b5a47075aae719b1f4b2471f1c61ecda10b42ecef38b1852acc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `convertigo:7.4.8` - linux; amd64

```console
$ docker pull convertigo@sha256:1b7f153c7bab50529f8a6ee76f47d847d72e3fb6daf06dcaf7862bbec5d273c1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.3 MB (285318244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac64bf3bc837e8f3b6d448ea329397fe11e79247dd9647f9a71fba83f9a42397`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 08:27:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:29:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 08:29:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 08:29:45 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 08:29:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 08:29:46 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 08:29:46 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 08:30:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 16:55:01 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 06 Feb 2019 16:55:01 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 16:55:03 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 06 Feb 2019 16:55:03 GMT
WORKDIR /usr/local/tomcat
# Wed, 06 Feb 2019 16:55:04 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 06 Feb 2019 16:55:04 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 06 Feb 2019 16:55:04 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 06 Feb 2019 16:55:06 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 16:55:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 16:55:16 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 06 Feb 2019 16:55:16 GMT
ENV TOMCAT_MAJOR=7
# Fri, 22 Feb 2019 01:38:46 GMT
ENV TOMCAT_VERSION=7.0.93
# Fri, 22 Feb 2019 01:38:46 GMT
ENV TOMCAT_SHA512=7ae5186f63df7821b7de4e4c92780a27ccc678119614ad074349c3d02bd2f764ac08fa72f776e880e98aad2617de01521eb3de6fe57e4a749c8c04f28e042f0a
# Fri, 22 Feb 2019 01:38:47 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz
# Fri, 22 Feb 2019 01:38:47 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc
# Fri, 22 Feb 2019 01:39:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Fri, 22 Feb 2019 01:39:48 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 22 Feb 2019 01:39:48 GMT
EXPOSE 8080
# Fri, 22 Feb 2019 01:39:48 GMT
CMD ["catalina.sh" "run"]
# Fri, 22 Feb 2019 02:13:40 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Fri, 22 Feb 2019 02:13:40 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 22 Feb 2019 02:13:42 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 22 Feb 2019 02:13:43 GMT
WORKDIR /usr/local/tomcat
# Fri, 22 Feb 2019 02:13:48 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Fri, 22 Feb 2019 02:13:48 GMT
ENV GOSU_VERSION=1.10
# Fri, 22 Feb 2019 02:13:48 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 22 Feb 2019 02:14:56 GMT
ENV TINI_VERSION=0.17.0
# Fri, 22 Feb 2019 02:14:57 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Fri, 22 Feb 2019 02:15:02 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Fri, 22 Feb 2019 02:15:04 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Fri, 22 Feb 2019 02:15:06 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Fri, 22 Feb 2019 02:15:06 GMT
ENV CONVERTIGO_VERSION=7.4.8
# Fri, 22 Feb 2019 02:15:06 GMT
ENV CONVERTIGO_REVISION=44478
# Fri, 22 Feb 2019 02:15:07 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.8/convertigo-7.4.8-v44478-linux32.war
# Fri, 22 Feb 2019 02:15:08 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Fri, 22 Feb 2019 02:15:19 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Fri, 22 Feb 2019 02:15:19 GMT
COPY file:b5bd0566057785adb2589ced522fc8697237dae618549557ce65ad5368cf8938 in webapps/ROOT/index.html 
# Fri, 22 Feb 2019 02:15:20 GMT
COPY file:92202dec06475967df944234eb1273db2cd0176d1466e5fc3b977040008eba49 in / 
# Fri, 22 Feb 2019 02:15:21 GMT
ENV SWT_GTK3=0
# Fri, 22 Feb 2019 02:15:21 GMT
WORKDIR /workspace
# Fri, 22 Feb 2019 02:15:21 GMT
VOLUME [/workspace]
# Fri, 22 Feb 2019 02:15:22 GMT
EXPOSE 28080
# Fri, 22 Feb 2019 02:15:22 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Fri, 22 Feb 2019 02:15:23 GMT
CMD ["convertigo"]
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
	-	`sha256:eea0f08c7492aa49cb62b7fc7cf5a3b91e5c83c182cecddaba75903f09a1c67e`  
		Last Modified: Wed, 06 Feb 2019 08:52:24 GMT  
		Size: 852.9 KB (852911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca74b3d90c15cc3066bb46f8b6cdb617805b39e46ba39b891e4592b601abaee1`  
		Last Modified: Wed, 06 Feb 2019 08:54:24 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f11a643c4a8511e3f7d00a7f7c01059bf804876833992895eebbbaf108399655`  
		Last Modified: Wed, 06 Feb 2019 08:54:24 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05eafed73b65f1719e1ad5446e1f57859feb2f71f0b21d5f0bd25fb7d0d6dbd5`  
		Last Modified: Wed, 06 Feb 2019 08:54:52 GMT  
		Size: 122.1 MB (122121101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f24105f282aadee3e59151424724bc5962ef2aea0b9516f71e9a307e2fde7112`  
		Last Modified: Wed, 06 Feb 2019 17:15:16 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27e73cbbd3f3821d48e165fd1c6905d23efe9651ed5f7d8d6374883a89ddbaf`  
		Last Modified: Wed, 06 Feb 2019 17:15:17 GMT  
		Size: 528.4 KB (528443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e09b82a92ead396ff26d0940ca9c97437d9f7382ea193262f3298e8601f7474`  
		Last Modified: Fri, 22 Feb 2019 01:44:05 GMT  
		Size: 18.2 MB (18183671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7bfd50176d08c40e08ceea4665c6219525fefd8e0f12e8fca5493354fb2afcb`  
		Last Modified: Fri, 22 Feb 2019 01:44:02 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a701a3abc23cf39f10aed52dbc80d595cf4d05a8ee4aa9c53fe8fdcf8534d97a`  
		Last Modified: Fri, 22 Feb 2019 02:15:53 GMT  
		Size: 994.1 KB (994143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46eec643e69c0a4ba89c9d4aa63397cb39e19fc3c264d2b64589beacb683e6c2`  
		Last Modified: Fri, 22 Feb 2019 02:16:28 GMT  
		Size: 509.7 KB (509708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27a1d3b6e01996eabf513947ab9555047112821c317ea93daf295b32af79346`  
		Last Modified: Fri, 22 Feb 2019 02:16:27 GMT  
		Size: 4.3 KB (4265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caec7fb4a550402465aafa1efc2e8b1ecce049684e0a2787f0fcee07797d188e`  
		Last Modified: Fri, 22 Feb 2019 02:16:27 GMT  
		Size: 25.9 KB (25948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38274525327ad19833c99fbd762c6d8760e0bb3725c13cf50307b01dad50c9c3`  
		Last Modified: Fri, 22 Feb 2019 02:16:35 GMT  
		Size: 81.6 MB (81630385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:157491665bdb5d1ee4f4dd6faaa8eef2bff40897dbe3aa9e4b2fedc9dc9c2e02`  
		Last Modified: Fri, 22 Feb 2019 02:16:27 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a21251f1e4b113ab3cc7603ad56ae7d3a92e80a2c402b9c2a5e0aa250cbe22`  
		Last Modified: Fri, 22 Feb 2019 02:16:27 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.4.8` - linux; arm variant v7

```console
$ docker pull convertigo@sha256:caf9633546553c667d786da7011b478e77e94e33634caeb616bb57ab1e808af5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.0 MB (295956340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f1ca13c7159478802d7535519a5ed18fd964d2d99811d9138acc02431e4b9ad`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:13:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:59:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:59:16 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:59:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 05 May 2018 12:59:19 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 12:59:27 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 12:59:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 05 May 2018 13:00:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 05 May 2018 13:00:28 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 05 May 2018 15:54:31 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 05 May 2018 15:54:31 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 05 May 2018 15:54:32 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 05 May 2018 15:54:33 GMT
WORKDIR /usr/local/tomcat
# Sat, 05 May 2018 15:54:33 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 05 May 2018 15:54:34 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 05 May 2018 15:54:34 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Sat, 05 May 2018 15:54:35 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 15:54:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 15:54:48 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 05 May 2018 15:54:48 GMT
ENV TOMCAT_MAJOR=7
# Sat, 07 Jul 2018 12:21:40 GMT
ENV TOMCAT_VERSION=7.0.90
# Sat, 07 Jul 2018 12:21:41 GMT
ENV TOMCAT_SHA512=c7a47135b99684425260cd906cf5c9a5226837d3681d84ae4e3bb199068e97f0e63d07393d91ca0436204a1dc92bf9bd9a4a1c4c893187703e023503bbd81901
# Sat, 07 Jul 2018 12:21:41 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz
# Sat, 07 Jul 2018 12:21:41 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc
# Wed, 01 Aug 2018 12:39:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Wed, 01 Aug 2018 12:39:46 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 01 Aug 2018 12:39:49 GMT
EXPOSE 8080/tcp
# Wed, 01 Aug 2018 12:39:49 GMT
CMD ["catalina.sh" "run"]
# Wed, 01 Aug 2018 13:22:11 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Wed, 01 Aug 2018 13:22:11 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 01 Aug 2018 13:22:12 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 01 Aug 2018 13:22:13 GMT
WORKDIR /usr/local/tomcat
# Wed, 01 Aug 2018 13:22:19 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Wed, 01 Aug 2018 13:22:20 GMT
ENV GOSU_VERSION=1.10
# Wed, 01 Aug 2018 13:22:20 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 01 Aug 2018 13:22:52 GMT
ENV TINI_VERSION=0.17.0
# Wed, 01 Aug 2018 13:22:52 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Tue, 25 Dec 2018 12:59:06 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Tue, 25 Dec 2018 12:59:08 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Tue, 25 Dec 2018 12:59:10 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Tue, 25 Dec 2018 12:59:10 GMT
ENV CONVERTIGO_VERSION=7.4.8
# Tue, 25 Dec 2018 12:59:11 GMT
ENV CONVERTIGO_REVISION=44478
# Tue, 25 Dec 2018 12:59:11 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.8/convertigo-7.4.8-v44478-linux32.war
# Tue, 25 Dec 2018 12:59:12 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Tue, 25 Dec 2018 13:00:04 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Tue, 25 Dec 2018 13:00:05 GMT
COPY file:b5bd0566057785adb2589ced522fc8697237dae618549557ce65ad5368cf8938 in webapps/ROOT/index.html 
# Tue, 25 Dec 2018 13:00:06 GMT
COPY file:92202dec06475967df944234eb1273db2cd0176d1466e5fc3b977040008eba49 in / 
# Tue, 25 Dec 2018 13:00:07 GMT
ENV SWT_GTK3=0
# Tue, 25 Dec 2018 13:00:07 GMT
WORKDIR /workspace
# Tue, 25 Dec 2018 13:00:07 GMT
VOLUME [/workspace]
# Tue, 25 Dec 2018 13:00:08 GMT
EXPOSE 28080
# Tue, 25 Dec 2018 13:00:08 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 25 Dec 2018 13:00:09 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed57f83cc7c78757972312a1b5a30524f861523c5390d062845f18c696f48ea`  
		Last Modified: Sat, 05 May 2018 12:35:37 GMT  
		Size: 9.5 MB (9472475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859203aede279201e8caf07cf2963456c56bac72a64071079dc9db6fb65ed1a2`  
		Last Modified: Sat, 05 May 2018 12:35:34 GMT  
		Size: 3.9 MB (3912835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df26ddf71ea9e82f175e400809b8f06871dd0937c5a90f4ffe95286544a9f719`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 830.3 KB (830332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c21322a9c89724512d6ea5faa10299c60c8a605d6f563c84c28177db8d2770`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2270f04a4be61f52577232813fff92e797d3fc190d52f71411afc26b0911f8e4`  
		Last Modified: Sat, 05 May 2018 13:29:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2dc1aba58c8cd285639cac6b03c823e5fcdb91aa8922652e7d9387aaca6fa4`  
		Last Modified: Sat, 05 May 2018 13:29:37 GMT  
		Size: 139.5 MB (139501760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02869ec2bb3864b06abd435610eb6849d5c62426517de1a603ef6fe43c7d3815`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 272.1 KB (272082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289a355206a5e4f55a89ee04aff3ea7521228ac5dd89e2068978f78acbbd0a54`  
		Last Modified: Sat, 05 May 2018 16:08:23 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf947ee846151b3e82b979ab8f3027c037e1a8dc7a1c2976128213dcb515eced`  
		Last Modified: Sat, 05 May 2018 16:08:24 GMT  
		Size: 519.8 KB (519803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc44ea6baa81c1119dd6637b87028c7ac9a35f16680a4cdb8fa7a65295b9b56c`  
		Last Modified: Wed, 01 Aug 2018 13:02:49 GMT  
		Size: 16.3 MB (16281202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edbf1f55b4009d5b8fe3b4adb1ad6ec97e745b06f1ac456386ae0203f90a31e5`  
		Last Modified: Wed, 01 Aug 2018 13:02:44 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a340f18f8d09e1349704539c8a7da88fb26998dee221c73eea10c0b38bc910`  
		Last Modified: Wed, 01 Aug 2018 13:23:33 GMT  
		Size: 956.1 KB (956126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a64318216d1461cdbe3be92ab78c5b61eb1d925ac82845ece699dbe5ef906b`  
		Last Modified: Tue, 25 Dec 2018 13:00:50 GMT  
		Size: 483.0 KB (483033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136a08a90447df57aed82e42022b43d4e8ecae8e1a23f53fd82e92c8d1ab89a4`  
		Last Modified: Tue, 25 Dec 2018 13:00:49 GMT  
		Size: 4.4 KB (4354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe5f61da977ed793d8fd96c2a33e711ade8e0b01dd5363ae36fa659427fe19f`  
		Last Modified: Tue, 25 Dec 2018 13:00:49 GMT  
		Size: 26.0 KB (25952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f295e8158e629f69343e600e22fd7d4c57bfdabc38298618670ae632250d7a3`  
		Last Modified: Tue, 25 Dec 2018 13:01:04 GMT  
		Size: 81.6 MB (81630416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ebaf61cfd12d373e79177f47341c71c28bd0091de2077dab92db894c1d56d84`  
		Last Modified: Tue, 25 Dec 2018 13:00:48 GMT  
		Size: 472.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e274b5d75bb1a238a4f784c3f188f7fad0a46b4c6271dc927ddd31c7a5d74fe1`  
		Last Modified: Tue, 25 Dec 2018 13:00:49 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.4.8` - linux; arm64 variant v8

```console
$ docker pull convertigo@sha256:c572bd8df58cf34f09c30947f98a270d7798308987f6518304dfdb1b3f4d651f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.6 MB (271584790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7c340c8cf4f37c183fcae0c9e082b75f7336d489847f85686fa65c30d7d73ea`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:38:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 12:02:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:21:27 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 12:21:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 12:21:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 12:21:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 12:21:39 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 12:21:41 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 12:27:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 19:20:47 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 06 Feb 2019 19:20:48 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 19:20:50 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 06 Feb 2019 19:20:51 GMT
WORKDIR /usr/local/tomcat
# Wed, 06 Feb 2019 19:20:52 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 06 Feb 2019 19:20:53 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 06 Feb 2019 19:20:54 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 06 Feb 2019 19:20:56 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 19:21:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:21:15 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 06 Feb 2019 19:21:16 GMT
ENV TOMCAT_MAJOR=7
# Fri, 22 Feb 2019 13:04:11 GMT
ENV TOMCAT_VERSION=7.0.93
# Fri, 22 Feb 2019 13:04:12 GMT
ENV TOMCAT_SHA512=7ae5186f63df7821b7de4e4c92780a27ccc678119614ad074349c3d02bd2f764ac08fa72f776e880e98aad2617de01521eb3de6fe57e4a749c8c04f28e042f0a
# Fri, 22 Feb 2019 13:04:13 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz
# Fri, 22 Feb 2019 13:04:15 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc
# Fri, 22 Feb 2019 13:06:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Fri, 22 Feb 2019 13:07:00 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 22 Feb 2019 13:07:01 GMT
EXPOSE 8080
# Fri, 22 Feb 2019 13:07:03 GMT
CMD ["catalina.sh" "run"]
# Fri, 22 Feb 2019 14:48:12 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Fri, 22 Feb 2019 14:48:13 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 22 Feb 2019 14:48:17 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 22 Feb 2019 14:48:18 GMT
WORKDIR /usr/local/tomcat
# Fri, 22 Feb 2019 14:48:34 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Fri, 22 Feb 2019 14:48:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 22 Feb 2019 14:48:35 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 22 Feb 2019 14:51:59 GMT
ENV TINI_VERSION=0.17.0
# Fri, 22 Feb 2019 14:52:00 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Fri, 22 Feb 2019 14:52:10 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Fri, 22 Feb 2019 14:52:17 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Fri, 22 Feb 2019 14:52:21 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Fri, 22 Feb 2019 14:52:22 GMT
ENV CONVERTIGO_VERSION=7.4.8
# Fri, 22 Feb 2019 14:52:23 GMT
ENV CONVERTIGO_REVISION=44478
# Fri, 22 Feb 2019 14:52:24 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.8/convertigo-7.4.8-v44478-linux32.war
# Fri, 22 Feb 2019 14:52:25 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Fri, 22 Feb 2019 14:53:30 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Fri, 22 Feb 2019 14:53:31 GMT
COPY file:b5bd0566057785adb2589ced522fc8697237dae618549557ce65ad5368cf8938 in webapps/ROOT/index.html 
# Fri, 22 Feb 2019 14:53:32 GMT
COPY file:92202dec06475967df944234eb1273db2cd0176d1466e5fc3b977040008eba49 in / 
# Fri, 22 Feb 2019 14:53:33 GMT
ENV SWT_GTK3=0
# Fri, 22 Feb 2019 14:53:34 GMT
WORKDIR /workspace
# Fri, 22 Feb 2019 14:53:35 GMT
VOLUME [/workspace]
# Fri, 22 Feb 2019 14:53:36 GMT
EXPOSE 28080
# Fri, 22 Feb 2019 14:53:37 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Fri, 22 Feb 2019 14:53:38 GMT
CMD ["convertigo"]
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
	-	`sha256:1f78a9a3946c048cd1989adcb19ce142726814f9404f8ba27e6f67109ffbbcb4`  
		Last Modified: Wed, 06 Feb 2019 12:38:38 GMT  
		Size: 839.2 KB (839181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878c79f6988625ee5f4324e98135b17b7efeaa9075d4564d50ae21a8d7d0a5d9`  
		Last Modified: Wed, 06 Feb 2019 12:43:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783443219103599e6e7f0ceca2dfa1f8d755ced3dd4f5d8dffe801d82c6f1c26`  
		Last Modified: Wed, 06 Feb 2019 12:43:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d15746098decd81522d87e08b556d729daed66739f70ccbcf9a4049b5ba3f5e`  
		Last Modified: Wed, 06 Feb 2019 12:44:11 GMT  
		Size: 112.8 MB (112756331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af34ab79342334e7bc1d9757658d3461da30732c2fd14f60503135e1cdbf2c9`  
		Last Modified: Wed, 06 Feb 2019 20:22:34 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e2786a2229963b665c9fa8cde0a6dd1d4f32716bf9245a2468b8bdb494ae53`  
		Last Modified: Wed, 06 Feb 2019 20:22:34 GMT  
		Size: 513.2 KB (513189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0310382eb300f045745f0b9122b226ab501b5b7fac32dc310d4ed084f17ccdd7`  
		Last Modified: Fri, 22 Feb 2019 13:20:01 GMT  
		Size: 17.4 MB (17425369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7458b5f71c0b9fcd177ae83a2a756285123e1e224231c52523f5fd513b3a41d8`  
		Last Modified: Fri, 22 Feb 2019 13:19:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:393cb9cd53c8f5e2440872be1d9d22d019c3a27768c59c5ba25d37ecf260cd20`  
		Last Modified: Fri, 22 Feb 2019 14:54:52 GMT  
		Size: 963.7 KB (963677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0f923e340f20330fae86af6b5c21c515811c28bf6ba9367b45df3ab082f8cf`  
		Last Modified: Fri, 22 Feb 2019 14:55:59 GMT  
		Size: 477.2 KB (477233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68803a9715a595c584c3311ce3bf956ea33816274d9c3ef49b2ad3d605c07463`  
		Last Modified: Fri, 22 Feb 2019 14:55:57 GMT  
		Size: 4.3 KB (4269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336fe7453b4715ad9cfb0093fc892194d0cc9382b5ecc167b9ff9da88049c2a8`  
		Last Modified: Fri, 22 Feb 2019 14:55:57 GMT  
		Size: 26.0 KB (25951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae367ed13ce7d0eda1c1ecd99e8d268bfd20f0fd2f816e243b1307a9cc692ca`  
		Last Modified: Fri, 22 Feb 2019 14:56:13 GMT  
		Size: 81.6 MB (81630436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83df08e3566627f2fa2185b8b9b6ea99a48bb315f8f7559692d225f6281fa73`  
		Last Modified: Fri, 22 Feb 2019 14:55:57 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:165505e87ca9bd9e69231517ae5663e55d1bcbc4f783598aded445fcecf2cb20`  
		Last Modified: Fri, 22 Feb 2019 14:55:57 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.4.8` - linux; 386

```console
$ docker pull convertigo@sha256:d3fc8d3afaf812dffe388864d13c7751628a13a21c4117cc17f38e90d145f17e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.6 MB (291647966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edce0a7a281ca26f7b89b33356ec02f82ce3c2c773e521601386feaa4b2194b7`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:07 GMT
ADD file:70c26933810136bdb5c394bab98ac1119dd6ab650db410d21a0a16098b8a6ae2 in / 
# Wed, 06 Feb 2019 12:01:08 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 01:49:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:49:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 06:21:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 06:23:57 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 06:23:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 07 Feb 2019 06:23:59 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 07 Feb 2019 06:23:59 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 07 Feb 2019 06:23:59 GMT
ENV JAVA_VERSION=8u181
# Thu, 07 Feb 2019 06:23:59 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Thu, 07 Feb 2019 06:24:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 07 Feb 2019 11:17:08 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 07 Feb 2019 11:17:08 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Feb 2019 11:17:09 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 07 Feb 2019 11:17:09 GMT
WORKDIR /usr/local/tomcat
# Thu, 07 Feb 2019 11:17:09 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 07 Feb 2019 11:17:10 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 07 Feb 2019 11:17:10 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Thu, 07 Feb 2019 11:17:10 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 11:17:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 11:17:16 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 07 Feb 2019 11:17:16 GMT
ENV TOMCAT_MAJOR=7
# Thu, 07 Feb 2019 11:17:16 GMT
ENV TOMCAT_VERSION=7.0.92
# Thu, 07 Feb 2019 11:17:16 GMT
ENV TOMCAT_SHA512=e5e17ea68956df5d4c220f2e2891953b362b4fadd391f7cb9bc00d86986aa2e2499176d59c393f41db9ab3e0d7f1ab492a881f85c6650514a7f02f047d4eb2b0
# Thu, 07 Feb 2019 11:17:17 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz
# Thu, 07 Feb 2019 11:17:17 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc
# Thu, 07 Feb 2019 11:18:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 07 Feb 2019 11:18:02 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 07 Feb 2019 11:18:02 GMT
EXPOSE 8080
# Thu, 07 Feb 2019 11:18:02 GMT
CMD ["catalina.sh" "run"]
# Thu, 07 Feb 2019 11:25:26 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Thu, 07 Feb 2019 11:25:26 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 07 Feb 2019 11:25:27 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 07 Feb 2019 11:25:27 GMT
WORKDIR /usr/local/tomcat
# Thu, 07 Feb 2019 11:25:32 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 11:25:32 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Feb 2019 11:25:32 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 07 Feb 2019 11:26:21 GMT
ENV TINI_VERSION=0.17.0
# Thu, 07 Feb 2019 11:26:21 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Thu, 07 Feb 2019 11:26:25 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Thu, 07 Feb 2019 11:26:26 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Thu, 07 Feb 2019 11:26:26 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Thu, 07 Feb 2019 11:26:27 GMT
ENV CONVERTIGO_VERSION=7.4.8
# Thu, 07 Feb 2019 11:26:27 GMT
ENV CONVERTIGO_REVISION=44478
# Thu, 07 Feb 2019 11:26:27 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.8/convertigo-7.4.8-v44478-linux32.war
# Thu, 07 Feb 2019 11:26:27 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Thu, 07 Feb 2019 11:26:48 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Thu, 07 Feb 2019 11:26:48 GMT
COPY file:b5bd0566057785adb2589ced522fc8697237dae618549557ce65ad5368cf8938 in webapps/ROOT/index.html 
# Thu, 07 Feb 2019 11:26:49 GMT
COPY file:92202dec06475967df944234eb1273db2cd0176d1466e5fc3b977040008eba49 in / 
# Thu, 07 Feb 2019 11:26:49 GMT
ENV SWT_GTK3=0
# Thu, 07 Feb 2019 11:26:49 GMT
WORKDIR /workspace
# Thu, 07 Feb 2019 11:26:49 GMT
VOLUME [/workspace]
# Thu, 07 Feb 2019 11:26:49 GMT
EXPOSE 28080
# Thu, 07 Feb 2019 11:26:50 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Thu, 07 Feb 2019 11:26:50 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:56c1dc1a93dfeb7eb66abd8197c3fdfe7d7393c9757be0a44ca2f624b6e5c684`  
		Last Modified: Wed, 06 Feb 2019 12:07:42 GMT  
		Size: 46.1 MB (46069815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d401cb48eb9dd4b814e64479a4a5e9150a56d439c01778f0b95ff0689f82cd17`  
		Last Modified: Thu, 07 Feb 2019 02:03:03 GMT  
		Size: 10.8 MB (10799008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c068a67acc556d25d2fd2dc13d5929a34ee0395cd208b418f73bf15fc17e0955`  
		Last Modified: Thu, 07 Feb 2019 02:03:02 GMT  
		Size: 4.6 MB (4560874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404daee469e7110f87d6cff18a56b702c9a559f4ed1a9dbfc19dd4b7f467a8f6`  
		Last Modified: Thu, 07 Feb 2019 06:39:52 GMT  
		Size: 861.8 KB (861782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb0682ae720b17c31fb2604657fce4f6666c5d10dcc28fbdddb7975c40d0580`  
		Last Modified: Thu, 07 Feb 2019 06:41:04 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2468d39d4f0a7aefb8c7ff17aaf6f1d629af13da8f2ba011b60f91a4406c232f`  
		Last Modified: Thu, 07 Feb 2019 06:41:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cae5e57702086236a1f8f63a621c95b430457a22febdd0cee00cb145ea7c53f`  
		Last Modified: Thu, 07 Feb 2019 06:41:28 GMT  
		Size: 122.6 MB (122608632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a924ceba4ea8f04dd3004d45e948f6f9f4ea34494f653ea86812e16d7a670c1a`  
		Last Modified: Thu, 07 Feb 2019 11:23:01 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eed460517fd5ebdebb3402a79839430123e8255ba1b2797f70d1d6b3785ea16`  
		Last Modified: Thu, 07 Feb 2019 11:23:01 GMT  
		Size: 540.4 KB (540388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9441ad77461b115352e95527db85baf1aba71122742d0911195132e7e6d76b7`  
		Last Modified: Thu, 07 Feb 2019 11:23:04 GMT  
		Size: 10.0 MB (9989623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00fd5f7362393da3b6d94217cc3e409b1be4c12794983705c702a436e978192e`  
		Last Modified: Thu, 07 Feb 2019 11:23:02 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b349bceaf6f3a9c298dd12832bb6ac8cf304612f1e90cc111a0f6cc448501fbe`  
		Last Modified: Thu, 07 Feb 2019 11:27:14 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2af0236eab7bdb8e33a2552209164419453f5da85a5a88b6fa391f9ce8bd7c2`  
		Last Modified: Thu, 07 Feb 2019 11:27:54 GMT  
		Size: 489.6 KB (489613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5366e4f10d30a04cd7688cce2991305037e049eaf087d7b89eadc2bcc282a76`  
		Last Modified: Thu, 07 Feb 2019 11:27:53 GMT  
		Size: 4.2 KB (4248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfa55d749a2a13e448629f7cb5ce933410794722c80ee5d3376f1aaf95e34f71`  
		Last Modified: Thu, 07 Feb 2019 11:27:53 GMT  
		Size: 26.0 KB (25974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfed5f7e8f2141b862ad491090e93dccdec8b30c51c87ca3701367ea4bb2b53b`  
		Last Modified: Thu, 07 Feb 2019 11:28:05 GMT  
		Size: 95.7 MB (95695440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9cf1c3f516194356a94071531f6adc07309c60e6b18a6fa3ef0f442f1748af4`  
		Last Modified: Thu, 07 Feb 2019 11:27:53 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e62b58f92be3c0c297f8dbccb791b0ae39ca8b5ad2aab2649ba7c0bac915cf5`  
		Last Modified: Thu, 07 Feb 2019 11:27:53 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `convertigo:7.4.8-alpine`

```console
$ docker pull convertigo@sha256:d145c90b8cb6b056c9cad819d642433b179f74dedfa77474d4ea4c4c581bb8fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `convertigo:7.4.8-alpine` - linux; amd64

```console
$ docker pull convertigo@sha256:7891268974219b1e039beac68a6c545b3b8c0e350328f39098fb719b46288306
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.0 MB (158995045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b65c509fe15c1ab8d013aeaa9c446e67d0269ef9fefbea141d76d7826fb28cc`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:39:38 GMT
ENV LANG=C.UTF-8
# Tue, 05 Feb 2019 20:39:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Feb 2019 20:39:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_VERSION=8u191
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Tue, 05 Feb 2019 20:40:03 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Feb 2019 23:13:21 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 05 Feb 2019 23:13:21 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Feb 2019 23:13:23 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 05 Feb 2019 23:13:23 GMT
WORKDIR /usr/local/tomcat
# Tue, 05 Feb 2019 23:13:24 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 05 Feb 2019 23:13:24 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 05 Feb 2019 23:13:25 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 05 Feb 2019 23:13:25 GMT
ENV TOMCAT_MAJOR=7
# Fri, 22 Feb 2019 01:41:29 GMT
ENV TOMCAT_VERSION=7.0.93
# Fri, 22 Feb 2019 01:41:29 GMT
ENV TOMCAT_SHA512=7ae5186f63df7821b7de4e4c92780a27ccc678119614ad074349c3d02bd2f764ac08fa72f776e880e98aad2617de01521eb3de6fe57e4a749c8c04f28e042f0a
# Fri, 22 Feb 2019 01:41:29 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz
# Fri, 22 Feb 2019 01:41:29 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc
# Fri, 22 Feb 2019 01:41:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Fri, 22 Feb 2019 01:41:47 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 22 Feb 2019 01:41:47 GMT
EXPOSE 8080
# Fri, 22 Feb 2019 01:41:47 GMT
CMD ["catalina.sh" "run"]
# Fri, 22 Feb 2019 02:14:25 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Fri, 22 Feb 2019 02:14:25 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 22 Feb 2019 02:14:27 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 22 Feb 2019 02:14:28 GMT
WORKDIR /usr/local/tomcat
# Fri, 22 Feb 2019 02:14:30 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Fri, 22 Feb 2019 02:14:30 GMT
ENV GOSU_VERSION=1.10
# Fri, 22 Feb 2019 02:14:30 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 22 Feb 2019 02:14:30 GMT
ENV TINI_VERSION=0.17.0
# Fri, 22 Feb 2019 02:14:31 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Fri, 22 Feb 2019 02:14:34 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && pkill -9 gpg-agent   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Fri, 22 Feb 2019 02:14:35 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Fri, 22 Feb 2019 02:14:37 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Fri, 22 Feb 2019 02:15:28 GMT
ENV CONVERTIGO_VERSION=7.4.8
# Fri, 22 Feb 2019 02:15:28 GMT
ENV CONVERTIGO_REVISION=44478
# Fri, 22 Feb 2019 02:15:28 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.8/convertigo-7.4.8-v44478-linux32.war
# Fri, 22 Feb 2019 02:15:28 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Fri, 22 Feb 2019 02:15:37 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && pkill -9 gpg-agent     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Fri, 22 Feb 2019 02:15:37 GMT
COPY file:469acf91c0f583e35a3bcf1ac9d684cb7ff494dab17d41517be8cd24e5e49646 in webapps/ROOT/index.html 
# Fri, 22 Feb 2019 02:15:38 GMT
COPY file:42593bf6b5b6f7097adcf68ab4c5a9e42d6241e711a56df31d8671d239932d3c in / 
# Fri, 22 Feb 2019 02:15:38 GMT
WORKDIR /workspace
# Fri, 22 Feb 2019 02:15:39 GMT
VOLUME [/workspace]
# Fri, 22 Feb 2019 02:15:39 GMT
EXPOSE 28080
# Fri, 22 Feb 2019 02:15:40 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Fri, 22 Feb 2019 02:15:40 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78b803852394d2b9aaa3ce93b0f2502b0bf8e063b1fa79734de0fc8ee55ee6e`  
		Last Modified: Tue, 05 Feb 2019 20:45:24 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f41fe1b6eee3555498a7e15b3bf048a7ec274302a92d0c8b34fda111c780fdcf`  
		Last Modified: Tue, 05 Feb 2019 20:45:56 GMT  
		Size: 54.9 MB (54922733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65369fd9d03ba296b96bcfcc16c03f9b39be3ccfff9aad916236581a0309282d`  
		Last Modified: Tue, 05 Feb 2019 23:15:46 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f8a9f6221d879f8f66085a6042834d7389a0fd03cddda6acf0a217999f5656e`  
		Last Modified: Fri, 22 Feb 2019 01:44:24 GMT  
		Size: 12.3 MB (12333020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0417dd3da053806909cf8746ba745d4f542eec02c2b77aa1ad659c2aea17b143`  
		Last Modified: Fri, 22 Feb 2019 01:44:22 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb4c2800548f8f701417bc40fd8ed17fc6c9dfa62126af27027337e8d9d1213a`  
		Last Modified: Fri, 22 Feb 2019 02:16:11 GMT  
		Size: 6.3 MB (6346174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26b7f3d3bc6182702e8c7af0271a14220a8e94855eb3003dad26ae2a95e3a293`  
		Last Modified: Fri, 22 Feb 2019 02:16:10 GMT  
		Size: 978.7 KB (978744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c54b488a9005c71f70f913fe5ae3b01bf9de656043167a66de6d29ae569d1ebd`  
		Last Modified: Fri, 22 Feb 2019 02:16:09 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e63157fb88c5e228320e81ff3be8e19646ec6ae99de0a1de9d30f031e51fa1`  
		Last Modified: Fri, 22 Feb 2019 02:16:09 GMT  
		Size: 25.9 KB (25923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94fa6e85e158d09f501cebbf88b5a39dece8e366e9011a51d3d8d676c7b643b`  
		Last Modified: Fri, 22 Feb 2019 02:16:48 GMT  
		Size: 81.6 MB (81630384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4fd5cdc719ccc8bafcc1a957bc358238049d39902493a5c61997be7fedb1173`  
		Last Modified: Fri, 22 Feb 2019 02:16:39 GMT  
		Size: 447.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06bf396957015c0823ba6f4560409bb62b59cae76ab0e1afb34713868e43e996`  
		Last Modified: Fri, 22 Feb 2019 02:16:40 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.4.8-alpine` - linux; arm variant v6

```console
$ docker pull convertigo@sha256:e95ac8694351df4e06156937eb7f7e8415c82598f7bc693b341d20b3a914f125
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.5 MB (155517399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43c7da024b56ddd7e9fbd09c5328acb2a99e124a471e5b24f2390644b7f36743`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:09:14 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 09:09:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 09:09:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 09:09:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 09:09:34 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 09:09:35 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 09:09:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Feb 2019 08:58:39 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 07 Feb 2019 08:58:39 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Feb 2019 08:58:41 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 07 Feb 2019 08:58:41 GMT
WORKDIR /usr/local/tomcat
# Thu, 07 Feb 2019 08:58:41 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 07 Feb 2019 08:58:42 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 07 Feb 2019 08:58:42 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 07 Feb 2019 08:58:42 GMT
ENV TOMCAT_MAJOR=7
# Fri, 22 Feb 2019 09:36:42 GMT
ENV TOMCAT_VERSION=7.0.93
# Fri, 22 Feb 2019 09:36:43 GMT
ENV TOMCAT_SHA512=7ae5186f63df7821b7de4e4c92780a27ccc678119614ad074349c3d02bd2f764ac08fa72f776e880e98aad2617de01521eb3de6fe57e4a749c8c04f28e042f0a
# Fri, 22 Feb 2019 09:36:43 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz
# Fri, 22 Feb 2019 09:36:44 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc
# Fri, 22 Feb 2019 09:37:02 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Fri, 22 Feb 2019 09:37:07 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 22 Feb 2019 09:37:08 GMT
EXPOSE 8080
# Fri, 22 Feb 2019 09:37:08 GMT
CMD ["catalina.sh" "run"]
# Fri, 22 Feb 2019 09:53:18 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Fri, 22 Feb 2019 09:53:19 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 22 Feb 2019 09:53:20 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 22 Feb 2019 09:53:21 GMT
WORKDIR /usr/local/tomcat
# Fri, 22 Feb 2019 09:53:23 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Fri, 22 Feb 2019 09:53:24 GMT
ENV GOSU_VERSION=1.10
# Fri, 22 Feb 2019 09:53:24 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 22 Feb 2019 09:53:25 GMT
ENV TINI_VERSION=0.17.0
# Fri, 22 Feb 2019 09:53:25 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Fri, 22 Feb 2019 09:53:29 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && pkill -9 gpg-agent   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Fri, 22 Feb 2019 09:53:31 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Fri, 22 Feb 2019 09:53:32 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Fri, 22 Feb 2019 09:55:02 GMT
ENV CONVERTIGO_VERSION=7.4.8
# Fri, 22 Feb 2019 09:55:03 GMT
ENV CONVERTIGO_REVISION=44478
# Fri, 22 Feb 2019 09:55:04 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.8/convertigo-7.4.8-v44478-linux32.war
# Fri, 22 Feb 2019 09:55:04 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Fri, 22 Feb 2019 09:55:54 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && pkill -9 gpg-agent     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Fri, 22 Feb 2019 09:55:55 GMT
COPY file:469acf91c0f583e35a3bcf1ac9d684cb7ff494dab17d41517be8cd24e5e49646 in webapps/ROOT/index.html 
# Fri, 22 Feb 2019 09:55:56 GMT
COPY file:42593bf6b5b6f7097adcf68ab4c5a9e42d6241e711a56df31d8671d239932d3c in / 
# Fri, 22 Feb 2019 09:55:56 GMT
WORKDIR /workspace
# Fri, 22 Feb 2019 09:55:57 GMT
VOLUME [/workspace]
# Fri, 22 Feb 2019 09:55:57 GMT
EXPOSE 28080
# Fri, 22 Feb 2019 09:55:58 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Fri, 22 Feb 2019 09:55:58 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:598092653ce578dc5f1728020fc7cea202bfd7c3694e321c61bdd914e0a1f5ec`  
		Last Modified: Wed, 06 Feb 2019 09:10:30 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a4f55d20a64c757c23b9e9b1382fa744e666c57cb22ae208fa26f8724585c2`  
		Last Modified: Wed, 06 Feb 2019 09:11:13 GMT  
		Size: 52.3 MB (52316622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e68384a4b0c4a4ad6903222918f44f5cef5aab617b16f2e4e908ffd8ff8284`  
		Last Modified: Thu, 07 Feb 2019 09:01:28 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbba9313cc48378b24e23639cb9cdb2a4256b0bb2ef8adde367d9ea0d431d7c7`  
		Last Modified: Fri, 22 Feb 2019 09:37:48 GMT  
		Size: 12.2 MB (12167577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f814ecaa1282b4d36a6013d25e097f4b5617b54e84895a97528f50d270c90f7`  
		Last Modified: Fri, 22 Feb 2019 09:37:45 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf3b61501bebb82eb40d6f5bcda6df6a270cb0f1f24f78b403f19d010e27012`  
		Last Modified: Fri, 22 Feb 2019 09:56:15 GMT  
		Size: 6.0 MB (6015872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602d7d5c3b2f21707d22fe7a881dfaa2227420ae9881af390eebb8d699020685`  
		Last Modified: Fri, 22 Feb 2019 09:56:13 GMT  
		Size: 816.7 KB (816653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cf118536215c0212de54ca7ad182003ce2332e22f41dd4c3482e5974f5e9fd`  
		Last Modified: Fri, 22 Feb 2019 09:56:11 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c694910162f998a7e14d73809e753e063efc5a962f85b2feded5b637ac6952b2`  
		Last Modified: Fri, 22 Feb 2019 09:56:11 GMT  
		Size: 25.9 KB (25919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ead241dd395e7389bec542e9ba1af67a5472f7bab3bbaeb02849ab9adbed2c`  
		Last Modified: Fri, 22 Feb 2019 09:56:55 GMT  
		Size: 81.6 MB (81630386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b73881d730a85dc0679f4f9bdbd38ce93dc64b7093728b5513cbc74b5caa97fc`  
		Last Modified: Fri, 22 Feb 2019 09:56:40 GMT  
		Size: 448.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b71b5c7a9f18ca204dbfe44c3e70a3ac3f1d3084431d7836904ced25ab4e8a`  
		Last Modified: Fri, 22 Feb 2019 09:56:40 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.4.8-alpine` - linux; arm64 variant v8

```console
$ docker pull convertigo@sha256:59b49dce5757f1e8b482152a3f8f25c1811b119ee64f259195fbc472aef358b4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.7 MB (158710288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b56a311990be9b45b21955d651ed4fff9b99881cc57606a02a221fb010343e60`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 12:20:55 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 12:21:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 12:31:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 12:32:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 12:32:04 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 12:32:07 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 12:32:21 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 06 Feb 2019 19:35:05 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 06 Feb 2019 19:35:06 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 19:35:11 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 06 Feb 2019 19:35:12 GMT
WORKDIR /usr/local/tomcat
# Wed, 06 Feb 2019 19:35:13 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 06 Feb 2019 19:35:15 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 06 Feb 2019 19:35:17 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 06 Feb 2019 19:35:18 GMT
ENV TOMCAT_MAJOR=7
# Fri, 22 Feb 2019 13:16:37 GMT
ENV TOMCAT_VERSION=7.0.93
# Fri, 22 Feb 2019 13:16:38 GMT
ENV TOMCAT_SHA512=7ae5186f63df7821b7de4e4c92780a27ccc678119614ad074349c3d02bd2f764ac08fa72f776e880e98aad2617de01521eb3de6fe57e4a749c8c04f28e042f0a
# Fri, 22 Feb 2019 13:16:39 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz
# Fri, 22 Feb 2019 13:16:41 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc
# Fri, 22 Feb 2019 13:17:32 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Fri, 22 Feb 2019 13:17:50 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 22 Feb 2019 13:17:51 GMT
EXPOSE 8080
# Fri, 22 Feb 2019 13:17:51 GMT
CMD ["catalina.sh" "run"]
# Fri, 22 Feb 2019 14:49:58 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Fri, 22 Feb 2019 14:49:59 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 22 Feb 2019 14:50:02 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 22 Feb 2019 14:50:03 GMT
WORKDIR /usr/local/tomcat
# Fri, 22 Feb 2019 14:50:09 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Fri, 22 Feb 2019 14:50:10 GMT
ENV GOSU_VERSION=1.10
# Fri, 22 Feb 2019 14:50:11 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 22 Feb 2019 14:50:12 GMT
ENV TINI_VERSION=0.17.0
# Fri, 22 Feb 2019 14:50:14 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Fri, 22 Feb 2019 14:50:22 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && pkill -9 gpg-agent   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Fri, 22 Feb 2019 14:50:26 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Fri, 22 Feb 2019 14:50:30 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Fri, 22 Feb 2019 14:53:46 GMT
ENV CONVERTIGO_VERSION=7.4.8
# Fri, 22 Feb 2019 14:53:47 GMT
ENV CONVERTIGO_REVISION=44478
# Fri, 22 Feb 2019 14:53:48 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.8/convertigo-7.4.8-v44478-linux32.war
# Fri, 22 Feb 2019 14:53:49 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Fri, 22 Feb 2019 14:54:25 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && pkill -9 gpg-agent     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Fri, 22 Feb 2019 14:54:26 GMT
COPY file:469acf91c0f583e35a3bcf1ac9d684cb7ff494dab17d41517be8cd24e5e49646 in webapps/ROOT/index.html 
# Fri, 22 Feb 2019 14:54:26 GMT
COPY file:42593bf6b5b6f7097adcf68ab4c5a9e42d6241e711a56df31d8671d239932d3c in / 
# Fri, 22 Feb 2019 14:54:27 GMT
WORKDIR /workspace
# Fri, 22 Feb 2019 14:54:28 GMT
VOLUME [/workspace]
# Fri, 22 Feb 2019 14:54:28 GMT
EXPOSE 28080
# Fri, 22 Feb 2019 14:54:29 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Fri, 22 Feb 2019 14:54:30 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4dbd37ccf7cb48097dfc245c4c6f892eaf16d2ad47a0478302cf24d0a74911`  
		Last Modified: Wed, 06 Feb 2019 12:42:42 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a4c22261364cc479c308d041f6881688678f61995139006fbd24aa898f98a7f`  
		Last Modified: Wed, 06 Feb 2019 12:45:02 GMT  
		Size: 54.9 MB (54863256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b987ed0c11c2544e430e5c49436dcb146a96cff69775fe85010dd04a2003780`  
		Last Modified: Wed, 06 Feb 2019 20:23:11 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51750fcfc9487223765eaf43a59728ada8353459e566c775fa58c71b8108c4e`  
		Last Modified: Fri, 22 Feb 2019 13:20:31 GMT  
		Size: 12.3 MB (12330174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068c53404a2ee3bd88efde124837e9a3d973ce8688437b68dc92e87d8f5a4fec`  
		Last Modified: Fri, 22 Feb 2019 13:20:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e7ebbd7be2edc36e01e7e94e703f440854a1a937dff8a21e14c9314c5b4726`  
		Last Modified: Fri, 22 Feb 2019 14:55:29 GMT  
		Size: 6.3 MB (6317447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887f5a1149856f691c17969ceefad92dabc9cdbdbc08d54381aeb57b3c4f8ac0`  
		Last Modified: Fri, 22 Feb 2019 14:55:27 GMT  
		Size: 851.7 KB (851727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543941a94bf7dc8627d1d1f00d59baa7213126f26fb2d8b5c8fd77c61b4cfbcb`  
		Last Modified: Fri, 22 Feb 2019 14:55:25 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15813030d988f417bdd9b72640e15b099977397955d8ca0c1894b099a4a9f8d8`  
		Last Modified: Fri, 22 Feb 2019 14:55:24 GMT  
		Size: 25.9 KB (25931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b73380a120d7270df9a6d9c521e200312914a5773169aafc0030cc1dd3cc384`  
		Last Modified: Fri, 22 Feb 2019 14:56:38 GMT  
		Size: 81.6 MB (81630336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e223483eb54d3712ae4ab3142b24923df3aa72ff027afed0987ac8b04143c9b`  
		Last Modified: Fri, 22 Feb 2019 14:56:22 GMT  
		Size: 453.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb55043330c8a71d943bc3b3c709f1db951dd56d8e3b7223a783a9fb9e30e0e`  
		Last Modified: Fri, 22 Feb 2019 14:56:22 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.4.8-alpine` - linux; 386

```console
$ docker pull convertigo@sha256:76c7f024af37e2454879b3632878ba86c7fc66dee2bdf959399b3bb00956104f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.9 MB (159869745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a9506fc4bdf9313a9734e7136d0ba7e701ff01fb6285e98d61881778208e81f`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Thu, 31 Jan 2019 11:38:57 GMT
ADD file:738a04760a9f9a1cd919954db42a0da78c644e7024240160c54723bf1dd479e9 in / 
# Thu, 31 Jan 2019 11:38:57 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 11:38:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 13:21:09 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 13:21:11 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 13:22:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 13:22:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 13:22:08 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 13:22:08 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 13:22:13 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Feb 2019 00:38:21 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 07 Feb 2019 00:38:21 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Feb 2019 00:38:22 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 07 Feb 2019 00:38:22 GMT
WORKDIR /usr/local/tomcat
# Thu, 07 Feb 2019 00:38:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 07 Feb 2019 00:38:23 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 07 Feb 2019 00:38:23 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 07 Feb 2019 00:38:23 GMT
ENV TOMCAT_MAJOR=7
# Thu, 07 Feb 2019 00:38:23 GMT
ENV TOMCAT_VERSION=7.0.92
# Thu, 07 Feb 2019 00:38:23 GMT
ENV TOMCAT_SHA512=e5e17ea68956df5d4c220f2e2891953b362b4fadd391f7cb9bc00d86986aa2e2499176d59c393f41db9ab3e0d7f1ab492a881f85c6650514a7f02f047d4eb2b0
# Thu, 07 Feb 2019 00:38:24 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz
# Thu, 07 Feb 2019 00:38:24 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc
# Thu, 07 Feb 2019 00:38:39 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 07 Feb 2019 00:38:42 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 07 Feb 2019 00:38:42 GMT
EXPOSE 8080
# Thu, 07 Feb 2019 00:38:42 GMT
CMD ["catalina.sh" "run"]
# Thu, 07 Feb 2019 11:25:58 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Thu, 07 Feb 2019 11:25:58 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 07 Feb 2019 11:25:59 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 07 Feb 2019 11:25:59 GMT
WORKDIR /usr/local/tomcat
# Thu, 07 Feb 2019 11:26:00 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Thu, 07 Feb 2019 11:26:01 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Feb 2019 11:26:01 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 07 Feb 2019 11:26:01 GMT
ENV TINI_VERSION=0.17.0
# Thu, 07 Feb 2019 11:26:01 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Thu, 07 Feb 2019 11:26:04 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && pkill -9 gpg-agent   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Thu, 07 Feb 2019 11:26:04 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Thu, 07 Feb 2019 11:26:05 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Thu, 07 Feb 2019 11:26:53 GMT
ENV CONVERTIGO_VERSION=7.4.8
# Thu, 07 Feb 2019 11:26:53 GMT
ENV CONVERTIGO_REVISION=44478
# Thu, 07 Feb 2019 11:26:53 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.8/convertigo-7.4.8-v44478-linux32.war
# Thu, 07 Feb 2019 11:26:53 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Thu, 07 Feb 2019 11:27:03 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && pkill -9 gpg-agent     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Thu, 07 Feb 2019 11:27:03 GMT
COPY file:469acf91c0f583e35a3bcf1ac9d684cb7ff494dab17d41517be8cd24e5e49646 in webapps/ROOT/index.html 
# Thu, 07 Feb 2019 11:27:03 GMT
COPY file:42593bf6b5b6f7097adcf68ab4c5a9e42d6241e711a56df31d8671d239932d3c in / 
# Thu, 07 Feb 2019 11:27:04 GMT
WORKDIR /workspace
# Thu, 07 Feb 2019 11:27:04 GMT
VOLUME [/workspace]
# Thu, 07 Feb 2019 11:27:04 GMT
EXPOSE 28080
# Thu, 07 Feb 2019 11:27:04 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Thu, 07 Feb 2019 11:27:04 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:bcb4f889a459d231e71d88c93174eec5edef928ab1e2481f8b0074076ee934a6`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 2.7 MB (2749336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4099db9edcf638f20df22a899890483f7c152af59ca7a2de9c3b24c53c509e7`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce0f3d3b48a17ae1a2bcad376e638afbdf982a8d5949595c2e4a4007f4db3d0c`  
		Last Modified: Wed, 06 Feb 2019 13:42:46 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f750ad7f5e8d95553682c05697501d8d94a636946715800825169fb5974036`  
		Last Modified: Wed, 06 Feb 2019 13:43:57 GMT  
		Size: 55.6 MB (55551309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c17b1140f29f7ca09d03b29cd5d669c8c289e7aaf4f8a8058db7618a086db9`  
		Last Modified: Thu, 07 Feb 2019 00:47:34 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8a506919cd8a6563bff09f28359494044069115e92c8120ff87be09678680a`  
		Last Modified: Thu, 07 Feb 2019 00:47:40 GMT  
		Size: 12.3 MB (12254202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e194cd556a44d4a58cca1eeae22fc8e92bf256f97969028b3f34d70eeaaae36b`  
		Last Modified: Thu, 07 Feb 2019 00:47:34 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b29db2f9ae1582f32240c0fdacd64d4ae8d089ccb56035ac032d9285cc7f23`  
		Last Modified: Thu, 07 Feb 2019 11:27:36 GMT  
		Size: 6.7 MB (6748013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b813a4f34660e25d1de0033143f2d18fb323c552c8f9098830019691799efa16`  
		Last Modified: Thu, 07 Feb 2019 11:27:34 GMT  
		Size: 907.1 KB (907117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66855e71c6aa76043cfe7c14a9d256d01c0d5f3749bbe5e9bab98b81595bfbf3`  
		Last Modified: Thu, 07 Feb 2019 11:27:39 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d994cb98cb7a3bcf69bf0928a8ac2d66e96401c5e1634e1aa094dc601d6e4a13`  
		Last Modified: Thu, 07 Feb 2019 11:27:33 GMT  
		Size: 26.0 KB (25952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79308243dafc203cdbe989c84c40997f28a77e4af70f034e117c6e16a3cfe5aa`  
		Last Modified: Thu, 07 Feb 2019 11:28:19 GMT  
		Size: 81.6 MB (81630302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d115384c431c91983083c3dfbc0e013080ae24e5ac873d1cdbdbbe5ca79213d0`  
		Last Modified: Thu, 07 Feb 2019 11:28:10 GMT  
		Size: 450.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e056d103e14654fd6a5ae38fe6e6c62bcee0186684db46a8c651bdd3edd5c9c5`  
		Last Modified: Thu, 07 Feb 2019 11:28:11 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `convertigo:7.4-alpine`

```console
$ docker pull convertigo@sha256:d145c90b8cb6b056c9cad819d642433b179f74dedfa77474d4ea4c4c581bb8fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `convertigo:7.4-alpine` - linux; amd64

```console
$ docker pull convertigo@sha256:7891268974219b1e039beac68a6c545b3b8c0e350328f39098fb719b46288306
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.0 MB (158995045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b65c509fe15c1ab8d013aeaa9c446e67d0269ef9fefbea141d76d7826fb28cc`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:39:38 GMT
ENV LANG=C.UTF-8
# Tue, 05 Feb 2019 20:39:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Feb 2019 20:39:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_VERSION=8u191
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Tue, 05 Feb 2019 20:40:03 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Feb 2019 23:13:21 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 05 Feb 2019 23:13:21 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Feb 2019 23:13:23 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 05 Feb 2019 23:13:23 GMT
WORKDIR /usr/local/tomcat
# Tue, 05 Feb 2019 23:13:24 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 05 Feb 2019 23:13:24 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 05 Feb 2019 23:13:25 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 05 Feb 2019 23:13:25 GMT
ENV TOMCAT_MAJOR=7
# Fri, 22 Feb 2019 01:41:29 GMT
ENV TOMCAT_VERSION=7.0.93
# Fri, 22 Feb 2019 01:41:29 GMT
ENV TOMCAT_SHA512=7ae5186f63df7821b7de4e4c92780a27ccc678119614ad074349c3d02bd2f764ac08fa72f776e880e98aad2617de01521eb3de6fe57e4a749c8c04f28e042f0a
# Fri, 22 Feb 2019 01:41:29 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz
# Fri, 22 Feb 2019 01:41:29 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc
# Fri, 22 Feb 2019 01:41:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Fri, 22 Feb 2019 01:41:47 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 22 Feb 2019 01:41:47 GMT
EXPOSE 8080
# Fri, 22 Feb 2019 01:41:47 GMT
CMD ["catalina.sh" "run"]
# Fri, 22 Feb 2019 02:14:25 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Fri, 22 Feb 2019 02:14:25 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 22 Feb 2019 02:14:27 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 22 Feb 2019 02:14:28 GMT
WORKDIR /usr/local/tomcat
# Fri, 22 Feb 2019 02:14:30 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Fri, 22 Feb 2019 02:14:30 GMT
ENV GOSU_VERSION=1.10
# Fri, 22 Feb 2019 02:14:30 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 22 Feb 2019 02:14:30 GMT
ENV TINI_VERSION=0.17.0
# Fri, 22 Feb 2019 02:14:31 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Fri, 22 Feb 2019 02:14:34 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && pkill -9 gpg-agent   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Fri, 22 Feb 2019 02:14:35 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Fri, 22 Feb 2019 02:14:37 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Fri, 22 Feb 2019 02:15:28 GMT
ENV CONVERTIGO_VERSION=7.4.8
# Fri, 22 Feb 2019 02:15:28 GMT
ENV CONVERTIGO_REVISION=44478
# Fri, 22 Feb 2019 02:15:28 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.8/convertigo-7.4.8-v44478-linux32.war
# Fri, 22 Feb 2019 02:15:28 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Fri, 22 Feb 2019 02:15:37 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && pkill -9 gpg-agent     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Fri, 22 Feb 2019 02:15:37 GMT
COPY file:469acf91c0f583e35a3bcf1ac9d684cb7ff494dab17d41517be8cd24e5e49646 in webapps/ROOT/index.html 
# Fri, 22 Feb 2019 02:15:38 GMT
COPY file:42593bf6b5b6f7097adcf68ab4c5a9e42d6241e711a56df31d8671d239932d3c in / 
# Fri, 22 Feb 2019 02:15:38 GMT
WORKDIR /workspace
# Fri, 22 Feb 2019 02:15:39 GMT
VOLUME [/workspace]
# Fri, 22 Feb 2019 02:15:39 GMT
EXPOSE 28080
# Fri, 22 Feb 2019 02:15:40 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Fri, 22 Feb 2019 02:15:40 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78b803852394d2b9aaa3ce93b0f2502b0bf8e063b1fa79734de0fc8ee55ee6e`  
		Last Modified: Tue, 05 Feb 2019 20:45:24 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f41fe1b6eee3555498a7e15b3bf048a7ec274302a92d0c8b34fda111c780fdcf`  
		Last Modified: Tue, 05 Feb 2019 20:45:56 GMT  
		Size: 54.9 MB (54922733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65369fd9d03ba296b96bcfcc16c03f9b39be3ccfff9aad916236581a0309282d`  
		Last Modified: Tue, 05 Feb 2019 23:15:46 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f8a9f6221d879f8f66085a6042834d7389a0fd03cddda6acf0a217999f5656e`  
		Last Modified: Fri, 22 Feb 2019 01:44:24 GMT  
		Size: 12.3 MB (12333020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0417dd3da053806909cf8746ba745d4f542eec02c2b77aa1ad659c2aea17b143`  
		Last Modified: Fri, 22 Feb 2019 01:44:22 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb4c2800548f8f701417bc40fd8ed17fc6c9dfa62126af27027337e8d9d1213a`  
		Last Modified: Fri, 22 Feb 2019 02:16:11 GMT  
		Size: 6.3 MB (6346174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26b7f3d3bc6182702e8c7af0271a14220a8e94855eb3003dad26ae2a95e3a293`  
		Last Modified: Fri, 22 Feb 2019 02:16:10 GMT  
		Size: 978.7 KB (978744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c54b488a9005c71f70f913fe5ae3b01bf9de656043167a66de6d29ae569d1ebd`  
		Last Modified: Fri, 22 Feb 2019 02:16:09 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e63157fb88c5e228320e81ff3be8e19646ec6ae99de0a1de9d30f031e51fa1`  
		Last Modified: Fri, 22 Feb 2019 02:16:09 GMT  
		Size: 25.9 KB (25923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94fa6e85e158d09f501cebbf88b5a39dece8e366e9011a51d3d8d676c7b643b`  
		Last Modified: Fri, 22 Feb 2019 02:16:48 GMT  
		Size: 81.6 MB (81630384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4fd5cdc719ccc8bafcc1a957bc358238049d39902493a5c61997be7fedb1173`  
		Last Modified: Fri, 22 Feb 2019 02:16:39 GMT  
		Size: 447.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06bf396957015c0823ba6f4560409bb62b59cae76ab0e1afb34713868e43e996`  
		Last Modified: Fri, 22 Feb 2019 02:16:40 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.4-alpine` - linux; arm variant v6

```console
$ docker pull convertigo@sha256:e95ac8694351df4e06156937eb7f7e8415c82598f7bc693b341d20b3a914f125
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.5 MB (155517399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43c7da024b56ddd7e9fbd09c5328acb2a99e124a471e5b24f2390644b7f36743`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:09:14 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 09:09:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 09:09:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 09:09:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 09:09:34 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 09:09:35 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 09:09:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Feb 2019 08:58:39 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 07 Feb 2019 08:58:39 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Feb 2019 08:58:41 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 07 Feb 2019 08:58:41 GMT
WORKDIR /usr/local/tomcat
# Thu, 07 Feb 2019 08:58:41 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 07 Feb 2019 08:58:42 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 07 Feb 2019 08:58:42 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 07 Feb 2019 08:58:42 GMT
ENV TOMCAT_MAJOR=7
# Fri, 22 Feb 2019 09:36:42 GMT
ENV TOMCAT_VERSION=7.0.93
# Fri, 22 Feb 2019 09:36:43 GMT
ENV TOMCAT_SHA512=7ae5186f63df7821b7de4e4c92780a27ccc678119614ad074349c3d02bd2f764ac08fa72f776e880e98aad2617de01521eb3de6fe57e4a749c8c04f28e042f0a
# Fri, 22 Feb 2019 09:36:43 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz
# Fri, 22 Feb 2019 09:36:44 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc
# Fri, 22 Feb 2019 09:37:02 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Fri, 22 Feb 2019 09:37:07 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 22 Feb 2019 09:37:08 GMT
EXPOSE 8080
# Fri, 22 Feb 2019 09:37:08 GMT
CMD ["catalina.sh" "run"]
# Fri, 22 Feb 2019 09:53:18 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Fri, 22 Feb 2019 09:53:19 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 22 Feb 2019 09:53:20 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 22 Feb 2019 09:53:21 GMT
WORKDIR /usr/local/tomcat
# Fri, 22 Feb 2019 09:53:23 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Fri, 22 Feb 2019 09:53:24 GMT
ENV GOSU_VERSION=1.10
# Fri, 22 Feb 2019 09:53:24 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 22 Feb 2019 09:53:25 GMT
ENV TINI_VERSION=0.17.0
# Fri, 22 Feb 2019 09:53:25 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Fri, 22 Feb 2019 09:53:29 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && pkill -9 gpg-agent   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Fri, 22 Feb 2019 09:53:31 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Fri, 22 Feb 2019 09:53:32 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Fri, 22 Feb 2019 09:55:02 GMT
ENV CONVERTIGO_VERSION=7.4.8
# Fri, 22 Feb 2019 09:55:03 GMT
ENV CONVERTIGO_REVISION=44478
# Fri, 22 Feb 2019 09:55:04 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.8/convertigo-7.4.8-v44478-linux32.war
# Fri, 22 Feb 2019 09:55:04 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Fri, 22 Feb 2019 09:55:54 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && pkill -9 gpg-agent     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Fri, 22 Feb 2019 09:55:55 GMT
COPY file:469acf91c0f583e35a3bcf1ac9d684cb7ff494dab17d41517be8cd24e5e49646 in webapps/ROOT/index.html 
# Fri, 22 Feb 2019 09:55:56 GMT
COPY file:42593bf6b5b6f7097adcf68ab4c5a9e42d6241e711a56df31d8671d239932d3c in / 
# Fri, 22 Feb 2019 09:55:56 GMT
WORKDIR /workspace
# Fri, 22 Feb 2019 09:55:57 GMT
VOLUME [/workspace]
# Fri, 22 Feb 2019 09:55:57 GMT
EXPOSE 28080
# Fri, 22 Feb 2019 09:55:58 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Fri, 22 Feb 2019 09:55:58 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:598092653ce578dc5f1728020fc7cea202bfd7c3694e321c61bdd914e0a1f5ec`  
		Last Modified: Wed, 06 Feb 2019 09:10:30 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a4f55d20a64c757c23b9e9b1382fa744e666c57cb22ae208fa26f8724585c2`  
		Last Modified: Wed, 06 Feb 2019 09:11:13 GMT  
		Size: 52.3 MB (52316622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e68384a4b0c4a4ad6903222918f44f5cef5aab617b16f2e4e908ffd8ff8284`  
		Last Modified: Thu, 07 Feb 2019 09:01:28 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbba9313cc48378b24e23639cb9cdb2a4256b0bb2ef8adde367d9ea0d431d7c7`  
		Last Modified: Fri, 22 Feb 2019 09:37:48 GMT  
		Size: 12.2 MB (12167577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f814ecaa1282b4d36a6013d25e097f4b5617b54e84895a97528f50d270c90f7`  
		Last Modified: Fri, 22 Feb 2019 09:37:45 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf3b61501bebb82eb40d6f5bcda6df6a270cb0f1f24f78b403f19d010e27012`  
		Last Modified: Fri, 22 Feb 2019 09:56:15 GMT  
		Size: 6.0 MB (6015872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602d7d5c3b2f21707d22fe7a881dfaa2227420ae9881af390eebb8d699020685`  
		Last Modified: Fri, 22 Feb 2019 09:56:13 GMT  
		Size: 816.7 KB (816653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cf118536215c0212de54ca7ad182003ce2332e22f41dd4c3482e5974f5e9fd`  
		Last Modified: Fri, 22 Feb 2019 09:56:11 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c694910162f998a7e14d73809e753e063efc5a962f85b2feded5b637ac6952b2`  
		Last Modified: Fri, 22 Feb 2019 09:56:11 GMT  
		Size: 25.9 KB (25919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ead241dd395e7389bec542e9ba1af67a5472f7bab3bbaeb02849ab9adbed2c`  
		Last Modified: Fri, 22 Feb 2019 09:56:55 GMT  
		Size: 81.6 MB (81630386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b73881d730a85dc0679f4f9bdbd38ce93dc64b7093728b5513cbc74b5caa97fc`  
		Last Modified: Fri, 22 Feb 2019 09:56:40 GMT  
		Size: 448.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b71b5c7a9f18ca204dbfe44c3e70a3ac3f1d3084431d7836904ced25ab4e8a`  
		Last Modified: Fri, 22 Feb 2019 09:56:40 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.4-alpine` - linux; arm64 variant v8

```console
$ docker pull convertigo@sha256:59b49dce5757f1e8b482152a3f8f25c1811b119ee64f259195fbc472aef358b4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.7 MB (158710288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b56a311990be9b45b21955d651ed4fff9b99881cc57606a02a221fb010343e60`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 12:20:55 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 12:21:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 12:31:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 12:32:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 12:32:04 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 12:32:07 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 12:32:21 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 06 Feb 2019 19:35:05 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 06 Feb 2019 19:35:06 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 19:35:11 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 06 Feb 2019 19:35:12 GMT
WORKDIR /usr/local/tomcat
# Wed, 06 Feb 2019 19:35:13 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 06 Feb 2019 19:35:15 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 06 Feb 2019 19:35:17 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 06 Feb 2019 19:35:18 GMT
ENV TOMCAT_MAJOR=7
# Fri, 22 Feb 2019 13:16:37 GMT
ENV TOMCAT_VERSION=7.0.93
# Fri, 22 Feb 2019 13:16:38 GMT
ENV TOMCAT_SHA512=7ae5186f63df7821b7de4e4c92780a27ccc678119614ad074349c3d02bd2f764ac08fa72f776e880e98aad2617de01521eb3de6fe57e4a749c8c04f28e042f0a
# Fri, 22 Feb 2019 13:16:39 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz
# Fri, 22 Feb 2019 13:16:41 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc
# Fri, 22 Feb 2019 13:17:32 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Fri, 22 Feb 2019 13:17:50 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 22 Feb 2019 13:17:51 GMT
EXPOSE 8080
# Fri, 22 Feb 2019 13:17:51 GMT
CMD ["catalina.sh" "run"]
# Fri, 22 Feb 2019 14:49:58 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Fri, 22 Feb 2019 14:49:59 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 22 Feb 2019 14:50:02 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 22 Feb 2019 14:50:03 GMT
WORKDIR /usr/local/tomcat
# Fri, 22 Feb 2019 14:50:09 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Fri, 22 Feb 2019 14:50:10 GMT
ENV GOSU_VERSION=1.10
# Fri, 22 Feb 2019 14:50:11 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 22 Feb 2019 14:50:12 GMT
ENV TINI_VERSION=0.17.0
# Fri, 22 Feb 2019 14:50:14 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Fri, 22 Feb 2019 14:50:22 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && pkill -9 gpg-agent   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Fri, 22 Feb 2019 14:50:26 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Fri, 22 Feb 2019 14:50:30 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Fri, 22 Feb 2019 14:53:46 GMT
ENV CONVERTIGO_VERSION=7.4.8
# Fri, 22 Feb 2019 14:53:47 GMT
ENV CONVERTIGO_REVISION=44478
# Fri, 22 Feb 2019 14:53:48 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.8/convertigo-7.4.8-v44478-linux32.war
# Fri, 22 Feb 2019 14:53:49 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Fri, 22 Feb 2019 14:54:25 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && pkill -9 gpg-agent     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Fri, 22 Feb 2019 14:54:26 GMT
COPY file:469acf91c0f583e35a3bcf1ac9d684cb7ff494dab17d41517be8cd24e5e49646 in webapps/ROOT/index.html 
# Fri, 22 Feb 2019 14:54:26 GMT
COPY file:42593bf6b5b6f7097adcf68ab4c5a9e42d6241e711a56df31d8671d239932d3c in / 
# Fri, 22 Feb 2019 14:54:27 GMT
WORKDIR /workspace
# Fri, 22 Feb 2019 14:54:28 GMT
VOLUME [/workspace]
# Fri, 22 Feb 2019 14:54:28 GMT
EXPOSE 28080
# Fri, 22 Feb 2019 14:54:29 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Fri, 22 Feb 2019 14:54:30 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4dbd37ccf7cb48097dfc245c4c6f892eaf16d2ad47a0478302cf24d0a74911`  
		Last Modified: Wed, 06 Feb 2019 12:42:42 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a4c22261364cc479c308d041f6881688678f61995139006fbd24aa898f98a7f`  
		Last Modified: Wed, 06 Feb 2019 12:45:02 GMT  
		Size: 54.9 MB (54863256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b987ed0c11c2544e430e5c49436dcb146a96cff69775fe85010dd04a2003780`  
		Last Modified: Wed, 06 Feb 2019 20:23:11 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51750fcfc9487223765eaf43a59728ada8353459e566c775fa58c71b8108c4e`  
		Last Modified: Fri, 22 Feb 2019 13:20:31 GMT  
		Size: 12.3 MB (12330174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068c53404a2ee3bd88efde124837e9a3d973ce8688437b68dc92e87d8f5a4fec`  
		Last Modified: Fri, 22 Feb 2019 13:20:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e7ebbd7be2edc36e01e7e94e703f440854a1a937dff8a21e14c9314c5b4726`  
		Last Modified: Fri, 22 Feb 2019 14:55:29 GMT  
		Size: 6.3 MB (6317447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887f5a1149856f691c17969ceefad92dabc9cdbdbc08d54381aeb57b3c4f8ac0`  
		Last Modified: Fri, 22 Feb 2019 14:55:27 GMT  
		Size: 851.7 KB (851727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543941a94bf7dc8627d1d1f00d59baa7213126f26fb2d8b5c8fd77c61b4cfbcb`  
		Last Modified: Fri, 22 Feb 2019 14:55:25 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15813030d988f417bdd9b72640e15b099977397955d8ca0c1894b099a4a9f8d8`  
		Last Modified: Fri, 22 Feb 2019 14:55:24 GMT  
		Size: 25.9 KB (25931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b73380a120d7270df9a6d9c521e200312914a5773169aafc0030cc1dd3cc384`  
		Last Modified: Fri, 22 Feb 2019 14:56:38 GMT  
		Size: 81.6 MB (81630336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e223483eb54d3712ae4ab3142b24923df3aa72ff027afed0987ac8b04143c9b`  
		Last Modified: Fri, 22 Feb 2019 14:56:22 GMT  
		Size: 453.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb55043330c8a71d943bc3b3c709f1db951dd56d8e3b7223a783a9fb9e30e0e`  
		Last Modified: Fri, 22 Feb 2019 14:56:22 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.4-alpine` - linux; 386

```console
$ docker pull convertigo@sha256:76c7f024af37e2454879b3632878ba86c7fc66dee2bdf959399b3bb00956104f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.9 MB (159869745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a9506fc4bdf9313a9734e7136d0ba7e701ff01fb6285e98d61881778208e81f`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Thu, 31 Jan 2019 11:38:57 GMT
ADD file:738a04760a9f9a1cd919954db42a0da78c644e7024240160c54723bf1dd479e9 in / 
# Thu, 31 Jan 2019 11:38:57 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 11:38:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 13:21:09 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 13:21:11 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 13:22:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 13:22:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 13:22:08 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 13:22:08 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 13:22:13 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Feb 2019 00:38:21 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 07 Feb 2019 00:38:21 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Feb 2019 00:38:22 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 07 Feb 2019 00:38:22 GMT
WORKDIR /usr/local/tomcat
# Thu, 07 Feb 2019 00:38:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 07 Feb 2019 00:38:23 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 07 Feb 2019 00:38:23 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 07 Feb 2019 00:38:23 GMT
ENV TOMCAT_MAJOR=7
# Thu, 07 Feb 2019 00:38:23 GMT
ENV TOMCAT_VERSION=7.0.92
# Thu, 07 Feb 2019 00:38:23 GMT
ENV TOMCAT_SHA512=e5e17ea68956df5d4c220f2e2891953b362b4fadd391f7cb9bc00d86986aa2e2499176d59c393f41db9ab3e0d7f1ab492a881f85c6650514a7f02f047d4eb2b0
# Thu, 07 Feb 2019 00:38:24 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz
# Thu, 07 Feb 2019 00:38:24 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc
# Thu, 07 Feb 2019 00:38:39 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 07 Feb 2019 00:38:42 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 07 Feb 2019 00:38:42 GMT
EXPOSE 8080
# Thu, 07 Feb 2019 00:38:42 GMT
CMD ["catalina.sh" "run"]
# Thu, 07 Feb 2019 11:25:58 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Thu, 07 Feb 2019 11:25:58 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 07 Feb 2019 11:25:59 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 07 Feb 2019 11:25:59 GMT
WORKDIR /usr/local/tomcat
# Thu, 07 Feb 2019 11:26:00 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Thu, 07 Feb 2019 11:26:01 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Feb 2019 11:26:01 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 07 Feb 2019 11:26:01 GMT
ENV TINI_VERSION=0.17.0
# Thu, 07 Feb 2019 11:26:01 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Thu, 07 Feb 2019 11:26:04 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && pkill -9 gpg-agent   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Thu, 07 Feb 2019 11:26:04 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Thu, 07 Feb 2019 11:26:05 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Thu, 07 Feb 2019 11:26:53 GMT
ENV CONVERTIGO_VERSION=7.4.8
# Thu, 07 Feb 2019 11:26:53 GMT
ENV CONVERTIGO_REVISION=44478
# Thu, 07 Feb 2019 11:26:53 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.4.8/convertigo-7.4.8-v44478-linux32.war
# Thu, 07 Feb 2019 11:26:53 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Thu, 07 Feb 2019 11:27:03 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && pkill -9 gpg-agent     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Thu, 07 Feb 2019 11:27:03 GMT
COPY file:469acf91c0f583e35a3bcf1ac9d684cb7ff494dab17d41517be8cd24e5e49646 in webapps/ROOT/index.html 
# Thu, 07 Feb 2019 11:27:03 GMT
COPY file:42593bf6b5b6f7097adcf68ab4c5a9e42d6241e711a56df31d8671d239932d3c in / 
# Thu, 07 Feb 2019 11:27:04 GMT
WORKDIR /workspace
# Thu, 07 Feb 2019 11:27:04 GMT
VOLUME [/workspace]
# Thu, 07 Feb 2019 11:27:04 GMT
EXPOSE 28080
# Thu, 07 Feb 2019 11:27:04 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Thu, 07 Feb 2019 11:27:04 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:bcb4f889a459d231e71d88c93174eec5edef928ab1e2481f8b0074076ee934a6`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 2.7 MB (2749336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4099db9edcf638f20df22a899890483f7c152af59ca7a2de9c3b24c53c509e7`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce0f3d3b48a17ae1a2bcad376e638afbdf982a8d5949595c2e4a4007f4db3d0c`  
		Last Modified: Wed, 06 Feb 2019 13:42:46 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f750ad7f5e8d95553682c05697501d8d94a636946715800825169fb5974036`  
		Last Modified: Wed, 06 Feb 2019 13:43:57 GMT  
		Size: 55.6 MB (55551309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c17b1140f29f7ca09d03b29cd5d669c8c289e7aaf4f8a8058db7618a086db9`  
		Last Modified: Thu, 07 Feb 2019 00:47:34 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8a506919cd8a6563bff09f28359494044069115e92c8120ff87be09678680a`  
		Last Modified: Thu, 07 Feb 2019 00:47:40 GMT  
		Size: 12.3 MB (12254202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e194cd556a44d4a58cca1eeae22fc8e92bf256f97969028b3f34d70eeaaae36b`  
		Last Modified: Thu, 07 Feb 2019 00:47:34 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b29db2f9ae1582f32240c0fdacd64d4ae8d089ccb56035ac032d9285cc7f23`  
		Last Modified: Thu, 07 Feb 2019 11:27:36 GMT  
		Size: 6.7 MB (6748013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b813a4f34660e25d1de0033143f2d18fb323c552c8f9098830019691799efa16`  
		Last Modified: Thu, 07 Feb 2019 11:27:34 GMT  
		Size: 907.1 KB (907117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66855e71c6aa76043cfe7c14a9d256d01c0d5f3749bbe5e9bab98b81595bfbf3`  
		Last Modified: Thu, 07 Feb 2019 11:27:39 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d994cb98cb7a3bcf69bf0928a8ac2d66e96401c5e1634e1aa094dc601d6e4a13`  
		Last Modified: Thu, 07 Feb 2019 11:27:33 GMT  
		Size: 26.0 KB (25952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79308243dafc203cdbe989c84c40997f28a77e4af70f034e117c6e16a3cfe5aa`  
		Last Modified: Thu, 07 Feb 2019 11:28:19 GMT  
		Size: 81.6 MB (81630302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d115384c431c91983083c3dfbc0e013080ae24e5ac873d1cdbdbbe5ca79213d0`  
		Last Modified: Thu, 07 Feb 2019 11:28:10 GMT  
		Size: 450.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e056d103e14654fd6a5ae38fe6e6c62bcee0186684db46a8c651bdd3edd5c9c5`  
		Last Modified: Thu, 07 Feb 2019 11:28:11 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `convertigo:7.5`

```console
$ docker pull convertigo@sha256:5e88e3a8f5c29839296d64148591414b863dccdece3997da12cefb103e687c7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `convertigo:7.5` - linux; amd64

```console
$ docker pull convertigo@sha256:add3670eff3665b93fb5b1473fa2130023da629fdd801d51ba04cfb64af0798c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.7 MB (327668943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58498cf1165cad6801ab85bcdfa11bc5a5a9109b44585c37afcc3052592664bc`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 08:27:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:29:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 08:29:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 08:29:45 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 08:29:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 08:29:46 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 08:29:46 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 08:30:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 16:55:01 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 06 Feb 2019 16:55:01 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 16:55:03 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 06 Feb 2019 16:55:03 GMT
WORKDIR /usr/local/tomcat
# Wed, 06 Feb 2019 16:55:04 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 06 Feb 2019 16:55:04 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 06 Feb 2019 16:55:04 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 06 Feb 2019 16:55:06 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 16:55:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 16:55:16 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 06 Feb 2019 16:55:16 GMT
ENV TOMCAT_MAJOR=7
# Fri, 22 Feb 2019 01:38:46 GMT
ENV TOMCAT_VERSION=7.0.93
# Fri, 22 Feb 2019 01:38:46 GMT
ENV TOMCAT_SHA512=7ae5186f63df7821b7de4e4c92780a27ccc678119614ad074349c3d02bd2f764ac08fa72f776e880e98aad2617de01521eb3de6fe57e4a749c8c04f28e042f0a
# Fri, 22 Feb 2019 01:38:47 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz
# Fri, 22 Feb 2019 01:38:47 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc
# Fri, 22 Feb 2019 01:39:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Fri, 22 Feb 2019 01:39:48 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 22 Feb 2019 01:39:48 GMT
EXPOSE 8080
# Fri, 22 Feb 2019 01:39:48 GMT
CMD ["catalina.sh" "run"]
# Fri, 22 Feb 2019 02:13:40 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Fri, 22 Feb 2019 02:13:40 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 22 Feb 2019 02:13:42 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 22 Feb 2019 02:13:43 GMT
WORKDIR /usr/local/tomcat
# Fri, 22 Feb 2019 02:13:48 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Fri, 22 Feb 2019 02:13:48 GMT
ENV GOSU_VERSION=1.10
# Fri, 22 Feb 2019 02:13:48 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 22 Feb 2019 02:13:49 GMT
ENV TINI_VERSION=0.16.1
# Fri, 22 Feb 2019 02:13:49 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Fri, 22 Feb 2019 02:13:54 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Fri, 22 Feb 2019 02:13:56 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Fri, 22 Feb 2019 02:13:58 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Fri, 22 Feb 2019 02:13:58 GMT
ENV CONVERTIGO_VERSION=7.5.5
# Fri, 22 Feb 2019 02:13:58 GMT
ENV CONVERTIGO_REVISION=45010
# Fri, 22 Feb 2019 02:13:59 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.5/convertigo-7.5.5-v45010-linux32.war
# Fri, 22 Feb 2019 02:13:59 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Fri, 22 Feb 2019 02:14:12 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Fri, 22 Feb 2019 02:14:13 GMT
COPY file:b5bd0566057785adb2589ced522fc8697237dae618549557ce65ad5368cf8938 in webapps/ROOT/index.html 
# Fri, 22 Feb 2019 02:14:13 GMT
COPY file:92202dec06475967df944234eb1273db2cd0176d1466e5fc3b977040008eba49 in / 
# Fri, 22 Feb 2019 02:14:14 GMT
ENV SWT_GTK3=0
# Fri, 22 Feb 2019 02:14:14 GMT
WORKDIR /workspace
# Fri, 22 Feb 2019 02:14:15 GMT
VOLUME [/workspace]
# Fri, 22 Feb 2019 02:14:15 GMT
EXPOSE 28080
# Fri, 22 Feb 2019 02:14:16 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Fri, 22 Feb 2019 02:14:16 GMT
CMD ["convertigo"]
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
	-	`sha256:eea0f08c7492aa49cb62b7fc7cf5a3b91e5c83c182cecddaba75903f09a1c67e`  
		Last Modified: Wed, 06 Feb 2019 08:52:24 GMT  
		Size: 852.9 KB (852911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca74b3d90c15cc3066bb46f8b6cdb617805b39e46ba39b891e4592b601abaee1`  
		Last Modified: Wed, 06 Feb 2019 08:54:24 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f11a643c4a8511e3f7d00a7f7c01059bf804876833992895eebbbaf108399655`  
		Last Modified: Wed, 06 Feb 2019 08:54:24 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05eafed73b65f1719e1ad5446e1f57859feb2f71f0b21d5f0bd25fb7d0d6dbd5`  
		Last Modified: Wed, 06 Feb 2019 08:54:52 GMT  
		Size: 122.1 MB (122121101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f24105f282aadee3e59151424724bc5962ef2aea0b9516f71e9a307e2fde7112`  
		Last Modified: Wed, 06 Feb 2019 17:15:16 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27e73cbbd3f3821d48e165fd1c6905d23efe9651ed5f7d8d6374883a89ddbaf`  
		Last Modified: Wed, 06 Feb 2019 17:15:17 GMT  
		Size: 528.4 KB (528443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e09b82a92ead396ff26d0940ca9c97437d9f7382ea193262f3298e8601f7474`  
		Last Modified: Fri, 22 Feb 2019 01:44:05 GMT  
		Size: 18.2 MB (18183671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7bfd50176d08c40e08ceea4665c6219525fefd8e0f12e8fca5493354fb2afcb`  
		Last Modified: Fri, 22 Feb 2019 01:44:02 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a701a3abc23cf39f10aed52dbc80d595cf4d05a8ee4aa9c53fe8fdcf8534d97a`  
		Last Modified: Fri, 22 Feb 2019 02:15:53 GMT  
		Size: 994.1 KB (994143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:311115c65d6867b1149a569a9978adccc8475da507b0935a3e997ccca3a947d6`  
		Last Modified: Fri, 22 Feb 2019 02:15:53 GMT  
		Size: 509.3 KB (509297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a4c71ce5008fa337f578973c85787d447454360ad770a889f479bba68c24d3`  
		Last Modified: Fri, 22 Feb 2019 02:15:52 GMT  
		Size: 4.3 KB (4264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74357e1ebbfe84f97981d5aaa3a7fab258853ebf02075736b0ae884218f7fdce`  
		Last Modified: Fri, 22 Feb 2019 02:15:52 GMT  
		Size: 25.9 KB (25948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3018387a4fa44a5f3f77f3ab47939ed38b64bba3cb270c52e9cfbf7113a36a`  
		Last Modified: Fri, 22 Feb 2019 02:16:03 GMT  
		Size: 124.0 MB (123981500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2989eb1e3fc92df3a26cc1b571ab7e7e06270ef6b38f312d799143c8fb3c0b05`  
		Last Modified: Fri, 22 Feb 2019 02:15:52 GMT  
		Size: 467.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad32801d4846ec61f3e001c70baae452426197e77ea9bf988afefb820a19d2a`  
		Last Modified: Fri, 22 Feb 2019 02:15:52 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.5` - linux; arm variant v7

```console
$ docker pull convertigo@sha256:3fe40e2e235af72d94a74ab15439c1580acc3b1953054d8bb93fc9d55a604bfc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.3 MB (338307022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f335c20f5217859e7f3c88095192636b994d8c5d737920f7270ad24b920b2567`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:13:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:59:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:59:16 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:59:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 05 May 2018 12:59:19 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 12:59:27 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 12:59:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 05 May 2018 13:00:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 05 May 2018 13:00:28 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 05 May 2018 15:54:31 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 05 May 2018 15:54:31 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 05 May 2018 15:54:32 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 05 May 2018 15:54:33 GMT
WORKDIR /usr/local/tomcat
# Sat, 05 May 2018 15:54:33 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 05 May 2018 15:54:34 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 05 May 2018 15:54:34 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Sat, 05 May 2018 15:54:35 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 15:54:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 15:54:48 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 05 May 2018 15:54:48 GMT
ENV TOMCAT_MAJOR=7
# Sat, 07 Jul 2018 12:21:40 GMT
ENV TOMCAT_VERSION=7.0.90
# Sat, 07 Jul 2018 12:21:41 GMT
ENV TOMCAT_SHA512=c7a47135b99684425260cd906cf5c9a5226837d3681d84ae4e3bb199068e97f0e63d07393d91ca0436204a1dc92bf9bd9a4a1c4c893187703e023503bbd81901
# Sat, 07 Jul 2018 12:21:41 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz
# Sat, 07 Jul 2018 12:21:41 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc
# Wed, 01 Aug 2018 12:39:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Wed, 01 Aug 2018 12:39:46 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 01 Aug 2018 12:39:49 GMT
EXPOSE 8080/tcp
# Wed, 01 Aug 2018 12:39:49 GMT
CMD ["catalina.sh" "run"]
# Wed, 01 Aug 2018 13:22:11 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Wed, 01 Aug 2018 13:22:11 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 01 Aug 2018 13:22:12 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 01 Aug 2018 13:22:13 GMT
WORKDIR /usr/local/tomcat
# Wed, 01 Aug 2018 13:22:19 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Wed, 01 Aug 2018 13:22:20 GMT
ENV GOSU_VERSION=1.10
# Wed, 01 Aug 2018 13:22:20 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 01 Aug 2018 13:22:20 GMT
ENV TINI_VERSION=0.16.1
# Wed, 01 Aug 2018 13:22:20 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Tue, 25 Dec 2018 12:57:37 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Tue, 25 Dec 2018 12:57:38 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Tue, 25 Dec 2018 12:57:40 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Sat, 02 Feb 2019 12:57:19 GMT
ENV CONVERTIGO_VERSION=7.5.5
# Sat, 02 Feb 2019 12:57:19 GMT
ENV CONVERTIGO_REVISION=45010
# Sat, 02 Feb 2019 12:57:19 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.5/convertigo-7.5.5-v45010-linux32.war
# Sat, 02 Feb 2019 12:57:20 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Sat, 02 Feb 2019 12:58:30 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Sat, 02 Feb 2019 12:58:31 GMT
COPY file:b5bd0566057785adb2589ced522fc8697237dae618549557ce65ad5368cf8938 in webapps/ROOT/index.html 
# Sat, 02 Feb 2019 12:58:31 GMT
COPY file:92202dec06475967df944234eb1273db2cd0176d1466e5fc3b977040008eba49 in / 
# Sat, 02 Feb 2019 12:58:32 GMT
ENV SWT_GTK3=0
# Sat, 02 Feb 2019 12:58:32 GMT
WORKDIR /workspace
# Sat, 02 Feb 2019 12:58:32 GMT
VOLUME [/workspace]
# Sat, 02 Feb 2019 12:58:33 GMT
EXPOSE 28080
# Sat, 02 Feb 2019 12:58:33 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 02 Feb 2019 12:58:34 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed57f83cc7c78757972312a1b5a30524f861523c5390d062845f18c696f48ea`  
		Last Modified: Sat, 05 May 2018 12:35:37 GMT  
		Size: 9.5 MB (9472475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859203aede279201e8caf07cf2963456c56bac72a64071079dc9db6fb65ed1a2`  
		Last Modified: Sat, 05 May 2018 12:35:34 GMT  
		Size: 3.9 MB (3912835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df26ddf71ea9e82f175e400809b8f06871dd0937c5a90f4ffe95286544a9f719`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 830.3 KB (830332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c21322a9c89724512d6ea5faa10299c60c8a605d6f563c84c28177db8d2770`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2270f04a4be61f52577232813fff92e797d3fc190d52f71411afc26b0911f8e4`  
		Last Modified: Sat, 05 May 2018 13:29:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2dc1aba58c8cd285639cac6b03c823e5fcdb91aa8922652e7d9387aaca6fa4`  
		Last Modified: Sat, 05 May 2018 13:29:37 GMT  
		Size: 139.5 MB (139501760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02869ec2bb3864b06abd435610eb6849d5c62426517de1a603ef6fe43c7d3815`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 272.1 KB (272082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289a355206a5e4f55a89ee04aff3ea7521228ac5dd89e2068978f78acbbd0a54`  
		Last Modified: Sat, 05 May 2018 16:08:23 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf947ee846151b3e82b979ab8f3027c037e1a8dc7a1c2976128213dcb515eced`  
		Last Modified: Sat, 05 May 2018 16:08:24 GMT  
		Size: 519.8 KB (519803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc44ea6baa81c1119dd6637b87028c7ac9a35f16680a4cdb8fa7a65295b9b56c`  
		Last Modified: Wed, 01 Aug 2018 13:02:49 GMT  
		Size: 16.3 MB (16281202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edbf1f55b4009d5b8fe3b4adb1ad6ec97e745b06f1ac456386ae0203f90a31e5`  
		Last Modified: Wed, 01 Aug 2018 13:02:44 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a340f18f8d09e1349704539c8a7da88fb26998dee221c73eea10c0b38bc910`  
		Last Modified: Wed, 01 Aug 2018 13:23:33 GMT  
		Size: 956.1 KB (956126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b23e73bf82e1276d94b9582bf695c6451bb8a226018999f1c5930932e5eb3de2`  
		Last Modified: Tue, 25 Dec 2018 13:00:22 GMT  
		Size: 482.7 KB (482666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ab18f06945e91417328482dd3be5330d34c03080a2f8905611b52e1d1c2452`  
		Last Modified: Tue, 25 Dec 2018 13:00:21 GMT  
		Size: 4.4 KB (4352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7648f26f8a8489e1a294db2699aff89acc5d921e0680f715e7c855205af41bd`  
		Last Modified: Tue, 25 Dec 2018 13:00:21 GMT  
		Size: 25.9 KB (25950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd0baebedad6b5a0e0e042d4d8b548887a32b73ca02db54ac1d430b659031ca`  
		Last Modified: Sat, 02 Feb 2019 12:59:18 GMT  
		Size: 124.0 MB (123981471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecf9763427d4caed67904a10c0d67fe03fd07a7a2c567c0c5ef8e1d4cf999ff`  
		Last Modified: Sat, 02 Feb 2019 12:58:57 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aa38418f0a535cce888cd957f5fc6c61efa3185a83f1f62381c3945aba89a95`  
		Last Modified: Sat, 02 Feb 2019 12:58:57 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.5` - linux; arm64 variant v8

```console
$ docker pull convertigo@sha256:7f2f068c4e5b1e8ecd843b008eebc812a4c8a7d84f2a7910ad271e43ae6026f1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.9 MB (313935457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6181dd262b5532134d736aa9608bed4f18d2c38a6c2627f3c5d8b6e700b8cf1`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:38:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 12:02:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:21:27 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 12:21:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 12:21:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 12:21:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 12:21:39 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 12:21:41 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 12:27:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 19:20:47 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 06 Feb 2019 19:20:48 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 19:20:50 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 06 Feb 2019 19:20:51 GMT
WORKDIR /usr/local/tomcat
# Wed, 06 Feb 2019 19:20:52 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 06 Feb 2019 19:20:53 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 06 Feb 2019 19:20:54 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 06 Feb 2019 19:20:56 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 19:21:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:21:15 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 06 Feb 2019 19:21:16 GMT
ENV TOMCAT_MAJOR=7
# Fri, 22 Feb 2019 13:04:11 GMT
ENV TOMCAT_VERSION=7.0.93
# Fri, 22 Feb 2019 13:04:12 GMT
ENV TOMCAT_SHA512=7ae5186f63df7821b7de4e4c92780a27ccc678119614ad074349c3d02bd2f764ac08fa72f776e880e98aad2617de01521eb3de6fe57e4a749c8c04f28e042f0a
# Fri, 22 Feb 2019 13:04:13 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz
# Fri, 22 Feb 2019 13:04:15 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc
# Fri, 22 Feb 2019 13:06:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Fri, 22 Feb 2019 13:07:00 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 22 Feb 2019 13:07:01 GMT
EXPOSE 8080
# Fri, 22 Feb 2019 13:07:03 GMT
CMD ["catalina.sh" "run"]
# Fri, 22 Feb 2019 14:48:12 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Fri, 22 Feb 2019 14:48:13 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 22 Feb 2019 14:48:17 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 22 Feb 2019 14:48:18 GMT
WORKDIR /usr/local/tomcat
# Fri, 22 Feb 2019 14:48:34 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Fri, 22 Feb 2019 14:48:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 22 Feb 2019 14:48:35 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 22 Feb 2019 14:48:35 GMT
ENV TINI_VERSION=0.16.1
# Fri, 22 Feb 2019 14:48:36 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Fri, 22 Feb 2019 14:48:46 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Fri, 22 Feb 2019 14:48:50 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Fri, 22 Feb 2019 14:48:53 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Fri, 22 Feb 2019 14:48:53 GMT
ENV CONVERTIGO_VERSION=7.5.5
# Fri, 22 Feb 2019 14:48:55 GMT
ENV CONVERTIGO_REVISION=45010
# Fri, 22 Feb 2019 14:48:56 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.5/convertigo-7.5.5-v45010-linux32.war
# Fri, 22 Feb 2019 14:48:57 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Fri, 22 Feb 2019 14:49:38 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Fri, 22 Feb 2019 14:49:39 GMT
COPY file:b5bd0566057785adb2589ced522fc8697237dae618549557ce65ad5368cf8938 in webapps/ROOT/index.html 
# Fri, 22 Feb 2019 14:49:40 GMT
COPY file:92202dec06475967df944234eb1273db2cd0176d1466e5fc3b977040008eba49 in / 
# Fri, 22 Feb 2019 14:49:41 GMT
ENV SWT_GTK3=0
# Fri, 22 Feb 2019 14:49:42 GMT
WORKDIR /workspace
# Fri, 22 Feb 2019 14:49:43 GMT
VOLUME [/workspace]
# Fri, 22 Feb 2019 14:49:44 GMT
EXPOSE 28080
# Fri, 22 Feb 2019 14:49:45 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Fri, 22 Feb 2019 14:49:46 GMT
CMD ["convertigo"]
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
	-	`sha256:1f78a9a3946c048cd1989adcb19ce142726814f9404f8ba27e6f67109ffbbcb4`  
		Last Modified: Wed, 06 Feb 2019 12:38:38 GMT  
		Size: 839.2 KB (839181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878c79f6988625ee5f4324e98135b17b7efeaa9075d4564d50ae21a8d7d0a5d9`  
		Last Modified: Wed, 06 Feb 2019 12:43:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783443219103599e6e7f0ceca2dfa1f8d755ced3dd4f5d8dffe801d82c6f1c26`  
		Last Modified: Wed, 06 Feb 2019 12:43:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d15746098decd81522d87e08b556d729daed66739f70ccbcf9a4049b5ba3f5e`  
		Last Modified: Wed, 06 Feb 2019 12:44:11 GMT  
		Size: 112.8 MB (112756331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af34ab79342334e7bc1d9757658d3461da30732c2fd14f60503135e1cdbf2c9`  
		Last Modified: Wed, 06 Feb 2019 20:22:34 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e2786a2229963b665c9fa8cde0a6dd1d4f32716bf9245a2468b8bdb494ae53`  
		Last Modified: Wed, 06 Feb 2019 20:22:34 GMT  
		Size: 513.2 KB (513189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0310382eb300f045745f0b9122b226ab501b5b7fac32dc310d4ed084f17ccdd7`  
		Last Modified: Fri, 22 Feb 2019 13:20:01 GMT  
		Size: 17.4 MB (17425369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7458b5f71c0b9fcd177ae83a2a756285123e1e224231c52523f5fd513b3a41d8`  
		Last Modified: Fri, 22 Feb 2019 13:19:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:393cb9cd53c8f5e2440872be1d9d22d019c3a27768c59c5ba25d37ecf260cd20`  
		Last Modified: Fri, 22 Feb 2019 14:54:52 GMT  
		Size: 963.7 KB (963677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d2d1e1f6f4386083f190a14061a9ac461c0be86a9be092f4db6ba178c469a7`  
		Last Modified: Fri, 22 Feb 2019 14:54:52 GMT  
		Size: 476.8 KB (476848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b871ff74320d78b27c0cec8b4f04cedc0259ec061cd133332fe1099db1da3540`  
		Last Modified: Fri, 22 Feb 2019 14:54:50 GMT  
		Size: 4.3 KB (4273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56230a430333cea7a8915be408c84e73c858f707b4c54c4f01198579bd00d25`  
		Last Modified: Fri, 22 Feb 2019 14:54:50 GMT  
		Size: 26.0 KB (25954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca459755eecca32a0044d2c2659a58d2059a4cec00bf927298627d36bca6a80b`  
		Last Modified: Fri, 22 Feb 2019 14:55:12 GMT  
		Size: 124.0 MB (123981481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e503f65e075be24c3518c1a74eb452259230df216eca426be4a588dfc14b461c`  
		Last Modified: Fri, 22 Feb 2019 14:54:50 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fba90fa4d60490b85310ea2a8a21b607a3b0a2bd3ca5c794bd8c72f11643e3e0`  
		Last Modified: Fri, 22 Feb 2019 14:54:50 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.5` - linux; 386

```console
$ docker pull convertigo@sha256:b38b9a4574bae983623571a2069efd254272067576d98cbe37bfae8f5608db2c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.0 MB (334005540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a276c328688a734f060801401aed3b9aecf5c404a859710ac03844afc7571c3`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:07 GMT
ADD file:70c26933810136bdb5c394bab98ac1119dd6ab650db410d21a0a16098b8a6ae2 in / 
# Wed, 06 Feb 2019 12:01:08 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 01:49:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:49:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 06:21:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 06:23:57 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 06:23:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 07 Feb 2019 06:23:59 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 07 Feb 2019 06:23:59 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 07 Feb 2019 06:23:59 GMT
ENV JAVA_VERSION=8u181
# Thu, 07 Feb 2019 06:23:59 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Thu, 07 Feb 2019 06:24:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 07 Feb 2019 11:17:08 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 07 Feb 2019 11:17:08 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Feb 2019 11:17:09 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 07 Feb 2019 11:17:09 GMT
WORKDIR /usr/local/tomcat
# Thu, 07 Feb 2019 11:17:09 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 07 Feb 2019 11:17:10 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 07 Feb 2019 11:17:10 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Thu, 07 Feb 2019 11:17:10 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 11:17:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 11:17:16 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 07 Feb 2019 11:17:16 GMT
ENV TOMCAT_MAJOR=7
# Thu, 07 Feb 2019 11:17:16 GMT
ENV TOMCAT_VERSION=7.0.92
# Thu, 07 Feb 2019 11:17:16 GMT
ENV TOMCAT_SHA512=e5e17ea68956df5d4c220f2e2891953b362b4fadd391f7cb9bc00d86986aa2e2499176d59c393f41db9ab3e0d7f1ab492a881f85c6650514a7f02f047d4eb2b0
# Thu, 07 Feb 2019 11:17:17 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz
# Thu, 07 Feb 2019 11:17:17 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc
# Thu, 07 Feb 2019 11:18:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 07 Feb 2019 11:18:02 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 07 Feb 2019 11:18:02 GMT
EXPOSE 8080
# Thu, 07 Feb 2019 11:18:02 GMT
CMD ["catalina.sh" "run"]
# Thu, 07 Feb 2019 11:25:26 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Thu, 07 Feb 2019 11:25:26 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 07 Feb 2019 11:25:27 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 07 Feb 2019 11:25:27 GMT
WORKDIR /usr/local/tomcat
# Thu, 07 Feb 2019 11:25:32 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 11:25:32 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Feb 2019 11:25:32 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 07 Feb 2019 11:25:32 GMT
ENV TINI_VERSION=0.16.1
# Thu, 07 Feb 2019 11:25:32 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Thu, 07 Feb 2019 11:25:37 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Thu, 07 Feb 2019 11:25:37 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Thu, 07 Feb 2019 11:25:38 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Thu, 07 Feb 2019 11:25:38 GMT
ENV CONVERTIGO_VERSION=7.5.5
# Thu, 07 Feb 2019 11:25:39 GMT
ENV CONVERTIGO_REVISION=45010
# Thu, 07 Feb 2019 11:25:39 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.5/convertigo-7.5.5-v45010-linux32.war
# Thu, 07 Feb 2019 11:25:39 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Thu, 07 Feb 2019 11:25:52 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Thu, 07 Feb 2019 11:25:52 GMT
COPY file:b5bd0566057785adb2589ced522fc8697237dae618549557ce65ad5368cf8938 in webapps/ROOT/index.html 
# Thu, 07 Feb 2019 11:25:52 GMT
COPY file:92202dec06475967df944234eb1273db2cd0176d1466e5fc3b977040008eba49 in / 
# Thu, 07 Feb 2019 11:25:53 GMT
ENV SWT_GTK3=0
# Thu, 07 Feb 2019 11:25:53 GMT
WORKDIR /workspace
# Thu, 07 Feb 2019 11:25:53 GMT
VOLUME [/workspace]
# Thu, 07 Feb 2019 11:25:53 GMT
EXPOSE 28080
# Thu, 07 Feb 2019 11:25:53 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Thu, 07 Feb 2019 11:25:54 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:56c1dc1a93dfeb7eb66abd8197c3fdfe7d7393c9757be0a44ca2f624b6e5c684`  
		Last Modified: Wed, 06 Feb 2019 12:07:42 GMT  
		Size: 46.1 MB (46069815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d401cb48eb9dd4b814e64479a4a5e9150a56d439c01778f0b95ff0689f82cd17`  
		Last Modified: Thu, 07 Feb 2019 02:03:03 GMT  
		Size: 10.8 MB (10799008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c068a67acc556d25d2fd2dc13d5929a34ee0395cd208b418f73bf15fc17e0955`  
		Last Modified: Thu, 07 Feb 2019 02:03:02 GMT  
		Size: 4.6 MB (4560874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404daee469e7110f87d6cff18a56b702c9a559f4ed1a9dbfc19dd4b7f467a8f6`  
		Last Modified: Thu, 07 Feb 2019 06:39:52 GMT  
		Size: 861.8 KB (861782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb0682ae720b17c31fb2604657fce4f6666c5d10dcc28fbdddb7975c40d0580`  
		Last Modified: Thu, 07 Feb 2019 06:41:04 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2468d39d4f0a7aefb8c7ff17aaf6f1d629af13da8f2ba011b60f91a4406c232f`  
		Last Modified: Thu, 07 Feb 2019 06:41:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cae5e57702086236a1f8f63a621c95b430457a22febdd0cee00cb145ea7c53f`  
		Last Modified: Thu, 07 Feb 2019 06:41:28 GMT  
		Size: 122.6 MB (122608632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a924ceba4ea8f04dd3004d45e948f6f9f4ea34494f653ea86812e16d7a670c1a`  
		Last Modified: Thu, 07 Feb 2019 11:23:01 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eed460517fd5ebdebb3402a79839430123e8255ba1b2797f70d1d6b3785ea16`  
		Last Modified: Thu, 07 Feb 2019 11:23:01 GMT  
		Size: 540.4 KB (540388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9441ad77461b115352e95527db85baf1aba71122742d0911195132e7e6d76b7`  
		Last Modified: Thu, 07 Feb 2019 11:23:04 GMT  
		Size: 10.0 MB (9989623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00fd5f7362393da3b6d94217cc3e409b1be4c12794983705c702a436e978192e`  
		Last Modified: Thu, 07 Feb 2019 11:23:02 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b349bceaf6f3a9c298dd12832bb6ac8cf304612f1e90cc111a0f6cc448501fbe`  
		Last Modified: Thu, 07 Feb 2019 11:27:14 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873c2d1c997b961fcbfe18013ce8fbb01ac773db1b79ff9556f8b1b861f3fcf9`  
		Last Modified: Thu, 07 Feb 2019 11:27:14 GMT  
		Size: 489.2 KB (489154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54e51e91b6792617a9d22f56fe2ccd046308e5e4313f8759678bafbd38875aaa`  
		Last Modified: Thu, 07 Feb 2019 11:27:13 GMT  
		Size: 4.2 KB (4249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09375a56afe875e4db5935505712e1471dd4c6c7929b0cd4633706590f086dcf`  
		Last Modified: Thu, 07 Feb 2019 11:27:13 GMT  
		Size: 26.0 KB (25970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ebafbc38c9dc01b911f7a261588d03e3a38d8b6d3ff5749dff70e7a2d0e3bb`  
		Last Modified: Thu, 07 Feb 2019 11:27:28 GMT  
		Size: 138.1 MB (138053476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd8d6cf945b944a170d4cb01a6627df1d2ee82a7be1dc7c46b5a9749598e8233`  
		Last Modified: Thu, 07 Feb 2019 11:27:13 GMT  
		Size: 467.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc9a318ded496210fa1b6fe4ebcf342425ba430f71d1da4d8dc07c443ad6ab3`  
		Last Modified: Thu, 07 Feb 2019 11:27:13 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `convertigo:7.5.5`

```console
$ docker pull convertigo@sha256:5e88e3a8f5c29839296d64148591414b863dccdece3997da12cefb103e687c7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `convertigo:7.5.5` - linux; amd64

```console
$ docker pull convertigo@sha256:add3670eff3665b93fb5b1473fa2130023da629fdd801d51ba04cfb64af0798c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.7 MB (327668943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58498cf1165cad6801ab85bcdfa11bc5a5a9109b44585c37afcc3052592664bc`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 08:27:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:29:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 08:29:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 08:29:45 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 08:29:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 08:29:46 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 08:29:46 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 08:30:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 16:55:01 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 06 Feb 2019 16:55:01 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 16:55:03 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 06 Feb 2019 16:55:03 GMT
WORKDIR /usr/local/tomcat
# Wed, 06 Feb 2019 16:55:04 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 06 Feb 2019 16:55:04 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 06 Feb 2019 16:55:04 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 06 Feb 2019 16:55:06 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 16:55:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 16:55:16 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 06 Feb 2019 16:55:16 GMT
ENV TOMCAT_MAJOR=7
# Fri, 22 Feb 2019 01:38:46 GMT
ENV TOMCAT_VERSION=7.0.93
# Fri, 22 Feb 2019 01:38:46 GMT
ENV TOMCAT_SHA512=7ae5186f63df7821b7de4e4c92780a27ccc678119614ad074349c3d02bd2f764ac08fa72f776e880e98aad2617de01521eb3de6fe57e4a749c8c04f28e042f0a
# Fri, 22 Feb 2019 01:38:47 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz
# Fri, 22 Feb 2019 01:38:47 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc
# Fri, 22 Feb 2019 01:39:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Fri, 22 Feb 2019 01:39:48 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 22 Feb 2019 01:39:48 GMT
EXPOSE 8080
# Fri, 22 Feb 2019 01:39:48 GMT
CMD ["catalina.sh" "run"]
# Fri, 22 Feb 2019 02:13:40 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Fri, 22 Feb 2019 02:13:40 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 22 Feb 2019 02:13:42 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 22 Feb 2019 02:13:43 GMT
WORKDIR /usr/local/tomcat
# Fri, 22 Feb 2019 02:13:48 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Fri, 22 Feb 2019 02:13:48 GMT
ENV GOSU_VERSION=1.10
# Fri, 22 Feb 2019 02:13:48 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 22 Feb 2019 02:13:49 GMT
ENV TINI_VERSION=0.16.1
# Fri, 22 Feb 2019 02:13:49 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Fri, 22 Feb 2019 02:13:54 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Fri, 22 Feb 2019 02:13:56 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Fri, 22 Feb 2019 02:13:58 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Fri, 22 Feb 2019 02:13:58 GMT
ENV CONVERTIGO_VERSION=7.5.5
# Fri, 22 Feb 2019 02:13:58 GMT
ENV CONVERTIGO_REVISION=45010
# Fri, 22 Feb 2019 02:13:59 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.5/convertigo-7.5.5-v45010-linux32.war
# Fri, 22 Feb 2019 02:13:59 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Fri, 22 Feb 2019 02:14:12 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Fri, 22 Feb 2019 02:14:13 GMT
COPY file:b5bd0566057785adb2589ced522fc8697237dae618549557ce65ad5368cf8938 in webapps/ROOT/index.html 
# Fri, 22 Feb 2019 02:14:13 GMT
COPY file:92202dec06475967df944234eb1273db2cd0176d1466e5fc3b977040008eba49 in / 
# Fri, 22 Feb 2019 02:14:14 GMT
ENV SWT_GTK3=0
# Fri, 22 Feb 2019 02:14:14 GMT
WORKDIR /workspace
# Fri, 22 Feb 2019 02:14:15 GMT
VOLUME [/workspace]
# Fri, 22 Feb 2019 02:14:15 GMT
EXPOSE 28080
# Fri, 22 Feb 2019 02:14:16 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Fri, 22 Feb 2019 02:14:16 GMT
CMD ["convertigo"]
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
	-	`sha256:eea0f08c7492aa49cb62b7fc7cf5a3b91e5c83c182cecddaba75903f09a1c67e`  
		Last Modified: Wed, 06 Feb 2019 08:52:24 GMT  
		Size: 852.9 KB (852911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca74b3d90c15cc3066bb46f8b6cdb617805b39e46ba39b891e4592b601abaee1`  
		Last Modified: Wed, 06 Feb 2019 08:54:24 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f11a643c4a8511e3f7d00a7f7c01059bf804876833992895eebbbaf108399655`  
		Last Modified: Wed, 06 Feb 2019 08:54:24 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05eafed73b65f1719e1ad5446e1f57859feb2f71f0b21d5f0bd25fb7d0d6dbd5`  
		Last Modified: Wed, 06 Feb 2019 08:54:52 GMT  
		Size: 122.1 MB (122121101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f24105f282aadee3e59151424724bc5962ef2aea0b9516f71e9a307e2fde7112`  
		Last Modified: Wed, 06 Feb 2019 17:15:16 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27e73cbbd3f3821d48e165fd1c6905d23efe9651ed5f7d8d6374883a89ddbaf`  
		Last Modified: Wed, 06 Feb 2019 17:15:17 GMT  
		Size: 528.4 KB (528443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e09b82a92ead396ff26d0940ca9c97437d9f7382ea193262f3298e8601f7474`  
		Last Modified: Fri, 22 Feb 2019 01:44:05 GMT  
		Size: 18.2 MB (18183671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7bfd50176d08c40e08ceea4665c6219525fefd8e0f12e8fca5493354fb2afcb`  
		Last Modified: Fri, 22 Feb 2019 01:44:02 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a701a3abc23cf39f10aed52dbc80d595cf4d05a8ee4aa9c53fe8fdcf8534d97a`  
		Last Modified: Fri, 22 Feb 2019 02:15:53 GMT  
		Size: 994.1 KB (994143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:311115c65d6867b1149a569a9978adccc8475da507b0935a3e997ccca3a947d6`  
		Last Modified: Fri, 22 Feb 2019 02:15:53 GMT  
		Size: 509.3 KB (509297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a4c71ce5008fa337f578973c85787d447454360ad770a889f479bba68c24d3`  
		Last Modified: Fri, 22 Feb 2019 02:15:52 GMT  
		Size: 4.3 KB (4264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74357e1ebbfe84f97981d5aaa3a7fab258853ebf02075736b0ae884218f7fdce`  
		Last Modified: Fri, 22 Feb 2019 02:15:52 GMT  
		Size: 25.9 KB (25948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3018387a4fa44a5f3f77f3ab47939ed38b64bba3cb270c52e9cfbf7113a36a`  
		Last Modified: Fri, 22 Feb 2019 02:16:03 GMT  
		Size: 124.0 MB (123981500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2989eb1e3fc92df3a26cc1b571ab7e7e06270ef6b38f312d799143c8fb3c0b05`  
		Last Modified: Fri, 22 Feb 2019 02:15:52 GMT  
		Size: 467.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad32801d4846ec61f3e001c70baae452426197e77ea9bf988afefb820a19d2a`  
		Last Modified: Fri, 22 Feb 2019 02:15:52 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.5.5` - linux; arm variant v7

```console
$ docker pull convertigo@sha256:3fe40e2e235af72d94a74ab15439c1580acc3b1953054d8bb93fc9d55a604bfc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.3 MB (338307022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f335c20f5217859e7f3c88095192636b994d8c5d737920f7270ad24b920b2567`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:13:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:59:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:59:16 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:59:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 05 May 2018 12:59:19 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 12:59:27 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 12:59:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 05 May 2018 13:00:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 05 May 2018 13:00:28 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 05 May 2018 15:54:31 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 05 May 2018 15:54:31 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 05 May 2018 15:54:32 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 05 May 2018 15:54:33 GMT
WORKDIR /usr/local/tomcat
# Sat, 05 May 2018 15:54:33 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 05 May 2018 15:54:34 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 05 May 2018 15:54:34 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Sat, 05 May 2018 15:54:35 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 15:54:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 15:54:48 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 05 May 2018 15:54:48 GMT
ENV TOMCAT_MAJOR=7
# Sat, 07 Jul 2018 12:21:40 GMT
ENV TOMCAT_VERSION=7.0.90
# Sat, 07 Jul 2018 12:21:41 GMT
ENV TOMCAT_SHA512=c7a47135b99684425260cd906cf5c9a5226837d3681d84ae4e3bb199068e97f0e63d07393d91ca0436204a1dc92bf9bd9a4a1c4c893187703e023503bbd81901
# Sat, 07 Jul 2018 12:21:41 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz
# Sat, 07 Jul 2018 12:21:41 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc
# Wed, 01 Aug 2018 12:39:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Wed, 01 Aug 2018 12:39:46 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 01 Aug 2018 12:39:49 GMT
EXPOSE 8080/tcp
# Wed, 01 Aug 2018 12:39:49 GMT
CMD ["catalina.sh" "run"]
# Wed, 01 Aug 2018 13:22:11 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Wed, 01 Aug 2018 13:22:11 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 01 Aug 2018 13:22:12 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 01 Aug 2018 13:22:13 GMT
WORKDIR /usr/local/tomcat
# Wed, 01 Aug 2018 13:22:19 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Wed, 01 Aug 2018 13:22:20 GMT
ENV GOSU_VERSION=1.10
# Wed, 01 Aug 2018 13:22:20 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 01 Aug 2018 13:22:20 GMT
ENV TINI_VERSION=0.16.1
# Wed, 01 Aug 2018 13:22:20 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Tue, 25 Dec 2018 12:57:37 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Tue, 25 Dec 2018 12:57:38 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Tue, 25 Dec 2018 12:57:40 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Sat, 02 Feb 2019 12:57:19 GMT
ENV CONVERTIGO_VERSION=7.5.5
# Sat, 02 Feb 2019 12:57:19 GMT
ENV CONVERTIGO_REVISION=45010
# Sat, 02 Feb 2019 12:57:19 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.5/convertigo-7.5.5-v45010-linux32.war
# Sat, 02 Feb 2019 12:57:20 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Sat, 02 Feb 2019 12:58:30 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Sat, 02 Feb 2019 12:58:31 GMT
COPY file:b5bd0566057785adb2589ced522fc8697237dae618549557ce65ad5368cf8938 in webapps/ROOT/index.html 
# Sat, 02 Feb 2019 12:58:31 GMT
COPY file:92202dec06475967df944234eb1273db2cd0176d1466e5fc3b977040008eba49 in / 
# Sat, 02 Feb 2019 12:58:32 GMT
ENV SWT_GTK3=0
# Sat, 02 Feb 2019 12:58:32 GMT
WORKDIR /workspace
# Sat, 02 Feb 2019 12:58:32 GMT
VOLUME [/workspace]
# Sat, 02 Feb 2019 12:58:33 GMT
EXPOSE 28080
# Sat, 02 Feb 2019 12:58:33 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 02 Feb 2019 12:58:34 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed57f83cc7c78757972312a1b5a30524f861523c5390d062845f18c696f48ea`  
		Last Modified: Sat, 05 May 2018 12:35:37 GMT  
		Size: 9.5 MB (9472475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859203aede279201e8caf07cf2963456c56bac72a64071079dc9db6fb65ed1a2`  
		Last Modified: Sat, 05 May 2018 12:35:34 GMT  
		Size: 3.9 MB (3912835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df26ddf71ea9e82f175e400809b8f06871dd0937c5a90f4ffe95286544a9f719`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 830.3 KB (830332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c21322a9c89724512d6ea5faa10299c60c8a605d6f563c84c28177db8d2770`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2270f04a4be61f52577232813fff92e797d3fc190d52f71411afc26b0911f8e4`  
		Last Modified: Sat, 05 May 2018 13:29:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2dc1aba58c8cd285639cac6b03c823e5fcdb91aa8922652e7d9387aaca6fa4`  
		Last Modified: Sat, 05 May 2018 13:29:37 GMT  
		Size: 139.5 MB (139501760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02869ec2bb3864b06abd435610eb6849d5c62426517de1a603ef6fe43c7d3815`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 272.1 KB (272082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289a355206a5e4f55a89ee04aff3ea7521228ac5dd89e2068978f78acbbd0a54`  
		Last Modified: Sat, 05 May 2018 16:08:23 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf947ee846151b3e82b979ab8f3027c037e1a8dc7a1c2976128213dcb515eced`  
		Last Modified: Sat, 05 May 2018 16:08:24 GMT  
		Size: 519.8 KB (519803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc44ea6baa81c1119dd6637b87028c7ac9a35f16680a4cdb8fa7a65295b9b56c`  
		Last Modified: Wed, 01 Aug 2018 13:02:49 GMT  
		Size: 16.3 MB (16281202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edbf1f55b4009d5b8fe3b4adb1ad6ec97e745b06f1ac456386ae0203f90a31e5`  
		Last Modified: Wed, 01 Aug 2018 13:02:44 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a340f18f8d09e1349704539c8a7da88fb26998dee221c73eea10c0b38bc910`  
		Last Modified: Wed, 01 Aug 2018 13:23:33 GMT  
		Size: 956.1 KB (956126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b23e73bf82e1276d94b9582bf695c6451bb8a226018999f1c5930932e5eb3de2`  
		Last Modified: Tue, 25 Dec 2018 13:00:22 GMT  
		Size: 482.7 KB (482666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ab18f06945e91417328482dd3be5330d34c03080a2f8905611b52e1d1c2452`  
		Last Modified: Tue, 25 Dec 2018 13:00:21 GMT  
		Size: 4.4 KB (4352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7648f26f8a8489e1a294db2699aff89acc5d921e0680f715e7c855205af41bd`  
		Last Modified: Tue, 25 Dec 2018 13:00:21 GMT  
		Size: 25.9 KB (25950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd0baebedad6b5a0e0e042d4d8b548887a32b73ca02db54ac1d430b659031ca`  
		Last Modified: Sat, 02 Feb 2019 12:59:18 GMT  
		Size: 124.0 MB (123981471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecf9763427d4caed67904a10c0d67fe03fd07a7a2c567c0c5ef8e1d4cf999ff`  
		Last Modified: Sat, 02 Feb 2019 12:58:57 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aa38418f0a535cce888cd957f5fc6c61efa3185a83f1f62381c3945aba89a95`  
		Last Modified: Sat, 02 Feb 2019 12:58:57 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.5.5` - linux; arm64 variant v8

```console
$ docker pull convertigo@sha256:7f2f068c4e5b1e8ecd843b008eebc812a4c8a7d84f2a7910ad271e43ae6026f1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.9 MB (313935457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6181dd262b5532134d736aa9608bed4f18d2c38a6c2627f3c5d8b6e700b8cf1`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:38:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 12:02:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:21:27 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 12:21:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 12:21:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 12:21:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 12:21:39 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 12:21:41 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 12:27:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 19:20:47 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 06 Feb 2019 19:20:48 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 19:20:50 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 06 Feb 2019 19:20:51 GMT
WORKDIR /usr/local/tomcat
# Wed, 06 Feb 2019 19:20:52 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 06 Feb 2019 19:20:53 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 06 Feb 2019 19:20:54 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 06 Feb 2019 19:20:56 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 19:21:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:21:15 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 06 Feb 2019 19:21:16 GMT
ENV TOMCAT_MAJOR=7
# Fri, 22 Feb 2019 13:04:11 GMT
ENV TOMCAT_VERSION=7.0.93
# Fri, 22 Feb 2019 13:04:12 GMT
ENV TOMCAT_SHA512=7ae5186f63df7821b7de4e4c92780a27ccc678119614ad074349c3d02bd2f764ac08fa72f776e880e98aad2617de01521eb3de6fe57e4a749c8c04f28e042f0a
# Fri, 22 Feb 2019 13:04:13 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz
# Fri, 22 Feb 2019 13:04:15 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc
# Fri, 22 Feb 2019 13:06:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Fri, 22 Feb 2019 13:07:00 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 22 Feb 2019 13:07:01 GMT
EXPOSE 8080
# Fri, 22 Feb 2019 13:07:03 GMT
CMD ["catalina.sh" "run"]
# Fri, 22 Feb 2019 14:48:12 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Fri, 22 Feb 2019 14:48:13 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 22 Feb 2019 14:48:17 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 22 Feb 2019 14:48:18 GMT
WORKDIR /usr/local/tomcat
# Fri, 22 Feb 2019 14:48:34 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Fri, 22 Feb 2019 14:48:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 22 Feb 2019 14:48:35 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 22 Feb 2019 14:48:35 GMT
ENV TINI_VERSION=0.16.1
# Fri, 22 Feb 2019 14:48:36 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Fri, 22 Feb 2019 14:48:46 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Fri, 22 Feb 2019 14:48:50 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Fri, 22 Feb 2019 14:48:53 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Fri, 22 Feb 2019 14:48:53 GMT
ENV CONVERTIGO_VERSION=7.5.5
# Fri, 22 Feb 2019 14:48:55 GMT
ENV CONVERTIGO_REVISION=45010
# Fri, 22 Feb 2019 14:48:56 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.5/convertigo-7.5.5-v45010-linux32.war
# Fri, 22 Feb 2019 14:48:57 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Fri, 22 Feb 2019 14:49:38 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Fri, 22 Feb 2019 14:49:39 GMT
COPY file:b5bd0566057785adb2589ced522fc8697237dae618549557ce65ad5368cf8938 in webapps/ROOT/index.html 
# Fri, 22 Feb 2019 14:49:40 GMT
COPY file:92202dec06475967df944234eb1273db2cd0176d1466e5fc3b977040008eba49 in / 
# Fri, 22 Feb 2019 14:49:41 GMT
ENV SWT_GTK3=0
# Fri, 22 Feb 2019 14:49:42 GMT
WORKDIR /workspace
# Fri, 22 Feb 2019 14:49:43 GMT
VOLUME [/workspace]
# Fri, 22 Feb 2019 14:49:44 GMT
EXPOSE 28080
# Fri, 22 Feb 2019 14:49:45 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Fri, 22 Feb 2019 14:49:46 GMT
CMD ["convertigo"]
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
	-	`sha256:1f78a9a3946c048cd1989adcb19ce142726814f9404f8ba27e6f67109ffbbcb4`  
		Last Modified: Wed, 06 Feb 2019 12:38:38 GMT  
		Size: 839.2 KB (839181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878c79f6988625ee5f4324e98135b17b7efeaa9075d4564d50ae21a8d7d0a5d9`  
		Last Modified: Wed, 06 Feb 2019 12:43:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783443219103599e6e7f0ceca2dfa1f8d755ced3dd4f5d8dffe801d82c6f1c26`  
		Last Modified: Wed, 06 Feb 2019 12:43:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d15746098decd81522d87e08b556d729daed66739f70ccbcf9a4049b5ba3f5e`  
		Last Modified: Wed, 06 Feb 2019 12:44:11 GMT  
		Size: 112.8 MB (112756331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af34ab79342334e7bc1d9757658d3461da30732c2fd14f60503135e1cdbf2c9`  
		Last Modified: Wed, 06 Feb 2019 20:22:34 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e2786a2229963b665c9fa8cde0a6dd1d4f32716bf9245a2468b8bdb494ae53`  
		Last Modified: Wed, 06 Feb 2019 20:22:34 GMT  
		Size: 513.2 KB (513189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0310382eb300f045745f0b9122b226ab501b5b7fac32dc310d4ed084f17ccdd7`  
		Last Modified: Fri, 22 Feb 2019 13:20:01 GMT  
		Size: 17.4 MB (17425369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7458b5f71c0b9fcd177ae83a2a756285123e1e224231c52523f5fd513b3a41d8`  
		Last Modified: Fri, 22 Feb 2019 13:19:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:393cb9cd53c8f5e2440872be1d9d22d019c3a27768c59c5ba25d37ecf260cd20`  
		Last Modified: Fri, 22 Feb 2019 14:54:52 GMT  
		Size: 963.7 KB (963677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d2d1e1f6f4386083f190a14061a9ac461c0be86a9be092f4db6ba178c469a7`  
		Last Modified: Fri, 22 Feb 2019 14:54:52 GMT  
		Size: 476.8 KB (476848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b871ff74320d78b27c0cec8b4f04cedc0259ec061cd133332fe1099db1da3540`  
		Last Modified: Fri, 22 Feb 2019 14:54:50 GMT  
		Size: 4.3 KB (4273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56230a430333cea7a8915be408c84e73c858f707b4c54c4f01198579bd00d25`  
		Last Modified: Fri, 22 Feb 2019 14:54:50 GMT  
		Size: 26.0 KB (25954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca459755eecca32a0044d2c2659a58d2059a4cec00bf927298627d36bca6a80b`  
		Last Modified: Fri, 22 Feb 2019 14:55:12 GMT  
		Size: 124.0 MB (123981481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e503f65e075be24c3518c1a74eb452259230df216eca426be4a588dfc14b461c`  
		Last Modified: Fri, 22 Feb 2019 14:54:50 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fba90fa4d60490b85310ea2a8a21b607a3b0a2bd3ca5c794bd8c72f11643e3e0`  
		Last Modified: Fri, 22 Feb 2019 14:54:50 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.5.5` - linux; 386

```console
$ docker pull convertigo@sha256:b38b9a4574bae983623571a2069efd254272067576d98cbe37bfae8f5608db2c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.0 MB (334005540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a276c328688a734f060801401aed3b9aecf5c404a859710ac03844afc7571c3`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:07 GMT
ADD file:70c26933810136bdb5c394bab98ac1119dd6ab650db410d21a0a16098b8a6ae2 in / 
# Wed, 06 Feb 2019 12:01:08 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 01:49:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:49:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 06:21:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 06:23:57 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 06:23:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 07 Feb 2019 06:23:59 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 07 Feb 2019 06:23:59 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 07 Feb 2019 06:23:59 GMT
ENV JAVA_VERSION=8u181
# Thu, 07 Feb 2019 06:23:59 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Thu, 07 Feb 2019 06:24:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 07 Feb 2019 11:17:08 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 07 Feb 2019 11:17:08 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Feb 2019 11:17:09 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 07 Feb 2019 11:17:09 GMT
WORKDIR /usr/local/tomcat
# Thu, 07 Feb 2019 11:17:09 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 07 Feb 2019 11:17:10 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 07 Feb 2019 11:17:10 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Thu, 07 Feb 2019 11:17:10 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 11:17:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 11:17:16 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 07 Feb 2019 11:17:16 GMT
ENV TOMCAT_MAJOR=7
# Thu, 07 Feb 2019 11:17:16 GMT
ENV TOMCAT_VERSION=7.0.92
# Thu, 07 Feb 2019 11:17:16 GMT
ENV TOMCAT_SHA512=e5e17ea68956df5d4c220f2e2891953b362b4fadd391f7cb9bc00d86986aa2e2499176d59c393f41db9ab3e0d7f1ab492a881f85c6650514a7f02f047d4eb2b0
# Thu, 07 Feb 2019 11:17:17 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz
# Thu, 07 Feb 2019 11:17:17 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc
# Thu, 07 Feb 2019 11:18:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 07 Feb 2019 11:18:02 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 07 Feb 2019 11:18:02 GMT
EXPOSE 8080
# Thu, 07 Feb 2019 11:18:02 GMT
CMD ["catalina.sh" "run"]
# Thu, 07 Feb 2019 11:25:26 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Thu, 07 Feb 2019 11:25:26 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 07 Feb 2019 11:25:27 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 07 Feb 2019 11:25:27 GMT
WORKDIR /usr/local/tomcat
# Thu, 07 Feb 2019 11:25:32 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 11:25:32 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Feb 2019 11:25:32 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 07 Feb 2019 11:25:32 GMT
ENV TINI_VERSION=0.16.1
# Thu, 07 Feb 2019 11:25:32 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Thu, 07 Feb 2019 11:25:37 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Thu, 07 Feb 2019 11:25:37 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Thu, 07 Feb 2019 11:25:38 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Thu, 07 Feb 2019 11:25:38 GMT
ENV CONVERTIGO_VERSION=7.5.5
# Thu, 07 Feb 2019 11:25:39 GMT
ENV CONVERTIGO_REVISION=45010
# Thu, 07 Feb 2019 11:25:39 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.5/convertigo-7.5.5-v45010-linux32.war
# Thu, 07 Feb 2019 11:25:39 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Thu, 07 Feb 2019 11:25:52 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Thu, 07 Feb 2019 11:25:52 GMT
COPY file:b5bd0566057785adb2589ced522fc8697237dae618549557ce65ad5368cf8938 in webapps/ROOT/index.html 
# Thu, 07 Feb 2019 11:25:52 GMT
COPY file:92202dec06475967df944234eb1273db2cd0176d1466e5fc3b977040008eba49 in / 
# Thu, 07 Feb 2019 11:25:53 GMT
ENV SWT_GTK3=0
# Thu, 07 Feb 2019 11:25:53 GMT
WORKDIR /workspace
# Thu, 07 Feb 2019 11:25:53 GMT
VOLUME [/workspace]
# Thu, 07 Feb 2019 11:25:53 GMT
EXPOSE 28080
# Thu, 07 Feb 2019 11:25:53 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Thu, 07 Feb 2019 11:25:54 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:56c1dc1a93dfeb7eb66abd8197c3fdfe7d7393c9757be0a44ca2f624b6e5c684`  
		Last Modified: Wed, 06 Feb 2019 12:07:42 GMT  
		Size: 46.1 MB (46069815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d401cb48eb9dd4b814e64479a4a5e9150a56d439c01778f0b95ff0689f82cd17`  
		Last Modified: Thu, 07 Feb 2019 02:03:03 GMT  
		Size: 10.8 MB (10799008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c068a67acc556d25d2fd2dc13d5929a34ee0395cd208b418f73bf15fc17e0955`  
		Last Modified: Thu, 07 Feb 2019 02:03:02 GMT  
		Size: 4.6 MB (4560874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404daee469e7110f87d6cff18a56b702c9a559f4ed1a9dbfc19dd4b7f467a8f6`  
		Last Modified: Thu, 07 Feb 2019 06:39:52 GMT  
		Size: 861.8 KB (861782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb0682ae720b17c31fb2604657fce4f6666c5d10dcc28fbdddb7975c40d0580`  
		Last Modified: Thu, 07 Feb 2019 06:41:04 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2468d39d4f0a7aefb8c7ff17aaf6f1d629af13da8f2ba011b60f91a4406c232f`  
		Last Modified: Thu, 07 Feb 2019 06:41:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cae5e57702086236a1f8f63a621c95b430457a22febdd0cee00cb145ea7c53f`  
		Last Modified: Thu, 07 Feb 2019 06:41:28 GMT  
		Size: 122.6 MB (122608632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a924ceba4ea8f04dd3004d45e948f6f9f4ea34494f653ea86812e16d7a670c1a`  
		Last Modified: Thu, 07 Feb 2019 11:23:01 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eed460517fd5ebdebb3402a79839430123e8255ba1b2797f70d1d6b3785ea16`  
		Last Modified: Thu, 07 Feb 2019 11:23:01 GMT  
		Size: 540.4 KB (540388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9441ad77461b115352e95527db85baf1aba71122742d0911195132e7e6d76b7`  
		Last Modified: Thu, 07 Feb 2019 11:23:04 GMT  
		Size: 10.0 MB (9989623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00fd5f7362393da3b6d94217cc3e409b1be4c12794983705c702a436e978192e`  
		Last Modified: Thu, 07 Feb 2019 11:23:02 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b349bceaf6f3a9c298dd12832bb6ac8cf304612f1e90cc111a0f6cc448501fbe`  
		Last Modified: Thu, 07 Feb 2019 11:27:14 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873c2d1c997b961fcbfe18013ce8fbb01ac773db1b79ff9556f8b1b861f3fcf9`  
		Last Modified: Thu, 07 Feb 2019 11:27:14 GMT  
		Size: 489.2 KB (489154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54e51e91b6792617a9d22f56fe2ccd046308e5e4313f8759678bafbd38875aaa`  
		Last Modified: Thu, 07 Feb 2019 11:27:13 GMT  
		Size: 4.2 KB (4249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09375a56afe875e4db5935505712e1471dd4c6c7929b0cd4633706590f086dcf`  
		Last Modified: Thu, 07 Feb 2019 11:27:13 GMT  
		Size: 26.0 KB (25970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ebafbc38c9dc01b911f7a261588d03e3a38d8b6d3ff5749dff70e7a2d0e3bb`  
		Last Modified: Thu, 07 Feb 2019 11:27:28 GMT  
		Size: 138.1 MB (138053476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd8d6cf945b944a170d4cb01a6627df1d2ee82a7be1dc7c46b5a9749598e8233`  
		Last Modified: Thu, 07 Feb 2019 11:27:13 GMT  
		Size: 467.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc9a318ded496210fa1b6fe4ebcf342425ba430f71d1da4d8dc07c443ad6ab3`  
		Last Modified: Thu, 07 Feb 2019 11:27:13 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `convertigo:7.5.5-alpine`

```console
$ docker pull convertigo@sha256:1c33ecc73f0cbb1b844315547b4cb547ed4c2e1ac1d9e1484b92b5e97589d818
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `convertigo:7.5.5-alpine` - linux; amd64

```console
$ docker pull convertigo@sha256:55e7927070b26e565a5d38b7189bbfcd20b9a01848b0e220b36949f6c29d6bb4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 MB (201346180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e191f2d782733e0adad11e23f622ea0b7bfdd28fb3b4bb6e1786af4c90767b98`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:39:38 GMT
ENV LANG=C.UTF-8
# Tue, 05 Feb 2019 20:39:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Feb 2019 20:39:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_VERSION=8u191
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Tue, 05 Feb 2019 20:40:03 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Feb 2019 23:13:21 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 05 Feb 2019 23:13:21 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Feb 2019 23:13:23 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 05 Feb 2019 23:13:23 GMT
WORKDIR /usr/local/tomcat
# Tue, 05 Feb 2019 23:13:24 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 05 Feb 2019 23:13:24 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 05 Feb 2019 23:13:25 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 05 Feb 2019 23:13:25 GMT
ENV TOMCAT_MAJOR=7
# Fri, 22 Feb 2019 01:41:29 GMT
ENV TOMCAT_VERSION=7.0.93
# Fri, 22 Feb 2019 01:41:29 GMT
ENV TOMCAT_SHA512=7ae5186f63df7821b7de4e4c92780a27ccc678119614ad074349c3d02bd2f764ac08fa72f776e880e98aad2617de01521eb3de6fe57e4a749c8c04f28e042f0a
# Fri, 22 Feb 2019 01:41:29 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz
# Fri, 22 Feb 2019 01:41:29 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc
# Fri, 22 Feb 2019 01:41:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Fri, 22 Feb 2019 01:41:47 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 22 Feb 2019 01:41:47 GMT
EXPOSE 8080
# Fri, 22 Feb 2019 01:41:47 GMT
CMD ["catalina.sh" "run"]
# Fri, 22 Feb 2019 02:14:25 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Fri, 22 Feb 2019 02:14:25 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 22 Feb 2019 02:14:27 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 22 Feb 2019 02:14:28 GMT
WORKDIR /usr/local/tomcat
# Fri, 22 Feb 2019 02:14:30 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Fri, 22 Feb 2019 02:14:30 GMT
ENV GOSU_VERSION=1.10
# Fri, 22 Feb 2019 02:14:30 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 22 Feb 2019 02:14:30 GMT
ENV TINI_VERSION=0.17.0
# Fri, 22 Feb 2019 02:14:31 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Fri, 22 Feb 2019 02:14:34 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && pkill -9 gpg-agent   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Fri, 22 Feb 2019 02:14:35 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Fri, 22 Feb 2019 02:14:37 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Fri, 22 Feb 2019 02:14:38 GMT
ENV CONVERTIGO_VERSION=7.5.5
# Fri, 22 Feb 2019 02:14:38 GMT
ENV CONVERTIGO_REVISION=45010
# Fri, 22 Feb 2019 02:14:38 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.5/convertigo-7.5.5-v45010-linux32.war
# Fri, 22 Feb 2019 02:14:38 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Fri, 22 Feb 2019 02:14:50 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && pkill -9 gpg-agent     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Fri, 22 Feb 2019 02:14:50 GMT
COPY file:469acf91c0f583e35a3bcf1ac9d684cb7ff494dab17d41517be8cd24e5e49646 in webapps/ROOT/index.html 
# Fri, 22 Feb 2019 02:14:50 GMT
COPY file:42593bf6b5b6f7097adcf68ab4c5a9e42d6241e711a56df31d8671d239932d3c in / 
# Fri, 22 Feb 2019 02:14:50 GMT
WORKDIR /workspace
# Fri, 22 Feb 2019 02:14:51 GMT
VOLUME [/workspace]
# Fri, 22 Feb 2019 02:14:51 GMT
EXPOSE 28080
# Fri, 22 Feb 2019 02:14:51 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Fri, 22 Feb 2019 02:14:52 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78b803852394d2b9aaa3ce93b0f2502b0bf8e063b1fa79734de0fc8ee55ee6e`  
		Last Modified: Tue, 05 Feb 2019 20:45:24 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f41fe1b6eee3555498a7e15b3bf048a7ec274302a92d0c8b34fda111c780fdcf`  
		Last Modified: Tue, 05 Feb 2019 20:45:56 GMT  
		Size: 54.9 MB (54922733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65369fd9d03ba296b96bcfcc16c03f9b39be3ccfff9aad916236581a0309282d`  
		Last Modified: Tue, 05 Feb 2019 23:15:46 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f8a9f6221d879f8f66085a6042834d7389a0fd03cddda6acf0a217999f5656e`  
		Last Modified: Fri, 22 Feb 2019 01:44:24 GMT  
		Size: 12.3 MB (12333020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0417dd3da053806909cf8746ba745d4f542eec02c2b77aa1ad659c2aea17b143`  
		Last Modified: Fri, 22 Feb 2019 01:44:22 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb4c2800548f8f701417bc40fd8ed17fc6c9dfa62126af27027337e8d9d1213a`  
		Last Modified: Fri, 22 Feb 2019 02:16:11 GMT  
		Size: 6.3 MB (6346174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26b7f3d3bc6182702e8c7af0271a14220a8e94855eb3003dad26ae2a95e3a293`  
		Last Modified: Fri, 22 Feb 2019 02:16:10 GMT  
		Size: 978.7 KB (978744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c54b488a9005c71f70f913fe5ae3b01bf9de656043167a66de6d29ae569d1ebd`  
		Last Modified: Fri, 22 Feb 2019 02:16:09 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e63157fb88c5e228320e81ff3be8e19646ec6ae99de0a1de9d30f031e51fa1`  
		Last Modified: Fri, 22 Feb 2019 02:16:09 GMT  
		Size: 25.9 KB (25923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6aea3f694ed67a521fa8cebb2bc336cd5026b53816b6fad46c86206af64cf31`  
		Last Modified: Fri, 22 Feb 2019 02:16:21 GMT  
		Size: 124.0 MB (123981518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3103ecfb9ef8ee7e0d406c3ced49bfcb36e03ac7ff53079f733c968dcee3e4fa`  
		Last Modified: Fri, 22 Feb 2019 02:16:09 GMT  
		Size: 448.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:438b8e1584f9b453746eaea84821501db78629dd67ecb83b15d1c3838c834257`  
		Last Modified: Fri, 22 Feb 2019 02:16:09 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.5.5-alpine` - linux; arm variant v6

```console
$ docker pull convertigo@sha256:dc60bebe9ffb997a67fc728f9e52bb26cc981d02157b7a38266704b418976722
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.9 MB (197868532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:583228f101e53a35c5dcb1ee9e891a26e6beb78f4da731d424304d1ac44a0f0e`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:09:14 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 09:09:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 09:09:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 09:09:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 09:09:34 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 09:09:35 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 09:09:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Feb 2019 08:58:39 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 07 Feb 2019 08:58:39 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Feb 2019 08:58:41 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 07 Feb 2019 08:58:41 GMT
WORKDIR /usr/local/tomcat
# Thu, 07 Feb 2019 08:58:41 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 07 Feb 2019 08:58:42 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 07 Feb 2019 08:58:42 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 07 Feb 2019 08:58:42 GMT
ENV TOMCAT_MAJOR=7
# Fri, 22 Feb 2019 09:36:42 GMT
ENV TOMCAT_VERSION=7.0.93
# Fri, 22 Feb 2019 09:36:43 GMT
ENV TOMCAT_SHA512=7ae5186f63df7821b7de4e4c92780a27ccc678119614ad074349c3d02bd2f764ac08fa72f776e880e98aad2617de01521eb3de6fe57e4a749c8c04f28e042f0a
# Fri, 22 Feb 2019 09:36:43 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz
# Fri, 22 Feb 2019 09:36:44 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc
# Fri, 22 Feb 2019 09:37:02 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Fri, 22 Feb 2019 09:37:07 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 22 Feb 2019 09:37:08 GMT
EXPOSE 8080
# Fri, 22 Feb 2019 09:37:08 GMT
CMD ["catalina.sh" "run"]
# Fri, 22 Feb 2019 09:53:18 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Fri, 22 Feb 2019 09:53:19 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 22 Feb 2019 09:53:20 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 22 Feb 2019 09:53:21 GMT
WORKDIR /usr/local/tomcat
# Fri, 22 Feb 2019 09:53:23 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Fri, 22 Feb 2019 09:53:24 GMT
ENV GOSU_VERSION=1.10
# Fri, 22 Feb 2019 09:53:24 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 22 Feb 2019 09:53:25 GMT
ENV TINI_VERSION=0.17.0
# Fri, 22 Feb 2019 09:53:25 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Fri, 22 Feb 2019 09:53:29 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && pkill -9 gpg-agent   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Fri, 22 Feb 2019 09:53:31 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Fri, 22 Feb 2019 09:53:32 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Fri, 22 Feb 2019 09:53:32 GMT
ENV CONVERTIGO_VERSION=7.5.5
# Fri, 22 Feb 2019 09:53:33 GMT
ENV CONVERTIGO_REVISION=45010
# Fri, 22 Feb 2019 09:53:33 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.5/convertigo-7.5.5-v45010-linux32.war
# Fri, 22 Feb 2019 09:53:34 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Fri, 22 Feb 2019 09:54:42 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && pkill -9 gpg-agent     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Fri, 22 Feb 2019 09:54:44 GMT
COPY file:469acf91c0f583e35a3bcf1ac9d684cb7ff494dab17d41517be8cd24e5e49646 in webapps/ROOT/index.html 
# Fri, 22 Feb 2019 09:54:44 GMT
COPY file:42593bf6b5b6f7097adcf68ab4c5a9e42d6241e711a56df31d8671d239932d3c in / 
# Fri, 22 Feb 2019 09:54:44 GMT
WORKDIR /workspace
# Fri, 22 Feb 2019 09:54:45 GMT
VOLUME [/workspace]
# Fri, 22 Feb 2019 09:54:45 GMT
EXPOSE 28080
# Fri, 22 Feb 2019 09:54:46 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Fri, 22 Feb 2019 09:54:46 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:598092653ce578dc5f1728020fc7cea202bfd7c3694e321c61bdd914e0a1f5ec`  
		Last Modified: Wed, 06 Feb 2019 09:10:30 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a4f55d20a64c757c23b9e9b1382fa744e666c57cb22ae208fa26f8724585c2`  
		Last Modified: Wed, 06 Feb 2019 09:11:13 GMT  
		Size: 52.3 MB (52316622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e68384a4b0c4a4ad6903222918f44f5cef5aab617b16f2e4e908ffd8ff8284`  
		Last Modified: Thu, 07 Feb 2019 09:01:28 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbba9313cc48378b24e23639cb9cdb2a4256b0bb2ef8adde367d9ea0d431d7c7`  
		Last Modified: Fri, 22 Feb 2019 09:37:48 GMT  
		Size: 12.2 MB (12167577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f814ecaa1282b4d36a6013d25e097f4b5617b54e84895a97528f50d270c90f7`  
		Last Modified: Fri, 22 Feb 2019 09:37:45 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf3b61501bebb82eb40d6f5bcda6df6a270cb0f1f24f78b403f19d010e27012`  
		Last Modified: Fri, 22 Feb 2019 09:56:15 GMT  
		Size: 6.0 MB (6015872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602d7d5c3b2f21707d22fe7a881dfaa2227420ae9881af390eebb8d699020685`  
		Last Modified: Fri, 22 Feb 2019 09:56:13 GMT  
		Size: 816.7 KB (816653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cf118536215c0212de54ca7ad182003ce2332e22f41dd4c3482e5974f5e9fd`  
		Last Modified: Fri, 22 Feb 2019 09:56:11 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c694910162f998a7e14d73809e753e063efc5a962f85b2feded5b637ac6952b2`  
		Last Modified: Fri, 22 Feb 2019 09:56:11 GMT  
		Size: 25.9 KB (25919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e255b3ea3b4e11092a9afb39380c065b9ed67a7274f59cc30aa1f8355deeefb`  
		Last Modified: Fri, 22 Feb 2019 09:56:31 GMT  
		Size: 124.0 MB (123981521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c786daa2982854cf91a54458bb132d9ae4796769e7066e38030462a8727efcb`  
		Last Modified: Fri, 22 Feb 2019 09:56:12 GMT  
		Size: 447.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03461d80077921954f55bd4206715e60aa2d130e7752847df5b406b130b68fc9`  
		Last Modified: Fri, 22 Feb 2019 09:56:11 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.5.5-alpine` - linux; arm64 variant v8

```console
$ docker pull convertigo@sha256:49adc2aaf9fb1cb5d304089e4a888a2c78211228b4c201302458bc183380c66b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.1 MB (201061392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8981170bf91370eaaa29a96bae2a80eaac7fb6ae35b0a30b12664877c1c0b055`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 12:20:55 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 12:21:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 12:31:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 12:32:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 12:32:04 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 12:32:07 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 12:32:21 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 06 Feb 2019 19:35:05 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 06 Feb 2019 19:35:06 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 19:35:11 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 06 Feb 2019 19:35:12 GMT
WORKDIR /usr/local/tomcat
# Wed, 06 Feb 2019 19:35:13 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 06 Feb 2019 19:35:15 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 06 Feb 2019 19:35:17 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 06 Feb 2019 19:35:18 GMT
ENV TOMCAT_MAJOR=7
# Fri, 22 Feb 2019 13:16:37 GMT
ENV TOMCAT_VERSION=7.0.93
# Fri, 22 Feb 2019 13:16:38 GMT
ENV TOMCAT_SHA512=7ae5186f63df7821b7de4e4c92780a27ccc678119614ad074349c3d02bd2f764ac08fa72f776e880e98aad2617de01521eb3de6fe57e4a749c8c04f28e042f0a
# Fri, 22 Feb 2019 13:16:39 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz
# Fri, 22 Feb 2019 13:16:41 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc
# Fri, 22 Feb 2019 13:17:32 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Fri, 22 Feb 2019 13:17:50 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 22 Feb 2019 13:17:51 GMT
EXPOSE 8080
# Fri, 22 Feb 2019 13:17:51 GMT
CMD ["catalina.sh" "run"]
# Fri, 22 Feb 2019 14:49:58 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Fri, 22 Feb 2019 14:49:59 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 22 Feb 2019 14:50:02 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 22 Feb 2019 14:50:03 GMT
WORKDIR /usr/local/tomcat
# Fri, 22 Feb 2019 14:50:09 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Fri, 22 Feb 2019 14:50:10 GMT
ENV GOSU_VERSION=1.10
# Fri, 22 Feb 2019 14:50:11 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 22 Feb 2019 14:50:12 GMT
ENV TINI_VERSION=0.17.0
# Fri, 22 Feb 2019 14:50:14 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Fri, 22 Feb 2019 14:50:22 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && pkill -9 gpg-agent   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Fri, 22 Feb 2019 14:50:26 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Fri, 22 Feb 2019 14:50:30 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Fri, 22 Feb 2019 14:50:31 GMT
ENV CONVERTIGO_VERSION=7.5.5
# Fri, 22 Feb 2019 14:50:32 GMT
ENV CONVERTIGO_REVISION=45010
# Fri, 22 Feb 2019 14:50:33 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.5/convertigo-7.5.5-v45010-linux32.war
# Fri, 22 Feb 2019 14:50:34 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Fri, 22 Feb 2019 14:51:44 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && pkill -9 gpg-agent     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Fri, 22 Feb 2019 14:51:45 GMT
COPY file:469acf91c0f583e35a3bcf1ac9d684cb7ff494dab17d41517be8cd24e5e49646 in webapps/ROOT/index.html 
# Fri, 22 Feb 2019 14:51:46 GMT
COPY file:42593bf6b5b6f7097adcf68ab4c5a9e42d6241e711a56df31d8671d239932d3c in / 
# Fri, 22 Feb 2019 14:51:47 GMT
WORKDIR /workspace
# Fri, 22 Feb 2019 14:51:48 GMT
VOLUME [/workspace]
# Fri, 22 Feb 2019 14:51:49 GMT
EXPOSE 28080
# Fri, 22 Feb 2019 14:51:50 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Fri, 22 Feb 2019 14:51:52 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4dbd37ccf7cb48097dfc245c4c6f892eaf16d2ad47a0478302cf24d0a74911`  
		Last Modified: Wed, 06 Feb 2019 12:42:42 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a4c22261364cc479c308d041f6881688678f61995139006fbd24aa898f98a7f`  
		Last Modified: Wed, 06 Feb 2019 12:45:02 GMT  
		Size: 54.9 MB (54863256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b987ed0c11c2544e430e5c49436dcb146a96cff69775fe85010dd04a2003780`  
		Last Modified: Wed, 06 Feb 2019 20:23:11 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51750fcfc9487223765eaf43a59728ada8353459e566c775fa58c71b8108c4e`  
		Last Modified: Fri, 22 Feb 2019 13:20:31 GMT  
		Size: 12.3 MB (12330174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068c53404a2ee3bd88efde124837e9a3d973ce8688437b68dc92e87d8f5a4fec`  
		Last Modified: Fri, 22 Feb 2019 13:20:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e7ebbd7be2edc36e01e7e94e703f440854a1a937dff8a21e14c9314c5b4726`  
		Last Modified: Fri, 22 Feb 2019 14:55:29 GMT  
		Size: 6.3 MB (6317447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887f5a1149856f691c17969ceefad92dabc9cdbdbc08d54381aeb57b3c4f8ac0`  
		Last Modified: Fri, 22 Feb 2019 14:55:27 GMT  
		Size: 851.7 KB (851727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543941a94bf7dc8627d1d1f00d59baa7213126f26fb2d8b5c8fd77c61b4cfbcb`  
		Last Modified: Fri, 22 Feb 2019 14:55:25 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15813030d988f417bdd9b72640e15b099977397955d8ca0c1894b099a4a9f8d8`  
		Last Modified: Fri, 22 Feb 2019 14:55:24 GMT  
		Size: 25.9 KB (25931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:118feafb542c2ec15b90e7fac16c7a7418a5c5b78fb013edbcba1f618e79cc7e`  
		Last Modified: Fri, 22 Feb 2019 14:55:45 GMT  
		Size: 124.0 MB (123981439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e1ddef9ea3de9e8ba1c2456e2ed0ee68348c534c5609924394ba47b2d231f49`  
		Last Modified: Fri, 22 Feb 2019 14:55:24 GMT  
		Size: 455.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952ff55852409f13fd348a8f5b95745c48f8e5e142808c2ce8ec0c1fd0121b3d`  
		Last Modified: Fri, 22 Feb 2019 14:55:25 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.5.5-alpine` - linux; 386

```console
$ docker pull convertigo@sha256:92491b6de18435671f38a1b1704300782e44f811814c6afe3dee4535bfe3520f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.2 MB (202220970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a3240711b8d0adf44ac2095862205d8d4d95ac5efa59ce5704b8e561fb73291`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Thu, 31 Jan 2019 11:38:57 GMT
ADD file:738a04760a9f9a1cd919954db42a0da78c644e7024240160c54723bf1dd479e9 in / 
# Thu, 31 Jan 2019 11:38:57 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 11:38:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 13:21:09 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 13:21:11 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 13:22:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 13:22:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 13:22:08 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 13:22:08 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 13:22:13 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Feb 2019 00:38:21 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 07 Feb 2019 00:38:21 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Feb 2019 00:38:22 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 07 Feb 2019 00:38:22 GMT
WORKDIR /usr/local/tomcat
# Thu, 07 Feb 2019 00:38:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 07 Feb 2019 00:38:23 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 07 Feb 2019 00:38:23 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 07 Feb 2019 00:38:23 GMT
ENV TOMCAT_MAJOR=7
# Thu, 07 Feb 2019 00:38:23 GMT
ENV TOMCAT_VERSION=7.0.92
# Thu, 07 Feb 2019 00:38:23 GMT
ENV TOMCAT_SHA512=e5e17ea68956df5d4c220f2e2891953b362b4fadd391f7cb9bc00d86986aa2e2499176d59c393f41db9ab3e0d7f1ab492a881f85c6650514a7f02f047d4eb2b0
# Thu, 07 Feb 2019 00:38:24 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz
# Thu, 07 Feb 2019 00:38:24 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc
# Thu, 07 Feb 2019 00:38:39 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 07 Feb 2019 00:38:42 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 07 Feb 2019 00:38:42 GMT
EXPOSE 8080
# Thu, 07 Feb 2019 00:38:42 GMT
CMD ["catalina.sh" "run"]
# Thu, 07 Feb 2019 11:25:58 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Thu, 07 Feb 2019 11:25:58 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 07 Feb 2019 11:25:59 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 07 Feb 2019 11:25:59 GMT
WORKDIR /usr/local/tomcat
# Thu, 07 Feb 2019 11:26:00 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Thu, 07 Feb 2019 11:26:01 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Feb 2019 11:26:01 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 07 Feb 2019 11:26:01 GMT
ENV TINI_VERSION=0.17.0
# Thu, 07 Feb 2019 11:26:01 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Thu, 07 Feb 2019 11:26:04 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && pkill -9 gpg-agent   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Thu, 07 Feb 2019 11:26:04 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Thu, 07 Feb 2019 11:26:05 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Thu, 07 Feb 2019 11:26:05 GMT
ENV CONVERTIGO_VERSION=7.5.5
# Thu, 07 Feb 2019 11:26:06 GMT
ENV CONVERTIGO_REVISION=45010
# Thu, 07 Feb 2019 11:26:06 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.5/convertigo-7.5.5-v45010-linux32.war
# Thu, 07 Feb 2019 11:26:06 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Thu, 07 Feb 2019 11:26:17 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && pkill -9 gpg-agent     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Thu, 07 Feb 2019 11:26:17 GMT
COPY file:469acf91c0f583e35a3bcf1ac9d684cb7ff494dab17d41517be8cd24e5e49646 in webapps/ROOT/index.html 
# Thu, 07 Feb 2019 11:26:17 GMT
COPY file:42593bf6b5b6f7097adcf68ab4c5a9e42d6241e711a56df31d8671d239932d3c in / 
# Thu, 07 Feb 2019 11:26:17 GMT
WORKDIR /workspace
# Thu, 07 Feb 2019 11:26:18 GMT
VOLUME [/workspace]
# Thu, 07 Feb 2019 11:26:18 GMT
EXPOSE 28080
# Thu, 07 Feb 2019 11:26:18 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Thu, 07 Feb 2019 11:26:18 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:bcb4f889a459d231e71d88c93174eec5edef928ab1e2481f8b0074076ee934a6`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 2.7 MB (2749336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4099db9edcf638f20df22a899890483f7c152af59ca7a2de9c3b24c53c509e7`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce0f3d3b48a17ae1a2bcad376e638afbdf982a8d5949595c2e4a4007f4db3d0c`  
		Last Modified: Wed, 06 Feb 2019 13:42:46 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f750ad7f5e8d95553682c05697501d8d94a636946715800825169fb5974036`  
		Last Modified: Wed, 06 Feb 2019 13:43:57 GMT  
		Size: 55.6 MB (55551309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c17b1140f29f7ca09d03b29cd5d669c8c289e7aaf4f8a8058db7618a086db9`  
		Last Modified: Thu, 07 Feb 2019 00:47:34 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8a506919cd8a6563bff09f28359494044069115e92c8120ff87be09678680a`  
		Last Modified: Thu, 07 Feb 2019 00:47:40 GMT  
		Size: 12.3 MB (12254202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e194cd556a44d4a58cca1eeae22fc8e92bf256f97969028b3f34d70eeaaae36b`  
		Last Modified: Thu, 07 Feb 2019 00:47:34 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b29db2f9ae1582f32240c0fdacd64d4ae8d089ccb56035ac032d9285cc7f23`  
		Last Modified: Thu, 07 Feb 2019 11:27:36 GMT  
		Size: 6.7 MB (6748013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b813a4f34660e25d1de0033143f2d18fb323c552c8f9098830019691799efa16`  
		Last Modified: Thu, 07 Feb 2019 11:27:34 GMT  
		Size: 907.1 KB (907117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66855e71c6aa76043cfe7c14a9d256d01c0d5f3749bbe5e9bab98b81595bfbf3`  
		Last Modified: Thu, 07 Feb 2019 11:27:39 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d994cb98cb7a3bcf69bf0928a8ac2d66e96401c5e1634e1aa094dc601d6e4a13`  
		Last Modified: Thu, 07 Feb 2019 11:27:33 GMT  
		Size: 26.0 KB (25952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c442946bfdcbda14354a8ca5e2899ba64fada26edcf4fd1c5e91ce59cfba89`  
		Last Modified: Thu, 07 Feb 2019 11:27:45 GMT  
		Size: 124.0 MB (123981529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bea51e3f7de2ff427a83e730de7852ab526198926573842be06f8f46bfa4853`  
		Last Modified: Thu, 07 Feb 2019 11:27:33 GMT  
		Size: 448.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:060e8cc5c9887ffbb442bb1aef7bcba9fd95db08dba257fd148b608157fb77d3`  
		Last Modified: Thu, 07 Feb 2019 11:27:33 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `convertigo:7.5-alpine`

```console
$ docker pull convertigo@sha256:1c33ecc73f0cbb1b844315547b4cb547ed4c2e1ac1d9e1484b92b5e97589d818
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `convertigo:7.5-alpine` - linux; amd64

```console
$ docker pull convertigo@sha256:55e7927070b26e565a5d38b7189bbfcd20b9a01848b0e220b36949f6c29d6bb4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 MB (201346180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e191f2d782733e0adad11e23f622ea0b7bfdd28fb3b4bb6e1786af4c90767b98`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:39:38 GMT
ENV LANG=C.UTF-8
# Tue, 05 Feb 2019 20:39:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Feb 2019 20:39:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_VERSION=8u191
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Tue, 05 Feb 2019 20:40:03 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Feb 2019 23:13:21 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 05 Feb 2019 23:13:21 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Feb 2019 23:13:23 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 05 Feb 2019 23:13:23 GMT
WORKDIR /usr/local/tomcat
# Tue, 05 Feb 2019 23:13:24 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 05 Feb 2019 23:13:24 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 05 Feb 2019 23:13:25 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 05 Feb 2019 23:13:25 GMT
ENV TOMCAT_MAJOR=7
# Fri, 22 Feb 2019 01:41:29 GMT
ENV TOMCAT_VERSION=7.0.93
# Fri, 22 Feb 2019 01:41:29 GMT
ENV TOMCAT_SHA512=7ae5186f63df7821b7de4e4c92780a27ccc678119614ad074349c3d02bd2f764ac08fa72f776e880e98aad2617de01521eb3de6fe57e4a749c8c04f28e042f0a
# Fri, 22 Feb 2019 01:41:29 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz
# Fri, 22 Feb 2019 01:41:29 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc
# Fri, 22 Feb 2019 01:41:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Fri, 22 Feb 2019 01:41:47 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 22 Feb 2019 01:41:47 GMT
EXPOSE 8080
# Fri, 22 Feb 2019 01:41:47 GMT
CMD ["catalina.sh" "run"]
# Fri, 22 Feb 2019 02:14:25 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Fri, 22 Feb 2019 02:14:25 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 22 Feb 2019 02:14:27 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 22 Feb 2019 02:14:28 GMT
WORKDIR /usr/local/tomcat
# Fri, 22 Feb 2019 02:14:30 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Fri, 22 Feb 2019 02:14:30 GMT
ENV GOSU_VERSION=1.10
# Fri, 22 Feb 2019 02:14:30 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 22 Feb 2019 02:14:30 GMT
ENV TINI_VERSION=0.17.0
# Fri, 22 Feb 2019 02:14:31 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Fri, 22 Feb 2019 02:14:34 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && pkill -9 gpg-agent   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Fri, 22 Feb 2019 02:14:35 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Fri, 22 Feb 2019 02:14:37 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Fri, 22 Feb 2019 02:14:38 GMT
ENV CONVERTIGO_VERSION=7.5.5
# Fri, 22 Feb 2019 02:14:38 GMT
ENV CONVERTIGO_REVISION=45010
# Fri, 22 Feb 2019 02:14:38 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.5/convertigo-7.5.5-v45010-linux32.war
# Fri, 22 Feb 2019 02:14:38 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Fri, 22 Feb 2019 02:14:50 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && pkill -9 gpg-agent     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Fri, 22 Feb 2019 02:14:50 GMT
COPY file:469acf91c0f583e35a3bcf1ac9d684cb7ff494dab17d41517be8cd24e5e49646 in webapps/ROOT/index.html 
# Fri, 22 Feb 2019 02:14:50 GMT
COPY file:42593bf6b5b6f7097adcf68ab4c5a9e42d6241e711a56df31d8671d239932d3c in / 
# Fri, 22 Feb 2019 02:14:50 GMT
WORKDIR /workspace
# Fri, 22 Feb 2019 02:14:51 GMT
VOLUME [/workspace]
# Fri, 22 Feb 2019 02:14:51 GMT
EXPOSE 28080
# Fri, 22 Feb 2019 02:14:51 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Fri, 22 Feb 2019 02:14:52 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78b803852394d2b9aaa3ce93b0f2502b0bf8e063b1fa79734de0fc8ee55ee6e`  
		Last Modified: Tue, 05 Feb 2019 20:45:24 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f41fe1b6eee3555498a7e15b3bf048a7ec274302a92d0c8b34fda111c780fdcf`  
		Last Modified: Tue, 05 Feb 2019 20:45:56 GMT  
		Size: 54.9 MB (54922733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65369fd9d03ba296b96bcfcc16c03f9b39be3ccfff9aad916236581a0309282d`  
		Last Modified: Tue, 05 Feb 2019 23:15:46 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f8a9f6221d879f8f66085a6042834d7389a0fd03cddda6acf0a217999f5656e`  
		Last Modified: Fri, 22 Feb 2019 01:44:24 GMT  
		Size: 12.3 MB (12333020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0417dd3da053806909cf8746ba745d4f542eec02c2b77aa1ad659c2aea17b143`  
		Last Modified: Fri, 22 Feb 2019 01:44:22 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb4c2800548f8f701417bc40fd8ed17fc6c9dfa62126af27027337e8d9d1213a`  
		Last Modified: Fri, 22 Feb 2019 02:16:11 GMT  
		Size: 6.3 MB (6346174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26b7f3d3bc6182702e8c7af0271a14220a8e94855eb3003dad26ae2a95e3a293`  
		Last Modified: Fri, 22 Feb 2019 02:16:10 GMT  
		Size: 978.7 KB (978744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c54b488a9005c71f70f913fe5ae3b01bf9de656043167a66de6d29ae569d1ebd`  
		Last Modified: Fri, 22 Feb 2019 02:16:09 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e63157fb88c5e228320e81ff3be8e19646ec6ae99de0a1de9d30f031e51fa1`  
		Last Modified: Fri, 22 Feb 2019 02:16:09 GMT  
		Size: 25.9 KB (25923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6aea3f694ed67a521fa8cebb2bc336cd5026b53816b6fad46c86206af64cf31`  
		Last Modified: Fri, 22 Feb 2019 02:16:21 GMT  
		Size: 124.0 MB (123981518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3103ecfb9ef8ee7e0d406c3ced49bfcb36e03ac7ff53079f733c968dcee3e4fa`  
		Last Modified: Fri, 22 Feb 2019 02:16:09 GMT  
		Size: 448.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:438b8e1584f9b453746eaea84821501db78629dd67ecb83b15d1c3838c834257`  
		Last Modified: Fri, 22 Feb 2019 02:16:09 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.5-alpine` - linux; arm variant v6

```console
$ docker pull convertigo@sha256:dc60bebe9ffb997a67fc728f9e52bb26cc981d02157b7a38266704b418976722
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.9 MB (197868532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:583228f101e53a35c5dcb1ee9e891a26e6beb78f4da731d424304d1ac44a0f0e`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:09:14 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 09:09:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 09:09:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 09:09:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 09:09:34 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 09:09:35 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 09:09:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Feb 2019 08:58:39 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 07 Feb 2019 08:58:39 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Feb 2019 08:58:41 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 07 Feb 2019 08:58:41 GMT
WORKDIR /usr/local/tomcat
# Thu, 07 Feb 2019 08:58:41 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 07 Feb 2019 08:58:42 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 07 Feb 2019 08:58:42 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 07 Feb 2019 08:58:42 GMT
ENV TOMCAT_MAJOR=7
# Fri, 22 Feb 2019 09:36:42 GMT
ENV TOMCAT_VERSION=7.0.93
# Fri, 22 Feb 2019 09:36:43 GMT
ENV TOMCAT_SHA512=7ae5186f63df7821b7de4e4c92780a27ccc678119614ad074349c3d02bd2f764ac08fa72f776e880e98aad2617de01521eb3de6fe57e4a749c8c04f28e042f0a
# Fri, 22 Feb 2019 09:36:43 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz
# Fri, 22 Feb 2019 09:36:44 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc
# Fri, 22 Feb 2019 09:37:02 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Fri, 22 Feb 2019 09:37:07 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 22 Feb 2019 09:37:08 GMT
EXPOSE 8080
# Fri, 22 Feb 2019 09:37:08 GMT
CMD ["catalina.sh" "run"]
# Fri, 22 Feb 2019 09:53:18 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Fri, 22 Feb 2019 09:53:19 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 22 Feb 2019 09:53:20 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 22 Feb 2019 09:53:21 GMT
WORKDIR /usr/local/tomcat
# Fri, 22 Feb 2019 09:53:23 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Fri, 22 Feb 2019 09:53:24 GMT
ENV GOSU_VERSION=1.10
# Fri, 22 Feb 2019 09:53:24 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 22 Feb 2019 09:53:25 GMT
ENV TINI_VERSION=0.17.0
# Fri, 22 Feb 2019 09:53:25 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Fri, 22 Feb 2019 09:53:29 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && pkill -9 gpg-agent   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Fri, 22 Feb 2019 09:53:31 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Fri, 22 Feb 2019 09:53:32 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Fri, 22 Feb 2019 09:53:32 GMT
ENV CONVERTIGO_VERSION=7.5.5
# Fri, 22 Feb 2019 09:53:33 GMT
ENV CONVERTIGO_REVISION=45010
# Fri, 22 Feb 2019 09:53:33 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.5/convertigo-7.5.5-v45010-linux32.war
# Fri, 22 Feb 2019 09:53:34 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Fri, 22 Feb 2019 09:54:42 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && pkill -9 gpg-agent     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Fri, 22 Feb 2019 09:54:44 GMT
COPY file:469acf91c0f583e35a3bcf1ac9d684cb7ff494dab17d41517be8cd24e5e49646 in webapps/ROOT/index.html 
# Fri, 22 Feb 2019 09:54:44 GMT
COPY file:42593bf6b5b6f7097adcf68ab4c5a9e42d6241e711a56df31d8671d239932d3c in / 
# Fri, 22 Feb 2019 09:54:44 GMT
WORKDIR /workspace
# Fri, 22 Feb 2019 09:54:45 GMT
VOLUME [/workspace]
# Fri, 22 Feb 2019 09:54:45 GMT
EXPOSE 28080
# Fri, 22 Feb 2019 09:54:46 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Fri, 22 Feb 2019 09:54:46 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:598092653ce578dc5f1728020fc7cea202bfd7c3694e321c61bdd914e0a1f5ec`  
		Last Modified: Wed, 06 Feb 2019 09:10:30 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a4f55d20a64c757c23b9e9b1382fa744e666c57cb22ae208fa26f8724585c2`  
		Last Modified: Wed, 06 Feb 2019 09:11:13 GMT  
		Size: 52.3 MB (52316622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e68384a4b0c4a4ad6903222918f44f5cef5aab617b16f2e4e908ffd8ff8284`  
		Last Modified: Thu, 07 Feb 2019 09:01:28 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbba9313cc48378b24e23639cb9cdb2a4256b0bb2ef8adde367d9ea0d431d7c7`  
		Last Modified: Fri, 22 Feb 2019 09:37:48 GMT  
		Size: 12.2 MB (12167577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f814ecaa1282b4d36a6013d25e097f4b5617b54e84895a97528f50d270c90f7`  
		Last Modified: Fri, 22 Feb 2019 09:37:45 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf3b61501bebb82eb40d6f5bcda6df6a270cb0f1f24f78b403f19d010e27012`  
		Last Modified: Fri, 22 Feb 2019 09:56:15 GMT  
		Size: 6.0 MB (6015872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602d7d5c3b2f21707d22fe7a881dfaa2227420ae9881af390eebb8d699020685`  
		Last Modified: Fri, 22 Feb 2019 09:56:13 GMT  
		Size: 816.7 KB (816653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cf118536215c0212de54ca7ad182003ce2332e22f41dd4c3482e5974f5e9fd`  
		Last Modified: Fri, 22 Feb 2019 09:56:11 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c694910162f998a7e14d73809e753e063efc5a962f85b2feded5b637ac6952b2`  
		Last Modified: Fri, 22 Feb 2019 09:56:11 GMT  
		Size: 25.9 KB (25919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e255b3ea3b4e11092a9afb39380c065b9ed67a7274f59cc30aa1f8355deeefb`  
		Last Modified: Fri, 22 Feb 2019 09:56:31 GMT  
		Size: 124.0 MB (123981521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c786daa2982854cf91a54458bb132d9ae4796769e7066e38030462a8727efcb`  
		Last Modified: Fri, 22 Feb 2019 09:56:12 GMT  
		Size: 447.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03461d80077921954f55bd4206715e60aa2d130e7752847df5b406b130b68fc9`  
		Last Modified: Fri, 22 Feb 2019 09:56:11 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.5-alpine` - linux; arm64 variant v8

```console
$ docker pull convertigo@sha256:49adc2aaf9fb1cb5d304089e4a888a2c78211228b4c201302458bc183380c66b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.1 MB (201061392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8981170bf91370eaaa29a96bae2a80eaac7fb6ae35b0a30b12664877c1c0b055`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 12:20:55 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 12:21:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 12:31:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 12:32:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 12:32:04 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 12:32:07 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 12:32:21 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 06 Feb 2019 19:35:05 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 06 Feb 2019 19:35:06 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 19:35:11 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 06 Feb 2019 19:35:12 GMT
WORKDIR /usr/local/tomcat
# Wed, 06 Feb 2019 19:35:13 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 06 Feb 2019 19:35:15 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 06 Feb 2019 19:35:17 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 06 Feb 2019 19:35:18 GMT
ENV TOMCAT_MAJOR=7
# Fri, 22 Feb 2019 13:16:37 GMT
ENV TOMCAT_VERSION=7.0.93
# Fri, 22 Feb 2019 13:16:38 GMT
ENV TOMCAT_SHA512=7ae5186f63df7821b7de4e4c92780a27ccc678119614ad074349c3d02bd2f764ac08fa72f776e880e98aad2617de01521eb3de6fe57e4a749c8c04f28e042f0a
# Fri, 22 Feb 2019 13:16:39 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz
# Fri, 22 Feb 2019 13:16:41 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc
# Fri, 22 Feb 2019 13:17:32 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Fri, 22 Feb 2019 13:17:50 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 22 Feb 2019 13:17:51 GMT
EXPOSE 8080
# Fri, 22 Feb 2019 13:17:51 GMT
CMD ["catalina.sh" "run"]
# Fri, 22 Feb 2019 14:49:58 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Fri, 22 Feb 2019 14:49:59 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 22 Feb 2019 14:50:02 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 22 Feb 2019 14:50:03 GMT
WORKDIR /usr/local/tomcat
# Fri, 22 Feb 2019 14:50:09 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Fri, 22 Feb 2019 14:50:10 GMT
ENV GOSU_VERSION=1.10
# Fri, 22 Feb 2019 14:50:11 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 22 Feb 2019 14:50:12 GMT
ENV TINI_VERSION=0.17.0
# Fri, 22 Feb 2019 14:50:14 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Fri, 22 Feb 2019 14:50:22 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && pkill -9 gpg-agent   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Fri, 22 Feb 2019 14:50:26 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Fri, 22 Feb 2019 14:50:30 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Fri, 22 Feb 2019 14:50:31 GMT
ENV CONVERTIGO_VERSION=7.5.5
# Fri, 22 Feb 2019 14:50:32 GMT
ENV CONVERTIGO_REVISION=45010
# Fri, 22 Feb 2019 14:50:33 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.5/convertigo-7.5.5-v45010-linux32.war
# Fri, 22 Feb 2019 14:50:34 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Fri, 22 Feb 2019 14:51:44 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && pkill -9 gpg-agent     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Fri, 22 Feb 2019 14:51:45 GMT
COPY file:469acf91c0f583e35a3bcf1ac9d684cb7ff494dab17d41517be8cd24e5e49646 in webapps/ROOT/index.html 
# Fri, 22 Feb 2019 14:51:46 GMT
COPY file:42593bf6b5b6f7097adcf68ab4c5a9e42d6241e711a56df31d8671d239932d3c in / 
# Fri, 22 Feb 2019 14:51:47 GMT
WORKDIR /workspace
# Fri, 22 Feb 2019 14:51:48 GMT
VOLUME [/workspace]
# Fri, 22 Feb 2019 14:51:49 GMT
EXPOSE 28080
# Fri, 22 Feb 2019 14:51:50 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Fri, 22 Feb 2019 14:51:52 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4dbd37ccf7cb48097dfc245c4c6f892eaf16d2ad47a0478302cf24d0a74911`  
		Last Modified: Wed, 06 Feb 2019 12:42:42 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a4c22261364cc479c308d041f6881688678f61995139006fbd24aa898f98a7f`  
		Last Modified: Wed, 06 Feb 2019 12:45:02 GMT  
		Size: 54.9 MB (54863256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b987ed0c11c2544e430e5c49436dcb146a96cff69775fe85010dd04a2003780`  
		Last Modified: Wed, 06 Feb 2019 20:23:11 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51750fcfc9487223765eaf43a59728ada8353459e566c775fa58c71b8108c4e`  
		Last Modified: Fri, 22 Feb 2019 13:20:31 GMT  
		Size: 12.3 MB (12330174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068c53404a2ee3bd88efde124837e9a3d973ce8688437b68dc92e87d8f5a4fec`  
		Last Modified: Fri, 22 Feb 2019 13:20:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e7ebbd7be2edc36e01e7e94e703f440854a1a937dff8a21e14c9314c5b4726`  
		Last Modified: Fri, 22 Feb 2019 14:55:29 GMT  
		Size: 6.3 MB (6317447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887f5a1149856f691c17969ceefad92dabc9cdbdbc08d54381aeb57b3c4f8ac0`  
		Last Modified: Fri, 22 Feb 2019 14:55:27 GMT  
		Size: 851.7 KB (851727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543941a94bf7dc8627d1d1f00d59baa7213126f26fb2d8b5c8fd77c61b4cfbcb`  
		Last Modified: Fri, 22 Feb 2019 14:55:25 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15813030d988f417bdd9b72640e15b099977397955d8ca0c1894b099a4a9f8d8`  
		Last Modified: Fri, 22 Feb 2019 14:55:24 GMT  
		Size: 25.9 KB (25931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:118feafb542c2ec15b90e7fac16c7a7418a5c5b78fb013edbcba1f618e79cc7e`  
		Last Modified: Fri, 22 Feb 2019 14:55:45 GMT  
		Size: 124.0 MB (123981439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e1ddef9ea3de9e8ba1c2456e2ed0ee68348c534c5609924394ba47b2d231f49`  
		Last Modified: Fri, 22 Feb 2019 14:55:24 GMT  
		Size: 455.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952ff55852409f13fd348a8f5b95745c48f8e5e142808c2ce8ec0c1fd0121b3d`  
		Last Modified: Fri, 22 Feb 2019 14:55:25 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:7.5-alpine` - linux; 386

```console
$ docker pull convertigo@sha256:92491b6de18435671f38a1b1704300782e44f811814c6afe3dee4535bfe3520f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.2 MB (202220970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a3240711b8d0adf44ac2095862205d8d4d95ac5efa59ce5704b8e561fb73291`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Thu, 31 Jan 2019 11:38:57 GMT
ADD file:738a04760a9f9a1cd919954db42a0da78c644e7024240160c54723bf1dd479e9 in / 
# Thu, 31 Jan 2019 11:38:57 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 11:38:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 13:21:09 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 13:21:11 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 13:22:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 13:22:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 13:22:08 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 13:22:08 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 13:22:13 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Feb 2019 00:38:21 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 07 Feb 2019 00:38:21 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Feb 2019 00:38:22 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 07 Feb 2019 00:38:22 GMT
WORKDIR /usr/local/tomcat
# Thu, 07 Feb 2019 00:38:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 07 Feb 2019 00:38:23 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 07 Feb 2019 00:38:23 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 07 Feb 2019 00:38:23 GMT
ENV TOMCAT_MAJOR=7
# Thu, 07 Feb 2019 00:38:23 GMT
ENV TOMCAT_VERSION=7.0.92
# Thu, 07 Feb 2019 00:38:23 GMT
ENV TOMCAT_SHA512=e5e17ea68956df5d4c220f2e2891953b362b4fadd391f7cb9bc00d86986aa2e2499176d59c393f41db9ab3e0d7f1ab492a881f85c6650514a7f02f047d4eb2b0
# Thu, 07 Feb 2019 00:38:24 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz
# Thu, 07 Feb 2019 00:38:24 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc
# Thu, 07 Feb 2019 00:38:39 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 07 Feb 2019 00:38:42 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 07 Feb 2019 00:38:42 GMT
EXPOSE 8080
# Thu, 07 Feb 2019 00:38:42 GMT
CMD ["catalina.sh" "run"]
# Thu, 07 Feb 2019 11:25:58 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Thu, 07 Feb 2019 11:25:58 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 07 Feb 2019 11:25:59 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 07 Feb 2019 11:25:59 GMT
WORKDIR /usr/local/tomcat
# Thu, 07 Feb 2019 11:26:00 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Thu, 07 Feb 2019 11:26:01 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Feb 2019 11:26:01 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 07 Feb 2019 11:26:01 GMT
ENV TINI_VERSION=0.17.0
# Thu, 07 Feb 2019 11:26:01 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Thu, 07 Feb 2019 11:26:04 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && pkill -9 gpg-agent   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Thu, 07 Feb 2019 11:26:04 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Thu, 07 Feb 2019 11:26:05 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Thu, 07 Feb 2019 11:26:05 GMT
ENV CONVERTIGO_VERSION=7.5.5
# Thu, 07 Feb 2019 11:26:06 GMT
ENV CONVERTIGO_REVISION=45010
# Thu, 07 Feb 2019 11:26:06 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.5/convertigo-7.5.5-v45010-linux32.war
# Thu, 07 Feb 2019 11:26:06 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Thu, 07 Feb 2019 11:26:17 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && pkill -9 gpg-agent     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Thu, 07 Feb 2019 11:26:17 GMT
COPY file:469acf91c0f583e35a3bcf1ac9d684cb7ff494dab17d41517be8cd24e5e49646 in webapps/ROOT/index.html 
# Thu, 07 Feb 2019 11:26:17 GMT
COPY file:42593bf6b5b6f7097adcf68ab4c5a9e42d6241e711a56df31d8671d239932d3c in / 
# Thu, 07 Feb 2019 11:26:17 GMT
WORKDIR /workspace
# Thu, 07 Feb 2019 11:26:18 GMT
VOLUME [/workspace]
# Thu, 07 Feb 2019 11:26:18 GMT
EXPOSE 28080
# Thu, 07 Feb 2019 11:26:18 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Thu, 07 Feb 2019 11:26:18 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:bcb4f889a459d231e71d88c93174eec5edef928ab1e2481f8b0074076ee934a6`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 2.7 MB (2749336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4099db9edcf638f20df22a899890483f7c152af59ca7a2de9c3b24c53c509e7`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce0f3d3b48a17ae1a2bcad376e638afbdf982a8d5949595c2e4a4007f4db3d0c`  
		Last Modified: Wed, 06 Feb 2019 13:42:46 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f750ad7f5e8d95553682c05697501d8d94a636946715800825169fb5974036`  
		Last Modified: Wed, 06 Feb 2019 13:43:57 GMT  
		Size: 55.6 MB (55551309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c17b1140f29f7ca09d03b29cd5d669c8c289e7aaf4f8a8058db7618a086db9`  
		Last Modified: Thu, 07 Feb 2019 00:47:34 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8a506919cd8a6563bff09f28359494044069115e92c8120ff87be09678680a`  
		Last Modified: Thu, 07 Feb 2019 00:47:40 GMT  
		Size: 12.3 MB (12254202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e194cd556a44d4a58cca1eeae22fc8e92bf256f97969028b3f34d70eeaaae36b`  
		Last Modified: Thu, 07 Feb 2019 00:47:34 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b29db2f9ae1582f32240c0fdacd64d4ae8d089ccb56035ac032d9285cc7f23`  
		Last Modified: Thu, 07 Feb 2019 11:27:36 GMT  
		Size: 6.7 MB (6748013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b813a4f34660e25d1de0033143f2d18fb323c552c8f9098830019691799efa16`  
		Last Modified: Thu, 07 Feb 2019 11:27:34 GMT  
		Size: 907.1 KB (907117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66855e71c6aa76043cfe7c14a9d256d01c0d5f3749bbe5e9bab98b81595bfbf3`  
		Last Modified: Thu, 07 Feb 2019 11:27:39 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d994cb98cb7a3bcf69bf0928a8ac2d66e96401c5e1634e1aa094dc601d6e4a13`  
		Last Modified: Thu, 07 Feb 2019 11:27:33 GMT  
		Size: 26.0 KB (25952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c442946bfdcbda14354a8ca5e2899ba64fada26edcf4fd1c5e91ce59cfba89`  
		Last Modified: Thu, 07 Feb 2019 11:27:45 GMT  
		Size: 124.0 MB (123981529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bea51e3f7de2ff427a83e730de7852ab526198926573842be06f8f46bfa4853`  
		Last Modified: Thu, 07 Feb 2019 11:27:33 GMT  
		Size: 448.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:060e8cc5c9887ffbb442bb1aef7bcba9fd95db08dba257fd148b608157fb77d3`  
		Last Modified: Thu, 07 Feb 2019 11:27:33 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `convertigo:alpine`

```console
$ docker pull convertigo@sha256:1c33ecc73f0cbb1b844315547b4cb547ed4c2e1ac1d9e1484b92b5e97589d818
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `convertigo:alpine` - linux; amd64

```console
$ docker pull convertigo@sha256:55e7927070b26e565a5d38b7189bbfcd20b9a01848b0e220b36949f6c29d6bb4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 MB (201346180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e191f2d782733e0adad11e23f622ea0b7bfdd28fb3b4bb6e1786af4c90767b98`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:39:38 GMT
ENV LANG=C.UTF-8
# Tue, 05 Feb 2019 20:39:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Feb 2019 20:39:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_VERSION=8u191
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Tue, 05 Feb 2019 20:40:03 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Feb 2019 23:13:21 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 05 Feb 2019 23:13:21 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Feb 2019 23:13:23 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 05 Feb 2019 23:13:23 GMT
WORKDIR /usr/local/tomcat
# Tue, 05 Feb 2019 23:13:24 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 05 Feb 2019 23:13:24 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 05 Feb 2019 23:13:25 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 05 Feb 2019 23:13:25 GMT
ENV TOMCAT_MAJOR=7
# Fri, 22 Feb 2019 01:41:29 GMT
ENV TOMCAT_VERSION=7.0.93
# Fri, 22 Feb 2019 01:41:29 GMT
ENV TOMCAT_SHA512=7ae5186f63df7821b7de4e4c92780a27ccc678119614ad074349c3d02bd2f764ac08fa72f776e880e98aad2617de01521eb3de6fe57e4a749c8c04f28e042f0a
# Fri, 22 Feb 2019 01:41:29 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz
# Fri, 22 Feb 2019 01:41:29 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc
# Fri, 22 Feb 2019 01:41:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Fri, 22 Feb 2019 01:41:47 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 22 Feb 2019 01:41:47 GMT
EXPOSE 8080
# Fri, 22 Feb 2019 01:41:47 GMT
CMD ["catalina.sh" "run"]
# Fri, 22 Feb 2019 02:14:25 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Fri, 22 Feb 2019 02:14:25 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 22 Feb 2019 02:14:27 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 22 Feb 2019 02:14:28 GMT
WORKDIR /usr/local/tomcat
# Fri, 22 Feb 2019 02:14:30 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Fri, 22 Feb 2019 02:14:30 GMT
ENV GOSU_VERSION=1.10
# Fri, 22 Feb 2019 02:14:30 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 22 Feb 2019 02:14:30 GMT
ENV TINI_VERSION=0.17.0
# Fri, 22 Feb 2019 02:14:31 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Fri, 22 Feb 2019 02:14:34 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && pkill -9 gpg-agent   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Fri, 22 Feb 2019 02:14:35 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Fri, 22 Feb 2019 02:14:37 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Fri, 22 Feb 2019 02:14:38 GMT
ENV CONVERTIGO_VERSION=7.5.5
# Fri, 22 Feb 2019 02:14:38 GMT
ENV CONVERTIGO_REVISION=45010
# Fri, 22 Feb 2019 02:14:38 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.5/convertigo-7.5.5-v45010-linux32.war
# Fri, 22 Feb 2019 02:14:38 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Fri, 22 Feb 2019 02:14:50 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && pkill -9 gpg-agent     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Fri, 22 Feb 2019 02:14:50 GMT
COPY file:469acf91c0f583e35a3bcf1ac9d684cb7ff494dab17d41517be8cd24e5e49646 in webapps/ROOT/index.html 
# Fri, 22 Feb 2019 02:14:50 GMT
COPY file:42593bf6b5b6f7097adcf68ab4c5a9e42d6241e711a56df31d8671d239932d3c in / 
# Fri, 22 Feb 2019 02:14:50 GMT
WORKDIR /workspace
# Fri, 22 Feb 2019 02:14:51 GMT
VOLUME [/workspace]
# Fri, 22 Feb 2019 02:14:51 GMT
EXPOSE 28080
# Fri, 22 Feb 2019 02:14:51 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Fri, 22 Feb 2019 02:14:52 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78b803852394d2b9aaa3ce93b0f2502b0bf8e063b1fa79734de0fc8ee55ee6e`  
		Last Modified: Tue, 05 Feb 2019 20:45:24 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f41fe1b6eee3555498a7e15b3bf048a7ec274302a92d0c8b34fda111c780fdcf`  
		Last Modified: Tue, 05 Feb 2019 20:45:56 GMT  
		Size: 54.9 MB (54922733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65369fd9d03ba296b96bcfcc16c03f9b39be3ccfff9aad916236581a0309282d`  
		Last Modified: Tue, 05 Feb 2019 23:15:46 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f8a9f6221d879f8f66085a6042834d7389a0fd03cddda6acf0a217999f5656e`  
		Last Modified: Fri, 22 Feb 2019 01:44:24 GMT  
		Size: 12.3 MB (12333020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0417dd3da053806909cf8746ba745d4f542eec02c2b77aa1ad659c2aea17b143`  
		Last Modified: Fri, 22 Feb 2019 01:44:22 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb4c2800548f8f701417bc40fd8ed17fc6c9dfa62126af27027337e8d9d1213a`  
		Last Modified: Fri, 22 Feb 2019 02:16:11 GMT  
		Size: 6.3 MB (6346174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26b7f3d3bc6182702e8c7af0271a14220a8e94855eb3003dad26ae2a95e3a293`  
		Last Modified: Fri, 22 Feb 2019 02:16:10 GMT  
		Size: 978.7 KB (978744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c54b488a9005c71f70f913fe5ae3b01bf9de656043167a66de6d29ae569d1ebd`  
		Last Modified: Fri, 22 Feb 2019 02:16:09 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e63157fb88c5e228320e81ff3be8e19646ec6ae99de0a1de9d30f031e51fa1`  
		Last Modified: Fri, 22 Feb 2019 02:16:09 GMT  
		Size: 25.9 KB (25923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6aea3f694ed67a521fa8cebb2bc336cd5026b53816b6fad46c86206af64cf31`  
		Last Modified: Fri, 22 Feb 2019 02:16:21 GMT  
		Size: 124.0 MB (123981518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3103ecfb9ef8ee7e0d406c3ced49bfcb36e03ac7ff53079f733c968dcee3e4fa`  
		Last Modified: Fri, 22 Feb 2019 02:16:09 GMT  
		Size: 448.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:438b8e1584f9b453746eaea84821501db78629dd67ecb83b15d1c3838c834257`  
		Last Modified: Fri, 22 Feb 2019 02:16:09 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:alpine` - linux; arm variant v6

```console
$ docker pull convertigo@sha256:dc60bebe9ffb997a67fc728f9e52bb26cc981d02157b7a38266704b418976722
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.9 MB (197868532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:583228f101e53a35c5dcb1ee9e891a26e6beb78f4da731d424304d1ac44a0f0e`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:09:14 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 09:09:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 09:09:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 09:09:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 09:09:34 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 09:09:35 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 09:09:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Feb 2019 08:58:39 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 07 Feb 2019 08:58:39 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Feb 2019 08:58:41 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 07 Feb 2019 08:58:41 GMT
WORKDIR /usr/local/tomcat
# Thu, 07 Feb 2019 08:58:41 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 07 Feb 2019 08:58:42 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 07 Feb 2019 08:58:42 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 07 Feb 2019 08:58:42 GMT
ENV TOMCAT_MAJOR=7
# Fri, 22 Feb 2019 09:36:42 GMT
ENV TOMCAT_VERSION=7.0.93
# Fri, 22 Feb 2019 09:36:43 GMT
ENV TOMCAT_SHA512=7ae5186f63df7821b7de4e4c92780a27ccc678119614ad074349c3d02bd2f764ac08fa72f776e880e98aad2617de01521eb3de6fe57e4a749c8c04f28e042f0a
# Fri, 22 Feb 2019 09:36:43 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz
# Fri, 22 Feb 2019 09:36:44 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc
# Fri, 22 Feb 2019 09:37:02 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Fri, 22 Feb 2019 09:37:07 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 22 Feb 2019 09:37:08 GMT
EXPOSE 8080
# Fri, 22 Feb 2019 09:37:08 GMT
CMD ["catalina.sh" "run"]
# Fri, 22 Feb 2019 09:53:18 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Fri, 22 Feb 2019 09:53:19 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 22 Feb 2019 09:53:20 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 22 Feb 2019 09:53:21 GMT
WORKDIR /usr/local/tomcat
# Fri, 22 Feb 2019 09:53:23 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Fri, 22 Feb 2019 09:53:24 GMT
ENV GOSU_VERSION=1.10
# Fri, 22 Feb 2019 09:53:24 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 22 Feb 2019 09:53:25 GMT
ENV TINI_VERSION=0.17.0
# Fri, 22 Feb 2019 09:53:25 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Fri, 22 Feb 2019 09:53:29 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && pkill -9 gpg-agent   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Fri, 22 Feb 2019 09:53:31 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Fri, 22 Feb 2019 09:53:32 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Fri, 22 Feb 2019 09:53:32 GMT
ENV CONVERTIGO_VERSION=7.5.5
# Fri, 22 Feb 2019 09:53:33 GMT
ENV CONVERTIGO_REVISION=45010
# Fri, 22 Feb 2019 09:53:33 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.5/convertigo-7.5.5-v45010-linux32.war
# Fri, 22 Feb 2019 09:53:34 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Fri, 22 Feb 2019 09:54:42 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && pkill -9 gpg-agent     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Fri, 22 Feb 2019 09:54:44 GMT
COPY file:469acf91c0f583e35a3bcf1ac9d684cb7ff494dab17d41517be8cd24e5e49646 in webapps/ROOT/index.html 
# Fri, 22 Feb 2019 09:54:44 GMT
COPY file:42593bf6b5b6f7097adcf68ab4c5a9e42d6241e711a56df31d8671d239932d3c in / 
# Fri, 22 Feb 2019 09:54:44 GMT
WORKDIR /workspace
# Fri, 22 Feb 2019 09:54:45 GMT
VOLUME [/workspace]
# Fri, 22 Feb 2019 09:54:45 GMT
EXPOSE 28080
# Fri, 22 Feb 2019 09:54:46 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Fri, 22 Feb 2019 09:54:46 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:598092653ce578dc5f1728020fc7cea202bfd7c3694e321c61bdd914e0a1f5ec`  
		Last Modified: Wed, 06 Feb 2019 09:10:30 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a4f55d20a64c757c23b9e9b1382fa744e666c57cb22ae208fa26f8724585c2`  
		Last Modified: Wed, 06 Feb 2019 09:11:13 GMT  
		Size: 52.3 MB (52316622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e68384a4b0c4a4ad6903222918f44f5cef5aab617b16f2e4e908ffd8ff8284`  
		Last Modified: Thu, 07 Feb 2019 09:01:28 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbba9313cc48378b24e23639cb9cdb2a4256b0bb2ef8adde367d9ea0d431d7c7`  
		Last Modified: Fri, 22 Feb 2019 09:37:48 GMT  
		Size: 12.2 MB (12167577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f814ecaa1282b4d36a6013d25e097f4b5617b54e84895a97528f50d270c90f7`  
		Last Modified: Fri, 22 Feb 2019 09:37:45 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf3b61501bebb82eb40d6f5bcda6df6a270cb0f1f24f78b403f19d010e27012`  
		Last Modified: Fri, 22 Feb 2019 09:56:15 GMT  
		Size: 6.0 MB (6015872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602d7d5c3b2f21707d22fe7a881dfaa2227420ae9881af390eebb8d699020685`  
		Last Modified: Fri, 22 Feb 2019 09:56:13 GMT  
		Size: 816.7 KB (816653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cf118536215c0212de54ca7ad182003ce2332e22f41dd4c3482e5974f5e9fd`  
		Last Modified: Fri, 22 Feb 2019 09:56:11 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c694910162f998a7e14d73809e753e063efc5a962f85b2feded5b637ac6952b2`  
		Last Modified: Fri, 22 Feb 2019 09:56:11 GMT  
		Size: 25.9 KB (25919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e255b3ea3b4e11092a9afb39380c065b9ed67a7274f59cc30aa1f8355deeefb`  
		Last Modified: Fri, 22 Feb 2019 09:56:31 GMT  
		Size: 124.0 MB (123981521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c786daa2982854cf91a54458bb132d9ae4796769e7066e38030462a8727efcb`  
		Last Modified: Fri, 22 Feb 2019 09:56:12 GMT  
		Size: 447.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03461d80077921954f55bd4206715e60aa2d130e7752847df5b406b130b68fc9`  
		Last Modified: Fri, 22 Feb 2019 09:56:11 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:alpine` - linux; arm64 variant v8

```console
$ docker pull convertigo@sha256:49adc2aaf9fb1cb5d304089e4a888a2c78211228b4c201302458bc183380c66b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.1 MB (201061392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8981170bf91370eaaa29a96bae2a80eaac7fb6ae35b0a30b12664877c1c0b055`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 12:20:55 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 12:21:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 12:31:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 12:32:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 12:32:04 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 12:32:07 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 12:32:21 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 06 Feb 2019 19:35:05 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 06 Feb 2019 19:35:06 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 19:35:11 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 06 Feb 2019 19:35:12 GMT
WORKDIR /usr/local/tomcat
# Wed, 06 Feb 2019 19:35:13 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 06 Feb 2019 19:35:15 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 06 Feb 2019 19:35:17 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 06 Feb 2019 19:35:18 GMT
ENV TOMCAT_MAJOR=7
# Fri, 22 Feb 2019 13:16:37 GMT
ENV TOMCAT_VERSION=7.0.93
# Fri, 22 Feb 2019 13:16:38 GMT
ENV TOMCAT_SHA512=7ae5186f63df7821b7de4e4c92780a27ccc678119614ad074349c3d02bd2f764ac08fa72f776e880e98aad2617de01521eb3de6fe57e4a749c8c04f28e042f0a
# Fri, 22 Feb 2019 13:16:39 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz
# Fri, 22 Feb 2019 13:16:41 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc
# Fri, 22 Feb 2019 13:17:32 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Fri, 22 Feb 2019 13:17:50 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 22 Feb 2019 13:17:51 GMT
EXPOSE 8080
# Fri, 22 Feb 2019 13:17:51 GMT
CMD ["catalina.sh" "run"]
# Fri, 22 Feb 2019 14:49:58 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Fri, 22 Feb 2019 14:49:59 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 22 Feb 2019 14:50:02 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 22 Feb 2019 14:50:03 GMT
WORKDIR /usr/local/tomcat
# Fri, 22 Feb 2019 14:50:09 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Fri, 22 Feb 2019 14:50:10 GMT
ENV GOSU_VERSION=1.10
# Fri, 22 Feb 2019 14:50:11 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 22 Feb 2019 14:50:12 GMT
ENV TINI_VERSION=0.17.0
# Fri, 22 Feb 2019 14:50:14 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Fri, 22 Feb 2019 14:50:22 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && pkill -9 gpg-agent   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Fri, 22 Feb 2019 14:50:26 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Fri, 22 Feb 2019 14:50:30 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Fri, 22 Feb 2019 14:50:31 GMT
ENV CONVERTIGO_VERSION=7.5.5
# Fri, 22 Feb 2019 14:50:32 GMT
ENV CONVERTIGO_REVISION=45010
# Fri, 22 Feb 2019 14:50:33 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.5/convertigo-7.5.5-v45010-linux32.war
# Fri, 22 Feb 2019 14:50:34 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Fri, 22 Feb 2019 14:51:44 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && pkill -9 gpg-agent     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Fri, 22 Feb 2019 14:51:45 GMT
COPY file:469acf91c0f583e35a3bcf1ac9d684cb7ff494dab17d41517be8cd24e5e49646 in webapps/ROOT/index.html 
# Fri, 22 Feb 2019 14:51:46 GMT
COPY file:42593bf6b5b6f7097adcf68ab4c5a9e42d6241e711a56df31d8671d239932d3c in / 
# Fri, 22 Feb 2019 14:51:47 GMT
WORKDIR /workspace
# Fri, 22 Feb 2019 14:51:48 GMT
VOLUME [/workspace]
# Fri, 22 Feb 2019 14:51:49 GMT
EXPOSE 28080
# Fri, 22 Feb 2019 14:51:50 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Fri, 22 Feb 2019 14:51:52 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4dbd37ccf7cb48097dfc245c4c6f892eaf16d2ad47a0478302cf24d0a74911`  
		Last Modified: Wed, 06 Feb 2019 12:42:42 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a4c22261364cc479c308d041f6881688678f61995139006fbd24aa898f98a7f`  
		Last Modified: Wed, 06 Feb 2019 12:45:02 GMT  
		Size: 54.9 MB (54863256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b987ed0c11c2544e430e5c49436dcb146a96cff69775fe85010dd04a2003780`  
		Last Modified: Wed, 06 Feb 2019 20:23:11 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51750fcfc9487223765eaf43a59728ada8353459e566c775fa58c71b8108c4e`  
		Last Modified: Fri, 22 Feb 2019 13:20:31 GMT  
		Size: 12.3 MB (12330174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068c53404a2ee3bd88efde124837e9a3d973ce8688437b68dc92e87d8f5a4fec`  
		Last Modified: Fri, 22 Feb 2019 13:20:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e7ebbd7be2edc36e01e7e94e703f440854a1a937dff8a21e14c9314c5b4726`  
		Last Modified: Fri, 22 Feb 2019 14:55:29 GMT  
		Size: 6.3 MB (6317447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887f5a1149856f691c17969ceefad92dabc9cdbdbc08d54381aeb57b3c4f8ac0`  
		Last Modified: Fri, 22 Feb 2019 14:55:27 GMT  
		Size: 851.7 KB (851727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543941a94bf7dc8627d1d1f00d59baa7213126f26fb2d8b5c8fd77c61b4cfbcb`  
		Last Modified: Fri, 22 Feb 2019 14:55:25 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15813030d988f417bdd9b72640e15b099977397955d8ca0c1894b099a4a9f8d8`  
		Last Modified: Fri, 22 Feb 2019 14:55:24 GMT  
		Size: 25.9 KB (25931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:118feafb542c2ec15b90e7fac16c7a7418a5c5b78fb013edbcba1f618e79cc7e`  
		Last Modified: Fri, 22 Feb 2019 14:55:45 GMT  
		Size: 124.0 MB (123981439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e1ddef9ea3de9e8ba1c2456e2ed0ee68348c534c5609924394ba47b2d231f49`  
		Last Modified: Fri, 22 Feb 2019 14:55:24 GMT  
		Size: 455.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952ff55852409f13fd348a8f5b95745c48f8e5e142808c2ce8ec0c1fd0121b3d`  
		Last Modified: Fri, 22 Feb 2019 14:55:25 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:alpine` - linux; 386

```console
$ docker pull convertigo@sha256:92491b6de18435671f38a1b1704300782e44f811814c6afe3dee4535bfe3520f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.2 MB (202220970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a3240711b8d0adf44ac2095862205d8d4d95ac5efa59ce5704b8e561fb73291`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Thu, 31 Jan 2019 11:38:57 GMT
ADD file:738a04760a9f9a1cd919954db42a0da78c644e7024240160c54723bf1dd479e9 in / 
# Thu, 31 Jan 2019 11:38:57 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 11:38:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 13:21:09 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 13:21:11 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 13:22:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 13:22:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 13:22:08 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 13:22:08 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 13:22:13 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Feb 2019 00:38:21 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 07 Feb 2019 00:38:21 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 07 Feb 2019 00:38:22 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 07 Feb 2019 00:38:22 GMT
WORKDIR /usr/local/tomcat
# Thu, 07 Feb 2019 00:38:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 07 Feb 2019 00:38:23 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 07 Feb 2019 00:38:23 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 07 Feb 2019 00:38:23 GMT
ENV TOMCAT_MAJOR=7
# Thu, 07 Feb 2019 00:38:23 GMT
ENV TOMCAT_VERSION=7.0.92
# Thu, 07 Feb 2019 00:38:23 GMT
ENV TOMCAT_SHA512=e5e17ea68956df5d4c220f2e2891953b362b4fadd391f7cb9bc00d86986aa2e2499176d59c393f41db9ab3e0d7f1ab492a881f85c6650514a7f02f047d4eb2b0
# Thu, 07 Feb 2019 00:38:24 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz
# Thu, 07 Feb 2019 00:38:24 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc
# Thu, 07 Feb 2019 00:38:39 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps 		gnupg 				ca-certificates 		openssl 	; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apk add --no-cache --virtual .native-build-deps 		apr-dev 		coreutils 		dpkg-dev dpkg 		gcc 		libc-dev 		make 		"openjdk${JAVA_VERSION%%[-~bu]*}"="$JAVA_ALPINE_VERSION" 		openssl-dev 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$TOMCAT_NATIVE_LIBDIR" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --virtual .tomcat-native-rundeps $runDeps; 	apk del .fetch-deps .native-build-deps; 		apk add --no-cache bash; 	find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 07 Feb 2019 00:38:42 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 07 Feb 2019 00:38:42 GMT
EXPOSE 8080
# Thu, 07 Feb 2019 00:38:42 GMT
CMD ["catalina.sh" "run"]
# Thu, 07 Feb 2019 11:25:58 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Thu, 07 Feb 2019 11:25:58 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 07 Feb 2019 11:25:59 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 07 Feb 2019 11:25:59 GMT
WORKDIR /usr/local/tomcat
# Thu, 07 Feb 2019 11:26:00 GMT
RUN apk --no-cache add     ca-certificates     curl     gnupg     unzip
# Thu, 07 Feb 2019 11:26:01 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Feb 2019 11:26:01 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 07 Feb 2019 11:26:01 GMT
ENV TINI_VERSION=0.17.0
# Thu, 07 Feb 2019 11:26:01 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Thu, 07 Feb 2019 11:26:04 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && apk add --no-cache --virtual .arch dpkg   && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-${dpkgArch}.asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && pkill -9 gpg-agent   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*   && apk del .arch
# Thu, 07 Feb 2019 11:26:04 GMT
RUN adduser -s /bin/false -D convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Thu, 07 Feb 2019 11:26:05 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Thu, 07 Feb 2019 11:26:05 GMT
ENV CONVERTIGO_VERSION=7.5.5
# Thu, 07 Feb 2019 11:26:06 GMT
ENV CONVERTIGO_REVISION=45010
# Thu, 07 Feb 2019 11:26:06 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.5/convertigo-7.5.5-v45010-linux32.war
# Thu, 07 Feb 2019 11:26:06 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Thu, 07 Feb 2019 11:26:17 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && pkill -9 gpg-agent     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* /tmp/*)
# Thu, 07 Feb 2019 11:26:17 GMT
COPY file:469acf91c0f583e35a3bcf1ac9d684cb7ff494dab17d41517be8cd24e5e49646 in webapps/ROOT/index.html 
# Thu, 07 Feb 2019 11:26:17 GMT
COPY file:42593bf6b5b6f7097adcf68ab4c5a9e42d6241e711a56df31d8671d239932d3c in / 
# Thu, 07 Feb 2019 11:26:17 GMT
WORKDIR /workspace
# Thu, 07 Feb 2019 11:26:18 GMT
VOLUME [/workspace]
# Thu, 07 Feb 2019 11:26:18 GMT
EXPOSE 28080
# Thu, 07 Feb 2019 11:26:18 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Thu, 07 Feb 2019 11:26:18 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:bcb4f889a459d231e71d88c93174eec5edef928ab1e2481f8b0074076ee934a6`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 2.7 MB (2749336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4099db9edcf638f20df22a899890483f7c152af59ca7a2de9c3b24c53c509e7`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce0f3d3b48a17ae1a2bcad376e638afbdf982a8d5949595c2e4a4007f4db3d0c`  
		Last Modified: Wed, 06 Feb 2019 13:42:46 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f750ad7f5e8d95553682c05697501d8d94a636946715800825169fb5974036`  
		Last Modified: Wed, 06 Feb 2019 13:43:57 GMT  
		Size: 55.6 MB (55551309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c17b1140f29f7ca09d03b29cd5d669c8c289e7aaf4f8a8058db7618a086db9`  
		Last Modified: Thu, 07 Feb 2019 00:47:34 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8a506919cd8a6563bff09f28359494044069115e92c8120ff87be09678680a`  
		Last Modified: Thu, 07 Feb 2019 00:47:40 GMT  
		Size: 12.3 MB (12254202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e194cd556a44d4a58cca1eeae22fc8e92bf256f97969028b3f34d70eeaaae36b`  
		Last Modified: Thu, 07 Feb 2019 00:47:34 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b29db2f9ae1582f32240c0fdacd64d4ae8d089ccb56035ac032d9285cc7f23`  
		Last Modified: Thu, 07 Feb 2019 11:27:36 GMT  
		Size: 6.7 MB (6748013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b813a4f34660e25d1de0033143f2d18fb323c552c8f9098830019691799efa16`  
		Last Modified: Thu, 07 Feb 2019 11:27:34 GMT  
		Size: 907.1 KB (907117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66855e71c6aa76043cfe7c14a9d256d01c0d5f3749bbe5e9bab98b81595bfbf3`  
		Last Modified: Thu, 07 Feb 2019 11:27:39 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d994cb98cb7a3bcf69bf0928a8ac2d66e96401c5e1634e1aa094dc601d6e4a13`  
		Last Modified: Thu, 07 Feb 2019 11:27:33 GMT  
		Size: 26.0 KB (25952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c442946bfdcbda14354a8ca5e2899ba64fada26edcf4fd1c5e91ce59cfba89`  
		Last Modified: Thu, 07 Feb 2019 11:27:45 GMT  
		Size: 124.0 MB (123981529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bea51e3f7de2ff427a83e730de7852ab526198926573842be06f8f46bfa4853`  
		Last Modified: Thu, 07 Feb 2019 11:27:33 GMT  
		Size: 448.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:060e8cc5c9887ffbb442bb1aef7bcba9fd95db08dba257fd148b608157fb77d3`  
		Last Modified: Thu, 07 Feb 2019 11:27:33 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `convertigo:latest`

```console
$ docker pull convertigo@sha256:5e88e3a8f5c29839296d64148591414b863dccdece3997da12cefb103e687c7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `convertigo:latest` - linux; amd64

```console
$ docker pull convertigo@sha256:add3670eff3665b93fb5b1473fa2130023da629fdd801d51ba04cfb64af0798c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.7 MB (327668943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58498cf1165cad6801ab85bcdfa11bc5a5a9109b44585c37afcc3052592664bc`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 08:27:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:29:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 08:29:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 08:29:45 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 08:29:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 08:29:46 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 08:29:46 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 08:30:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 16:55:01 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 06 Feb 2019 16:55:01 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 16:55:03 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 06 Feb 2019 16:55:03 GMT
WORKDIR /usr/local/tomcat
# Wed, 06 Feb 2019 16:55:04 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 06 Feb 2019 16:55:04 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 06 Feb 2019 16:55:04 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 06 Feb 2019 16:55:06 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 16:55:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 16:55:16 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 06 Feb 2019 16:55:16 GMT
ENV TOMCAT_MAJOR=7
# Fri, 22 Feb 2019 01:38:46 GMT
ENV TOMCAT_VERSION=7.0.93
# Fri, 22 Feb 2019 01:38:46 GMT
ENV TOMCAT_SHA512=7ae5186f63df7821b7de4e4c92780a27ccc678119614ad074349c3d02bd2f764ac08fa72f776e880e98aad2617de01521eb3de6fe57e4a749c8c04f28e042f0a
# Fri, 22 Feb 2019 01:38:47 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz
# Fri, 22 Feb 2019 01:38:47 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc
# Fri, 22 Feb 2019 01:39:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Fri, 22 Feb 2019 01:39:48 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 22 Feb 2019 01:39:48 GMT
EXPOSE 8080
# Fri, 22 Feb 2019 01:39:48 GMT
CMD ["catalina.sh" "run"]
# Fri, 22 Feb 2019 02:13:40 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Fri, 22 Feb 2019 02:13:40 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 22 Feb 2019 02:13:42 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 22 Feb 2019 02:13:43 GMT
WORKDIR /usr/local/tomcat
# Fri, 22 Feb 2019 02:13:48 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Fri, 22 Feb 2019 02:13:48 GMT
ENV GOSU_VERSION=1.10
# Fri, 22 Feb 2019 02:13:48 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 22 Feb 2019 02:13:49 GMT
ENV TINI_VERSION=0.16.1
# Fri, 22 Feb 2019 02:13:49 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Fri, 22 Feb 2019 02:13:54 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Fri, 22 Feb 2019 02:13:56 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Fri, 22 Feb 2019 02:13:58 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Fri, 22 Feb 2019 02:13:58 GMT
ENV CONVERTIGO_VERSION=7.5.5
# Fri, 22 Feb 2019 02:13:58 GMT
ENV CONVERTIGO_REVISION=45010
# Fri, 22 Feb 2019 02:13:59 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.5/convertigo-7.5.5-v45010-linux32.war
# Fri, 22 Feb 2019 02:13:59 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Fri, 22 Feb 2019 02:14:12 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Fri, 22 Feb 2019 02:14:13 GMT
COPY file:b5bd0566057785adb2589ced522fc8697237dae618549557ce65ad5368cf8938 in webapps/ROOT/index.html 
# Fri, 22 Feb 2019 02:14:13 GMT
COPY file:92202dec06475967df944234eb1273db2cd0176d1466e5fc3b977040008eba49 in / 
# Fri, 22 Feb 2019 02:14:14 GMT
ENV SWT_GTK3=0
# Fri, 22 Feb 2019 02:14:14 GMT
WORKDIR /workspace
# Fri, 22 Feb 2019 02:14:15 GMT
VOLUME [/workspace]
# Fri, 22 Feb 2019 02:14:15 GMT
EXPOSE 28080
# Fri, 22 Feb 2019 02:14:16 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Fri, 22 Feb 2019 02:14:16 GMT
CMD ["convertigo"]
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
	-	`sha256:eea0f08c7492aa49cb62b7fc7cf5a3b91e5c83c182cecddaba75903f09a1c67e`  
		Last Modified: Wed, 06 Feb 2019 08:52:24 GMT  
		Size: 852.9 KB (852911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca74b3d90c15cc3066bb46f8b6cdb617805b39e46ba39b891e4592b601abaee1`  
		Last Modified: Wed, 06 Feb 2019 08:54:24 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f11a643c4a8511e3f7d00a7f7c01059bf804876833992895eebbbaf108399655`  
		Last Modified: Wed, 06 Feb 2019 08:54:24 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05eafed73b65f1719e1ad5446e1f57859feb2f71f0b21d5f0bd25fb7d0d6dbd5`  
		Last Modified: Wed, 06 Feb 2019 08:54:52 GMT  
		Size: 122.1 MB (122121101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f24105f282aadee3e59151424724bc5962ef2aea0b9516f71e9a307e2fde7112`  
		Last Modified: Wed, 06 Feb 2019 17:15:16 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27e73cbbd3f3821d48e165fd1c6905d23efe9651ed5f7d8d6374883a89ddbaf`  
		Last Modified: Wed, 06 Feb 2019 17:15:17 GMT  
		Size: 528.4 KB (528443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e09b82a92ead396ff26d0940ca9c97437d9f7382ea193262f3298e8601f7474`  
		Last Modified: Fri, 22 Feb 2019 01:44:05 GMT  
		Size: 18.2 MB (18183671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7bfd50176d08c40e08ceea4665c6219525fefd8e0f12e8fca5493354fb2afcb`  
		Last Modified: Fri, 22 Feb 2019 01:44:02 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a701a3abc23cf39f10aed52dbc80d595cf4d05a8ee4aa9c53fe8fdcf8534d97a`  
		Last Modified: Fri, 22 Feb 2019 02:15:53 GMT  
		Size: 994.1 KB (994143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:311115c65d6867b1149a569a9978adccc8475da507b0935a3e997ccca3a947d6`  
		Last Modified: Fri, 22 Feb 2019 02:15:53 GMT  
		Size: 509.3 KB (509297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a4c71ce5008fa337f578973c85787d447454360ad770a889f479bba68c24d3`  
		Last Modified: Fri, 22 Feb 2019 02:15:52 GMT  
		Size: 4.3 KB (4264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74357e1ebbfe84f97981d5aaa3a7fab258853ebf02075736b0ae884218f7fdce`  
		Last Modified: Fri, 22 Feb 2019 02:15:52 GMT  
		Size: 25.9 KB (25948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3018387a4fa44a5f3f77f3ab47939ed38b64bba3cb270c52e9cfbf7113a36a`  
		Last Modified: Fri, 22 Feb 2019 02:16:03 GMT  
		Size: 124.0 MB (123981500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2989eb1e3fc92df3a26cc1b571ab7e7e06270ef6b38f312d799143c8fb3c0b05`  
		Last Modified: Fri, 22 Feb 2019 02:15:52 GMT  
		Size: 467.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad32801d4846ec61f3e001c70baae452426197e77ea9bf988afefb820a19d2a`  
		Last Modified: Fri, 22 Feb 2019 02:15:52 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:latest` - linux; arm variant v7

```console
$ docker pull convertigo@sha256:3fe40e2e235af72d94a74ab15439c1580acc3b1953054d8bb93fc9d55a604bfc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.3 MB (338307022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f335c20f5217859e7f3c88095192636b994d8c5d737920f7270ad24b920b2567`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:13:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:59:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:59:16 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:59:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 05 May 2018 12:59:19 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 12:59:27 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 12:59:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 05 May 2018 13:00:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 05 May 2018 13:00:28 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 05 May 2018 15:54:31 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 05 May 2018 15:54:31 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 05 May 2018 15:54:32 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 05 May 2018 15:54:33 GMT
WORKDIR /usr/local/tomcat
# Sat, 05 May 2018 15:54:33 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 05 May 2018 15:54:34 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 05 May 2018 15:54:34 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Sat, 05 May 2018 15:54:35 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 15:54:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 15:54:48 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 05 May 2018 15:54:48 GMT
ENV TOMCAT_MAJOR=7
# Sat, 07 Jul 2018 12:21:40 GMT
ENV TOMCAT_VERSION=7.0.90
# Sat, 07 Jul 2018 12:21:41 GMT
ENV TOMCAT_SHA512=c7a47135b99684425260cd906cf5c9a5226837d3681d84ae4e3bb199068e97f0e63d07393d91ca0436204a1dc92bf9bd9a4a1c4c893187703e023503bbd81901
# Sat, 07 Jul 2018 12:21:41 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz
# Sat, 07 Jul 2018 12:21:41 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc
# Wed, 01 Aug 2018 12:39:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Wed, 01 Aug 2018 12:39:46 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 01 Aug 2018 12:39:49 GMT
EXPOSE 8080/tcp
# Wed, 01 Aug 2018 12:39:49 GMT
CMD ["catalina.sh" "run"]
# Wed, 01 Aug 2018 13:22:11 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Wed, 01 Aug 2018 13:22:11 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 01 Aug 2018 13:22:12 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 01 Aug 2018 13:22:13 GMT
WORKDIR /usr/local/tomcat
# Wed, 01 Aug 2018 13:22:19 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Wed, 01 Aug 2018 13:22:20 GMT
ENV GOSU_VERSION=1.10
# Wed, 01 Aug 2018 13:22:20 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 01 Aug 2018 13:22:20 GMT
ENV TINI_VERSION=0.16.1
# Wed, 01 Aug 2018 13:22:20 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Tue, 25 Dec 2018 12:57:37 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Tue, 25 Dec 2018 12:57:38 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Tue, 25 Dec 2018 12:57:40 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Sat, 02 Feb 2019 12:57:19 GMT
ENV CONVERTIGO_VERSION=7.5.5
# Sat, 02 Feb 2019 12:57:19 GMT
ENV CONVERTIGO_REVISION=45010
# Sat, 02 Feb 2019 12:57:19 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.5/convertigo-7.5.5-v45010-linux32.war
# Sat, 02 Feb 2019 12:57:20 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Sat, 02 Feb 2019 12:58:30 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Sat, 02 Feb 2019 12:58:31 GMT
COPY file:b5bd0566057785adb2589ced522fc8697237dae618549557ce65ad5368cf8938 in webapps/ROOT/index.html 
# Sat, 02 Feb 2019 12:58:31 GMT
COPY file:92202dec06475967df944234eb1273db2cd0176d1466e5fc3b977040008eba49 in / 
# Sat, 02 Feb 2019 12:58:32 GMT
ENV SWT_GTK3=0
# Sat, 02 Feb 2019 12:58:32 GMT
WORKDIR /workspace
# Sat, 02 Feb 2019 12:58:32 GMT
VOLUME [/workspace]
# Sat, 02 Feb 2019 12:58:33 GMT
EXPOSE 28080
# Sat, 02 Feb 2019 12:58:33 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 02 Feb 2019 12:58:34 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed57f83cc7c78757972312a1b5a30524f861523c5390d062845f18c696f48ea`  
		Last Modified: Sat, 05 May 2018 12:35:37 GMT  
		Size: 9.5 MB (9472475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859203aede279201e8caf07cf2963456c56bac72a64071079dc9db6fb65ed1a2`  
		Last Modified: Sat, 05 May 2018 12:35:34 GMT  
		Size: 3.9 MB (3912835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df26ddf71ea9e82f175e400809b8f06871dd0937c5a90f4ffe95286544a9f719`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 830.3 KB (830332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c21322a9c89724512d6ea5faa10299c60c8a605d6f563c84c28177db8d2770`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2270f04a4be61f52577232813fff92e797d3fc190d52f71411afc26b0911f8e4`  
		Last Modified: Sat, 05 May 2018 13:29:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2dc1aba58c8cd285639cac6b03c823e5fcdb91aa8922652e7d9387aaca6fa4`  
		Last Modified: Sat, 05 May 2018 13:29:37 GMT  
		Size: 139.5 MB (139501760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02869ec2bb3864b06abd435610eb6849d5c62426517de1a603ef6fe43c7d3815`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 272.1 KB (272082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289a355206a5e4f55a89ee04aff3ea7521228ac5dd89e2068978f78acbbd0a54`  
		Last Modified: Sat, 05 May 2018 16:08:23 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf947ee846151b3e82b979ab8f3027c037e1a8dc7a1c2976128213dcb515eced`  
		Last Modified: Sat, 05 May 2018 16:08:24 GMT  
		Size: 519.8 KB (519803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc44ea6baa81c1119dd6637b87028c7ac9a35f16680a4cdb8fa7a65295b9b56c`  
		Last Modified: Wed, 01 Aug 2018 13:02:49 GMT  
		Size: 16.3 MB (16281202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edbf1f55b4009d5b8fe3b4adb1ad6ec97e745b06f1ac456386ae0203f90a31e5`  
		Last Modified: Wed, 01 Aug 2018 13:02:44 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a340f18f8d09e1349704539c8a7da88fb26998dee221c73eea10c0b38bc910`  
		Last Modified: Wed, 01 Aug 2018 13:23:33 GMT  
		Size: 956.1 KB (956126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b23e73bf82e1276d94b9582bf695c6451bb8a226018999f1c5930932e5eb3de2`  
		Last Modified: Tue, 25 Dec 2018 13:00:22 GMT  
		Size: 482.7 KB (482666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ab18f06945e91417328482dd3be5330d34c03080a2f8905611b52e1d1c2452`  
		Last Modified: Tue, 25 Dec 2018 13:00:21 GMT  
		Size: 4.4 KB (4352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7648f26f8a8489e1a294db2699aff89acc5d921e0680f715e7c855205af41bd`  
		Last Modified: Tue, 25 Dec 2018 13:00:21 GMT  
		Size: 25.9 KB (25950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd0baebedad6b5a0e0e042d4d8b548887a32b73ca02db54ac1d430b659031ca`  
		Last Modified: Sat, 02 Feb 2019 12:59:18 GMT  
		Size: 124.0 MB (123981471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecf9763427d4caed67904a10c0d67fe03fd07a7a2c567c0c5ef8e1d4cf999ff`  
		Last Modified: Sat, 02 Feb 2019 12:58:57 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aa38418f0a535cce888cd957f5fc6c61efa3185a83f1f62381c3945aba89a95`  
		Last Modified: Sat, 02 Feb 2019 12:58:57 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:latest` - linux; arm64 variant v8

```console
$ docker pull convertigo@sha256:7f2f068c4e5b1e8ecd843b008eebc812a4c8a7d84f2a7910ad271e43ae6026f1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.9 MB (313935457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6181dd262b5532134d736aa9608bed4f18d2c38a6c2627f3c5d8b6e700b8cf1`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:38:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 12:02:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:21:27 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 12:21:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 12:21:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 12:21:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 12:21:39 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 12:21:41 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 12:27:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 19:20:47 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 06 Feb 2019 19:20:48 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 19:20:50 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 06 Feb 2019 19:20:51 GMT
WORKDIR /usr/local/tomcat
# Wed, 06 Feb 2019 19:20:52 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 06 Feb 2019 19:20:53 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 06 Feb 2019 19:20:54 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 06 Feb 2019 19:20:56 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 19:21:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:21:15 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 06 Feb 2019 19:21:16 GMT
ENV TOMCAT_MAJOR=7
# Fri, 22 Feb 2019 13:04:11 GMT
ENV TOMCAT_VERSION=7.0.93
# Fri, 22 Feb 2019 13:04:12 GMT
ENV TOMCAT_SHA512=7ae5186f63df7821b7de4e4c92780a27ccc678119614ad074349c3d02bd2f764ac08fa72f776e880e98aad2617de01521eb3de6fe57e4a749c8c04f28e042f0a
# Fri, 22 Feb 2019 13:04:13 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz
# Fri, 22 Feb 2019 13:04:15 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.93/bin/apache-tomcat-7.0.93.tar.gz.asc
# Fri, 22 Feb 2019 13:06:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Fri, 22 Feb 2019 13:07:00 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 22 Feb 2019 13:07:01 GMT
EXPOSE 8080
# Fri, 22 Feb 2019 13:07:03 GMT
CMD ["catalina.sh" "run"]
# Fri, 22 Feb 2019 14:48:12 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Fri, 22 Feb 2019 14:48:13 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 22 Feb 2019 14:48:17 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 22 Feb 2019 14:48:18 GMT
WORKDIR /usr/local/tomcat
# Fri, 22 Feb 2019 14:48:34 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Fri, 22 Feb 2019 14:48:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 22 Feb 2019 14:48:35 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 22 Feb 2019 14:48:35 GMT
ENV TINI_VERSION=0.16.1
# Fri, 22 Feb 2019 14:48:36 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Fri, 22 Feb 2019 14:48:46 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Fri, 22 Feb 2019 14:48:50 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Fri, 22 Feb 2019 14:48:53 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Fri, 22 Feb 2019 14:48:53 GMT
ENV CONVERTIGO_VERSION=7.5.5
# Fri, 22 Feb 2019 14:48:55 GMT
ENV CONVERTIGO_REVISION=45010
# Fri, 22 Feb 2019 14:48:56 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.5/convertigo-7.5.5-v45010-linux32.war
# Fri, 22 Feb 2019 14:48:57 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Fri, 22 Feb 2019 14:49:38 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Fri, 22 Feb 2019 14:49:39 GMT
COPY file:b5bd0566057785adb2589ced522fc8697237dae618549557ce65ad5368cf8938 in webapps/ROOT/index.html 
# Fri, 22 Feb 2019 14:49:40 GMT
COPY file:92202dec06475967df944234eb1273db2cd0176d1466e5fc3b977040008eba49 in / 
# Fri, 22 Feb 2019 14:49:41 GMT
ENV SWT_GTK3=0
# Fri, 22 Feb 2019 14:49:42 GMT
WORKDIR /workspace
# Fri, 22 Feb 2019 14:49:43 GMT
VOLUME [/workspace]
# Fri, 22 Feb 2019 14:49:44 GMT
EXPOSE 28080
# Fri, 22 Feb 2019 14:49:45 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Fri, 22 Feb 2019 14:49:46 GMT
CMD ["convertigo"]
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
	-	`sha256:1f78a9a3946c048cd1989adcb19ce142726814f9404f8ba27e6f67109ffbbcb4`  
		Last Modified: Wed, 06 Feb 2019 12:38:38 GMT  
		Size: 839.2 KB (839181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878c79f6988625ee5f4324e98135b17b7efeaa9075d4564d50ae21a8d7d0a5d9`  
		Last Modified: Wed, 06 Feb 2019 12:43:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783443219103599e6e7f0ceca2dfa1f8d755ced3dd4f5d8dffe801d82c6f1c26`  
		Last Modified: Wed, 06 Feb 2019 12:43:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d15746098decd81522d87e08b556d729daed66739f70ccbcf9a4049b5ba3f5e`  
		Last Modified: Wed, 06 Feb 2019 12:44:11 GMT  
		Size: 112.8 MB (112756331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af34ab79342334e7bc1d9757658d3461da30732c2fd14f60503135e1cdbf2c9`  
		Last Modified: Wed, 06 Feb 2019 20:22:34 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e2786a2229963b665c9fa8cde0a6dd1d4f32716bf9245a2468b8bdb494ae53`  
		Last Modified: Wed, 06 Feb 2019 20:22:34 GMT  
		Size: 513.2 KB (513189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0310382eb300f045745f0b9122b226ab501b5b7fac32dc310d4ed084f17ccdd7`  
		Last Modified: Fri, 22 Feb 2019 13:20:01 GMT  
		Size: 17.4 MB (17425369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7458b5f71c0b9fcd177ae83a2a756285123e1e224231c52523f5fd513b3a41d8`  
		Last Modified: Fri, 22 Feb 2019 13:19:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:393cb9cd53c8f5e2440872be1d9d22d019c3a27768c59c5ba25d37ecf260cd20`  
		Last Modified: Fri, 22 Feb 2019 14:54:52 GMT  
		Size: 963.7 KB (963677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d2d1e1f6f4386083f190a14061a9ac461c0be86a9be092f4db6ba178c469a7`  
		Last Modified: Fri, 22 Feb 2019 14:54:52 GMT  
		Size: 476.8 KB (476848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b871ff74320d78b27c0cec8b4f04cedc0259ec061cd133332fe1099db1da3540`  
		Last Modified: Fri, 22 Feb 2019 14:54:50 GMT  
		Size: 4.3 KB (4273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56230a430333cea7a8915be408c84e73c858f707b4c54c4f01198579bd00d25`  
		Last Modified: Fri, 22 Feb 2019 14:54:50 GMT  
		Size: 26.0 KB (25954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca459755eecca32a0044d2c2659a58d2059a4cec00bf927298627d36bca6a80b`  
		Last Modified: Fri, 22 Feb 2019 14:55:12 GMT  
		Size: 124.0 MB (123981481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e503f65e075be24c3518c1a74eb452259230df216eca426be4a588dfc14b461c`  
		Last Modified: Fri, 22 Feb 2019 14:54:50 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fba90fa4d60490b85310ea2a8a21b607a3b0a2bd3ca5c794bd8c72f11643e3e0`  
		Last Modified: Fri, 22 Feb 2019 14:54:50 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `convertigo:latest` - linux; 386

```console
$ docker pull convertigo@sha256:b38b9a4574bae983623571a2069efd254272067576d98cbe37bfae8f5608db2c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.0 MB (334005540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a276c328688a734f060801401aed3b9aecf5c404a859710ac03844afc7571c3`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:07 GMT
ADD file:70c26933810136bdb5c394bab98ac1119dd6ab650db410d21a0a16098b8a6ae2 in / 
# Wed, 06 Feb 2019 12:01:08 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 01:49:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:49:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 06:21:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 06:23:57 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 06:23:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 07 Feb 2019 06:23:59 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 07 Feb 2019 06:23:59 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 07 Feb 2019 06:23:59 GMT
ENV JAVA_VERSION=8u181
# Thu, 07 Feb 2019 06:23:59 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Thu, 07 Feb 2019 06:24:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 07 Feb 2019 11:17:08 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 07 Feb 2019 11:17:08 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Feb 2019 11:17:09 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 07 Feb 2019 11:17:09 GMT
WORKDIR /usr/local/tomcat
# Thu, 07 Feb 2019 11:17:09 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 07 Feb 2019 11:17:10 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 07 Feb 2019 11:17:10 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Thu, 07 Feb 2019 11:17:10 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 11:17:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 11:17:16 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 07 Feb 2019 11:17:16 GMT
ENV TOMCAT_MAJOR=7
# Thu, 07 Feb 2019 11:17:16 GMT
ENV TOMCAT_VERSION=7.0.92
# Thu, 07 Feb 2019 11:17:16 GMT
ENV TOMCAT_SHA512=e5e17ea68956df5d4c220f2e2891953b362b4fadd391f7cb9bc00d86986aa2e2499176d59c393f41db9ab3e0d7f1ab492a881f85c6650514a7f02f047d4eb2b0
# Thu, 07 Feb 2019 11:17:17 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz
# Thu, 07 Feb 2019 11:17:17 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc
# Thu, 07 Feb 2019 11:18:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 07 Feb 2019 11:18:02 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 07 Feb 2019 11:18:02 GMT
EXPOSE 8080
# Thu, 07 Feb 2019 11:18:02 GMT
CMD ["catalina.sh" "run"]
# Thu, 07 Feb 2019 11:25:26 GMT
MAINTAINER Nicolas Albert nicolasa@convertigo.com
# Thu, 07 Feb 2019 11:25:26 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 07 Feb 2019 11:25:27 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 07 Feb 2019 11:25:27 GMT
WORKDIR /usr/local/tomcat
# Thu, 07 Feb 2019 11:25:32 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     unzip   && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 11:25:32 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Feb 2019 11:25:32 GMT
ENV GOSU_GPG_KEYS=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 07 Feb 2019 11:25:32 GMT
ENV TINI_VERSION=0.16.1
# Thu, 07 Feb 2019 11:25:32 GMT
ENV TINI_GPG_KEYS=6380DC428747F6C393FEACA59A84159D7001A4E5
# Thu, 07 Feb 2019 11:25:37 GMT
RUN export GNUPGHOME="$(mktemp -d)"   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GOSU_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GOSU_GPG_KEYS" )   && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu   && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver pgp.mit.edu --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_GPG_KEYS"   || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$TINI_GPG_KEYS" )   && curl -o /usr/local/bin/tini -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture)"   && curl -o /usr/local/bin/tini.asc -fSL "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-$(dpkg --print-architecture).asc"   && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini   && rm /usr/local/bin/tini.asc   && chmod +x /usr/local/bin/tini   && rm -rf /tmp/*
# Thu, 07 Feb 2019 11:25:37 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace/lib /workspace/classes     && chown -R convertigo:convertigo /workspace
# Thu, 07 Feb 2019 11:25:38 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/AprLifecycleListener/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         conf/server.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*
# Thu, 07 Feb 2019 11:25:38 GMT
ENV CONVERTIGO_VERSION=7.5.5
# Thu, 07 Feb 2019 11:25:39 GMT
ENV CONVERTIGO_REVISION=45010
# Thu, 07 Feb 2019 11:25:39 GMT
ENV CONVERTIGO_WAR_URL=https://devplatform.s3.amazonaws.com/refbin/cems/7.5.5/convertigo-7.5.5-v45010-linux32.war
# Thu, 07 Feb 2019 11:25:39 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Thu, 07 Feb 2019 11:25:52 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver pgp.mit.edu --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir webapps/ROOT webapps/convertigo     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod a+x WEB-INF/xvnc/*         && (test "$(dpkg --print-architecture)" != "i386" && rm -rf WEB-INF/xulrunner WEB-INF/xvnc WEB-INF/lib/swt_* || true)         && rm -rf /tmp/*)
# Thu, 07 Feb 2019 11:25:52 GMT
COPY file:b5bd0566057785adb2589ced522fc8697237dae618549557ce65ad5368cf8938 in webapps/ROOT/index.html 
# Thu, 07 Feb 2019 11:25:52 GMT
COPY file:92202dec06475967df944234eb1273db2cd0176d1466e5fc3b977040008eba49 in / 
# Thu, 07 Feb 2019 11:25:53 GMT
ENV SWT_GTK3=0
# Thu, 07 Feb 2019 11:25:53 GMT
WORKDIR /workspace
# Thu, 07 Feb 2019 11:25:53 GMT
VOLUME [/workspace]
# Thu, 07 Feb 2019 11:25:53 GMT
EXPOSE 28080
# Thu, 07 Feb 2019 11:25:53 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Thu, 07 Feb 2019 11:25:54 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:56c1dc1a93dfeb7eb66abd8197c3fdfe7d7393c9757be0a44ca2f624b6e5c684`  
		Last Modified: Wed, 06 Feb 2019 12:07:42 GMT  
		Size: 46.1 MB (46069815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d401cb48eb9dd4b814e64479a4a5e9150a56d439c01778f0b95ff0689f82cd17`  
		Last Modified: Thu, 07 Feb 2019 02:03:03 GMT  
		Size: 10.8 MB (10799008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c068a67acc556d25d2fd2dc13d5929a34ee0395cd208b418f73bf15fc17e0955`  
		Last Modified: Thu, 07 Feb 2019 02:03:02 GMT  
		Size: 4.6 MB (4560874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404daee469e7110f87d6cff18a56b702c9a559f4ed1a9dbfc19dd4b7f467a8f6`  
		Last Modified: Thu, 07 Feb 2019 06:39:52 GMT  
		Size: 861.8 KB (861782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb0682ae720b17c31fb2604657fce4f6666c5d10dcc28fbdddb7975c40d0580`  
		Last Modified: Thu, 07 Feb 2019 06:41:04 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2468d39d4f0a7aefb8c7ff17aaf6f1d629af13da8f2ba011b60f91a4406c232f`  
		Last Modified: Thu, 07 Feb 2019 06:41:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cae5e57702086236a1f8f63a621c95b430457a22febdd0cee00cb145ea7c53f`  
		Last Modified: Thu, 07 Feb 2019 06:41:28 GMT  
		Size: 122.6 MB (122608632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a924ceba4ea8f04dd3004d45e948f6f9f4ea34494f653ea86812e16d7a670c1a`  
		Last Modified: Thu, 07 Feb 2019 11:23:01 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eed460517fd5ebdebb3402a79839430123e8255ba1b2797f70d1d6b3785ea16`  
		Last Modified: Thu, 07 Feb 2019 11:23:01 GMT  
		Size: 540.4 KB (540388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9441ad77461b115352e95527db85baf1aba71122742d0911195132e7e6d76b7`  
		Last Modified: Thu, 07 Feb 2019 11:23:04 GMT  
		Size: 10.0 MB (9989623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00fd5f7362393da3b6d94217cc3e409b1be4c12794983705c702a436e978192e`  
		Last Modified: Thu, 07 Feb 2019 11:23:02 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b349bceaf6f3a9c298dd12832bb6ac8cf304612f1e90cc111a0f6cc448501fbe`  
		Last Modified: Thu, 07 Feb 2019 11:27:14 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873c2d1c997b961fcbfe18013ce8fbb01ac773db1b79ff9556f8b1b861f3fcf9`  
		Last Modified: Thu, 07 Feb 2019 11:27:14 GMT  
		Size: 489.2 KB (489154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54e51e91b6792617a9d22f56fe2ccd046308e5e4313f8759678bafbd38875aaa`  
		Last Modified: Thu, 07 Feb 2019 11:27:13 GMT  
		Size: 4.2 KB (4249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09375a56afe875e4db5935505712e1471dd4c6c7929b0cd4633706590f086dcf`  
		Last Modified: Thu, 07 Feb 2019 11:27:13 GMT  
		Size: 26.0 KB (25970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ebafbc38c9dc01b911f7a261588d03e3a38d8b6d3ff5749dff70e7a2d0e3bb`  
		Last Modified: Thu, 07 Feb 2019 11:27:28 GMT  
		Size: 138.1 MB (138053476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd8d6cf945b944a170d4cb01a6627df1d2ee82a7be1dc7c46b5a9749598e8233`  
		Last Modified: Thu, 07 Feb 2019 11:27:13 GMT  
		Size: 467.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc9a318ded496210fa1b6fe4ebcf342425ba430f71d1da4d8dc07c443ad6ab3`  
		Last Modified: Thu, 07 Feb 2019 11:27:13 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
