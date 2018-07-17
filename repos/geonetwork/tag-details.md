<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `geonetwork`

-	[`geonetwork:3.0`](#geonetwork30)
-	[`geonetwork:3.0.5`](#geonetwork305)
-	[`geonetwork:3.0.5-postgres`](#geonetwork305-postgres)
-	[`geonetwork:3.0-postgres`](#geonetwork30-postgres)
-	[`geonetwork:3.2`](#geonetwork32)
-	[`geonetwork:3.2.2`](#geonetwork322)
-	[`geonetwork:3.2.2-postgres`](#geonetwork322-postgres)
-	[`geonetwork:3.2-postgres`](#geonetwork32-postgres)
-	[`geonetwork:3.4`](#geonetwork34)
-	[`geonetwork:3.4.2`](#geonetwork342)
-	[`geonetwork:3.4.2-postgres`](#geonetwork342-postgres)
-	[`geonetwork:3.4-postgres`](#geonetwork34-postgres)
-	[`geonetwork:latest`](#geonetworklatest)
-	[`geonetwork:postgres`](#geonetworkpostgres)

## `geonetwork:3.0`

```console
$ docker pull geonetwork@sha256:4e53ba676a1d5f97b0972477fc708dbe5c62e519850cabdb4da420225626af64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `geonetwork:3.0` - linux; amd64

```console
$ docker pull geonetwork@sha256:38e3f7ab46f25633e97143894a4e26e20d56aa08351b1ad899e8a7c2c405d283
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.8 MB (307820717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebe7a5040e6916c70aadba42ae3c4c1ff392ecd9333dbd859927aafdc047d7ba`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:04:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:04:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 06:25:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:25:50 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:25:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:25:52 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:25:52 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 06:25:53 GMT
ENV JAVA_VERSION=7u181
# Tue, 17 Jul 2018 06:25:53 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 17 Jul 2018 06:26:59 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 17:55:27 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 17 Jul 2018 17:55:28 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 17:55:29 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 17 Jul 2018 17:55:29 GMT
WORKDIR /usr/local/tomcat
# Tue, 17 Jul 2018 17:55:29 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 17 Jul 2018 17:55:29 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 17 Jul 2018 17:55:30 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Tue, 17 Jul 2018 17:56:12 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 17:56:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:56:58 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 17 Jul 2018 18:07:23 GMT
ENV TOMCAT_MAJOR=8
# Tue, 17 Jul 2018 18:07:24 GMT
ENV TOMCAT_VERSION=8.0.53
# Tue, 17 Jul 2018 18:07:24 GMT
ENV TOMCAT_SHA512=cd8a4e48a629a2f2bb4ce6b101ebcce41da52b506064396ec1b2915c0b0d8d82123091242f2929a649bcd8b65ecf6cd1ab9c7d90ac0e261821097ab6fbe22df9
# Tue, 17 Jul 2018 18:07:24 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz
# Tue, 17 Jul 2018 18:07:25 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc
# Tue, 17 Jul 2018 18:09:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 17 Jul 2018 18:09:21 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 17 Jul 2018 18:09:21 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 18:09:22 GMT
CMD ["catalina.sh" "run"]
# Tue, 17 Jul 2018 21:33:18 GMT
ENV GN_FILE=geonetwork.war
# Tue, 17 Jul 2018 21:33:18 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Tue, 17 Jul 2018 21:33:18 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -Xmx512M -Xss2M -XX:MaxPermSize=512m -XX:+UseConcMarkSweepGC
# Tue, 17 Jul 2018 21:33:19 GMT
ENV GN_VERSION=3.0.5
# Tue, 17 Jul 2018 21:33:19 GMT
ENV GN_DOWNLOAD_MD5=1e77c39de4ad156cc9b3c2b033cab359
# Tue, 17 Jul 2018 21:33:19 GMT
WORKDIR /usr/local/tomcat/webapps
# Tue, 17 Jul 2018 21:33:30 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Tue, 17 Jul 2018 21:33:30 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Tue, 17 Jul 2018 21:33:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 21:33:31 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46dde23c37b3419122bb597461c1a48bdea1842aaae7dbe728dfa20a9aabe11b`  
		Last Modified: Tue, 17 Jul 2018 03:47:37 GMT  
		Size: 17.5 MB (17538077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5ffaa94f61555d66da1679c14e9ced99965370c3c4eca6892a5700a0526960`  
		Last Modified: Tue, 17 Jul 2018 07:17:52 GMT  
		Size: 795.1 KB (795126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e9f30394f51490c8d65386733f9150e84961b1dca879ec5a679f28a01d13b1`  
		Last Modified: Tue, 17 Jul 2018 07:17:54 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae3a41d58736ab9bc81c2e0ba576abd7b92e629c048ad27916c426c24781935`  
		Last Modified: Tue, 17 Jul 2018 07:17:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eea330fdc65502048e11d227eac2e0aaf8a2e4758c1f2ac5692d6f554882579`  
		Last Modified: Tue, 17 Jul 2018 07:18:12 GMT  
		Size: 81.8 MB (81797664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d051bc0952500912ff1e20a5cb9c199c16cc0cae692818383924ccca4f8d8cae`  
		Last Modified: Tue, 17 Jul 2018 18:30:18 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f397a5ced631a9752923014c579d5345fdde06f2bca9a57f60363665ac4f63`  
		Last Modified: Tue, 17 Jul 2018 18:30:17 GMT  
		Size: 3.1 MB (3115123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b01e0b079d4c7152ff92372f4ab65fe6ad610256e39500037e9ba7526723415`  
		Last Modified: Tue, 17 Jul 2018 18:30:16 GMT  
		Size: 531.8 KB (531827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6cf68d3cdacc6461e59d9c85e409551365f4b7be45b5dea01dbf9e1d8d74467`  
		Last Modified: Tue, 17 Jul 2018 18:36:21 GMT  
		Size: 10.4 MB (10379452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b2093215ca351bd10d007e97447a65706f9067ee9b4000c4fc03bc8557f3124`  
		Last Modified: Tue, 17 Jul 2018 18:36:18 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f342b6f6c448202bf635605f1ab1d8727eb3b26cf477374ee79f407a01c8d8`  
		Last Modified: Tue, 17 Jul 2018 21:41:41 GMT  
		Size: 139.4 MB (139410385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c032123260c9411fcb01bdaf2804f226248d2f5a8091e31539f8eb61c9f7474`  
		Last Modified: Tue, 17 Jul 2018 21:41:22 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.0.5`

```console
$ docker pull geonetwork@sha256:4e53ba676a1d5f97b0972477fc708dbe5c62e519850cabdb4da420225626af64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `geonetwork:3.0.5` - linux; amd64

```console
$ docker pull geonetwork@sha256:38e3f7ab46f25633e97143894a4e26e20d56aa08351b1ad899e8a7c2c405d283
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.8 MB (307820717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebe7a5040e6916c70aadba42ae3c4c1ff392ecd9333dbd859927aafdc047d7ba`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:04:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:04:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 06:25:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:25:50 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:25:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:25:52 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:25:52 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 06:25:53 GMT
ENV JAVA_VERSION=7u181
# Tue, 17 Jul 2018 06:25:53 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 17 Jul 2018 06:26:59 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 17:55:27 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 17 Jul 2018 17:55:28 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 17:55:29 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 17 Jul 2018 17:55:29 GMT
WORKDIR /usr/local/tomcat
# Tue, 17 Jul 2018 17:55:29 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 17 Jul 2018 17:55:29 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 17 Jul 2018 17:55:30 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Tue, 17 Jul 2018 17:56:12 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 17:56:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:56:58 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 17 Jul 2018 18:07:23 GMT
ENV TOMCAT_MAJOR=8
# Tue, 17 Jul 2018 18:07:24 GMT
ENV TOMCAT_VERSION=8.0.53
# Tue, 17 Jul 2018 18:07:24 GMT
ENV TOMCAT_SHA512=cd8a4e48a629a2f2bb4ce6b101ebcce41da52b506064396ec1b2915c0b0d8d82123091242f2929a649bcd8b65ecf6cd1ab9c7d90ac0e261821097ab6fbe22df9
# Tue, 17 Jul 2018 18:07:24 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz
# Tue, 17 Jul 2018 18:07:25 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc
# Tue, 17 Jul 2018 18:09:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 17 Jul 2018 18:09:21 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 17 Jul 2018 18:09:21 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 18:09:22 GMT
CMD ["catalina.sh" "run"]
# Tue, 17 Jul 2018 21:33:18 GMT
ENV GN_FILE=geonetwork.war
# Tue, 17 Jul 2018 21:33:18 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Tue, 17 Jul 2018 21:33:18 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -Xmx512M -Xss2M -XX:MaxPermSize=512m -XX:+UseConcMarkSweepGC
# Tue, 17 Jul 2018 21:33:19 GMT
ENV GN_VERSION=3.0.5
# Tue, 17 Jul 2018 21:33:19 GMT
ENV GN_DOWNLOAD_MD5=1e77c39de4ad156cc9b3c2b033cab359
# Tue, 17 Jul 2018 21:33:19 GMT
WORKDIR /usr/local/tomcat/webapps
# Tue, 17 Jul 2018 21:33:30 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Tue, 17 Jul 2018 21:33:30 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Tue, 17 Jul 2018 21:33:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 21:33:31 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46dde23c37b3419122bb597461c1a48bdea1842aaae7dbe728dfa20a9aabe11b`  
		Last Modified: Tue, 17 Jul 2018 03:47:37 GMT  
		Size: 17.5 MB (17538077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5ffaa94f61555d66da1679c14e9ced99965370c3c4eca6892a5700a0526960`  
		Last Modified: Tue, 17 Jul 2018 07:17:52 GMT  
		Size: 795.1 KB (795126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e9f30394f51490c8d65386733f9150e84961b1dca879ec5a679f28a01d13b1`  
		Last Modified: Tue, 17 Jul 2018 07:17:54 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae3a41d58736ab9bc81c2e0ba576abd7b92e629c048ad27916c426c24781935`  
		Last Modified: Tue, 17 Jul 2018 07:17:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eea330fdc65502048e11d227eac2e0aaf8a2e4758c1f2ac5692d6f554882579`  
		Last Modified: Tue, 17 Jul 2018 07:18:12 GMT  
		Size: 81.8 MB (81797664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d051bc0952500912ff1e20a5cb9c199c16cc0cae692818383924ccca4f8d8cae`  
		Last Modified: Tue, 17 Jul 2018 18:30:18 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f397a5ced631a9752923014c579d5345fdde06f2bca9a57f60363665ac4f63`  
		Last Modified: Tue, 17 Jul 2018 18:30:17 GMT  
		Size: 3.1 MB (3115123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b01e0b079d4c7152ff92372f4ab65fe6ad610256e39500037e9ba7526723415`  
		Last Modified: Tue, 17 Jul 2018 18:30:16 GMT  
		Size: 531.8 KB (531827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6cf68d3cdacc6461e59d9c85e409551365f4b7be45b5dea01dbf9e1d8d74467`  
		Last Modified: Tue, 17 Jul 2018 18:36:21 GMT  
		Size: 10.4 MB (10379452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b2093215ca351bd10d007e97447a65706f9067ee9b4000c4fc03bc8557f3124`  
		Last Modified: Tue, 17 Jul 2018 18:36:18 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f342b6f6c448202bf635605f1ab1d8727eb3b26cf477374ee79f407a01c8d8`  
		Last Modified: Tue, 17 Jul 2018 21:41:41 GMT  
		Size: 139.4 MB (139410385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c032123260c9411fcb01bdaf2804f226248d2f5a8091e31539f8eb61c9f7474`  
		Last Modified: Tue, 17 Jul 2018 21:41:22 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.0.5-postgres`

```console
$ docker pull geonetwork@sha256:ca127a223710200cc42c8322c11e70d81e655365b634d66c5415bd0576d15ed6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `geonetwork:3.0.5-postgres` - linux; amd64

```console
$ docker pull geonetwork@sha256:a5e1a2b6012cf0f44d87192ae80e7646f43c1223f800fd9bb4bbfcea704204f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.8 MB (318824609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dc4169532fdd19aef98983ef4fe55ecb4ea1872a9c010fc04e5a9925cc51102`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:04:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:04:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 06:25:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:25:50 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:25:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:25:52 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:25:52 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 06:25:53 GMT
ENV JAVA_VERSION=7u181
# Tue, 17 Jul 2018 06:25:53 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 17 Jul 2018 06:26:59 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 17:55:27 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 17 Jul 2018 17:55:28 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 17:55:29 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 17 Jul 2018 17:55:29 GMT
WORKDIR /usr/local/tomcat
# Tue, 17 Jul 2018 17:55:29 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 17 Jul 2018 17:55:29 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 17 Jul 2018 17:55:30 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Tue, 17 Jul 2018 17:56:12 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 17:56:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:56:58 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 17 Jul 2018 18:07:23 GMT
ENV TOMCAT_MAJOR=8
# Tue, 17 Jul 2018 18:07:24 GMT
ENV TOMCAT_VERSION=8.0.53
# Tue, 17 Jul 2018 18:07:24 GMT
ENV TOMCAT_SHA512=cd8a4e48a629a2f2bb4ce6b101ebcce41da52b506064396ec1b2915c0b0d8d82123091242f2929a649bcd8b65ecf6cd1ab9c7d90ac0e261821097ab6fbe22df9
# Tue, 17 Jul 2018 18:07:24 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz
# Tue, 17 Jul 2018 18:07:25 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc
# Tue, 17 Jul 2018 18:09:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 17 Jul 2018 18:09:21 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 17 Jul 2018 18:09:21 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 18:09:22 GMT
CMD ["catalina.sh" "run"]
# Tue, 17 Jul 2018 21:33:18 GMT
ENV GN_FILE=geonetwork.war
# Tue, 17 Jul 2018 21:33:18 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Tue, 17 Jul 2018 21:33:18 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -Xmx512M -Xss2M -XX:MaxPermSize=512m -XX:+UseConcMarkSweepGC
# Tue, 17 Jul 2018 21:33:19 GMT
ENV GN_VERSION=3.0.5
# Tue, 17 Jul 2018 21:33:19 GMT
ENV GN_DOWNLOAD_MD5=1e77c39de4ad156cc9b3c2b033cab359
# Tue, 17 Jul 2018 21:33:19 GMT
WORKDIR /usr/local/tomcat/webapps
# Tue, 17 Jul 2018 21:33:30 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Tue, 17 Jul 2018 21:33:30 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Tue, 17 Jul 2018 21:33:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 21:33:31 GMT
CMD ["catalina.sh" "run"]
# Tue, 17 Jul 2018 21:34:35 GMT
RUN apt-get update && apt-get install -y postgresql-client &&     rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 21:34:47 GMT
RUN sed -i -e 's#<import resource="../config-db/h2.xml"/>#<!--<import resource="../config-db/h2.xml"/> -->#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml
# Tue, 17 Jul 2018 21:34:48 GMT
COPY file:e2fbb7cf0447a8bc2706127d7dc9bceba30008f926826a6c3bf869efc97b906d in /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties 
# Tue, 17 Jul 2018 21:34:49 GMT
COPY file:2dd6f92687b208fdde8d0d8fa36354e2e373245faae443043799a7cca9e3538a in /entrypoint.sh 
# Tue, 17 Jul 2018 21:34:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 21:34:49 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46dde23c37b3419122bb597461c1a48bdea1842aaae7dbe728dfa20a9aabe11b`  
		Last Modified: Tue, 17 Jul 2018 03:47:37 GMT  
		Size: 17.5 MB (17538077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5ffaa94f61555d66da1679c14e9ced99965370c3c4eca6892a5700a0526960`  
		Last Modified: Tue, 17 Jul 2018 07:17:52 GMT  
		Size: 795.1 KB (795126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e9f30394f51490c8d65386733f9150e84961b1dca879ec5a679f28a01d13b1`  
		Last Modified: Tue, 17 Jul 2018 07:17:54 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae3a41d58736ab9bc81c2e0ba576abd7b92e629c048ad27916c426c24781935`  
		Last Modified: Tue, 17 Jul 2018 07:17:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eea330fdc65502048e11d227eac2e0aaf8a2e4758c1f2ac5692d6f554882579`  
		Last Modified: Tue, 17 Jul 2018 07:18:12 GMT  
		Size: 81.8 MB (81797664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d051bc0952500912ff1e20a5cb9c199c16cc0cae692818383924ccca4f8d8cae`  
		Last Modified: Tue, 17 Jul 2018 18:30:18 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f397a5ced631a9752923014c579d5345fdde06f2bca9a57f60363665ac4f63`  
		Last Modified: Tue, 17 Jul 2018 18:30:17 GMT  
		Size: 3.1 MB (3115123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b01e0b079d4c7152ff92372f4ab65fe6ad610256e39500037e9ba7526723415`  
		Last Modified: Tue, 17 Jul 2018 18:30:16 GMT  
		Size: 531.8 KB (531827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6cf68d3cdacc6461e59d9c85e409551365f4b7be45b5dea01dbf9e1d8d74467`  
		Last Modified: Tue, 17 Jul 2018 18:36:21 GMT  
		Size: 10.4 MB (10379452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b2093215ca351bd10d007e97447a65706f9067ee9b4000c4fc03bc8557f3124`  
		Last Modified: Tue, 17 Jul 2018 18:36:18 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f342b6f6c448202bf635605f1ab1d8727eb3b26cf477374ee79f407a01c8d8`  
		Last Modified: Tue, 17 Jul 2018 21:41:41 GMT  
		Size: 139.4 MB (139410385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c032123260c9411fcb01bdaf2804f226248d2f5a8091e31539f8eb61c9f7474`  
		Last Modified: Tue, 17 Jul 2018 21:41:22 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd606c48ff11e2194b100dc934fe29ef9277690cab6a7592edcb64b1c3080a59`  
		Last Modified: Tue, 17 Jul 2018 21:42:25 GMT  
		Size: 11.0 MB (11001704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3adff94ee02da4fe6058ff0f614bc1c26e6dd4130e148f90c4766145d75cfc`  
		Last Modified: Tue, 17 Jul 2018 21:42:21 GMT  
		Size: 706.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7e7403b69eab6c1857c4460346869f4055cdadb80b90ec1a5eae20dc409cc30`  
		Last Modified: Tue, 17 Jul 2018 21:42:30 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a42a22a3b122281a4348b985ce10eab32ffe09bba6f2719761a1e2ae4203a3`  
		Last Modified: Tue, 17 Jul 2018 21:42:20 GMT  
		Size: 927.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.0-postgres`

```console
$ docker pull geonetwork@sha256:ca127a223710200cc42c8322c11e70d81e655365b634d66c5415bd0576d15ed6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `geonetwork:3.0-postgres` - linux; amd64

```console
$ docker pull geonetwork@sha256:a5e1a2b6012cf0f44d87192ae80e7646f43c1223f800fd9bb4bbfcea704204f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.8 MB (318824609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dc4169532fdd19aef98983ef4fe55ecb4ea1872a9c010fc04e5a9925cc51102`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:04:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:04:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 06:25:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:25:50 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:25:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:25:52 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:25:52 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 06:25:53 GMT
ENV JAVA_VERSION=7u181
# Tue, 17 Jul 2018 06:25:53 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 17 Jul 2018 06:26:59 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 17:55:27 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 17 Jul 2018 17:55:28 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 17:55:29 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 17 Jul 2018 17:55:29 GMT
WORKDIR /usr/local/tomcat
# Tue, 17 Jul 2018 17:55:29 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 17 Jul 2018 17:55:29 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 17 Jul 2018 17:55:30 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Tue, 17 Jul 2018 17:56:12 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 17:56:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:56:58 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 17 Jul 2018 18:07:23 GMT
ENV TOMCAT_MAJOR=8
# Tue, 17 Jul 2018 18:07:24 GMT
ENV TOMCAT_VERSION=8.0.53
# Tue, 17 Jul 2018 18:07:24 GMT
ENV TOMCAT_SHA512=cd8a4e48a629a2f2bb4ce6b101ebcce41da52b506064396ec1b2915c0b0d8d82123091242f2929a649bcd8b65ecf6cd1ab9c7d90ac0e261821097ab6fbe22df9
# Tue, 17 Jul 2018 18:07:24 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz
# Tue, 17 Jul 2018 18:07:25 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc
# Tue, 17 Jul 2018 18:09:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 17 Jul 2018 18:09:21 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 17 Jul 2018 18:09:21 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 18:09:22 GMT
CMD ["catalina.sh" "run"]
# Tue, 17 Jul 2018 21:33:18 GMT
ENV GN_FILE=geonetwork.war
# Tue, 17 Jul 2018 21:33:18 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Tue, 17 Jul 2018 21:33:18 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -Xmx512M -Xss2M -XX:MaxPermSize=512m -XX:+UseConcMarkSweepGC
# Tue, 17 Jul 2018 21:33:19 GMT
ENV GN_VERSION=3.0.5
# Tue, 17 Jul 2018 21:33:19 GMT
ENV GN_DOWNLOAD_MD5=1e77c39de4ad156cc9b3c2b033cab359
# Tue, 17 Jul 2018 21:33:19 GMT
WORKDIR /usr/local/tomcat/webapps
# Tue, 17 Jul 2018 21:33:30 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Tue, 17 Jul 2018 21:33:30 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Tue, 17 Jul 2018 21:33:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 21:33:31 GMT
CMD ["catalina.sh" "run"]
# Tue, 17 Jul 2018 21:34:35 GMT
RUN apt-get update && apt-get install -y postgresql-client &&     rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 21:34:47 GMT
RUN sed -i -e 's#<import resource="../config-db/h2.xml"/>#<!--<import resource="../config-db/h2.xml"/> -->#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml
# Tue, 17 Jul 2018 21:34:48 GMT
COPY file:e2fbb7cf0447a8bc2706127d7dc9bceba30008f926826a6c3bf869efc97b906d in /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties 
# Tue, 17 Jul 2018 21:34:49 GMT
COPY file:2dd6f92687b208fdde8d0d8fa36354e2e373245faae443043799a7cca9e3538a in /entrypoint.sh 
# Tue, 17 Jul 2018 21:34:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 21:34:49 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46dde23c37b3419122bb597461c1a48bdea1842aaae7dbe728dfa20a9aabe11b`  
		Last Modified: Tue, 17 Jul 2018 03:47:37 GMT  
		Size: 17.5 MB (17538077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5ffaa94f61555d66da1679c14e9ced99965370c3c4eca6892a5700a0526960`  
		Last Modified: Tue, 17 Jul 2018 07:17:52 GMT  
		Size: 795.1 KB (795126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e9f30394f51490c8d65386733f9150e84961b1dca879ec5a679f28a01d13b1`  
		Last Modified: Tue, 17 Jul 2018 07:17:54 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae3a41d58736ab9bc81c2e0ba576abd7b92e629c048ad27916c426c24781935`  
		Last Modified: Tue, 17 Jul 2018 07:17:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eea330fdc65502048e11d227eac2e0aaf8a2e4758c1f2ac5692d6f554882579`  
		Last Modified: Tue, 17 Jul 2018 07:18:12 GMT  
		Size: 81.8 MB (81797664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d051bc0952500912ff1e20a5cb9c199c16cc0cae692818383924ccca4f8d8cae`  
		Last Modified: Tue, 17 Jul 2018 18:30:18 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f397a5ced631a9752923014c579d5345fdde06f2bca9a57f60363665ac4f63`  
		Last Modified: Tue, 17 Jul 2018 18:30:17 GMT  
		Size: 3.1 MB (3115123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b01e0b079d4c7152ff92372f4ab65fe6ad610256e39500037e9ba7526723415`  
		Last Modified: Tue, 17 Jul 2018 18:30:16 GMT  
		Size: 531.8 KB (531827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6cf68d3cdacc6461e59d9c85e409551365f4b7be45b5dea01dbf9e1d8d74467`  
		Last Modified: Tue, 17 Jul 2018 18:36:21 GMT  
		Size: 10.4 MB (10379452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b2093215ca351bd10d007e97447a65706f9067ee9b4000c4fc03bc8557f3124`  
		Last Modified: Tue, 17 Jul 2018 18:36:18 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f342b6f6c448202bf635605f1ab1d8727eb3b26cf477374ee79f407a01c8d8`  
		Last Modified: Tue, 17 Jul 2018 21:41:41 GMT  
		Size: 139.4 MB (139410385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c032123260c9411fcb01bdaf2804f226248d2f5a8091e31539f8eb61c9f7474`  
		Last Modified: Tue, 17 Jul 2018 21:41:22 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd606c48ff11e2194b100dc934fe29ef9277690cab6a7592edcb64b1c3080a59`  
		Last Modified: Tue, 17 Jul 2018 21:42:25 GMT  
		Size: 11.0 MB (11001704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3adff94ee02da4fe6058ff0f614bc1c26e6dd4130e148f90c4766145d75cfc`  
		Last Modified: Tue, 17 Jul 2018 21:42:21 GMT  
		Size: 706.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7e7403b69eab6c1857c4460346869f4055cdadb80b90ec1a5eae20dc409cc30`  
		Last Modified: Tue, 17 Jul 2018 21:42:30 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a42a22a3b122281a4348b985ce10eab32ffe09bba6f2719761a1e2ae4203a3`  
		Last Modified: Tue, 17 Jul 2018 21:42:20 GMT  
		Size: 927.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.2`

```console
$ docker pull geonetwork@sha256:9f17ab2c3b418057ebcb33911a7876abb07cb26162c26ce718ed587c9f4a380f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `geonetwork:3.2` - linux; amd64

```console
$ docker pull geonetwork@sha256:ac1a6f45363b464f6dcf628011eeaa4065e38980fc99f1e8c7e84d1eda7d7324
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **388.4 MB (388376685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7130c9004ad97766b810532774c78c8c7a80bea5e73c972d7df6bce66a83c603`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 06:19:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:19:33 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:19:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:19:34 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 06:19:35 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 06:20:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 06:20:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 18:03:30 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 17 Jul 2018 18:03:31 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 18:03:32 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 17 Jul 2018 18:03:32 GMT
WORKDIR /usr/local/tomcat
# Tue, 17 Jul 2018 18:03:33 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 17 Jul 2018 18:03:33 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 17 Jul 2018 18:03:33 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Tue, 17 Jul 2018 18:03:35 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 18:03:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:03:42 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 17 Jul 2018 18:12:46 GMT
ENV TOMCAT_MAJOR=8
# Tue, 17 Jul 2018 18:12:46 GMT
ENV TOMCAT_VERSION=8.0.53
# Tue, 17 Jul 2018 18:12:46 GMT
ENV TOMCAT_SHA512=cd8a4e48a629a2f2bb4ce6b101ebcce41da52b506064396ec1b2915c0b0d8d82123091242f2929a649bcd8b65ecf6cd1ab9c7d90ac0e261821097ab6fbe22df9
# Tue, 17 Jul 2018 18:12:47 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz
# Tue, 17 Jul 2018 18:12:47 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc
# Tue, 17 Jul 2018 18:13:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 17 Jul 2018 18:13:27 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 17 Jul 2018 18:13:27 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 18:13:28 GMT
CMD ["catalina.sh" "run"]
# Tue, 17 Jul 2018 21:35:09 GMT
ENV GN_FILE=geonetwork.war
# Tue, 17 Jul 2018 21:35:10 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Tue, 17 Jul 2018 21:35:10 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Tue, 17 Jul 2018 21:35:10 GMT
ENV GN_VERSION=3.2.2
# Tue, 17 Jul 2018 21:35:11 GMT
ENV GN_DOWNLOAD_MD5=93b5279223503106ffeea3e9ca697805
# Tue, 17 Jul 2018 21:35:11 GMT
WORKDIR /usr/local/tomcat/webapps
# Tue, 17 Jul 2018 21:37:18 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Tue, 17 Jul 2018 21:37:24 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Tue, 17 Jul 2018 21:37:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 21:37:24 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1290813abd9d0a07ce709b4e491f4194f2b854295d93bdc068b7a576756fb515`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 852.9 KB (852875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a6b982ad6d7f57b4a8a4052561dc7b0377bd8d4028bce8a93a4d31e60b79329`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb029e68402beca7edc4627d5034aa72b37c74d8af9badb3284a69f17b91bb6`  
		Last Modified: Tue, 17 Jul 2018 07:03:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd067dc06dc22738d62cce6cdb6635e1ab22f4e4b220b8f27351e41e2b0c915`  
		Last Modified: Tue, 17 Jul 2018 07:04:32 GMT  
		Size: 122.1 MB (122099696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9ce2097b98d0b49e6bdcb0219400b65d301f87aa23acc7b652faa2d6c4973a`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 246.7 KB (246746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6db5874b692ef1489933d661d7ec70bb9e1a8f8d928454e6bdc107e8d804221`  
		Last Modified: Tue, 17 Jul 2018 18:34:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b4aa3d52c51fe6f0acad9af40cfbdbf2848080f15055f2b360e438aae10e1e`  
		Last Modified: Tue, 17 Jul 2018 18:34:17 GMT  
		Size: 528.3 KB (528348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:091868d8012a29eeda05c60005a6940068f8fecefde8f2de1851a7096e154284`  
		Last Modified: Tue, 17 Jul 2018 18:39:19 GMT  
		Size: 10.4 MB (10433064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af6b221adeb0f3672b6a6d297d95fd5dd673a04f7a3a5182835a27c081c2edc3`  
		Last Modified: Tue, 17 Jul 2018 18:39:17 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d181bd39480c1aebb90bc6335d589d9002885dc453ba0d08de9436a51d8418a6`  
		Last Modified: Tue, 17 Jul 2018 21:43:43 GMT  
		Size: 193.8 MB (193828733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e3f274c8d8fff0feb563f38e643030760b59489b3ed3c50d165a43822305955`  
		Last Modified: Tue, 17 Jul 2018 21:43:12 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.2.2`

```console
$ docker pull geonetwork@sha256:9f17ab2c3b418057ebcb33911a7876abb07cb26162c26ce718ed587c9f4a380f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `geonetwork:3.2.2` - linux; amd64

```console
$ docker pull geonetwork@sha256:ac1a6f45363b464f6dcf628011eeaa4065e38980fc99f1e8c7e84d1eda7d7324
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **388.4 MB (388376685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7130c9004ad97766b810532774c78c8c7a80bea5e73c972d7df6bce66a83c603`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 06:19:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:19:33 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:19:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:19:34 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 06:19:35 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 06:20:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 06:20:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 18:03:30 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 17 Jul 2018 18:03:31 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 18:03:32 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 17 Jul 2018 18:03:32 GMT
WORKDIR /usr/local/tomcat
# Tue, 17 Jul 2018 18:03:33 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 17 Jul 2018 18:03:33 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 17 Jul 2018 18:03:33 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Tue, 17 Jul 2018 18:03:35 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 18:03:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:03:42 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 17 Jul 2018 18:12:46 GMT
ENV TOMCAT_MAJOR=8
# Tue, 17 Jul 2018 18:12:46 GMT
ENV TOMCAT_VERSION=8.0.53
# Tue, 17 Jul 2018 18:12:46 GMT
ENV TOMCAT_SHA512=cd8a4e48a629a2f2bb4ce6b101ebcce41da52b506064396ec1b2915c0b0d8d82123091242f2929a649bcd8b65ecf6cd1ab9c7d90ac0e261821097ab6fbe22df9
# Tue, 17 Jul 2018 18:12:47 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz
# Tue, 17 Jul 2018 18:12:47 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc
# Tue, 17 Jul 2018 18:13:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 17 Jul 2018 18:13:27 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 17 Jul 2018 18:13:27 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 18:13:28 GMT
CMD ["catalina.sh" "run"]
# Tue, 17 Jul 2018 21:35:09 GMT
ENV GN_FILE=geonetwork.war
# Tue, 17 Jul 2018 21:35:10 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Tue, 17 Jul 2018 21:35:10 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Tue, 17 Jul 2018 21:35:10 GMT
ENV GN_VERSION=3.2.2
# Tue, 17 Jul 2018 21:35:11 GMT
ENV GN_DOWNLOAD_MD5=93b5279223503106ffeea3e9ca697805
# Tue, 17 Jul 2018 21:35:11 GMT
WORKDIR /usr/local/tomcat/webapps
# Tue, 17 Jul 2018 21:37:18 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Tue, 17 Jul 2018 21:37:24 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Tue, 17 Jul 2018 21:37:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 21:37:24 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1290813abd9d0a07ce709b4e491f4194f2b854295d93bdc068b7a576756fb515`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 852.9 KB (852875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a6b982ad6d7f57b4a8a4052561dc7b0377bd8d4028bce8a93a4d31e60b79329`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb029e68402beca7edc4627d5034aa72b37c74d8af9badb3284a69f17b91bb6`  
		Last Modified: Tue, 17 Jul 2018 07:03:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd067dc06dc22738d62cce6cdb6635e1ab22f4e4b220b8f27351e41e2b0c915`  
		Last Modified: Tue, 17 Jul 2018 07:04:32 GMT  
		Size: 122.1 MB (122099696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9ce2097b98d0b49e6bdcb0219400b65d301f87aa23acc7b652faa2d6c4973a`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 246.7 KB (246746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6db5874b692ef1489933d661d7ec70bb9e1a8f8d928454e6bdc107e8d804221`  
		Last Modified: Tue, 17 Jul 2018 18:34:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b4aa3d52c51fe6f0acad9af40cfbdbf2848080f15055f2b360e438aae10e1e`  
		Last Modified: Tue, 17 Jul 2018 18:34:17 GMT  
		Size: 528.3 KB (528348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:091868d8012a29eeda05c60005a6940068f8fecefde8f2de1851a7096e154284`  
		Last Modified: Tue, 17 Jul 2018 18:39:19 GMT  
		Size: 10.4 MB (10433064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af6b221adeb0f3672b6a6d297d95fd5dd673a04f7a3a5182835a27c081c2edc3`  
		Last Modified: Tue, 17 Jul 2018 18:39:17 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d181bd39480c1aebb90bc6335d589d9002885dc453ba0d08de9436a51d8418a6`  
		Last Modified: Tue, 17 Jul 2018 21:43:43 GMT  
		Size: 193.8 MB (193828733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e3f274c8d8fff0feb563f38e643030760b59489b3ed3c50d165a43822305955`  
		Last Modified: Tue, 17 Jul 2018 21:43:12 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.2.2-postgres`

```console
$ docker pull geonetwork@sha256:07f399339cb50df296f07ae3d658c0d6f389124e4d657883bc3753cda777d058
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `geonetwork:3.2.2-postgres` - linux; amd64

```console
$ docker pull geonetwork@sha256:fa6d21c39afe6cd18aa724a09e944fd61b79bd7cdccdb1b0900e1b32f849a045
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **401.7 MB (401679658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af6570a0448fd9dc7bf4fa4cf586e5bc01880fa04b5faf01d5beaff67e8d30ab`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 06:19:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:19:33 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:19:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:19:34 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 06:19:35 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 06:20:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 06:20:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 18:03:30 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 17 Jul 2018 18:03:31 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 18:03:32 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 17 Jul 2018 18:03:32 GMT
WORKDIR /usr/local/tomcat
# Tue, 17 Jul 2018 18:03:33 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 17 Jul 2018 18:03:33 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 17 Jul 2018 18:03:33 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Tue, 17 Jul 2018 18:03:35 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 18:03:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:03:42 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 17 Jul 2018 18:12:46 GMT
ENV TOMCAT_MAJOR=8
# Tue, 17 Jul 2018 18:12:46 GMT
ENV TOMCAT_VERSION=8.0.53
# Tue, 17 Jul 2018 18:12:46 GMT
ENV TOMCAT_SHA512=cd8a4e48a629a2f2bb4ce6b101ebcce41da52b506064396ec1b2915c0b0d8d82123091242f2929a649bcd8b65ecf6cd1ab9c7d90ac0e261821097ab6fbe22df9
# Tue, 17 Jul 2018 18:12:47 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz
# Tue, 17 Jul 2018 18:12:47 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc
# Tue, 17 Jul 2018 18:13:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 17 Jul 2018 18:13:27 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 17 Jul 2018 18:13:27 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 18:13:28 GMT
CMD ["catalina.sh" "run"]
# Tue, 17 Jul 2018 21:35:09 GMT
ENV GN_FILE=geonetwork.war
# Tue, 17 Jul 2018 21:35:10 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Tue, 17 Jul 2018 21:35:10 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Tue, 17 Jul 2018 21:35:10 GMT
ENV GN_VERSION=3.2.2
# Tue, 17 Jul 2018 21:35:11 GMT
ENV GN_DOWNLOAD_MD5=93b5279223503106ffeea3e9ca697805
# Tue, 17 Jul 2018 21:35:11 GMT
WORKDIR /usr/local/tomcat/webapps
# Tue, 17 Jul 2018 21:37:18 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Tue, 17 Jul 2018 21:37:24 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Tue, 17 Jul 2018 21:37:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 21:37:24 GMT
CMD ["catalina.sh" "run"]
# Tue, 17 Jul 2018 21:38:55 GMT
RUN apt-get update && apt-get install -y postgresql-client &&     rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 21:38:56 GMT
RUN sed -i -e 's#<import resource="../config-db/h2.xml"/>#<!--<import resource="../config-db/h2.xml"/> -->#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml
# Tue, 17 Jul 2018 21:38:56 GMT
COPY file:e2fbb7cf0447a8bc2706127d7dc9bceba30008f926826a6c3bf869efc97b906d in /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties 
# Tue, 17 Jul 2018 21:38:57 GMT
COPY file:2dd6f92687b208fdde8d0d8fa36354e2e373245faae443043799a7cca9e3538a in /entrypoint.sh 
# Tue, 17 Jul 2018 21:38:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 21:38:57 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1290813abd9d0a07ce709b4e491f4194f2b854295d93bdc068b7a576756fb515`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 852.9 KB (852875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a6b982ad6d7f57b4a8a4052561dc7b0377bd8d4028bce8a93a4d31e60b79329`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb029e68402beca7edc4627d5034aa72b37c74d8af9badb3284a69f17b91bb6`  
		Last Modified: Tue, 17 Jul 2018 07:03:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd067dc06dc22738d62cce6cdb6635e1ab22f4e4b220b8f27351e41e2b0c915`  
		Last Modified: Tue, 17 Jul 2018 07:04:32 GMT  
		Size: 122.1 MB (122099696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9ce2097b98d0b49e6bdcb0219400b65d301f87aa23acc7b652faa2d6c4973a`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 246.7 KB (246746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6db5874b692ef1489933d661d7ec70bb9e1a8f8d928454e6bdc107e8d804221`  
		Last Modified: Tue, 17 Jul 2018 18:34:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b4aa3d52c51fe6f0acad9af40cfbdbf2848080f15055f2b360e438aae10e1e`  
		Last Modified: Tue, 17 Jul 2018 18:34:17 GMT  
		Size: 528.3 KB (528348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:091868d8012a29eeda05c60005a6940068f8fecefde8f2de1851a7096e154284`  
		Last Modified: Tue, 17 Jul 2018 18:39:19 GMT  
		Size: 10.4 MB (10433064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af6b221adeb0f3672b6a6d297d95fd5dd673a04f7a3a5182835a27c081c2edc3`  
		Last Modified: Tue, 17 Jul 2018 18:39:17 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d181bd39480c1aebb90bc6335d589d9002885dc453ba0d08de9436a51d8418a6`  
		Last Modified: Tue, 17 Jul 2018 21:43:43 GMT  
		Size: 193.8 MB (193828733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e3f274c8d8fff0feb563f38e643030760b59489b3ed3c50d165a43822305955`  
		Last Modified: Tue, 17 Jul 2018 21:43:12 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37870be31ff1caaad113d00073627386369ab9693cc0d290859154ab8cbf75e8`  
		Last Modified: Tue, 17 Jul 2018 21:44:40 GMT  
		Size: 13.3 MB (13300205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8870106eed5c39123f007a221b0c28794ad0ab5612ea92785b11287cb004571`  
		Last Modified: Tue, 17 Jul 2018 21:44:35 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fd4b6d515e38ec38c1f50b1fe2589eedb9d8de3ce6cefdc4caca07dd7c3021a`  
		Last Modified: Tue, 17 Jul 2018 21:44:34 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc1e784cfcd8fad0662d0915b213ff17187aa555fa34438f34777b054135864`  
		Last Modified: Tue, 17 Jul 2018 21:44:35 GMT  
		Size: 927.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.2-postgres`

```console
$ docker pull geonetwork@sha256:07f399339cb50df296f07ae3d658c0d6f389124e4d657883bc3753cda777d058
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `geonetwork:3.2-postgres` - linux; amd64

```console
$ docker pull geonetwork@sha256:fa6d21c39afe6cd18aa724a09e944fd61b79bd7cdccdb1b0900e1b32f849a045
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **401.7 MB (401679658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af6570a0448fd9dc7bf4fa4cf586e5bc01880fa04b5faf01d5beaff67e8d30ab`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 06:19:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:19:33 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:19:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:19:34 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 06:19:35 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 06:20:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 06:20:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 18:03:30 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 17 Jul 2018 18:03:31 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 18:03:32 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 17 Jul 2018 18:03:32 GMT
WORKDIR /usr/local/tomcat
# Tue, 17 Jul 2018 18:03:33 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 17 Jul 2018 18:03:33 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 17 Jul 2018 18:03:33 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Tue, 17 Jul 2018 18:03:35 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 18:03:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:03:42 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 17 Jul 2018 18:12:46 GMT
ENV TOMCAT_MAJOR=8
# Tue, 17 Jul 2018 18:12:46 GMT
ENV TOMCAT_VERSION=8.0.53
# Tue, 17 Jul 2018 18:12:46 GMT
ENV TOMCAT_SHA512=cd8a4e48a629a2f2bb4ce6b101ebcce41da52b506064396ec1b2915c0b0d8d82123091242f2929a649bcd8b65ecf6cd1ab9c7d90ac0e261821097ab6fbe22df9
# Tue, 17 Jul 2018 18:12:47 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz
# Tue, 17 Jul 2018 18:12:47 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc
# Tue, 17 Jul 2018 18:13:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 17 Jul 2018 18:13:27 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 17 Jul 2018 18:13:27 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 18:13:28 GMT
CMD ["catalina.sh" "run"]
# Tue, 17 Jul 2018 21:35:09 GMT
ENV GN_FILE=geonetwork.war
# Tue, 17 Jul 2018 21:35:10 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Tue, 17 Jul 2018 21:35:10 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Tue, 17 Jul 2018 21:35:10 GMT
ENV GN_VERSION=3.2.2
# Tue, 17 Jul 2018 21:35:11 GMT
ENV GN_DOWNLOAD_MD5=93b5279223503106ffeea3e9ca697805
# Tue, 17 Jul 2018 21:35:11 GMT
WORKDIR /usr/local/tomcat/webapps
# Tue, 17 Jul 2018 21:37:18 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Tue, 17 Jul 2018 21:37:24 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Tue, 17 Jul 2018 21:37:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 21:37:24 GMT
CMD ["catalina.sh" "run"]
# Tue, 17 Jul 2018 21:38:55 GMT
RUN apt-get update && apt-get install -y postgresql-client &&     rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 21:38:56 GMT
RUN sed -i -e 's#<import resource="../config-db/h2.xml"/>#<!--<import resource="../config-db/h2.xml"/> -->#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml
# Tue, 17 Jul 2018 21:38:56 GMT
COPY file:e2fbb7cf0447a8bc2706127d7dc9bceba30008f926826a6c3bf869efc97b906d in /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties 
# Tue, 17 Jul 2018 21:38:57 GMT
COPY file:2dd6f92687b208fdde8d0d8fa36354e2e373245faae443043799a7cca9e3538a in /entrypoint.sh 
# Tue, 17 Jul 2018 21:38:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 21:38:57 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1290813abd9d0a07ce709b4e491f4194f2b854295d93bdc068b7a576756fb515`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 852.9 KB (852875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a6b982ad6d7f57b4a8a4052561dc7b0377bd8d4028bce8a93a4d31e60b79329`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb029e68402beca7edc4627d5034aa72b37c74d8af9badb3284a69f17b91bb6`  
		Last Modified: Tue, 17 Jul 2018 07:03:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd067dc06dc22738d62cce6cdb6635e1ab22f4e4b220b8f27351e41e2b0c915`  
		Last Modified: Tue, 17 Jul 2018 07:04:32 GMT  
		Size: 122.1 MB (122099696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9ce2097b98d0b49e6bdcb0219400b65d301f87aa23acc7b652faa2d6c4973a`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 246.7 KB (246746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6db5874b692ef1489933d661d7ec70bb9e1a8f8d928454e6bdc107e8d804221`  
		Last Modified: Tue, 17 Jul 2018 18:34:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b4aa3d52c51fe6f0acad9af40cfbdbf2848080f15055f2b360e438aae10e1e`  
		Last Modified: Tue, 17 Jul 2018 18:34:17 GMT  
		Size: 528.3 KB (528348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:091868d8012a29eeda05c60005a6940068f8fecefde8f2de1851a7096e154284`  
		Last Modified: Tue, 17 Jul 2018 18:39:19 GMT  
		Size: 10.4 MB (10433064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af6b221adeb0f3672b6a6d297d95fd5dd673a04f7a3a5182835a27c081c2edc3`  
		Last Modified: Tue, 17 Jul 2018 18:39:17 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d181bd39480c1aebb90bc6335d589d9002885dc453ba0d08de9436a51d8418a6`  
		Last Modified: Tue, 17 Jul 2018 21:43:43 GMT  
		Size: 193.8 MB (193828733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e3f274c8d8fff0feb563f38e643030760b59489b3ed3c50d165a43822305955`  
		Last Modified: Tue, 17 Jul 2018 21:43:12 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37870be31ff1caaad113d00073627386369ab9693cc0d290859154ab8cbf75e8`  
		Last Modified: Tue, 17 Jul 2018 21:44:40 GMT  
		Size: 13.3 MB (13300205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8870106eed5c39123f007a221b0c28794ad0ab5612ea92785b11287cb004571`  
		Last Modified: Tue, 17 Jul 2018 21:44:35 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fd4b6d515e38ec38c1f50b1fe2589eedb9d8de3ce6cefdc4caca07dd7c3021a`  
		Last Modified: Tue, 17 Jul 2018 21:44:34 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc1e784cfcd8fad0662d0915b213ff17187aa555fa34438f34777b054135864`  
		Last Modified: Tue, 17 Jul 2018 21:44:35 GMT  
		Size: 927.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.4`

```console
$ docker pull geonetwork@sha256:528999b517a84857f26d77394e8c928b424cc7a62e1a7ed8c819005ede4c6df2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `geonetwork:3.4` - linux; amd64

```console
$ docker pull geonetwork@sha256:4c3418de10c87a1a8bfe46e6419d39bc533cfc49b9c90286754c8514ae16619b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.3 MB (392273059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91a66dc0f72a39a94dc59caf239e860af95cfd033717bf43bdbfc8970ac25be7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 06:19:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:19:33 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:19:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:19:34 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 06:19:35 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 06:20:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 06:20:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 18:03:30 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 17 Jul 2018 18:03:31 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 18:03:32 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 17 Jul 2018 18:03:32 GMT
WORKDIR /usr/local/tomcat
# Tue, 17 Jul 2018 18:03:33 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 17 Jul 2018 18:03:33 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 17 Jul 2018 18:03:33 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Tue, 17 Jul 2018 18:03:35 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 18:03:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:03:42 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 17 Jul 2018 18:12:46 GMT
ENV TOMCAT_MAJOR=8
# Tue, 17 Jul 2018 18:12:46 GMT
ENV TOMCAT_VERSION=8.0.53
# Tue, 17 Jul 2018 18:12:46 GMT
ENV TOMCAT_SHA512=cd8a4e48a629a2f2bb4ce6b101ebcce41da52b506064396ec1b2915c0b0d8d82123091242f2929a649bcd8b65ecf6cd1ab9c7d90ac0e261821097ab6fbe22df9
# Tue, 17 Jul 2018 18:12:47 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz
# Tue, 17 Jul 2018 18:12:47 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc
# Tue, 17 Jul 2018 18:13:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 17 Jul 2018 18:13:27 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 17 Jul 2018 18:13:27 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 18:13:28 GMT
CMD ["catalina.sh" "run"]
# Tue, 17 Jul 2018 21:35:09 GMT
ENV GN_FILE=geonetwork.war
# Tue, 17 Jul 2018 21:35:10 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Tue, 17 Jul 2018 21:35:10 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Tue, 17 Jul 2018 21:39:40 GMT
ENV GN_VERSION=3.4.2
# Tue, 17 Jul 2018 21:39:40 GMT
ENV GN_DOWNLOAD_MD5=e0ff34ab3995b3a8107f3c3c78f7294a
# Tue, 17 Jul 2018 21:39:40 GMT
WORKDIR /usr/local/tomcat/webapps
# Tue, 17 Jul 2018 21:39:55 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Tue, 17 Jul 2018 21:40:03 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Tue, 17 Jul 2018 21:40:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 21:40:04 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1290813abd9d0a07ce709b4e491f4194f2b854295d93bdc068b7a576756fb515`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 852.9 KB (852875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a6b982ad6d7f57b4a8a4052561dc7b0377bd8d4028bce8a93a4d31e60b79329`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb029e68402beca7edc4627d5034aa72b37c74d8af9badb3284a69f17b91bb6`  
		Last Modified: Tue, 17 Jul 2018 07:03:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd067dc06dc22738d62cce6cdb6635e1ab22f4e4b220b8f27351e41e2b0c915`  
		Last Modified: Tue, 17 Jul 2018 07:04:32 GMT  
		Size: 122.1 MB (122099696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9ce2097b98d0b49e6bdcb0219400b65d301f87aa23acc7b652faa2d6c4973a`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 246.7 KB (246746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6db5874b692ef1489933d661d7ec70bb9e1a8f8d928454e6bdc107e8d804221`  
		Last Modified: Tue, 17 Jul 2018 18:34:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b4aa3d52c51fe6f0acad9af40cfbdbf2848080f15055f2b360e438aae10e1e`  
		Last Modified: Tue, 17 Jul 2018 18:34:17 GMT  
		Size: 528.3 KB (528348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:091868d8012a29eeda05c60005a6940068f8fecefde8f2de1851a7096e154284`  
		Last Modified: Tue, 17 Jul 2018 18:39:19 GMT  
		Size: 10.4 MB (10433064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af6b221adeb0f3672b6a6d297d95fd5dd673a04f7a3a5182835a27c081c2edc3`  
		Last Modified: Tue, 17 Jul 2018 18:39:17 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce7fef2576316dd16de57b5deccf2913d2cd477088d83dd7ca5913ee2e4a38f`  
		Last Modified: Tue, 17 Jul 2018 21:45:56 GMT  
		Size: 197.7 MB (197725108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786f7010ca30011569245311163437f109eed4816ca835ced347a72e72ffa109`  
		Last Modified: Tue, 17 Jul 2018 21:45:31 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.4.2`

```console
$ docker pull geonetwork@sha256:528999b517a84857f26d77394e8c928b424cc7a62e1a7ed8c819005ede4c6df2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `geonetwork:3.4.2` - linux; amd64

```console
$ docker pull geonetwork@sha256:4c3418de10c87a1a8bfe46e6419d39bc533cfc49b9c90286754c8514ae16619b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.3 MB (392273059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91a66dc0f72a39a94dc59caf239e860af95cfd033717bf43bdbfc8970ac25be7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 06:19:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:19:33 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:19:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:19:34 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 06:19:35 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 06:20:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 06:20:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 18:03:30 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 17 Jul 2018 18:03:31 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 18:03:32 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 17 Jul 2018 18:03:32 GMT
WORKDIR /usr/local/tomcat
# Tue, 17 Jul 2018 18:03:33 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 17 Jul 2018 18:03:33 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 17 Jul 2018 18:03:33 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Tue, 17 Jul 2018 18:03:35 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 18:03:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:03:42 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 17 Jul 2018 18:12:46 GMT
ENV TOMCAT_MAJOR=8
# Tue, 17 Jul 2018 18:12:46 GMT
ENV TOMCAT_VERSION=8.0.53
# Tue, 17 Jul 2018 18:12:46 GMT
ENV TOMCAT_SHA512=cd8a4e48a629a2f2bb4ce6b101ebcce41da52b506064396ec1b2915c0b0d8d82123091242f2929a649bcd8b65ecf6cd1ab9c7d90ac0e261821097ab6fbe22df9
# Tue, 17 Jul 2018 18:12:47 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz
# Tue, 17 Jul 2018 18:12:47 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc
# Tue, 17 Jul 2018 18:13:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 17 Jul 2018 18:13:27 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 17 Jul 2018 18:13:27 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 18:13:28 GMT
CMD ["catalina.sh" "run"]
# Tue, 17 Jul 2018 21:35:09 GMT
ENV GN_FILE=geonetwork.war
# Tue, 17 Jul 2018 21:35:10 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Tue, 17 Jul 2018 21:35:10 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Tue, 17 Jul 2018 21:39:40 GMT
ENV GN_VERSION=3.4.2
# Tue, 17 Jul 2018 21:39:40 GMT
ENV GN_DOWNLOAD_MD5=e0ff34ab3995b3a8107f3c3c78f7294a
# Tue, 17 Jul 2018 21:39:40 GMT
WORKDIR /usr/local/tomcat/webapps
# Tue, 17 Jul 2018 21:39:55 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Tue, 17 Jul 2018 21:40:03 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Tue, 17 Jul 2018 21:40:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 21:40:04 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1290813abd9d0a07ce709b4e491f4194f2b854295d93bdc068b7a576756fb515`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 852.9 KB (852875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a6b982ad6d7f57b4a8a4052561dc7b0377bd8d4028bce8a93a4d31e60b79329`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb029e68402beca7edc4627d5034aa72b37c74d8af9badb3284a69f17b91bb6`  
		Last Modified: Tue, 17 Jul 2018 07:03:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd067dc06dc22738d62cce6cdb6635e1ab22f4e4b220b8f27351e41e2b0c915`  
		Last Modified: Tue, 17 Jul 2018 07:04:32 GMT  
		Size: 122.1 MB (122099696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9ce2097b98d0b49e6bdcb0219400b65d301f87aa23acc7b652faa2d6c4973a`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 246.7 KB (246746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6db5874b692ef1489933d661d7ec70bb9e1a8f8d928454e6bdc107e8d804221`  
		Last Modified: Tue, 17 Jul 2018 18:34:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b4aa3d52c51fe6f0acad9af40cfbdbf2848080f15055f2b360e438aae10e1e`  
		Last Modified: Tue, 17 Jul 2018 18:34:17 GMT  
		Size: 528.3 KB (528348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:091868d8012a29eeda05c60005a6940068f8fecefde8f2de1851a7096e154284`  
		Last Modified: Tue, 17 Jul 2018 18:39:19 GMT  
		Size: 10.4 MB (10433064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af6b221adeb0f3672b6a6d297d95fd5dd673a04f7a3a5182835a27c081c2edc3`  
		Last Modified: Tue, 17 Jul 2018 18:39:17 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce7fef2576316dd16de57b5deccf2913d2cd477088d83dd7ca5913ee2e4a38f`  
		Last Modified: Tue, 17 Jul 2018 21:45:56 GMT  
		Size: 197.7 MB (197725108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786f7010ca30011569245311163437f109eed4816ca835ced347a72e72ffa109`  
		Last Modified: Tue, 17 Jul 2018 21:45:31 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.4.2-postgres`

```console
$ docker pull geonetwork@sha256:e5cba65cbb43e5fae1dd95b9705e6903c7e70a718dbc86ad9ff3501aa8aa45cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `geonetwork:3.4.2-postgres` - linux; amd64

```console
$ docker pull geonetwork@sha256:708a165da9454d7f2874cee5c4f918d85ab075ba65e8c4c388361db7d2949d12
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **405.6 MB (405576026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9e4cb92547e374450bee4249a9fbc076bd37b748c892df703665ec3b605fcd5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 06:19:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:19:33 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:19:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:19:34 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 06:19:35 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 06:20:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 06:20:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 18:03:30 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 17 Jul 2018 18:03:31 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 18:03:32 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 17 Jul 2018 18:03:32 GMT
WORKDIR /usr/local/tomcat
# Tue, 17 Jul 2018 18:03:33 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 17 Jul 2018 18:03:33 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 17 Jul 2018 18:03:33 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Tue, 17 Jul 2018 18:03:35 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 18:03:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:03:42 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 17 Jul 2018 18:12:46 GMT
ENV TOMCAT_MAJOR=8
# Tue, 17 Jul 2018 18:12:46 GMT
ENV TOMCAT_VERSION=8.0.53
# Tue, 17 Jul 2018 18:12:46 GMT
ENV TOMCAT_SHA512=cd8a4e48a629a2f2bb4ce6b101ebcce41da52b506064396ec1b2915c0b0d8d82123091242f2929a649bcd8b65ecf6cd1ab9c7d90ac0e261821097ab6fbe22df9
# Tue, 17 Jul 2018 18:12:47 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz
# Tue, 17 Jul 2018 18:12:47 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc
# Tue, 17 Jul 2018 18:13:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 17 Jul 2018 18:13:27 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 17 Jul 2018 18:13:27 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 18:13:28 GMT
CMD ["catalina.sh" "run"]
# Tue, 17 Jul 2018 21:35:09 GMT
ENV GN_FILE=geonetwork.war
# Tue, 17 Jul 2018 21:35:10 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Tue, 17 Jul 2018 21:35:10 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Tue, 17 Jul 2018 21:39:40 GMT
ENV GN_VERSION=3.4.2
# Tue, 17 Jul 2018 21:39:40 GMT
ENV GN_DOWNLOAD_MD5=e0ff34ab3995b3a8107f3c3c78f7294a
# Tue, 17 Jul 2018 21:39:40 GMT
WORKDIR /usr/local/tomcat/webapps
# Tue, 17 Jul 2018 21:39:55 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Tue, 17 Jul 2018 21:40:03 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Tue, 17 Jul 2018 21:40:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 21:40:04 GMT
CMD ["catalina.sh" "run"]
# Tue, 17 Jul 2018 21:40:53 GMT
RUN apt-get update && apt-get install -y postgresql-client &&     rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 21:40:54 GMT
RUN sed -i -e 's#<import resource="../config-db/h2.xml"/>#<!--<import resource="../config-db/h2.xml"/> -->#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml
# Tue, 17 Jul 2018 21:40:55 GMT
COPY file:e2fbb7cf0447a8bc2706127d7dc9bceba30008f926826a6c3bf869efc97b906d in /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties 
# Tue, 17 Jul 2018 21:40:55 GMT
COPY file:2dd6f92687b208fdde8d0d8fa36354e2e373245faae443043799a7cca9e3538a in /entrypoint.sh 
# Tue, 17 Jul 2018 21:40:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 21:40:56 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1290813abd9d0a07ce709b4e491f4194f2b854295d93bdc068b7a576756fb515`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 852.9 KB (852875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a6b982ad6d7f57b4a8a4052561dc7b0377bd8d4028bce8a93a4d31e60b79329`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb029e68402beca7edc4627d5034aa72b37c74d8af9badb3284a69f17b91bb6`  
		Last Modified: Tue, 17 Jul 2018 07:03:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd067dc06dc22738d62cce6cdb6635e1ab22f4e4b220b8f27351e41e2b0c915`  
		Last Modified: Tue, 17 Jul 2018 07:04:32 GMT  
		Size: 122.1 MB (122099696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9ce2097b98d0b49e6bdcb0219400b65d301f87aa23acc7b652faa2d6c4973a`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 246.7 KB (246746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6db5874b692ef1489933d661d7ec70bb9e1a8f8d928454e6bdc107e8d804221`  
		Last Modified: Tue, 17 Jul 2018 18:34:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b4aa3d52c51fe6f0acad9af40cfbdbf2848080f15055f2b360e438aae10e1e`  
		Last Modified: Tue, 17 Jul 2018 18:34:17 GMT  
		Size: 528.3 KB (528348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:091868d8012a29eeda05c60005a6940068f8fecefde8f2de1851a7096e154284`  
		Last Modified: Tue, 17 Jul 2018 18:39:19 GMT  
		Size: 10.4 MB (10433064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af6b221adeb0f3672b6a6d297d95fd5dd673a04f7a3a5182835a27c081c2edc3`  
		Last Modified: Tue, 17 Jul 2018 18:39:17 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce7fef2576316dd16de57b5deccf2913d2cd477088d83dd7ca5913ee2e4a38f`  
		Last Modified: Tue, 17 Jul 2018 21:45:56 GMT  
		Size: 197.7 MB (197725108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786f7010ca30011569245311163437f109eed4816ca835ced347a72e72ffa109`  
		Last Modified: Tue, 17 Jul 2018 21:45:31 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0bb1e6fb073286176f3f1479451029bebfbc71de9d7d47b4f23dd237fa3e6e0`  
		Last Modified: Tue, 17 Jul 2018 21:47:08 GMT  
		Size: 13.3 MB (13300202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f648b4b92759d60eeb126b124ee8ea4d5ca55c9a33b295339c3af06d259c345`  
		Last Modified: Tue, 17 Jul 2018 21:47:02 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44cdbe14085a3974cd6e3b18a660fbe1c04b30c1c439ab8be2752d5bda0edcf1`  
		Last Modified: Tue, 17 Jul 2018 21:47:02 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0453ea15fef11cdd72faa8f0cbcffeea38f81e4cba5e114645c3172358195ab`  
		Last Modified: Tue, 17 Jul 2018 21:47:02 GMT  
		Size: 925.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.4-postgres`

```console
$ docker pull geonetwork@sha256:e5cba65cbb43e5fae1dd95b9705e6903c7e70a718dbc86ad9ff3501aa8aa45cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `geonetwork:3.4-postgres` - linux; amd64

```console
$ docker pull geonetwork@sha256:708a165da9454d7f2874cee5c4f918d85ab075ba65e8c4c388361db7d2949d12
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **405.6 MB (405576026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9e4cb92547e374450bee4249a9fbc076bd37b748c892df703665ec3b605fcd5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 06:19:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:19:33 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:19:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:19:34 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 06:19:35 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 06:20:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 06:20:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 18:03:30 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 17 Jul 2018 18:03:31 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 18:03:32 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 17 Jul 2018 18:03:32 GMT
WORKDIR /usr/local/tomcat
# Tue, 17 Jul 2018 18:03:33 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 17 Jul 2018 18:03:33 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 17 Jul 2018 18:03:33 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Tue, 17 Jul 2018 18:03:35 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 18:03:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:03:42 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 17 Jul 2018 18:12:46 GMT
ENV TOMCAT_MAJOR=8
# Tue, 17 Jul 2018 18:12:46 GMT
ENV TOMCAT_VERSION=8.0.53
# Tue, 17 Jul 2018 18:12:46 GMT
ENV TOMCAT_SHA512=cd8a4e48a629a2f2bb4ce6b101ebcce41da52b506064396ec1b2915c0b0d8d82123091242f2929a649bcd8b65ecf6cd1ab9c7d90ac0e261821097ab6fbe22df9
# Tue, 17 Jul 2018 18:12:47 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz
# Tue, 17 Jul 2018 18:12:47 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc
# Tue, 17 Jul 2018 18:13:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 17 Jul 2018 18:13:27 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 17 Jul 2018 18:13:27 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 18:13:28 GMT
CMD ["catalina.sh" "run"]
# Tue, 17 Jul 2018 21:35:09 GMT
ENV GN_FILE=geonetwork.war
# Tue, 17 Jul 2018 21:35:10 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Tue, 17 Jul 2018 21:35:10 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Tue, 17 Jul 2018 21:39:40 GMT
ENV GN_VERSION=3.4.2
# Tue, 17 Jul 2018 21:39:40 GMT
ENV GN_DOWNLOAD_MD5=e0ff34ab3995b3a8107f3c3c78f7294a
# Tue, 17 Jul 2018 21:39:40 GMT
WORKDIR /usr/local/tomcat/webapps
# Tue, 17 Jul 2018 21:39:55 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Tue, 17 Jul 2018 21:40:03 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Tue, 17 Jul 2018 21:40:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 21:40:04 GMT
CMD ["catalina.sh" "run"]
# Tue, 17 Jul 2018 21:40:53 GMT
RUN apt-get update && apt-get install -y postgresql-client &&     rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 21:40:54 GMT
RUN sed -i -e 's#<import resource="../config-db/h2.xml"/>#<!--<import resource="../config-db/h2.xml"/> -->#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml
# Tue, 17 Jul 2018 21:40:55 GMT
COPY file:e2fbb7cf0447a8bc2706127d7dc9bceba30008f926826a6c3bf869efc97b906d in /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties 
# Tue, 17 Jul 2018 21:40:55 GMT
COPY file:2dd6f92687b208fdde8d0d8fa36354e2e373245faae443043799a7cca9e3538a in /entrypoint.sh 
# Tue, 17 Jul 2018 21:40:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 21:40:56 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1290813abd9d0a07ce709b4e491f4194f2b854295d93bdc068b7a576756fb515`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 852.9 KB (852875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a6b982ad6d7f57b4a8a4052561dc7b0377bd8d4028bce8a93a4d31e60b79329`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb029e68402beca7edc4627d5034aa72b37c74d8af9badb3284a69f17b91bb6`  
		Last Modified: Tue, 17 Jul 2018 07:03:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd067dc06dc22738d62cce6cdb6635e1ab22f4e4b220b8f27351e41e2b0c915`  
		Last Modified: Tue, 17 Jul 2018 07:04:32 GMT  
		Size: 122.1 MB (122099696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9ce2097b98d0b49e6bdcb0219400b65d301f87aa23acc7b652faa2d6c4973a`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 246.7 KB (246746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6db5874b692ef1489933d661d7ec70bb9e1a8f8d928454e6bdc107e8d804221`  
		Last Modified: Tue, 17 Jul 2018 18:34:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b4aa3d52c51fe6f0acad9af40cfbdbf2848080f15055f2b360e438aae10e1e`  
		Last Modified: Tue, 17 Jul 2018 18:34:17 GMT  
		Size: 528.3 KB (528348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:091868d8012a29eeda05c60005a6940068f8fecefde8f2de1851a7096e154284`  
		Last Modified: Tue, 17 Jul 2018 18:39:19 GMT  
		Size: 10.4 MB (10433064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af6b221adeb0f3672b6a6d297d95fd5dd673a04f7a3a5182835a27c081c2edc3`  
		Last Modified: Tue, 17 Jul 2018 18:39:17 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce7fef2576316dd16de57b5deccf2913d2cd477088d83dd7ca5913ee2e4a38f`  
		Last Modified: Tue, 17 Jul 2018 21:45:56 GMT  
		Size: 197.7 MB (197725108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786f7010ca30011569245311163437f109eed4816ca835ced347a72e72ffa109`  
		Last Modified: Tue, 17 Jul 2018 21:45:31 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0bb1e6fb073286176f3f1479451029bebfbc71de9d7d47b4f23dd237fa3e6e0`  
		Last Modified: Tue, 17 Jul 2018 21:47:08 GMT  
		Size: 13.3 MB (13300202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f648b4b92759d60eeb126b124ee8ea4d5ca55c9a33b295339c3af06d259c345`  
		Last Modified: Tue, 17 Jul 2018 21:47:02 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44cdbe14085a3974cd6e3b18a660fbe1c04b30c1c439ab8be2752d5bda0edcf1`  
		Last Modified: Tue, 17 Jul 2018 21:47:02 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0453ea15fef11cdd72faa8f0cbcffeea38f81e4cba5e114645c3172358195ab`  
		Last Modified: Tue, 17 Jul 2018 21:47:02 GMT  
		Size: 925.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:latest`

```console
$ docker pull geonetwork@sha256:528999b517a84857f26d77394e8c928b424cc7a62e1a7ed8c819005ede4c6df2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `geonetwork:latest` - linux; amd64

```console
$ docker pull geonetwork@sha256:4c3418de10c87a1a8bfe46e6419d39bc533cfc49b9c90286754c8514ae16619b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.3 MB (392273059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91a66dc0f72a39a94dc59caf239e860af95cfd033717bf43bdbfc8970ac25be7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 06:19:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:19:33 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:19:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:19:34 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 06:19:35 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 06:20:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 06:20:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 18:03:30 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 17 Jul 2018 18:03:31 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 18:03:32 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 17 Jul 2018 18:03:32 GMT
WORKDIR /usr/local/tomcat
# Tue, 17 Jul 2018 18:03:33 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 17 Jul 2018 18:03:33 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 17 Jul 2018 18:03:33 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Tue, 17 Jul 2018 18:03:35 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 18:03:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:03:42 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 17 Jul 2018 18:12:46 GMT
ENV TOMCAT_MAJOR=8
# Tue, 17 Jul 2018 18:12:46 GMT
ENV TOMCAT_VERSION=8.0.53
# Tue, 17 Jul 2018 18:12:46 GMT
ENV TOMCAT_SHA512=cd8a4e48a629a2f2bb4ce6b101ebcce41da52b506064396ec1b2915c0b0d8d82123091242f2929a649bcd8b65ecf6cd1ab9c7d90ac0e261821097ab6fbe22df9
# Tue, 17 Jul 2018 18:12:47 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz
# Tue, 17 Jul 2018 18:12:47 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc
# Tue, 17 Jul 2018 18:13:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 17 Jul 2018 18:13:27 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 17 Jul 2018 18:13:27 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 18:13:28 GMT
CMD ["catalina.sh" "run"]
# Tue, 17 Jul 2018 21:35:09 GMT
ENV GN_FILE=geonetwork.war
# Tue, 17 Jul 2018 21:35:10 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Tue, 17 Jul 2018 21:35:10 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Tue, 17 Jul 2018 21:39:40 GMT
ENV GN_VERSION=3.4.2
# Tue, 17 Jul 2018 21:39:40 GMT
ENV GN_DOWNLOAD_MD5=e0ff34ab3995b3a8107f3c3c78f7294a
# Tue, 17 Jul 2018 21:39:40 GMT
WORKDIR /usr/local/tomcat/webapps
# Tue, 17 Jul 2018 21:39:55 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Tue, 17 Jul 2018 21:40:03 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Tue, 17 Jul 2018 21:40:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 21:40:04 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1290813abd9d0a07ce709b4e491f4194f2b854295d93bdc068b7a576756fb515`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 852.9 KB (852875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a6b982ad6d7f57b4a8a4052561dc7b0377bd8d4028bce8a93a4d31e60b79329`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb029e68402beca7edc4627d5034aa72b37c74d8af9badb3284a69f17b91bb6`  
		Last Modified: Tue, 17 Jul 2018 07:03:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd067dc06dc22738d62cce6cdb6635e1ab22f4e4b220b8f27351e41e2b0c915`  
		Last Modified: Tue, 17 Jul 2018 07:04:32 GMT  
		Size: 122.1 MB (122099696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9ce2097b98d0b49e6bdcb0219400b65d301f87aa23acc7b652faa2d6c4973a`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 246.7 KB (246746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6db5874b692ef1489933d661d7ec70bb9e1a8f8d928454e6bdc107e8d804221`  
		Last Modified: Tue, 17 Jul 2018 18:34:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b4aa3d52c51fe6f0acad9af40cfbdbf2848080f15055f2b360e438aae10e1e`  
		Last Modified: Tue, 17 Jul 2018 18:34:17 GMT  
		Size: 528.3 KB (528348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:091868d8012a29eeda05c60005a6940068f8fecefde8f2de1851a7096e154284`  
		Last Modified: Tue, 17 Jul 2018 18:39:19 GMT  
		Size: 10.4 MB (10433064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af6b221adeb0f3672b6a6d297d95fd5dd673a04f7a3a5182835a27c081c2edc3`  
		Last Modified: Tue, 17 Jul 2018 18:39:17 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce7fef2576316dd16de57b5deccf2913d2cd477088d83dd7ca5913ee2e4a38f`  
		Last Modified: Tue, 17 Jul 2018 21:45:56 GMT  
		Size: 197.7 MB (197725108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786f7010ca30011569245311163437f109eed4816ca835ced347a72e72ffa109`  
		Last Modified: Tue, 17 Jul 2018 21:45:31 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:postgres`

```console
$ docker pull geonetwork@sha256:e5cba65cbb43e5fae1dd95b9705e6903c7e70a718dbc86ad9ff3501aa8aa45cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `geonetwork:postgres` - linux; amd64

```console
$ docker pull geonetwork@sha256:708a165da9454d7f2874cee5c4f918d85ab075ba65e8c4c388361db7d2949d12
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **405.6 MB (405576026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9e4cb92547e374450bee4249a9fbc076bd37b748c892df703665ec3b605fcd5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 06:19:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:19:33 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:19:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:19:34 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_VERSION=8u171
# Tue, 17 Jul 2018 06:19:35 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 17 Jul 2018 06:19:35 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 17 Jul 2018 06:20:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 06:20:21 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 18:03:30 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 17 Jul 2018 18:03:31 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 18:03:32 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 17 Jul 2018 18:03:32 GMT
WORKDIR /usr/local/tomcat
# Tue, 17 Jul 2018 18:03:33 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 17 Jul 2018 18:03:33 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 17 Jul 2018 18:03:33 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Tue, 17 Jul 2018 18:03:35 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 18:03:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:03:42 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 17 Jul 2018 18:12:46 GMT
ENV TOMCAT_MAJOR=8
# Tue, 17 Jul 2018 18:12:46 GMT
ENV TOMCAT_VERSION=8.0.53
# Tue, 17 Jul 2018 18:12:46 GMT
ENV TOMCAT_SHA512=cd8a4e48a629a2f2bb4ce6b101ebcce41da52b506064396ec1b2915c0b0d8d82123091242f2929a649bcd8b65ecf6cd1ab9c7d90ac0e261821097ab6fbe22df9
# Tue, 17 Jul 2018 18:12:47 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz
# Tue, 17 Jul 2018 18:12:47 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz.asc
# Tue, 17 Jul 2018 18:13:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 17 Jul 2018 18:13:27 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 17 Jul 2018 18:13:27 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 18:13:28 GMT
CMD ["catalina.sh" "run"]
# Tue, 17 Jul 2018 21:35:09 GMT
ENV GN_FILE=geonetwork.war
# Tue, 17 Jul 2018 21:35:10 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Tue, 17 Jul 2018 21:35:10 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Tue, 17 Jul 2018 21:39:40 GMT
ENV GN_VERSION=3.4.2
# Tue, 17 Jul 2018 21:39:40 GMT
ENV GN_DOWNLOAD_MD5=e0ff34ab3995b3a8107f3c3c78f7294a
# Tue, 17 Jul 2018 21:39:40 GMT
WORKDIR /usr/local/tomcat/webapps
# Tue, 17 Jul 2018 21:39:55 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Tue, 17 Jul 2018 21:40:03 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Tue, 17 Jul 2018 21:40:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 21:40:04 GMT
CMD ["catalina.sh" "run"]
# Tue, 17 Jul 2018 21:40:53 GMT
RUN apt-get update && apt-get install -y postgresql-client &&     rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 21:40:54 GMT
RUN sed -i -e 's#<import resource="../config-db/h2.xml"/>#<!--<import resource="../config-db/h2.xml"/> -->#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml
# Tue, 17 Jul 2018 21:40:55 GMT
COPY file:e2fbb7cf0447a8bc2706127d7dc9bceba30008f926826a6c3bf869efc97b906d in /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties 
# Tue, 17 Jul 2018 21:40:55 GMT
COPY file:2dd6f92687b208fdde8d0d8fa36354e2e373245faae443043799a7cca9e3538a in /entrypoint.sh 
# Tue, 17 Jul 2018 21:40:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 21:40:56 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1290813abd9d0a07ce709b4e491f4194f2b854295d93bdc068b7a576756fb515`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 852.9 KB (852875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a6b982ad6d7f57b4a8a4052561dc7b0377bd8d4028bce8a93a4d31e60b79329`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb029e68402beca7edc4627d5034aa72b37c74d8af9badb3284a69f17b91bb6`  
		Last Modified: Tue, 17 Jul 2018 07:03:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd067dc06dc22738d62cce6cdb6635e1ab22f4e4b220b8f27351e41e2b0c915`  
		Last Modified: Tue, 17 Jul 2018 07:04:32 GMT  
		Size: 122.1 MB (122099696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9ce2097b98d0b49e6bdcb0219400b65d301f87aa23acc7b652faa2d6c4973a`  
		Last Modified: Tue, 17 Jul 2018 07:03:58 GMT  
		Size: 246.7 KB (246746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6db5874b692ef1489933d661d7ec70bb9e1a8f8d928454e6bdc107e8d804221`  
		Last Modified: Tue, 17 Jul 2018 18:34:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b4aa3d52c51fe6f0acad9af40cfbdbf2848080f15055f2b360e438aae10e1e`  
		Last Modified: Tue, 17 Jul 2018 18:34:17 GMT  
		Size: 528.3 KB (528348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:091868d8012a29eeda05c60005a6940068f8fecefde8f2de1851a7096e154284`  
		Last Modified: Tue, 17 Jul 2018 18:39:19 GMT  
		Size: 10.4 MB (10433064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af6b221adeb0f3672b6a6d297d95fd5dd673a04f7a3a5182835a27c081c2edc3`  
		Last Modified: Tue, 17 Jul 2018 18:39:17 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce7fef2576316dd16de57b5deccf2913d2cd477088d83dd7ca5913ee2e4a38f`  
		Last Modified: Tue, 17 Jul 2018 21:45:56 GMT  
		Size: 197.7 MB (197725108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786f7010ca30011569245311163437f109eed4816ca835ced347a72e72ffa109`  
		Last Modified: Tue, 17 Jul 2018 21:45:31 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0bb1e6fb073286176f3f1479451029bebfbc71de9d7d47b4f23dd237fa3e6e0`  
		Last Modified: Tue, 17 Jul 2018 21:47:08 GMT  
		Size: 13.3 MB (13300202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f648b4b92759d60eeb126b124ee8ea4d5ca55c9a33b295339c3af06d259c345`  
		Last Modified: Tue, 17 Jul 2018 21:47:02 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44cdbe14085a3974cd6e3b18a660fbe1c04b30c1c439ab8be2752d5bda0edcf1`  
		Last Modified: Tue, 17 Jul 2018 21:47:02 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0453ea15fef11cdd72faa8f0cbcffeea38f81e4cba5e114645c3172358195ab`  
		Last Modified: Tue, 17 Jul 2018 21:47:02 GMT  
		Size: 925.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
