## `tomcat:9-jre11-slim`

```console
$ docker pull tomcat@sha256:c57f07498a09ce1ce3362cd67cbb2547f0527165435f35bcd189268022e1f706
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

### `tomcat:9-jre11-slim` - linux; amd64

```console
$ docker pull tomcat@sha256:84b2a43889c4106ad29fd5438bf3c48cc7200e9a5272e59d69d505c41ceea0d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.9 MB (129878730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ed77008ad916ac6b127a57d06e5e9d1f2e3a78879718a84086b55e29aefdc2d`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 15 Nov 2018 22:40:42 GMT
ADD file:4cc555ff7d5c1f575bcc80925e2336d3df7304fbcde4e7ee181fbbd21572e9ec in / 
# Thu, 15 Nov 2018 22:40:52 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:45:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:45:43 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 14:45:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 14:45:46 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 14:45:47 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 14:45:47 GMT
ENV JAVA_VERSION=11.0.1
# Tue, 04 Dec 2018 23:24:53 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-3
# Tue, 04 Dec 2018 23:27:54 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Dec 2018 00:39:37 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 05 Dec 2018 00:39:38 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Dec 2018 00:39:39 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 05 Dec 2018 00:39:39 GMT
WORKDIR /usr/local/tomcat
# Wed, 05 Dec 2018 00:39:39 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 05 Dec 2018 00:39:40 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 08 Dec 2018 03:12:28 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Sat, 08 Dec 2018 03:12:29 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 08 Dec 2018 03:12:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 08 Dec 2018 03:20:24 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 08 Dec 2018 03:20:25 GMT
ENV TOMCAT_MAJOR=9
# Wed, 12 Dec 2018 20:40:47 GMT
ENV TOMCAT_VERSION=9.0.14
# Wed, 12 Dec 2018 20:40:47 GMT
ENV TOMCAT_SHA512=6a06eabacb02eaa2c64772265f8ddb5ddbfbad72b4c5da82e68da739675c3ec7e4692ebb8aa80e1b5512006f60856c939c7c3a5fe4f46f30bd4b575ecd068d54
# Wed, 12 Dec 2018 20:40:48 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz
# Wed, 12 Dec 2018 20:40:48 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz.asc
# Wed, 12 Dec 2018 20:43:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Wed, 12 Dec 2018 20:43:09 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 12 Dec 2018 20:43:09 GMT
EXPOSE 8080/tcp
# Wed, 12 Dec 2018 20:43:09 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:096ebeedeeb6534eadf6d1ae8173145e8f43aedf29f5ae179f8b2e899f84f344`  
		Last Modified: Thu, 15 Nov 2018 23:05:13 GMT  
		Size: 26.6 MB (26571399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac6aea685cb5ee685511876e43026b65163450ee8c4a9f0ffabe065911b11d7`  
		Last Modified: Fri, 16 Nov 2018 15:22:11 GMT  
		Size: 460.4 KB (460378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b0083010f5a1580b0f0d04ae3fef44e71ec2e3f9aa6e8ff466b096857324d5`  
		Last Modified: Fri, 16 Nov 2018 15:22:11 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc1dbecb164e8ca70c49c609a29fdabbc6fe67162d24936ea99450255ee2390`  
		Last Modified: Fri, 16 Nov 2018 15:22:11 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a5fcbdde9de09e24c71f44f811c148bdabc866a39ab802163aa320ba102fda`  
		Last Modified: Tue, 04 Dec 2018 23:49:42 GMT  
		Size: 82.2 MB (82218223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a8e0cdf4b76410ffe729a1d4e1003d76cb460c1f05393d23bb201e6071f459`  
		Last Modified: Wed, 05 Dec 2018 00:48:17 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b460ba15595ccc1b924225dd13892f9c2f1864c53bfe45e2a94afb2ef5e5f769`  
		Last Modified: Sat, 08 Dec 2018 06:52:51 GMT  
		Size: 438.3 KB (438287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe708308aab4e735db16b9937e02a7c8dceb5306396a98236c13df7814599aa5`  
		Last Modified: Wed, 12 Dec 2018 20:48:39 GMT  
		Size: 20.2 MB (20189804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae4febcaa6756ccf6889a74630ccacc4cf6afdff328d42f5429b6ac8f36612f`  
		Last Modified: Wed, 12 Dec 2018 20:48:36 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:9-jre11-slim` - linux; arm variant v5

```console
$ docker pull tomcat@sha256:28387d7ce1495ba0ec68328152d290756aaf91dab69811bc9601176ba66b90cf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.9 MB (108920055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1982d8ba4173643da76e36bdcaa9cfbf9fa9c8e2f86d9f4cd23dc147093ee75`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 16 Nov 2018 09:55:39 GMT
ADD file:19be812da4075223404dc7bda55ae0000d9272233b4e0fbcb1ed9f5b0d775603 in / 
# Fri, 16 Nov 2018 09:55:40 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:29:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:29:20 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 18:29:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 18:29:23 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 18:29:23 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 18:29:24 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 05 Dec 2018 09:51:10 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-3
# Wed, 05 Dec 2018 09:54:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Dec 2018 10:47:23 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 05 Dec 2018 10:47:23 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Dec 2018 10:47:24 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 05 Dec 2018 10:47:25 GMT
WORKDIR /usr/local/tomcat
# Wed, 05 Dec 2018 10:47:25 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 05 Dec 2018 10:47:25 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 08 Dec 2018 10:36:59 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Sat, 08 Dec 2018 10:37:00 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 08 Dec 2018 10:37:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 08 Dec 2018 10:45:19 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 08 Dec 2018 10:45:19 GMT
ENV TOMCAT_MAJOR=9
# Thu, 13 Dec 2018 10:21:25 GMT
ENV TOMCAT_VERSION=9.0.14
# Thu, 13 Dec 2018 10:21:25 GMT
ENV TOMCAT_SHA512=6a06eabacb02eaa2c64772265f8ddb5ddbfbad72b4c5da82e68da739675c3ec7e4692ebb8aa80e1b5512006f60856c939c7c3a5fe4f46f30bd4b575ecd068d54
# Thu, 13 Dec 2018 10:21:25 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz
# Thu, 13 Dec 2018 10:21:26 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz.asc
# Thu, 13 Dec 2018 10:23:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 13 Dec 2018 10:23:54 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 13 Dec 2018 10:23:55 GMT
EXPOSE 8080/tcp
# Thu, 13 Dec 2018 10:23:55 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:17eef93e4bb11e041cd884daf82539e35840a84b2be6349040c976a02f735f73`  
		Last Modified: Fri, 16 Nov 2018 10:10:27 GMT  
		Size: 24.3 MB (24264166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1df0e3a81abb5717b5dc2b32e2def4bd5d403e02eb333d1b28991e1440f2e56`  
		Last Modified: Fri, 16 Nov 2018 18:51:16 GMT  
		Size: 452.3 KB (452266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ff52331d2c91fa8a7c435dcb374e7b5ce16df8ae693dff82cdbda380eefee00`  
		Last Modified: Fri, 16 Nov 2018 18:51:16 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d77d18148d79d7ef96150419ba7a8770061d1b342326da07b5a7bc7d7f894a87`  
		Last Modified: Fri, 16 Nov 2018 18:51:16 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb517a5dec4fea31cfd32f750af087a49aeab619537216d12b9bd79a28d72db`  
		Last Modified: Wed, 05 Dec 2018 10:05:17 GMT  
		Size: 64.9 MB (64930325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b235fe7a2ce244e85ba986d0ee11c397fcf7272f3291478c2fab708fb91599ed`  
		Last Modified: Wed, 05 Dec 2018 10:56:48 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b4a93ac2f813cc213c744d71a6f8adda9b2c9c4aab18f8f038f802e7fe1c1d`  
		Last Modified: Sat, 08 Dec 2018 10:53:17 GMT  
		Size: 421.5 KB (421491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d69871fb7e04cee662c2ac0a30f91191368c2244b9b43ed04d23b77793398a7`  
		Last Modified: Thu, 13 Dec 2018 10:26:17 GMT  
		Size: 18.9 MB (18851134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371d76639a779d84ff3bede527e5716b0d6969b42e5ac66e4b186c048c52718b`  
		Last Modified: Thu, 13 Dec 2018 10:26:13 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:9-jre11-slim` - linux; arm variant v7

```console
$ docker pull tomcat@sha256:a60e0b39c594ae460c254f5ee8f4ecd324def43c7ba798c40c089ce884f2ef83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.3 MB (108318637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a820fc4734b60b8c2df87d8a201274d0b88455807253f53caf2a0cb503f9959`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 16 Nov 2018 13:06:45 GMT
ADD file:43994019e06a9b1d483bb153db2ba5cf8bb01853a44067ac88feda0eb3ebb68b in / 
# Fri, 16 Nov 2018 13:06:47 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:13:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:13:37 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 19:13:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 19:13:40 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 19:13:40 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 19:13:41 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 05 Dec 2018 13:00:55 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-3
# Wed, 05 Dec 2018 13:04:13 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Dec 2018 13:55:24 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 05 Dec 2018 13:55:24 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Dec 2018 13:55:25 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 05 Dec 2018 13:55:26 GMT
WORKDIR /usr/local/tomcat
# Wed, 05 Dec 2018 13:55:26 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 05 Dec 2018 13:55:27 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 08 Dec 2018 13:57:02 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Sat, 08 Dec 2018 13:57:03 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 08 Dec 2018 13:57:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 08 Dec 2018 14:06:11 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 08 Dec 2018 14:06:12 GMT
ENV TOMCAT_MAJOR=9
# Thu, 13 Dec 2018 13:24:13 GMT
ENV TOMCAT_VERSION=9.0.14
# Thu, 13 Dec 2018 13:24:13 GMT
ENV TOMCAT_SHA512=6a06eabacb02eaa2c64772265f8ddb5ddbfbad72b4c5da82e68da739675c3ec7e4692ebb8aa80e1b5512006f60856c939c7c3a5fe4f46f30bd4b575ecd068d54
# Thu, 13 Dec 2018 13:24:13 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz
# Thu, 13 Dec 2018 13:24:14 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz.asc
# Thu, 13 Dec 2018 13:26:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 13 Dec 2018 13:26:36 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 13 Dec 2018 13:26:36 GMT
EXPOSE 8080/tcp
# Thu, 13 Dec 2018 13:26:37 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:a46a0ea4702a84cb0c937aae8e52a790ac652554e7ab1f95332afe0454164a9b`  
		Last Modified: Fri, 16 Nov 2018 13:19:29 GMT  
		Size: 22.2 MB (22227882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba4f512f4b63db7263583456c419ed07495e2ceaa2cd64fc333b41adc7abf28`  
		Last Modified: Fri, 16 Nov 2018 19:49:10 GMT  
		Size: 435.0 KB (434953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e884e5bcef3b212a4cde9d19fce61220f7c958f7004534396e1b2d607ba527c8`  
		Last Modified: Fri, 16 Nov 2018 19:49:10 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6185f940a7ed402b995cf1e5b6e8a3d64bf5a1c9ac2b764a58ffc5263b22ed6`  
		Last Modified: Fri, 16 Nov 2018 19:49:10 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7f090be2b5b730e4702dd81823985a0091d8a8ee2f61ae7434c63fd595117da`  
		Last Modified: Wed, 05 Dec 2018 13:21:19 GMT  
		Size: 66.8 MB (66818021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad1472b6755935162def8c6b661402b3553a779c842ec2a779c0167b9cd4e27`  
		Last Modified: Wed, 05 Dec 2018 14:06:13 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68bba2fd053b67e9fb404809369e91d8ae5644ae90b4e6f4a5b1a7811f19814a`  
		Last Modified: Sat, 08 Dec 2018 14:10:59 GMT  
		Size: 411.4 KB (411375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90e351a6458ceef6da4370964a6e00bef25702ebe1163f7a4bc09fbe58ffc42f`  
		Last Modified: Thu, 13 Dec 2018 13:27:49 GMT  
		Size: 18.4 MB (18425732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e55536f58c3a32316ffe8b16950979b162d3c0dec0b1dd0f23f751bcc24cdf79`  
		Last Modified: Thu, 13 Dec 2018 13:27:45 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:9-jre11-slim` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:04881792bc205eb8d596e9465aad607093152a4ece042fa3df7f76ce068ef641
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.2 MB (115224316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bb5ae9f070cad467ebfb924fb34b1799f75ff7e9c48db9ecca5ee957448861f`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 16 Nov 2018 10:10:52 GMT
ADD file:28f5428adbb0e42900e3c72b4cbf34c1ec73a7f6291cd1e2723a7f579a754947 in / 
# Fri, 16 Nov 2018 10:11:02 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 04:25:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:25:21 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 04:25:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 04:25:27 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 04:25:27 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Nov 2018 04:25:28 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 05 Dec 2018 10:13:24 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-3
# Wed, 05 Dec 2018 10:23:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Dec 2018 12:05:38 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 05 Dec 2018 12:05:38 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Dec 2018 12:05:41 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 05 Dec 2018 12:05:42 GMT
WORKDIR /usr/local/tomcat
# Wed, 05 Dec 2018 12:05:43 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 05 Dec 2018 12:05:43 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 08 Dec 2018 14:51:55 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Sat, 08 Dec 2018 14:52:01 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 08 Dec 2018 14:52:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 08 Dec 2018 15:18:54 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 08 Dec 2018 15:18:55 GMT
ENV TOMCAT_MAJOR=9
# Thu, 13 Dec 2018 14:16:58 GMT
ENV TOMCAT_VERSION=9.0.14
# Thu, 13 Dec 2018 14:16:59 GMT
ENV TOMCAT_SHA512=6a06eabacb02eaa2c64772265f8ddb5ddbfbad72b4c5da82e68da739675c3ec7e4692ebb8aa80e1b5512006f60856c939c7c3a5fe4f46f30bd4b575ecd068d54
# Thu, 13 Dec 2018 14:17:00 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz
# Thu, 13 Dec 2018 14:17:01 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz.asc
# Thu, 13 Dec 2018 14:29:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 13 Dec 2018 14:29:15 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 13 Dec 2018 14:29:15 GMT
EXPOSE 8080/tcp
# Thu, 13 Dec 2018 14:29:16 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:77c16290cf417232d2441e8fdfed16146041192c6fd690f232cc4db2f328d09d`  
		Last Modified: Thu, 15 Nov 2018 01:31:50 GMT  
		Size: 24.9 MB (24909641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a43f1a0db0daf11d3745b412ba5e2247498323d168915996249c293242557eb`  
		Last Modified: Sat, 17 Nov 2018 05:19:00 GMT  
		Size: 446.4 KB (446389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfcad3f77424094b0bd2909b7e5d597015d7b0feba829760f386b01be2327398`  
		Last Modified: Sat, 17 Nov 2018 05:19:00 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be465007a56c376579b832ccfb116d1e5e3b71f955f0560d2e9f3a8f70e800b5`  
		Last Modified: Sat, 17 Nov 2018 05:19:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20b131e99c3113e8fc518d8bf9b63ae63fe646607e3cdcd0d2a2fd81d58cbbde`  
		Last Modified: Wed, 05 Dec 2018 10:35:15 GMT  
		Size: 69.0 MB (69029806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7996c2b9e858916a5946a032c9c1fbac821b38161490bdc3a30dfcd932bcef0b`  
		Last Modified: Wed, 05 Dec 2018 12:32:27 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23add796d8dfb8ddce748fa4c1f3bfa8f333960127d1eafd32cb8be7c1d87c06`  
		Last Modified: Sat, 08 Dec 2018 15:34:01 GMT  
		Size: 435.4 KB (435371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd63909a8eab4014ab44bf26badfa1c31fc8b1667172de4476ada8507b08c8ad`  
		Last Modified: Thu, 13 Dec 2018 14:33:16 GMT  
		Size: 20.4 MB (20402468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d87022f6bb76b0e1359f4b22517656562f41e3a06501ce5214bed5ae9e9c827`  
		Last Modified: Thu, 13 Dec 2018 14:33:10 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:9-jre11-slim` - linux; 386

```console
$ docker pull tomcat@sha256:f20c8e6d57c0fec76d6c5f638dfa59b9c836e0e1c8693205311dc7dd4d3d3f0f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.3 MB (133305907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2d524b93c3f92fba7448cb27022eb4df89766cdc71805c9cbb3292e02c19c5c`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 16 Nov 2018 12:32:58 GMT
ADD file:f770a9c4377e7484e597ccfee46fb09c1a5cf5d83af0ff47bc30b0dbc3690248 in / 
# Fri, 16 Nov 2018 12:32:59 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 13:47:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 13:47:30 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 13:47:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 13:47:33 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 13:47:33 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Nov 2018 13:47:34 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 05 Dec 2018 11:49:27 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-3
# Wed, 05 Dec 2018 11:52:27 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Dec 2018 13:25:16 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 05 Dec 2018 13:25:16 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Dec 2018 13:25:17 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 05 Dec 2018 13:25:17 GMT
WORKDIR /usr/local/tomcat
# Wed, 05 Dec 2018 13:25:17 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 05 Dec 2018 13:25:18 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 08 Dec 2018 13:54:27 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Sat, 08 Dec 2018 13:54:28 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 08 Dec 2018 13:54:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 08 Dec 2018 14:00:37 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 08 Dec 2018 14:00:37 GMT
ENV TOMCAT_MAJOR=9
# Thu, 13 Dec 2018 14:34:30 GMT
ENV TOMCAT_VERSION=9.0.14
# Thu, 13 Dec 2018 14:34:30 GMT
ENV TOMCAT_SHA512=6a06eabacb02eaa2c64772265f8ddb5ddbfbad72b4c5da82e68da739675c3ec7e4692ebb8aa80e1b5512006f60856c939c7c3a5fe4f46f30bd4b575ecd068d54
# Thu, 13 Dec 2018 14:34:30 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz
# Thu, 13 Dec 2018 14:34:30 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz.asc
# Thu, 13 Dec 2018 14:36:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 13 Dec 2018 14:36:44 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 13 Dec 2018 14:36:44 GMT
EXPOSE 8080/tcp
# Thu, 13 Dec 2018 14:36:44 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:917b38cd54174de408858630342808b1b78a894725d44b5e2c463b629208f59a`  
		Last Modified: Thu, 15 Nov 2018 01:33:52 GMT  
		Size: 27.1 MB (27147630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af960615d23713e58a50b17e3927c2c9b422197c241ace9b7cc252223653d20a`  
		Last Modified: Sat, 17 Nov 2018 14:26:48 GMT  
		Size: 469.3 KB (469318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b8c3d3867e270c6911df962ea8febd27feaf16c63ecb89b95b62591ba3a2e8`  
		Last Modified: Sat, 17 Nov 2018 14:26:48 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f4d75ee2c67b914e81ac14e5961150bfc7cf6a02b226dda491a7b2cca25084`  
		Last Modified: Sat, 17 Nov 2018 14:26:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb1a6ad0fdecf0f3dae2a7ccf69ea1ebf97f93dabc4f81396e32ff1c34031fa1`  
		Last Modified: Wed, 05 Dec 2018 12:06:20 GMT  
		Size: 85.8 MB (85766010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7977dd5c5b4f06f80dfea51cbf8503e237eb7a79f22c889ce398dfe3035161e2`  
		Last Modified: Wed, 05 Dec 2018 13:32:34 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf5c18ad0349e3843806c1274783083494c31490070be5c32da849760a30d0ba`  
		Last Modified: Sat, 08 Dec 2018 14:13:00 GMT  
		Size: 448.4 KB (448372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742bca46f6fec97c77f1ac9562d4dc9b1710acbfe43a0e224d3713c8d284a1e3`  
		Last Modified: Thu, 13 Dec 2018 14:41:07 GMT  
		Size: 19.5 MB (19473939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb8a053f3c1c7346809b756a7502038e67ca7619ec58334a606eec86630f124`  
		Last Modified: Thu, 13 Dec 2018 14:41:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:9-jre11-slim` - linux; ppc64le

```console
$ docker pull tomcat@sha256:a1712002a56822a9728c6045620b53124477f14504a1a49a61cbf08983ad4bf4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.7 MB (119699043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b665c64b8863406c0eddaffef6333489912149ea12c9b49ae4dde97557684113`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 16 Nov 2018 09:29:41 GMT
ADD file:4e7aed8442dab8670ee744a30c1509d64bc59b21c1de883a0aa7c347864e8f32 in / 
# Fri, 16 Nov 2018 09:29:44 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 21:46:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 21:46:31 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 21:46:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 21:46:34 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 21:46:35 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 21:46:36 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 05 Dec 2018 09:35:18 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-3
# Wed, 05 Dec 2018 09:50:36 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Dec 2018 11:42:13 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 05 Dec 2018 11:42:14 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Dec 2018 11:42:16 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 05 Dec 2018 11:42:37 GMT
WORKDIR /usr/local/tomcat
# Wed, 05 Dec 2018 11:42:38 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 05 Dec 2018 11:42:39 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 08 Dec 2018 12:37:31 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Sat, 08 Dec 2018 12:37:34 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 08 Dec 2018 12:37:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 08 Dec 2018 12:58:40 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 08 Dec 2018 12:58:42 GMT
ENV TOMCAT_MAJOR=9
# Thu, 13 Dec 2018 12:07:04 GMT
ENV TOMCAT_VERSION=9.0.14
# Thu, 13 Dec 2018 12:07:05 GMT
ENV TOMCAT_SHA512=6a06eabacb02eaa2c64772265f8ddb5ddbfbad72b4c5da82e68da739675c3ec7e4692ebb8aa80e1b5512006f60856c939c7c3a5fe4f46f30bd4b575ecd068d54
# Thu, 13 Dec 2018 12:07:06 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz
# Thu, 13 Dec 2018 12:07:22 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz.asc
# Thu, 13 Dec 2018 12:14:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 13 Dec 2018 12:14:20 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 13 Dec 2018 12:14:31 GMT
EXPOSE 8080/tcp
# Thu, 13 Dec 2018 12:14:31 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:10ef44428855cb1531bb921aece7e2fce8c3114535e791b0137ae992bcf6c0de`  
		Last Modified: Fri, 16 Nov 2018 09:38:12 GMT  
		Size: 29.4 MB (29380289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:054bdbfdc967c63925725f62f220d089aae13bf5b98096107a202b4ca109c8d4`  
		Last Modified: Fri, 16 Nov 2018 22:26:10 GMT  
		Size: 458.0 KB (457984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c725e69781be4295e403a1705023b4f68d41b63088650dee68b80f6bebce9ed`  
		Last Modified: Fri, 16 Nov 2018 22:26:10 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad2d205109331b45c64903130f8430bcef7133855780e19ecdee70c37796929`  
		Last Modified: Fri, 16 Nov 2018 22:26:11 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5848f85df3a272d79403bcb6c97340162e8f0b6f495b301f072290498f9885`  
		Last Modified: Wed, 05 Dec 2018 10:19:33 GMT  
		Size: 66.9 MB (66929963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a4efc4a854a0c63cf0dddd859e6370d505797b95777fe755225e78c127cf475`  
		Last Modified: Wed, 05 Dec 2018 12:02:07 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:315b103b90decc124aabbbc2b2924b43a7b7c455c73ae14ee51106200858867e`  
		Last Modified: Sat, 08 Dec 2018 13:20:27 GMT  
		Size: 453.6 KB (453578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca712ffbb99f228587c5d5c267d9c77e108720f02c4066904ef13a4d36a755be`  
		Last Modified: Thu, 13 Dec 2018 12:22:32 GMT  
		Size: 22.5 MB (22476555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72aab9e5aa840528e932dd3246d07924b1c70feb2abcbc1bc1ae3b14c876ab2f`  
		Last Modified: Thu, 13 Dec 2018 12:22:21 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:9-jre11-slim` - linux; s390x

```console
$ docker pull tomcat@sha256:39c2f0a8822e8b11a6218024dfc1c7ef1313e434248db03457dcdb4474374901
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.8 MB (109754351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d073bcf304320b5b9918be30fc8dc69a08cf8fdf2b0a04c29cb1ce0cfc40f50`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 16 Nov 2018 12:42:52 GMT
ADD file:3973d2bdf4ed1dc196652a0c44df84251530a44f0375e217e92c2c8da163daee in / 
# Fri, 16 Nov 2018 12:42:53 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:45:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:45:17 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 20:45:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 20:45:18 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 20:45:18 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 20:45:19 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 05 Dec 2018 13:10:04 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-3
# Wed, 05 Dec 2018 13:12:12 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Dec 2018 14:34:12 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 05 Dec 2018 14:34:12 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Dec 2018 14:34:13 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 05 Dec 2018 14:34:13 GMT
WORKDIR /usr/local/tomcat
# Wed, 05 Dec 2018 14:34:13 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 05 Dec 2018 14:34:13 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 08 Dec 2018 14:47:54 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Sat, 08 Dec 2018 14:47:55 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 08 Dec 2018 14:48:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 08 Dec 2018 14:54:23 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 08 Dec 2018 14:54:23 GMT
ENV TOMCAT_MAJOR=9
# Thu, 13 Dec 2018 15:06:49 GMT
ENV TOMCAT_VERSION=9.0.14
# Thu, 13 Dec 2018 15:06:50 GMT
ENV TOMCAT_SHA512=6a06eabacb02eaa2c64772265f8ddb5ddbfbad72b4c5da82e68da739675c3ec7e4692ebb8aa80e1b5512006f60856c939c7c3a5fe4f46f30bd4b575ecd068d54
# Thu, 13 Dec 2018 15:06:50 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz
# Thu, 13 Dec 2018 15:06:50 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz.asc
# Thu, 13 Dec 2018 15:08:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 13 Dec 2018 15:08:36 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 13 Dec 2018 15:08:37 GMT
EXPOSE 8080/tcp
# Thu, 13 Dec 2018 15:08:37 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:17f6fbb713515e136919f5f0438be0049eff031a24cf8c46275983348721893d`  
		Last Modified: Thu, 15 Nov 2018 01:49:15 GMT  
		Size: 25.2 MB (25217722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b800f4791d15790ab70d71048aae04dadfd4964f749d46ce99cda9b4fb1a8cc2`  
		Last Modified: Fri, 16 Nov 2018 20:59:20 GMT  
		Size: 469.4 KB (469350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb03c98a7412abbc65c9348237e4e3991394048f85c985fe27a347f5ae40c3a`  
		Last Modified: Fri, 16 Nov 2018 20:59:19 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63a30123b42647b4246accf7f77d14825485e4321d2b745dcea8df96ccadfb7`  
		Last Modified: Fri, 16 Nov 2018 20:59:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4fa22b038399e5d6c0aaa4623f9868c7b8526d1e116cfc461ca64bf1db4d207`  
		Last Modified: Wed, 05 Dec 2018 13:17:59 GMT  
		Size: 63.1 MB (63107865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21425f1ba548fe26af23fe113f0329b8ddf70dda02c88cf7a470e66dc5b8ad3c`  
		Last Modified: Wed, 05 Dec 2018 14:39:28 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27aee620510625debecd5ef8586cf6a666cf90250475dc542a7deb8533cf8511`  
		Last Modified: Sat, 08 Dec 2018 14:59:00 GMT  
		Size: 436.5 KB (436508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3c4a5f44edc11cfb09998e1d8727b409bfdad28518f2933a4ba53013a99e58a`  
		Last Modified: Thu, 13 Dec 2018 15:10:58 GMT  
		Size: 20.5 MB (20522266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b1c95c550b9ce7a0d6c5301fe72996af76c8a73c785f67a280e2fd05f9d95ba`  
		Last Modified: Thu, 13 Dec 2018 15:10:55 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
