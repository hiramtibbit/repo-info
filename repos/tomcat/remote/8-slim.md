## `tomcat:8-slim`

```console
$ docker pull tomcat@sha256:46d214196f264e63a86775a35ca6e17fa9039bebe73aa01b72b81092b2b7fe61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `tomcat:8-slim` - linux; amd64

```console
$ docker pull tomcat@sha256:d85b1413ccedf8084b477236dd16608dd07ad37ab7db8eb83f9155dd4b33803b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.1 MB (90094584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ed02a6459cb58d4ffb085a6ede3e07cc4abcc1091b7894c2e1df0816afc07f1`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 05:34:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 05:34:55 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 05:34:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 05:34:56 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 05:38:19 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Dec 2017 05:38:19 GMT
ENV JAVA_VERSION=8u151
# Tue, 12 Dec 2017 05:38:20 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Tue, 12 Dec 2017 05:38:20 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Dec 2017 05:38:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Dec 2017 05:38:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 18 Jan 2018 21:32:19 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 18 Jan 2018 21:32:19 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 18 Jan 2018 21:32:20 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 18 Jan 2018 21:32:21 GMT
WORKDIR /usr/local/tomcat
# Thu, 18 Jan 2018 21:32:21 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 18 Jan 2018 21:32:21 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 18 Jan 2018 21:32:21 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Thu, 18 Jan 2018 21:32:22 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 18 Jan 2018 21:32:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 18 Jan 2018 21:32:29 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 18 Jan 2018 22:17:11 GMT
ENV TOMCAT_MAJOR=8
# Tue, 13 Feb 2018 00:17:05 GMT
ENV TOMCAT_VERSION=8.5.28
# Tue, 13 Feb 2018 00:17:06 GMT
ENV TOMCAT_SHA1=d1555c86ec84824da6785aa875fc6f28298c51cd
# Tue, 13 Feb 2018 00:17:06 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz
# Tue, 13 Feb 2018 00:17:06 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz.asc
# Tue, 13 Feb 2018 00:18:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 13 Feb 2018 00:26:02 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 13 Feb 2018 00:26:03 GMT
EXPOSE 8080/tcp
# Tue, 13 Feb 2018 00:26:03 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf3a7df1b51f6278abe3864a0d83f04c9b9d4885b4d64cf68cb40ac650f91a5`  
		Last Modified: Tue, 12 Dec 2017 05:49:02 GMT  
		Size: 454.8 KB (454819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c98005fcff8d144c0e901a6f8b6c20f7aab34f1c93f9d8679f342cd4640c5c`  
		Last Modified: Tue, 12 Dec 2017 05:49:01 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39dcc90226db797991bfa856bcbec2e3a60afa66c263912ec507073813bbe945`  
		Last Modified: Tue, 12 Dec 2017 05:49:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693e7ee438449dbeb5311161c6b7551a36b6a16e1cc801f11a82752335a83423`  
		Last Modified: Tue, 12 Dec 2017 05:50:30 GMT  
		Size: 56.0 MB (55998926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb083d9c54cfb8d861eda9fbf2466b0be061872c74751624d604dda6c9b75d29`  
		Last Modified: Tue, 12 Dec 2017 05:50:16 GMT  
		Size: 272.1 KB (272124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cadc7acea3685939ce9cfc9746baf657440faa5b9e7506d70359028f8482108`  
		Last Modified: Thu, 18 Jan 2018 23:41:01 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c33890c9ae2882bf46817d8b80965f62d2fb5d7b171687494d56ec80e1ca2220`  
		Last Modified: Thu, 18 Jan 2018 23:41:01 GMT  
		Size: 429.3 KB (429294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff73a47d48f28839b6087d936d1b680298e86443d5f17a4a4a1b718734ddd799`  
		Last Modified: Tue, 13 Feb 2018 01:27:59 GMT  
		Size: 10.5 MB (10453041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1606389c35c2829cf1bdcae07ce1baf75f126184c51c543ba605ced3e6e517eb`  
		Last Modified: Tue, 13 Feb 2018 01:27:58 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:8-slim` - linux; arm variant v5

```console
$ docker pull tomcat@sha256:6b3365158b4b015b1269496bc2b7d708ba69c7fb24cd721868943312e647066c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79425387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ea5e5f875df0ed30de28bf88354e42e82f00b9e37c11cf79ac79b4aad08f4c2`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 12 Dec 2017 21:02:20 GMT
ADD file:f69e5781e9ff2a9867d94175d91d31553e07613bf4b50a1064274ed21a5ed353 in / 
# Tue, 12 Dec 2017 21:02:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 23:35:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:35:32 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 23:35:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 23:35:36 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 23:38:13 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Dec 2017 23:38:13 GMT
ENV JAVA_VERSION=8u151
# Tue, 12 Dec 2017 23:38:14 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Tue, 12 Dec 2017 23:38:14 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Dec 2017 23:38:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Dec 2017 23:38:49 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 18 Jan 2018 22:51:17 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 18 Jan 2018 22:51:17 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 18 Jan 2018 22:51:17 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 18 Jan 2018 22:51:18 GMT
WORKDIR /usr/local/tomcat
# Thu, 18 Jan 2018 22:51:18 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 18 Jan 2018 22:51:18 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 18 Jan 2018 22:51:18 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Thu, 18 Jan 2018 22:51:19 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 18 Jan 2018 22:51:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 18 Jan 2018 22:51:27 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 18 Jan 2018 22:59:47 GMT
ENV TOMCAT_MAJOR=8
# Tue, 13 Feb 2018 22:46:39 GMT
ENV TOMCAT_VERSION=8.5.28
# Tue, 13 Feb 2018 22:46:40 GMT
ENV TOMCAT_SHA1=d1555c86ec84824da6785aa875fc6f28298c51cd
# Tue, 13 Feb 2018 22:46:40 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz
# Tue, 13 Feb 2018 22:46:40 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz.asc
# Tue, 13 Feb 2018 22:48:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 13 Feb 2018 22:48:48 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 13 Feb 2018 22:48:48 GMT
EXPOSE 8080/tcp
# Tue, 13 Feb 2018 22:48:48 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:20f319b2549a8d631c2e8034bfc3f9c12042d86a686470a8addd2fb7bc8c688c`  
		Last Modified: Tue, 12 Dec 2017 21:12:53 GMT  
		Size: 21.2 MB (21160630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e65052ec7ef0bdb21ddce084fc2ca3ebb905b33a9a818895001dd55d624efe03`  
		Last Modified: Tue, 12 Dec 2017 23:54:39 GMT  
		Size: 447.6 KB (447650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07680ae7da06d4a0f024421827636cf16555c42f45227a88ad625c8ef912c759`  
		Last Modified: Tue, 12 Dec 2017 23:54:39 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58646084886efde46909359e34fd12541f48ec6173c42b5aa4e27cb0deb8813c`  
		Last Modified: Tue, 12 Dec 2017 23:54:40 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28cd75912c5edcdc3510c7250c1dd59f28596cb2818114904f20977527c53811`  
		Last Modified: Tue, 12 Dec 2017 23:57:05 GMT  
		Size: 46.7 MB (46726494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f836b50d9ff8fe1e891b4aeb6021ea88e654171ad94b141e87ac191e474d588`  
		Last Modified: Tue, 12 Dec 2017 23:56:54 GMT  
		Size: 272.2 KB (272191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e26d66227bcf0cce12f25ac1dd48597d0ff06419cf14582ed3fb442452251d6`  
		Last Modified: Thu, 18 Jan 2018 23:18:14 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c5a5e585962866b162be26944c27889405d5088010bb03446e6ef6746cc371`  
		Last Modified: Thu, 18 Jan 2018 23:18:14 GMT  
		Size: 414.8 KB (414763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dcfc1b70f072f0d86cee73149c5d2ee1a1c8fdb87e6bd1d0a4170c19bbe8e28`  
		Last Modified: Tue, 13 Feb 2018 23:00:20 GMT  
		Size: 10.4 MB (10402970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b50bc0fbaecb8c1fe6511a44d56ebf237ea99102fe3f2daab98ee4c56fc06e`  
		Last Modified: Tue, 13 Feb 2018 23:00:17 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:8-slim` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:67ce0ceea08b6046e3552fdda545047818b0e03bd03941970372db606d713f48
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80072973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db09553d0b5567f00f6e1ff48081a595344d30d3bd840acc44d5f6b8ca59f805`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 12 Dec 2017 18:34:13 GMT
ADD file:6e068c7cc5397bfb4ec60dab4d410c5d3ba724f20ad0129d2032fb509f0eadcd in / 
# Tue, 12 Dec 2017 18:34:14 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 02:17:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 02:17:38 GMT
ENV LANG=C.UTF-8
# Wed, 13 Dec 2017 02:17:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 13 Dec 2017 02:17:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 13 Dec 2017 02:20:45 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 13 Dec 2017 02:20:46 GMT
ENV JAVA_VERSION=8u151
# Wed, 13 Dec 2017 02:20:47 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Wed, 13 Dec 2017 02:20:48 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 13 Dec 2017 02:21:54 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 13 Dec 2017 02:22:07 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 19 Jan 2018 01:55:16 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 19 Jan 2018 01:55:16 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 Jan 2018 01:55:18 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 19 Jan 2018 01:55:19 GMT
WORKDIR /usr/local/tomcat
# Fri, 19 Jan 2018 01:55:20 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 19 Jan 2018 01:55:20 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 19 Jan 2018 01:55:21 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Fri, 19 Jan 2018 01:55:23 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 19 Jan 2018 01:55:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Jan 2018 01:55:39 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 19 Jan 2018 02:24:22 GMT
ENV TOMCAT_MAJOR=8
# Tue, 13 Feb 2018 01:41:30 GMT
ENV TOMCAT_VERSION=8.5.28
# Tue, 13 Feb 2018 01:41:31 GMT
ENV TOMCAT_SHA1=d1555c86ec84824da6785aa875fc6f28298c51cd
# Tue, 13 Feb 2018 01:41:31 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz
# Tue, 13 Feb 2018 01:41:32 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz.asc
# Tue, 13 Feb 2018 01:51:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 13 Feb 2018 01:51:30 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 13 Feb 2018 01:51:31 GMT
EXPOSE 8080/tcp
# Tue, 13 Feb 2018 01:51:31 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:fcad8cfc11c78a53ccf9aafafcb3ded5044dbd181977e6255aea54fbe164f131`  
		Last Modified: Tue, 12 Dec 2017 18:49:05 GMT  
		Size: 20.3 MB (20331270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83c64863fb48f3c775969ad8bd727b09f3c8f60396a469d5c70006c3ba2a3aa5`  
		Last Modified: Wed, 13 Dec 2017 02:27:43 GMT  
		Size: 440.8 KB (440783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48bc6f700f2b94cbba0ece43bb24936ab2e94ceae7f46573d3373c9551bbf7fe`  
		Last Modified: Wed, 13 Dec 2017 02:27:43 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba1aa71856da230cafe9c4121837cf6fd0f5c2c17d9c98ac22c767e7cf6e668`  
		Last Modified: Wed, 13 Dec 2017 02:27:44 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5663ce84487e3faa8b2686217a32cf2cb7bc73587b63ccdb2af477458aecd70`  
		Last Modified: Wed, 13 Dec 2017 02:30:26 GMT  
		Size: 48.2 MB (48152403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d1920fed140df205c75b511b6557ffcd700bd2b7db283c44a36283a305e90e`  
		Last Modified: Wed, 13 Dec 2017 02:30:11 GMT  
		Size: 272.1 KB (272081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a994586adcba3099d4bad085de669d4665407bfa37bd7be7d91717851d940fba`  
		Last Modified: Fri, 19 Jan 2018 03:49:26 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2214a90384380e8c0ccb212c1ff11ceddde13edb781caf69f041237decbf5c7d`  
		Last Modified: Fri, 19 Jan 2018 03:49:28 GMT  
		Size: 413.1 KB (413108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc9d5700afeebd8b62562583d8a977bce3d042af2eb4c73c1e45a00000bfbda5`  
		Last Modified: Tue, 13 Feb 2018 02:45:55 GMT  
		Size: 10.5 MB (10462670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95231b179a4590c875461cfa571c5c7ecfef8efbf72dc8ab2386fbcbb85e91f6`  
		Last Modified: Tue, 13 Feb 2018 02:45:52 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:8-slim` - linux; 386

```console
$ docker pull tomcat@sha256:0972dd7cf8372528ce4987b9f7e793a3521ead35a9497de404630a99f7c36e96
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.2 MB (90191999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3a046a4cf7e1144bfb3b03fd297e59bcfa11f9bcd19de6ea32209c39e46c4ae`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 12 Dec 2017 14:36:09 GMT
ADD file:ef60a5257bf2b5766f692e39f5922bbd6161e45de184b7b138522d53a477c7af in / 
# Tue, 12 Dec 2017 14:36:09 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 18:49:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 18:49:16 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 18:49:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 18:49:18 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 18:50:15 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Dec 2017 18:50:15 GMT
ENV JAVA_VERSION=8u151
# Tue, 12 Dec 2017 18:50:16 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Tue, 12 Dec 2017 18:50:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Dec 2017 18:50:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Dec 2017 18:51:40 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 19 Jan 2018 20:55:02 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 19 Jan 2018 20:55:02 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 Jan 2018 20:55:04 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 19 Jan 2018 20:55:15 GMT
WORKDIR /usr/local/tomcat
# Fri, 19 Jan 2018 20:55:15 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 19 Jan 2018 20:55:15 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 19 Jan 2018 20:55:16 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Fri, 19 Jan 2018 20:55:17 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 19 Jan 2018 20:55:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Jan 2018 20:55:30 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 19 Jan 2018 21:54:17 GMT
ENV TOMCAT_MAJOR=8
# Tue, 13 Feb 2018 12:23:07 GMT
ENV TOMCAT_VERSION=8.5.28
# Tue, 13 Feb 2018 12:23:07 GMT
ENV TOMCAT_SHA1=d1555c86ec84824da6785aa875fc6f28298c51cd
# Tue, 13 Feb 2018 12:23:07 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz
# Tue, 13 Feb 2018 12:23:08 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz.asc
# Tue, 13 Feb 2018 12:24:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 13 Feb 2018 12:25:00 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 13 Feb 2018 12:25:01 GMT
EXPOSE 8080/tcp
# Tue, 13 Feb 2018 12:25:01 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:4dbce982b05e209cf10a433462dc417f7816c47b0c1a151c8c93206b299b9a14`  
		Last Modified: Tue, 12 Dec 2017 15:03:13 GMT  
		Size: 23.1 MB (23122456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:594d2ff3a2959654cb056a6cc499d910f29f37321940fdb0f60d119c31528ac6`  
		Last Modified: Tue, 12 Dec 2017 19:38:43 GMT  
		Size: 463.5 KB (463470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32efb0ce68171bdf8e5e876db66fc50811b491dabc077b3d35172f1286b4793a`  
		Last Modified: Tue, 12 Dec 2017 19:38:51 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b02613bb9328128d056d071d315402c64aedb2c7b730cf211f79713ce7415e73`  
		Last Modified: Tue, 12 Dec 2017 19:38:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bcc559cf6f8a75a850edb216dd0258ffc3e59eb02f07a5ed762b5a8afd281a0`  
		Last Modified: Tue, 12 Dec 2017 19:40:52 GMT  
		Size: 55.5 MB (55545032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e0437c26ed57f9bcc9c0c90b32da2273931aacd18096d84bc71ecf7f1e7322d`  
		Last Modified: Tue, 12 Dec 2017 19:40:37 GMT  
		Size: 272.2 KB (272164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40d8c55f7d70b63822538813ecc520dc1177a36d171cbc49eb0bca490de9009`  
		Last Modified: Fri, 19 Jan 2018 23:51:53 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93dd5d954e77abd7802916c54aba49e61f7c2c61130ca7aa77cba23bb7e7e4f2`  
		Last Modified: Fri, 19 Jan 2018 23:51:53 GMT  
		Size: 439.4 KB (439449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f06cbf8d999d4f8c9b9443cc172763562da4e2c5d3d1b66e0cefd301fc23afed`  
		Last Modified: Tue, 13 Feb 2018 14:52:22 GMT  
		Size: 10.3 MB (10348771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b6df65ae4af54ae4a32bf2cda0d6b061045062530780bac898bfe3f38d207ec`  
		Last Modified: Tue, 13 Feb 2018 14:52:18 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:8-slim` - linux; ppc64le

```console
$ docker pull tomcat@sha256:7de3c6414b7a6ba95a9954e4c71d22aecbbabd48060455681b9349add34564dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.0 MB (83010592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a4b32ce84dba322d092f237eb8d0ce1c12a37f77e3f53951f1a2011c676ec5c`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 15 Feb 2018 01:38:22 GMT
ADD file:b111f25d8b57c437e532229243b1e47f56149cb63f80fd959bcf8f23fec341c2 in / 
# Thu, 15 Feb 2018 01:38:24 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:47:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:48:00 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 03:48:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 03:48:12 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 03:48:20 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 03:48:23 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 03:48:31 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 03:48:33 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 03:53:34 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 03:53:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 08:46:14 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 15 Feb 2018 08:46:16 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 08:46:19 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 15 Feb 2018 08:46:23 GMT
WORKDIR /usr/local/tomcat
# Thu, 15 Feb 2018 08:46:27 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 15 Feb 2018 08:46:32 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 15 Feb 2018 08:46:37 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Thu, 15 Feb 2018 08:46:42 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 08:46:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:46:59 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 15 Feb 2018 09:19:15 GMT
ENV TOMCAT_MAJOR=8
# Thu, 15 Feb 2018 09:36:53 GMT
ENV TOMCAT_VERSION=8.5.28
# Thu, 15 Feb 2018 09:36:54 GMT
ENV TOMCAT_SHA1=d1555c86ec84824da6785aa875fc6f28298c51cd
# Thu, 15 Feb 2018 09:36:56 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz
# Thu, 15 Feb 2018 09:37:04 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz.asc
# Thu, 15 Feb 2018 09:51:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 15 Feb 2018 09:51:54 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 15 Feb 2018 09:51:56 GMT
EXPOSE 8080/tcp
# Thu, 15 Feb 2018 09:51:57 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:07a374cd4a95ebfac482b60ccc87f4492e55d2f46ad3344b9f1656082a2d40c9`  
		Last Modified: Thu, 15 Feb 2018 01:46:41 GMT  
		Size: 22.8 MB (22753099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db1eeca3bf1292993653ef54f89c085f0b33fd3db68eca1e8f4657565618b9d`  
		Last Modified: Thu, 15 Feb 2018 04:38:26 GMT  
		Size: 449.8 KB (449803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa77403ca9aa744a957e13337b03002f2cdc936bd9d47b0f0ebb37e2be5cd5a`  
		Last Modified: Thu, 15 Feb 2018 04:38:26 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfac90f183e02ebd54abdfdc0f57da55be8fb19f3f1d1fd6e9f41a19cbc2b68`  
		Last Modified: Thu, 15 Feb 2018 04:38:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fac8874d202a2c3fa14e2bad070c2ca13db513a3f4eaec148503f545f2bb23c2`  
		Last Modified: Thu, 15 Feb 2018 04:38:37 GMT  
		Size: 48.6 MB (48635896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947ef59eff2d07967713dbcd66d176cacbda36ca9b726bad4c3554df53a7f9ae`  
		Last Modified: Thu, 15 Feb 2018 04:38:26 GMT  
		Size: 272.0 KB (272038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ea40edddc5cc77e323f5bd8cba3a56d4b780383ac04685d08df66ced75a5493`  
		Last Modified: Thu, 15 Feb 2018 10:48:01 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba7119e85f5ed5c9a5d02df2f13486fcff203d687f4644ea78ba7831f3bac98`  
		Last Modified: Thu, 15 Feb 2018 10:48:01 GMT  
		Size: 423.4 KB (423360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:099efbf6fb8f2420bdde8eea72a70d1147d7a93d2db68e57d48a0167fe8dc38d`  
		Last Modified: Thu, 15 Feb 2018 10:49:29 GMT  
		Size: 10.5 MB (10475703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371989832fa586048ec8d3ccba3ec479e75bd138c41c3973239e0bc1519c67f3`  
		Last Modified: Thu, 15 Feb 2018 10:49:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:8-slim` - linux; s390x

```console
$ docker pull tomcat@sha256:54c80f10ea376456947b36caf92b6ce2fe8e48a2e71e28079d7f38d6e84f0e60
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.0 MB (81989426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9ac10dc6f5663511fba976bfa5cd69c690b16d0daf65bb69b6d3f0a57846f0f`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 15 Feb 2018 06:24:21 GMT
ADD file:8260e9ae960fb51db5129dd52203404076c40abd098cb2b6be7c9fe82821306f in / 
# Thu, 15 Feb 2018 06:24:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 08:22:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:22:20 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 08:22:20 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 08:22:21 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 08:22:21 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 08:22:21 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 08:22:21 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 08:22:21 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 08:22:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 08:22:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 12:34:45 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 15 Feb 2018 12:34:46 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 12:34:46 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 15 Feb 2018 12:34:46 GMT
WORKDIR /usr/local/tomcat
# Thu, 15 Feb 2018 12:34:46 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 15 Feb 2018 12:34:47 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 15 Feb 2018 12:34:47 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Thu, 15 Feb 2018 12:34:47 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 12:34:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 12:34:52 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 15 Feb 2018 12:38:31 GMT
ENV TOMCAT_MAJOR=8
# Thu, 15 Feb 2018 12:41:24 GMT
ENV TOMCAT_VERSION=8.5.28
# Thu, 15 Feb 2018 12:41:24 GMT
ENV TOMCAT_SHA1=d1555c86ec84824da6785aa875fc6f28298c51cd
# Thu, 15 Feb 2018 12:41:24 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz
# Thu, 15 Feb 2018 12:41:25 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz.asc
# Thu, 15 Feb 2018 12:42:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 15 Feb 2018 12:42:29 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 15 Feb 2018 12:42:30 GMT
EXPOSE 8080/tcp
# Thu, 15 Feb 2018 12:42:30 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:100c28096d510c9b0ea02579fd330b972463c7d39f30611f118c107310254130`  
		Last Modified: Thu, 15 Feb 2018 01:20:39 GMT  
		Size: 22.3 MB (22348821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d67d172c9321aa49eb0a1d6d567589ebbb43ae06cb60946c8c790f0b23af5a`  
		Last Modified: Thu, 15 Feb 2018 08:41:51 GMT  
		Size: 465.7 KB (465704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3845a6b44aa77b11f0301052f645fa81073ac3c5d5f847ded838e49fa24afbf`  
		Last Modified: Thu, 15 Feb 2018 08:41:50 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ad6593d36edf37f2b65e87eecaafacc190f019fc017a58f7e41377680146dc`  
		Last Modified: Thu, 15 Feb 2018 08:41:50 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a7ee8323c8ed4ba4657605278d5d2c959b4f862d6c3f0330b004e83b5d92c8`  
		Last Modified: Thu, 15 Feb 2018 08:41:58 GMT  
		Size: 47.8 MB (47847020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d864ba8e0fb2aa1feed079c6e0130a5864f5da4567e0b8cbe8fd00ce8fdfcd`  
		Last Modified: Thu, 15 Feb 2018 08:41:50 GMT  
		Size: 272.2 KB (272156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1471e085cb50e86bc409a4a2b87bff3edece24315c69898c58f5f26df01a5fb`  
		Last Modified: Thu, 15 Feb 2018 12:51:44 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae9e9d596c95f5ea09fe40065a7ef343dbb9c9ee7591b2ce574a5d1612b1f51`  
		Last Modified: Thu, 15 Feb 2018 12:51:45 GMT  
		Size: 432.7 KB (432738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414cf204af6ebee8bc908b6edd9cb4d14c1c40041d01a08d95e6cca049223ee5`  
		Last Modified: Thu, 15 Feb 2018 12:53:11 GMT  
		Size: 10.6 MB (10622327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e11e829ddd1f51498e6db00ab7ed2d1559217925e1eccecaec421e95bd8681`  
		Last Modified: Thu, 15 Feb 2018 12:53:10 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
