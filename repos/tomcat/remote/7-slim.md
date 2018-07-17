## `tomcat:7-slim`

```console
$ docker pull tomcat@sha256:372cddc7e59086858b634019957d2a6159802d4f370216dd7ef80197ebde799e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `tomcat:7-slim` - linux; amd64

```console
$ docker pull tomcat@sha256:bf2a080f2b2a3adecd599c00b0d2c3bcfaca926acf5880f0de5e6d225e0538a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.4 MB (105392419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aac8491b18561c8583c1deca81319a5cfbbd71e07811ec32776b4d6af7035134`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 26 Jun 2018 21:21:17 GMT
ADD file:8108708c9ab961c9562c2171f4f594291dbaac0dc81dcb7bcbaf134f251f459e in / 
# Tue, 26 Jun 2018 21:21:18 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 23:33:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:33:58 GMT
ENV LANG=C.UTF-8
# Tue, 26 Jun 2018 23:33:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 26 Jun 2018 23:33:59 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 26 Jun 2018 23:37:09 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 26 Jun 2018 23:37:09 GMT
ENV JAVA_VERSION=7u181
# Tue, 26 Jun 2018 23:37:09 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 26 Jun 2018 23:38:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 06:53:35 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 27 Jun 2018 06:53:35 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 06:53:36 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 27 Jun 2018 06:53:36 GMT
WORKDIR /usr/local/tomcat
# Wed, 27 Jun 2018 06:53:36 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 27 Jun 2018 06:53:37 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 27 Jun 2018 06:53:37 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Wed, 27 Jun 2018 06:54:16 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 06:54:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 06:54:53 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 27 Jun 2018 06:54:53 GMT
ENV TOMCAT_MAJOR=7
# Sat, 07 Jul 2018 04:08:38 GMT
ENV TOMCAT_VERSION=7.0.90
# Sat, 07 Jul 2018 04:08:38 GMT
ENV TOMCAT_SHA512=c7a47135b99684425260cd906cf5c9a5226837d3681d84ae4e3bb199068e97f0e63d07393d91ca0436204a1dc92bf9bd9a4a1c4c893187703e023503bbd81901
# Sat, 07 Jul 2018 04:08:38 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz
# Sat, 07 Jul 2018 04:08:38 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc
# Sat, 07 Jul 2018 04:11:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sat, 07 Jul 2018 04:11:28 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 07 Jul 2018 04:11:38 GMT
EXPOSE 8080/tcp
# Sat, 07 Jul 2018 04:11:39 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:2caa28db99eb312c788669036f0bf3914f73f5a27a30f69d2a7443fce10eb882`  
		Last Modified: Tue, 26 Jun 2018 21:31:00 GMT  
		Size: 30.1 MB (30119838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b466fd40b39060e96cf1326c3764f3186bb062bb692cf9f130d477fdccf9aaf1`  
		Last Modified: Tue, 26 Jun 2018 23:57:03 GMT  
		Size: 463.7 KB (463741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5d0ac1dcec173c9698e3586eb1889ea24d359fbd1f735863f5742072496ece6`  
		Last Modified: Tue, 26 Jun 2018 23:57:03 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a711da6835f07d1b38e4677dafe89be66bb2a1de6dc07f652c470b58a22152ed`  
		Last Modified: Tue, 26 Jun 2018 23:57:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ad9a40fa41c09e5a8700cdd5a91bd8f2b80a8036f57db7cc357c09b15a37a2`  
		Last Modified: Tue, 26 Jun 2018 23:59:08 GMT  
		Size: 61.7 MB (61701012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c197fa011aca0e025250fda63c39a2c74d5f6cb4beeeab50a74218121c5fc2`  
		Last Modified: Wed, 27 Jun 2018 07:31:39 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4747720c99f15bea661501a8709770b0da50ef83b23c80248f93b981dbdc5a1`  
		Last Modified: Wed, 27 Jun 2018 07:31:37 GMT  
		Size: 2.4 MB (2370791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a66fd5899131b3ec6ccf5778724fafdcea13d3f239b856b94d7175e7d525d1f`  
		Last Modified: Wed, 27 Jun 2018 07:31:37 GMT  
		Size: 488.4 KB (488420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:386e47ae660d46caa71c3f111c3d08d7fe95fcaeb03199fec414365ebc6a0b19`  
		Last Modified: Sat, 07 Jul 2018 04:29:58 GMT  
		Size: 10.2 MB (10247926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5e843a2c3f19f098c87da0c91b34b41f16f4d3a6fe226e929d000ffa874134`  
		Last Modified: Sat, 07 Jul 2018 04:29:56 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:7-slim` - linux; arm variant v5

```console
$ docker pull tomcat@sha256:de0d6373f011ebab3ee1d93eaf775efd116952e1b583d49577e3d74f9067c136
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.1 MB (93094630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cff81c64b8a618972cb5444b16f4e288c088778a674e530d41f10150d626f127`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 17 Jul 2018 08:50:57 GMT
ADD file:e303ac4cacd7ac2a0a69960e76235ca4a7305f8db9cfae9f97c5dafe0cb57c9c in / 
# Tue, 17 Jul 2018 08:50:59 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 09:21:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 09:21:22 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 09:21:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 09:21:23 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 09:23:19 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 09:23:19 GMT
ENV JAVA_VERSION=7u181
# Tue, 17 Jul 2018 09:23:19 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 17 Jul 2018 09:24:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 14:02:46 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 17 Jul 2018 14:02:46 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 14:02:47 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 17 Jul 2018 14:02:48 GMT
WORKDIR /usr/local/tomcat
# Tue, 17 Jul 2018 14:02:48 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 17 Jul 2018 14:02:48 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 17 Jul 2018 14:02:49 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Tue, 17 Jul 2018 14:03:23 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:03:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:03:57 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 17 Jul 2018 14:03:57 GMT
ENV TOMCAT_MAJOR=7
# Tue, 17 Jul 2018 14:03:58 GMT
ENV TOMCAT_VERSION=7.0.90
# Tue, 17 Jul 2018 14:03:58 GMT
ENV TOMCAT_SHA512=c7a47135b99684425260cd906cf5c9a5226837d3681d84ae4e3bb199068e97f0e63d07393d91ca0436204a1dc92bf9bd9a4a1c4c893187703e023503bbd81901
# Tue, 17 Jul 2018 14:03:59 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz
# Tue, 17 Jul 2018 14:03:59 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc
# Tue, 17 Jul 2018 14:06:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 17 Jul 2018 14:06:26 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 17 Jul 2018 14:06:26 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 14:06:26 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:669d043a9b2bd51eea9e767c0315e0ad02bd9f56f1ef5f6172fa53d78285ac5a`  
		Last Modified: Tue, 17 Jul 2018 09:03:26 GMT  
		Size: 28.4 MB (28430654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32c284edd78c5a0cec0dabc2d10500872e2acfb829d77dd47be7bc8901de22b7`  
		Last Modified: Tue, 17 Jul 2018 09:34:38 GMT  
		Size: 456.5 KB (456467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb7a4e02c9453c20bf5f6c4b61f86382c39d0cc51055486accedc5bd8e136d2`  
		Last Modified: Tue, 17 Jul 2018 09:34:37 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b322e91969e8bed0ecb1c9ed5354b0e1c1c150f2fa66e6bc978dc26b66b1bdab`  
		Last Modified: Tue, 17 Jul 2018 09:34:37 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1aecbe4486983d55775e55c8abfe1dda93b09522fd74149e03f4cbab9a6624`  
		Last Modified: Tue, 17 Jul 2018 09:36:35 GMT  
		Size: 51.4 MB (51429294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b770294baf85887a8ab069d6b0503953c59e0f9b2085f8aa2ce46f081f6a7f`  
		Last Modified: Tue, 17 Jul 2018 14:37:03 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae1ca930cb5ada5b5364cb16101478eceb2fe9761aaa6e4e121f0ed81e8f8e53`  
		Last Modified: Tue, 17 Jul 2018 14:37:04 GMT  
		Size: 2.1 MB (2101558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367e1c9c7a5a372479cb1274d55c371c87020ca591693f0391373c41041aa255`  
		Last Modified: Tue, 17 Jul 2018 14:37:04 GMT  
		Size: 474.5 KB (474521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84dc6cdca985de0d05af4af94f16ee84e4397aa125442bc0a61886f02818d91d`  
		Last Modified: Tue, 17 Jul 2018 14:37:06 GMT  
		Size: 10.2 MB (10201447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d13df9e404ef4677db0a718eb87409729415eadf4e074b93d900ce320ffd5438`  
		Last Modified: Tue, 17 Jul 2018 14:37:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:7-slim` - linux; arm variant v7

```console
$ docker pull tomcat@sha256:cc23c209adce609fc2a5dd3faae4b931faf798c8f31ee324e415fd08bbf67753
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.7 MB (89695343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0d1ea7f93aa48181c82a83ff9e73695000f05f9ce9ef8cf7076e23807cb3c6f`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 17 Jul 2018 12:00:33 GMT
ADD file:32d146255a9263416cb50a32e6079a40852e3ae1db6b0e30134cde4d24917309 in / 
# Tue, 17 Jul 2018 12:00:36 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:49:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:49:25 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 12:49:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 12:49:27 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 12:51:22 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 17 Jul 2018 12:51:22 GMT
ENV JAVA_VERSION=7u181
# Tue, 17 Jul 2018 12:51:23 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 17 Jul 2018 12:52:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 16:15:33 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 17 Jul 2018 16:15:33 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 16:15:34 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 17 Jul 2018 16:15:35 GMT
WORKDIR /usr/local/tomcat
# Tue, 17 Jul 2018 16:15:35 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 17 Jul 2018 16:15:35 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 17 Jul 2018 16:15:36 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Tue, 17 Jul 2018 16:16:11 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 16:16:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 16:16:43 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 17 Jul 2018 16:16:43 GMT
ENV TOMCAT_MAJOR=7
# Tue, 17 Jul 2018 16:16:44 GMT
ENV TOMCAT_VERSION=7.0.90
# Tue, 17 Jul 2018 16:16:44 GMT
ENV TOMCAT_SHA512=c7a47135b99684425260cd906cf5c9a5226837d3681d84ae4e3bb199068e97f0e63d07393d91ca0436204a1dc92bf9bd9a4a1c4c893187703e023503bbd81901
# Tue, 17 Jul 2018 16:16:44 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz
# Tue, 17 Jul 2018 16:16:45 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc
# Tue, 17 Jul 2018 16:19:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 17 Jul 2018 16:19:06 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 17 Jul 2018 16:19:06 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 16:19:07 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:093a70fc20ffe401f4cf25ac9cf7d08c8d511df67aba90ee8c4eec4f8cb2c67e`  
		Last Modified: Tue, 17 Jul 2018 12:12:07 GMT  
		Size: 26.3 MB (26286960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b078f4f7755c20eeb56b303c14bc884b2d44e3e654c17e3bff0cb23722f88b4c`  
		Last Modified: Tue, 17 Jul 2018 13:03:55 GMT  
		Size: 432.3 KB (432315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3c65fa31d20562a41d9fc300fedb1915412f1ab5dc29fa5317c356e879c6cb`  
		Last Modified: Tue, 17 Jul 2018 13:03:55 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f892c36d0a5a971da85854b94cb5ed3fb69996bb9c4ae0ca69995aefe2cd452d`  
		Last Modified: Tue, 17 Jul 2018 13:03:55 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ed0567529edb8f57c81ed22e121560af74e8c1e0e81111b04fb21f752001b9`  
		Last Modified: Tue, 17 Jul 2018 13:05:20 GMT  
		Size: 50.3 MB (50299640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53b756829c4f74308bb729b4b172ef860f725cc1b4dfaa4532329253f4eef7c9`  
		Last Modified: Tue, 17 Jul 2018 16:40:08 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c3864213d3de4b57ec333b13f5ce1ef1ad0c285b33d128edc1cc97972b9b31`  
		Last Modified: Tue, 17 Jul 2018 16:40:08 GMT  
		Size: 2.0 MB (2022609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca20a455215e2a43698930221126fb572e555fc37d0f976ab338e4aa793e187`  
		Last Modified: Tue, 17 Jul 2018 16:40:08 GMT  
		Size: 465.3 KB (465273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f3eb035c6c3a086f3fc08e2f4c821fcc09ccf74b80c113c4807c7e94cf2251`  
		Last Modified: Tue, 17 Jul 2018 16:40:10 GMT  
		Size: 10.2 MB (10187859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58709e340859547da5a96fdcee438b48a687762a5b1a008c2b0ce062a0fd87e0`  
		Last Modified: Tue, 17 Jul 2018 16:40:08 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:7-slim` - linux; 386

```console
$ docker pull tomcat@sha256:c3f1a5e318937078a028d0aebb2fbd6d9c9e2e320f90a54e387898f19c7b2673
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.5 MB (117476819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de1cbc7fc2844f94756aa5178db1ec55953e990d0d279071e8dc989f0def199c`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:54 GMT
ADD file:cd5600a909bc1ec399c2dd64e2e0f8383e1029c2169b56e923349fff08a544a6 in / 
# Wed, 27 Jun 2018 10:40:55 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 15:20:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:20:03 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 15:20:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 15:20:05 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 15:24:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Jun 2018 15:24:35 GMT
ENV JAVA_VERSION=7u181
# Wed, 27 Jun 2018 15:24:36 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Wed, 27 Jun 2018 15:25:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 17:24:15 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 27 Jun 2018 17:24:16 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 17:24:17 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 27 Jun 2018 17:24:17 GMT
WORKDIR /usr/local/tomcat
# Wed, 27 Jun 2018 17:24:17 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 27 Jun 2018 17:24:17 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 27 Jun 2018 17:24:17 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Wed, 27 Jun 2018 17:25:12 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 17:26:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 17:26:10 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 27 Jun 2018 17:26:10 GMT
ENV TOMCAT_MAJOR=7
# Sat, 07 Jul 2018 11:05:52 GMT
ENV TOMCAT_VERSION=7.0.90
# Sat, 07 Jul 2018 11:05:52 GMT
ENV TOMCAT_SHA512=c7a47135b99684425260cd906cf5c9a5226837d3681d84ae4e3bb199068e97f0e63d07393d91ca0436204a1dc92bf9bd9a4a1c4c893187703e023503bbd81901
# Sat, 07 Jul 2018 11:05:52 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz
# Sat, 07 Jul 2018 11:05:53 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.90/bin/apache-tomcat-7.0.90.tar.gz.asc
# Sat, 07 Jul 2018 11:09:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sat, 07 Jul 2018 11:09:38 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 07 Jul 2018 11:09:38 GMT
EXPOSE 8080/tcp
# Sat, 07 Jul 2018 11:09:38 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:754ff349eaaa3314a657ce6b24abe2a9d237430ab3b66d7bd2b21113499d68ff`  
		Last Modified: Wed, 27 Jun 2018 10:54:13 GMT  
		Size: 30.3 MB (30269679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ecc1d61c7e4f9d92c42aa04c2c34df4a177075b5e03757cd2e9763398cdfeb`  
		Last Modified: Wed, 27 Jun 2018 15:34:05 GMT  
		Size: 466.3 KB (466301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6c7e2782264f446bd837b4d66b7a139ab8eaa08fc2cd1b899df57f6d2209fcd`  
		Last Modified: Wed, 27 Jun 2018 15:34:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:104cf7f40f84e06d4be0be1bb678f84432eedb0d07eaab0f1e54bccfd21e2e40`  
		Last Modified: Wed, 27 Jun 2018 15:34:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2821d86a80de17c528d3a7ff0248c524ab79da82e3af7c78d7f0d60305625f53`  
		Last Modified: Wed, 27 Jun 2018 15:37:22 GMT  
		Size: 73.3 MB (73288198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae7e4ac2536155457c6675c2259d34b5776ba54f028257596f8d5ab49ef6cc9`  
		Last Modified: Wed, 27 Jun 2018 17:49:55 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:923f7cb4c613ca6a74b92db640cbaf64ea5da7f1d62472e56186eb68b9059cc0`  
		Last Modified: Wed, 27 Jun 2018 17:49:57 GMT  
		Size: 2.4 MB (2372934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af05a168d3fb984ac5fd37d643872f5820f078e96066a8a6cfcf8efff9cee44d`  
		Last Modified: Wed, 27 Jun 2018 17:49:56 GMT  
		Size: 498.9 KB (498907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a954b81631f0f09da1883b9ccd708ff9d95cc823c476234c9717e27ed49ae6dd`  
		Last Modified: Sat, 07 Jul 2018 11:31:44 GMT  
		Size: 10.6 MB (10580144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a18bf762dfaae644f71eb435dcb35370c9b63678c0f73e012f8940e63143eb66`  
		Last Modified: Sat, 07 Jul 2018 11:31:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
