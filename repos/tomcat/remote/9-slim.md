## `tomcat:9-slim`

```console
$ docker pull tomcat@sha256:7484736d36a7f3eb5f077109bdbacb25bc43a7b2ff3ac8a3715f2a294e02a906
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `tomcat:9-slim` - linux; amd64

```console
$ docker pull tomcat@sha256:16ac5bb341b6506012b7281d180ade5dee0531fe0c0550daf7b44557d8c12259
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122763152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b065ecc3b0c8d0a3af9e739c1319cbf3eaba95597d1f77a7d32ae3b5e70b99a6`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:58 GMT
ADD file:a391d9232725a03d7b21f24be4d387c1d11f905c3ba448c0a3793745ca8cc6f3 in / 
# Tue, 04 Sep 2018 21:20:58 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:15:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:15:51 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:15:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:19:13 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 01:19:13 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 28 Sep 2018 18:28:39 GMT
ENV JAVA_VERSION=10.0.2
# Fri, 28 Sep 2018 18:28:42 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Fri, 28 Sep 2018 18:30:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 28 Sep 2018 19:12:34 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 28 Sep 2018 19:12:34 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 28 Sep 2018 19:12:34 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 28 Sep 2018 19:12:41 GMT
WORKDIR /usr/local/tomcat
# Fri, 28 Sep 2018 19:12:41 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 28 Sep 2018 19:12:41 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 28 Sep 2018 19:12:41 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Fri, 28 Sep 2018 19:12:48 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 28 Sep 2018 19:12:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Fri, 28 Sep 2018 19:15:35 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 28 Sep 2018 19:15:35 GMT
ENV TOMCAT_MAJOR=9
# Fri, 28 Sep 2018 19:15:35 GMT
ENV TOMCAT_VERSION=9.0.12
# Fri, 28 Sep 2018 19:15:36 GMT
ENV TOMCAT_SHA512=f03bdfcc85a5fc0cd4f5cbb4c7d1e7b8b48014383e47d9a92c6e974adcb0cbf8ce0f3620fee2cd267b0c46f7238c3431847cb86076283ae252ab91260e8bf569
# Fri, 28 Sep 2018 19:15:36 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz
# Fri, 28 Sep 2018 19:15:36 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz.asc
# Fri, 28 Sep 2018 19:16:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Fri, 28 Sep 2018 19:16:49 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 28 Sep 2018 19:16:49 GMT
EXPOSE 8080/tcp
# Fri, 28 Sep 2018 19:16:49 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:a7e1658cb0533dfcb5baa38a0ce3230fd3aea217be1a52d0b46f5521b305d608`  
		Last Modified: Tue, 04 Sep 2018 21:24:51 GMT  
		Size: 26.3 MB (26269506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826d7fab3f2f9f524ee8ab66d9bf80ff7ce89278ff495a4c665481d069832089`  
		Last Modified: Wed, 05 Sep 2018 01:32:25 GMT  
		Size: 460.8 KB (460788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7705f8b8f1de989ae8e63828bc91553d1aa32563ed57bd05b21828c0ef89920`  
		Last Modified: Wed, 05 Sep 2018 01:32:25 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2baa561332e300334fa017ef5b45151657527137d6c5d1996d8e8b7fa714bbba`  
		Last Modified: Wed, 05 Sep 2018 01:36:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1725191b36292d7aad37f9154abfc603b10ed6bfee82df1e22535a8663eef42`  
		Last Modified: Fri, 28 Sep 2018 18:41:42 GMT  
		Size: 78.4 MB (78387324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae09233dfb7b839b99bc43c619cd1928add1f679a748daf4d873e1d461b98ca2`  
		Last Modified: Fri, 28 Sep 2018 19:17:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8fbffbc6e6d982d00f00d7acf0a4fb1dea815590b141ebaff5fdf93117da02e`  
		Last Modified: Fri, 28 Sep 2018 19:17:55 GMT  
		Size: 437.3 KB (437285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d0ac97011e91518fb28a32a1c1d4a662910ac855623885ee85c2b766dc4adc`  
		Last Modified: Fri, 28 Sep 2018 19:19:40 GMT  
		Size: 17.2 MB (17207577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8bb70ebbd203d5ee0e96c60828da67060c667a35db18c1517d7cac18cf8a1d7`  
		Last Modified: Fri, 28 Sep 2018 19:19:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:9-slim` - linux; arm variant v5

```console
$ docker pull tomcat@sha256:c12cd4b2fd35a5d7e7a2334d4535744a75e6fc2828a20ef2c9466fce5bae2cd0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104293726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:255a4b47276214ada69ef961636c51e22b65ea7810c5f9327713a7349ffdbdb2`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 05 Sep 2018 08:53:37 GMT
ADD file:c7d4df0199eabe1be20064e36b7f406cc093e6e4b249fe3d5e80efbdd9d11396 in / 
# Wed, 05 Sep 2018 08:53:37 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:28:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:28:42 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 09:28:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 09:30:14 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 09:30:14 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Sep 2018 08:56:47 GMT
ENV JAVA_VERSION=10.0.2
# Sat, 29 Sep 2018 08:56:48 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Sat, 29 Sep 2018 08:59:59 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Sep 2018 09:36:43 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 29 Sep 2018 09:36:43 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Sep 2018 09:36:45 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 29 Sep 2018 09:36:45 GMT
WORKDIR /usr/local/tomcat
# Sat, 29 Sep 2018 09:36:46 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 29 Sep 2018 09:36:46 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 29 Sep 2018 09:36:47 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Sat, 29 Sep 2018 09:36:48 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Sep 2018 09:36:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Sep 2018 09:41:09 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 29 Sep 2018 09:41:10 GMT
ENV TOMCAT_MAJOR=9
# Sat, 29 Sep 2018 09:41:10 GMT
ENV TOMCAT_VERSION=9.0.12
# Sat, 29 Sep 2018 09:41:11 GMT
ENV TOMCAT_SHA512=f03bdfcc85a5fc0cd4f5cbb4c7d1e7b8b48014383e47d9a92c6e974adcb0cbf8ce0f3620fee2cd267b0c46f7238c3431847cb86076283ae252ab91260e8bf569
# Sat, 29 Sep 2018 09:41:11 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz
# Sat, 29 Sep 2018 09:41:11 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz.asc
# Sat, 29 Sep 2018 09:43:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sat, 29 Sep 2018 09:43:20 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 29 Sep 2018 09:43:20 GMT
EXPOSE 8080/tcp
# Sat, 29 Sep 2018 09:43:20 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:242ba358ac12243e79ea9900990c026a4b2a428ee912e82307cda7137ce87b08`  
		Last Modified: Wed, 05 Sep 2018 09:02:45 GMT  
		Size: 24.0 MB (24046737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9be3091e0f7f183201efb4d0d133657219a4951278ed991b57026f1390a136`  
		Last Modified: Wed, 05 Sep 2018 09:38:38 GMT  
		Size: 452.7 KB (452681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046c6149e9cffbd63a5b8711d29fa55ec8913d650f6ba47eae844fdcceb45afd`  
		Last Modified: Wed, 05 Sep 2018 09:38:38 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c38bc6cad5552a2a60388a28ced2c9c70a64a36b5f04205c9c672ff1d84b699`  
		Last Modified: Wed, 05 Sep 2018 09:38:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275635166108ddad4171dee9a25d3a090a3813a663fa1132040c61ecd03ea77c`  
		Last Modified: Sat, 29 Sep 2018 09:10:42 GMT  
		Size: 63.3 MB (63317300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1c3fcb870a9eb8135e787ed5dd9aa619d43f154d04ad6b806076688440c8b46`  
		Last Modified: Sat, 29 Sep 2018 09:44:53 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbfa3a7911c7f78d963ad3afa6d4a5a1ccfebafd0a3d7f04b1e828d132b18f48`  
		Last Modified: Sat, 29 Sep 2018 09:44:53 GMT  
		Size: 420.5 KB (420495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76dded48979b930a80843b4e9eac411c8623e2ffa7f6533ad6317f05843d021b`  
		Last Modified: Sat, 29 Sep 2018 09:47:17 GMT  
		Size: 16.1 MB (16055843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e4be83e3b2f40367b6d7c68266e28c42bb96a925f5344e849bbfd5001cadb0`  
		Last Modified: Sat, 29 Sep 2018 09:47:13 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:9-slim` - linux; arm variant v7

```console
$ docker pull tomcat@sha256:2750c01afe5f23a4f05be827d0701f1872ebafa8aad12b2e1b11873615b2f919
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.1 MB (105051219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2031a6d2ab00a1d85809c68dc366eb48dcabab34db6c1d57508e19d70cb0838c`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 05 Sep 2018 12:02:34 GMT
ADD file:d966b641bd0795de9f6442fec893e1b9449c978d22fd9094d193b1535602d0a2 in / 
# Wed, 05 Sep 2018 12:02:35 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:10:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:10:13 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:10:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 13:14:29 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 13:14:30 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 05 Sep 2018 13:14:30 GMT
ENV JAVA_VERSION=10.0.2+13
# Wed, 05 Sep 2018 13:14:30 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Wed, 05 Sep 2018 13:17:00 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 18:21:52 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 05 Sep 2018 18:21:52 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 18:21:53 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 05 Sep 2018 18:21:54 GMT
WORKDIR /usr/local/tomcat
# Wed, 05 Sep 2018 18:21:54 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 05 Sep 2018 18:21:55 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 05 Sep 2018 18:21:55 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Wed, 05 Sep 2018 18:21:56 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 18:22:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 18:28:57 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 05 Sep 2018 18:28:58 GMT
ENV TOMCAT_MAJOR=9
# Thu, 13 Sep 2018 12:41:27 GMT
ENV TOMCAT_VERSION=9.0.12
# Thu, 13 Sep 2018 12:41:27 GMT
ENV TOMCAT_SHA512=f03bdfcc85a5fc0cd4f5cbb4c7d1e7b8b48014383e47d9a92c6e974adcb0cbf8ce0f3620fee2cd267b0c46f7238c3431847cb86076283ae252ab91260e8bf569
# Thu, 13 Sep 2018 12:41:27 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz
# Thu, 13 Sep 2018 12:41:28 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz.asc
# Thu, 13 Sep 2018 12:42:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 13 Sep 2018 12:42:51 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 13 Sep 2018 12:42:51 GMT
EXPOSE 8080/tcp
# Thu, 13 Sep 2018 12:42:51 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:ba8445defddd24c3f2ac1eee6211fd2c3b937fa4fb76c2b8e6cff179fd515555`  
		Last Modified: Wed, 05 Sep 2018 12:11:44 GMT  
		Size: 22.0 MB (21986557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7054fed937aa9eb213be249c9e83d066ebfc81075a7ac56b5fcc5ea9db7df2bf`  
		Last Modified: Wed, 05 Sep 2018 13:36:34 GMT  
		Size: 435.3 KB (435302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c9fa9b089781c7e685cb03827f255eaddb539c9ca57b5a62119f11f2f48816`  
		Last Modified: Wed, 05 Sep 2018 13:36:33 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d111e6a305987c8f4221f0f1b980a91e385498b2b08dade9597055697d681b88`  
		Last Modified: Wed, 05 Sep 2018 13:36:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c6df311b4bc437e900b0e884eb48d0da62cf1f4d1eaaf17c4e2b19405fa5e85`  
		Last Modified: Wed, 05 Sep 2018 13:42:25 GMT  
		Size: 65.1 MB (65118276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365855db6fd800dc3b90784f024ab6943f540623de84cc513872b6dc74f33648`  
		Last Modified: Wed, 05 Sep 2018 18:35:05 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19bd894a894c4f9c182d6c9116ac5f42d8d321d0c0cc0fbd86561b7651ed805`  
		Last Modified: Wed, 05 Sep 2018 18:35:04 GMT  
		Size: 410.5 KB (410523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be4ca7822a957d02f5a3c47c038924dafedf551b12162b1ec243f85dccb3d251`  
		Last Modified: Thu, 13 Sep 2018 12:50:54 GMT  
		Size: 17.1 MB (17099889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ab410ef7db1e892b686b54f9242ba22ff2eac6fc24f07cf4926752af7ebbaa`  
		Last Modified: Thu, 13 Sep 2018 12:50:50 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:9-slim` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:dbb4002e287a65a8a574c4ec3afa6130667c07335788d3d2b0beb5b1af1e5834
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.4 MB (109398105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da1c33a3a88dd186fb8957c523374c9d27741ebd37a28b6b2c5c84dd9bdd73db`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 05 Sep 2018 08:45:52 GMT
ADD file:24dbb552dccf9615a5e69bf23e9456e1113ecd17c0803a5b489ffed88bedfc74 in / 
# Wed, 05 Sep 2018 08:46:08 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:58:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:58:14 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 12:58:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 13:12:03 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 13:12:06 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Sep 2018 09:12:22 GMT
ENV JAVA_VERSION=10.0.2
# Sat, 29 Sep 2018 09:12:23 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Sat, 29 Sep 2018 09:21:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Sep 2018 10:23:30 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 29 Sep 2018 10:23:30 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Sep 2018 10:23:32 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 29 Sep 2018 10:23:33 GMT
WORKDIR /usr/local/tomcat
# Sat, 29 Sep 2018 10:23:36 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 29 Sep 2018 10:23:37 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 29 Sep 2018 10:23:38 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Sat, 29 Sep 2018 10:23:41 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Sep 2018 10:23:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Sep 2018 10:40:57 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 29 Sep 2018 10:40:57 GMT
ENV TOMCAT_MAJOR=9
# Sat, 29 Sep 2018 10:40:58 GMT
ENV TOMCAT_VERSION=9.0.12
# Sat, 29 Sep 2018 10:40:59 GMT
ENV TOMCAT_SHA512=f03bdfcc85a5fc0cd4f5cbb4c7d1e7b8b48014383e47d9a92c6e974adcb0cbf8ce0f3620fee2cd267b0c46f7238c3431847cb86076283ae252ab91260e8bf569
# Sat, 29 Sep 2018 10:41:00 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz
# Sat, 29 Sep 2018 10:41:00 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz.asc
# Sat, 29 Sep 2018 10:52:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sat, 29 Sep 2018 10:52:40 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 29 Sep 2018 10:52:40 GMT
EXPOSE 8080/tcp
# Sat, 29 Sep 2018 10:52:41 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:72c8cb2fd9e6abd14d8304d2ab8f3981d9ee18081e0eec41f5a6329ad46e13dc`  
		Last Modified: Wed, 05 Sep 2018 09:03:24 GMT  
		Size: 24.4 MB (24421582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6913615f01b262099426dbf3dc8f34a66d8acdd16e1b670f80120a578455d15f`  
		Last Modified: Wed, 05 Sep 2018 13:51:40 GMT  
		Size: 446.8 KB (446802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec43cb8ddfaa74be1577307975c3673ede54a0bdbaf3dfd3ce3f5026dc960b4c`  
		Last Modified: Wed, 05 Sep 2018 13:51:40 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d068053e034e51230770f923a95fb4c838f9f86f674198cde6f986f77975313f`  
		Last Modified: Wed, 05 Sep 2018 13:51:40 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08174b822a76b899cc41c26641ae3b347af487f494f5c4bd45812092f1d6018`  
		Last Modified: Sat, 29 Sep 2018 09:40:15 GMT  
		Size: 67.9 MB (67919602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8503b4c2fe806a44c3d270b864ac09bfb7d56ad4443fe059f974677ab3359318`  
		Last Modified: Sat, 29 Sep 2018 10:54:25 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b69a268d8cda1005c643269d1271f7035ac6a2052b3d05659e61ba712edca27`  
		Last Modified: Sat, 29 Sep 2018 10:54:25 GMT  
		Size: 421.7 KB (421721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eea45b3410c7e0788a94792ea975c98ad217ce8fb41b8f867c261f5de668c5a1`  
		Last Modified: Sat, 29 Sep 2018 10:56:54 GMT  
		Size: 16.2 MB (16187759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996b928c2d21168021cea65a8f9b64aabc623b876024ae79eca762cef46c19a6`  
		Last Modified: Sat, 29 Sep 2018 10:56:46 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:9-slim` - linux; 386

```console
$ docker pull tomcat@sha256:0959d8706e7eb9574ed7177feecceafec1703dcf6e85002dad42699ea4b7d0b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.0 MB (126980936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69148494897160298c12af7b80d48b2b32e4639cf33d0344eac83e16b349e80f`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 05 Sep 2018 10:42:28 GMT
ADD file:d4af5b170a1dc9b1a5129aad95a449a0412bc890b20f7bcc406b10765217d72d in / 
# Wed, 05 Sep 2018 10:42:28 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:46:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:46:37 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 12:46:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 12:51:15 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 12:51:16 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Sep 2018 10:53:58 GMT
ENV JAVA_VERSION=10.0.2
# Sat, 29 Sep 2018 10:53:59 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Sat, 29 Sep 2018 10:56:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Sep 2018 11:53:27 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 29 Sep 2018 11:53:28 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Sep 2018 11:53:28 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 29 Sep 2018 11:53:28 GMT
WORKDIR /usr/local/tomcat
# Sat, 29 Sep 2018 11:53:29 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 29 Sep 2018 11:53:29 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 29 Sep 2018 11:53:29 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Sat, 29 Sep 2018 11:53:30 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Sep 2018 11:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Sep 2018 11:56:34 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 29 Sep 2018 11:56:35 GMT
ENV TOMCAT_MAJOR=9
# Sat, 29 Sep 2018 11:56:35 GMT
ENV TOMCAT_VERSION=9.0.12
# Sat, 29 Sep 2018 11:56:35 GMT
ENV TOMCAT_SHA512=f03bdfcc85a5fc0cd4f5cbb4c7d1e7b8b48014383e47d9a92c6e974adcb0cbf8ce0f3620fee2cd267b0c46f7238c3431847cb86076283ae252ab91260e8bf569
# Sat, 29 Sep 2018 11:56:35 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz
# Sat, 29 Sep 2018 11:56:35 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz.asc
# Sat, 29 Sep 2018 11:57:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sat, 29 Sep 2018 11:58:00 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 29 Sep 2018 11:58:00 GMT
EXPOSE 8080/tcp
# Sat, 29 Sep 2018 11:58:00 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:5b7c4e2e64859070ddb846c8d1995c868828ca3f0747e700ce525cca0c668ead`  
		Last Modified: Wed, 05 Sep 2018 10:50:43 GMT  
		Size: 26.9 MB (26855389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe790305403cfefcd04e2c7141ec9c0cdf63365ea7cb2266f45810018349d1e`  
		Last Modified: Wed, 05 Sep 2018 13:18:18 GMT  
		Size: 469.7 KB (469687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ab579a9b26299f67deeeff886666f4181e13e5ff5abf594e0cc6b5c92241e0`  
		Last Modified: Wed, 05 Sep 2018 13:18:18 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e89b90599f0895ab1c534d8de2562ce3a6f075cefe4de08fc3b6d51484bdfc5`  
		Last Modified: Wed, 05 Sep 2018 13:18:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05f0321718501c8d7e8549c59159b5e583e34975c2030410fde242387dc2c80`  
		Last Modified: Sat, 29 Sep 2018 11:08:43 GMT  
		Size: 82.7 MB (82742202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a684d51820571315fd70f1113af7e2496a09ed74d65e35abade3651d2aac89c`  
		Last Modified: Sat, 29 Sep 2018 11:58:58 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:019dd4792490cf650828f0e317d340cb1208757c3b0c6eb82b5ecf24368f34c0`  
		Last Modified: Sat, 29 Sep 2018 11:58:58 GMT  
		Size: 447.7 KB (447654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a586434fcf14cff495a112c9074dc1500c41139917f6039184eef4ec0c9829`  
		Last Modified: Sat, 29 Sep 2018 12:00:18 GMT  
		Size: 16.5 MB (16465330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebfc12351ae7f6f77c688725a43b4d43c56060a0e9941fe74944c456a317491e`  
		Last Modified: Sat, 29 Sep 2018 12:00:15 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:9-slim` - linux; ppc64le

```console
$ docker pull tomcat@sha256:2d5f1d80b5bd35dc7c3d44617017ddd98f40d83e9707b8aef6ed7524fddd9c8d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117182329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54fd099f2232e859e768ffe106424697a6810e3e9a46924685d289865402b951`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 05 Sep 2018 08:18:11 GMT
ADD file:2c83f3c9e6ae13dc30fafc9ae3805ad69b08b4da3106915ed14ab1f30f967f23 in / 
# Wed, 05 Sep 2018 08:18:11 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:45:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:45:55 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 11:45:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 11:57:01 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 11:57:02 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Sep 2018 08:43:41 GMT
ENV JAVA_VERSION=10.0.2
# Sat, 29 Sep 2018 08:43:42 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Sat, 29 Sep 2018 08:54:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Sep 2018 10:14:34 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 29 Sep 2018 10:14:36 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Sep 2018 10:14:39 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 29 Sep 2018 10:14:40 GMT
WORKDIR /usr/local/tomcat
# Sat, 29 Sep 2018 10:14:41 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 29 Sep 2018 10:14:41 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 29 Sep 2018 10:14:42 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Sat, 29 Sep 2018 10:14:46 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Sep 2018 10:14:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Sep 2018 10:25:36 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 29 Sep 2018 10:25:37 GMT
ENV TOMCAT_MAJOR=9
# Sat, 29 Sep 2018 10:25:38 GMT
ENV TOMCAT_VERSION=9.0.12
# Sat, 29 Sep 2018 10:25:39 GMT
ENV TOMCAT_SHA512=f03bdfcc85a5fc0cd4f5cbb4c7d1e7b8b48014383e47d9a92c6e974adcb0cbf8ce0f3620fee2cd267b0c46f7238c3431847cb86076283ae252ab91260e8bf569
# Sat, 29 Sep 2018 10:25:40 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz
# Sat, 29 Sep 2018 10:25:41 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz.asc
# Sat, 29 Sep 2018 10:31:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sat, 29 Sep 2018 10:31:18 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 29 Sep 2018 10:31:20 GMT
EXPOSE 8080/tcp
# Sat, 29 Sep 2018 10:31:22 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:ad06b39b761d5d0d233a1f9ed85dd96e65a277e736303cc95163a7aff63a44ec`  
		Last Modified: Wed, 05 Sep 2018 08:23:53 GMT  
		Size: 28.7 MB (28718549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49bca90424a7272ac7b846fddea3728bdaaae7093a26bda8e0596bdd046aa8d2`  
		Last Modified: Wed, 05 Sep 2018 12:24:45 GMT  
		Size: 458.4 KB (458392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e875ef1b7436e18e8f4d510cd11b49d70c3cc15aadbdff5eceb47089e22b733`  
		Last Modified: Wed, 05 Sep 2018 12:24:45 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b70776989c90e7bf1525a8eda7b904cd78325751c1c4a02b57a879c362c1d105`  
		Last Modified: Wed, 05 Sep 2018 12:24:44 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43eaf4002f0dbbb00bac3d35ad8fe16d739205c1206cca4e0a2bfe4931ca9452`  
		Last Modified: Sat, 29 Sep 2018 09:22:47 GMT  
		Size: 69.8 MB (69835304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04fe3bd8e1ca82bb57e443cf16d2aa187eb78dc740514e8e691914228052bb1f`  
		Last Modified: Sat, 29 Sep 2018 10:33:33 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf50c2b97cc5066e025c4482553d7491f5eb7dad04fa98dbd85b3240e7296c15`  
		Last Modified: Sat, 29 Sep 2018 10:33:33 GMT  
		Size: 434.6 KB (434629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cae926b7dd93068478d9a64e01c3266c334bbe073484a87caed6e453eb4054`  
		Last Modified: Sat, 29 Sep 2018 10:36:12 GMT  
		Size: 17.7 MB (17734782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f45983d6459ea0db2cf6a498486d0449fe98eccb3a593d67e5b45f944dab56`  
		Last Modified: Sat, 29 Sep 2018 10:36:08 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:9-slim` - linux; s390x

```console
$ docker pull tomcat@sha256:c5528002891689c9aaa2518bff14a26d95378fe213ce1d3d40f5115a6a39aeb1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.2 MB (111247806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b71bf6690a7b48a3a31f7e99de6776418ce87b973f1b60487bd7643118b301c`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 05 Sep 2018 11:42:49 GMT
ADD file:7095b21d997eff90a29af9f20d020b10d14cea2f20456b08af38e55cc6c5dcfb in / 
# Wed, 05 Sep 2018 11:42:50 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:06:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:06:45 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 12:06:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 12:07:55 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 12:07:55 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 05 Sep 2018 12:07:56 GMT
ENV JAVA_VERSION=10.0.2+13
# Wed, 05 Sep 2018 12:07:56 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Wed, 05 Sep 2018 12:09:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 15:30:23 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 05 Sep 2018 15:30:23 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 15:30:24 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 05 Sep 2018 15:30:24 GMT
WORKDIR /usr/local/tomcat
# Wed, 05 Sep 2018 15:30:25 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 05 Sep 2018 15:30:25 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 05 Sep 2018 15:30:25 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Wed, 05 Sep 2018 15:30:26 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 15:30:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 15:33:28 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 05 Sep 2018 15:33:28 GMT
ENV TOMCAT_MAJOR=9
# Thu, 13 Sep 2018 12:21:15 GMT
ENV TOMCAT_VERSION=9.0.12
# Thu, 13 Sep 2018 12:21:15 GMT
ENV TOMCAT_SHA512=f03bdfcc85a5fc0cd4f5cbb4c7d1e7b8b48014383e47d9a92c6e974adcb0cbf8ce0f3620fee2cd267b0c46f7238c3431847cb86076283ae252ab91260e8bf569
# Thu, 13 Sep 2018 12:21:15 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz
# Thu, 13 Sep 2018 12:21:15 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.12/bin/apache-tomcat-9.0.12.tar.gz.asc
# Thu, 13 Sep 2018 12:22:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 13 Sep 2018 12:22:17 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 13 Sep 2018 12:22:17 GMT
EXPOSE 8080/tcp
# Thu, 13 Sep 2018 12:22:17 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:0141ef1e371b0b8a4fc6d4d5118bbbf6045c295fad232833a634af2cf45bd823`  
		Last Modified: Wed, 05 Sep 2018 11:47:38 GMT  
		Size: 24.9 MB (24910961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc3bfe0feae05698cb0859fa53d95daee2e1eaab41cfebb8f0ce0069be8249f`  
		Last Modified: Wed, 05 Sep 2018 12:11:29 GMT  
		Size: 469.8 KB (469760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb38e1f6e0d29149721db25f9fbb79505806393a70c856ce96f12151c543441`  
		Last Modified: Wed, 05 Sep 2018 12:11:29 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622e8c23a6cd95f633fc06b7d0f1738dad7c31e9d3124e92c3c647ee51eed9b8`  
		Last Modified: Wed, 05 Sep 2018 12:11:29 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5cc4f0da91266b6f41e71f0a7a4fe96a84b4574d210cda14acc7b7311c2d0d`  
		Last Modified: Wed, 05 Sep 2018 12:13:57 GMT  
		Size: 67.7 MB (67667270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3185cfb743461b7e359228125016abfd7736ebc3c20214ae488241bae134dcea`  
		Last Modified: Wed, 05 Sep 2018 15:36:36 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14f0b5f7ecaaaef74c4b5012e8fc80ae980610cd1fadf10787b4b8193807dd4c`  
		Last Modified: Wed, 05 Sep 2018 15:36:37 GMT  
		Size: 437.9 KB (437890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d45d1d481f77e9f156ac6e6ea2b337cb7a27f28f0b7b3a5279f0e30b20d947a`  
		Last Modified: Thu, 13 Sep 2018 12:32:53 GMT  
		Size: 17.8 MB (17761287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8201cdb41a1bb04e8007445a363da0ce88ef0f35d1c2feeabd53d992db03abb7`  
		Last Modified: Thu, 13 Sep 2018 12:32:51 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
