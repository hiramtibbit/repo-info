## `tomcat:jre10`

```console
$ docker pull tomcat@sha256:49c35135d9ea1753b67c7ff355f9ca994e16d5a09cdb2543941fc255e29ce7d4
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

### `tomcat:jre10` - linux; amd64

```console
$ docker pull tomcat@sha256:5cbfb3558062d8eeab05f33e001e7dc177b6f90e84d857a6dccd3b337564d07c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.0 MB (261010680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5bcc568a8e91f37a3823a14ed6caab6d10815e2d8646dac2c5fe07c25fee27b`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 26 Jun 2018 21:23:26 GMT
ADD file:10ef22e92828bf2e3e64f0617e248ec4f9885da94b826c950bdc8416d67d96cd in / 
# Tue, 26 Jun 2018 21:23:26 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:14:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 23:20:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:20:23 GMT
ENV LANG=C.UTF-8
# Tue, 26 Jun 2018 23:20:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 26 Jun 2018 23:25:14 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 26 Jun 2018 23:25:15 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 26 Jun 2018 23:25:15 GMT
ENV JAVA_VERSION=10.0.1+10
# Tue, 26 Jun 2018 23:25:15 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Tue, 26 Jun 2018 23:26:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 07:15:43 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 27 Jun 2018 07:15:43 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 07:15:44 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 27 Jun 2018 07:15:44 GMT
WORKDIR /usr/local/tomcat
# Wed, 27 Jun 2018 07:15:44 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 27 Jun 2018 07:15:44 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 27 Jun 2018 07:15:45 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Wed, 27 Jun 2018 07:15:45 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 07:16:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 07:16:01 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 27 Jun 2018 07:16:01 GMT
ENV TOMCAT_MAJOR=8
# Wed, 04 Jul 2018 02:27:49 GMT
ENV TOMCAT_VERSION=8.5.32
# Wed, 04 Jul 2018 02:27:49 GMT
ENV TOMCAT_SHA512=fc010f4643cb9996cad3812594190564d0a30be717f659110211414faf8063c61fad1f18134154084ad3ddfbbbdb352fa6686a28fbb6402d3207d4e0a88fa9ce
# Wed, 04 Jul 2018 02:27:49 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz
# Wed, 04 Jul 2018 02:27:49 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz.asc
# Wed, 04 Jul 2018 02:28:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Wed, 04 Jul 2018 02:28:59 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 04 Jul 2018 02:29:00 GMT
EXPOSE 8080/tcp
# Wed, 04 Jul 2018 02:29:00 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:26254fbb7f1ecf87788ab9644ed2990fda0f5efe4ce585efa529013e3e61b8f3`  
		Last Modified: Tue, 26 Jun 2018 21:34:18 GMT  
		Size: 48.6 MB (48648929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb95abe62cf617072cd93a562dd3c073f8fabba929bb1aa8f0573971554b41a5`  
		Last Modified: Tue, 26 Jun 2018 22:27:31 GMT  
		Size: 7.0 MB (7033853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dbb6315c68fc7776b3dd34584b03f3a00f3e9fcd9058dbed42208d2843b593`  
		Last Modified: Tue, 26 Jun 2018 22:27:31 GMT  
		Size: 9.2 MB (9245186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f563a46814efa01419e07fc08d159913791a167f783f9cff6788d256ccd7e7ad`  
		Last Modified: Tue, 26 Jun 2018 23:45:08 GMT  
		Size: 846.3 KB (846308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b360bf052f04eddb1d4e4deaaf2a68a7fcd2c47f255c14e620f4c92cb0e891`  
		Last Modified: Tue, 26 Jun 2018 23:45:08 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53ef51026eb191a9310374b6eaf6fc1b16b919b4e6ae742e65bc2b28ab13d2d4`  
		Last Modified: Tue, 26 Jun 2018 23:45:08 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37c486e442bedbf0bd9aaecf7545d480ce21b1e103429ccbfeac3a9a74da2ae`  
		Last Modified: Tue, 26 Jun 2018 23:46:03 GMT  
		Size: 183.3 MB (183322808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b50dcf32ee289976c0597d13c94722d16ebadc1a99b6a9e1f33c7bcad50f57`  
		Last Modified: Wed, 27 Jun 2018 07:44:38 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003bb1617abd76e809b2c5961b6a8df9e9ab6d2698309416848ad643a652c81a`  
		Last Modified: Wed, 27 Jun 2018 07:44:38 GMT  
		Size: 548.2 KB (548187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70cc88e960294a28936f20c08f8bbd1d5c43be6f1fb625b56557d90fb04ab900`  
		Last Modified: Wed, 04 Jul 2018 02:43:56 GMT  
		Size: 11.4 MB (11364775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a6819c1b872d38c70d63a816b8806be876ea407d2c9fefec32e47b328154f8`  
		Last Modified: Wed, 04 Jul 2018 02:43:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:jre10` - linux; arm variant v5

```console
$ docker pull tomcat@sha256:b2b59b4abcc55a749a84186549c5d6a75a1966c2dbaee01c6ebe2270b28b2b20
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.0 MB (242984175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:360692b5fb519c6d998c1e73c404dd0c837b9f489ac276e8e16fa2a0dc197dca`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 17 Jul 2018 08:53:54 GMT
ADD file:feed6b12801621af72a787e98590f6fd783022a609efc8254532712521e6c570 in / 
# Tue, 17 Jul 2018 08:53:55 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 11:46:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:46:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 12:35:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:35:12 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 12:35:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 12:39:20 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 12:39:21 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 12:39:21 GMT
ENV JAVA_VERSION=10.0.1+10
# Tue, 17 Jul 2018 12:39:21 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Tue, 17 Jul 2018 12:40:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 14:22:28 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 17 Jul 2018 14:22:29 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 14:22:30 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 17 Jul 2018 14:22:30 GMT
WORKDIR /usr/local/tomcat
# Tue, 17 Jul 2018 14:22:30 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 17 Jul 2018 14:22:31 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 17 Jul 2018 14:22:31 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Tue, 17 Jul 2018 14:22:32 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:22:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:22:46 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 17 Jul 2018 14:22:47 GMT
ENV TOMCAT_MAJOR=8
# Tue, 17 Jul 2018 14:22:47 GMT
ENV TOMCAT_VERSION=8.5.32
# Tue, 17 Jul 2018 14:22:47 GMT
ENV TOMCAT_SHA512=fc010f4643cb9996cad3812594190564d0a30be717f659110211414faf8063c61fad1f18134154084ad3ddfbbbdb352fa6686a28fbb6402d3207d4e0a88fa9ce
# Tue, 17 Jul 2018 14:22:48 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz
# Tue, 17 Jul 2018 14:22:48 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz.asc
# Tue, 17 Jul 2018 14:24:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 17 Jul 2018 14:24:17 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 17 Jul 2018 14:24:17 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 14:24:17 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:b6112397569f950be7cab355fd3cb9fb3b089c080499c1eebc269ecb7cc3715c`  
		Last Modified: Tue, 17 Jul 2018 09:06:21 GMT  
		Size: 46.6 MB (46645580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe7203031bf40ede6b42be5c3fda4ca4d75813d5bd4b1b964031a91101f44bc`  
		Last Modified: Tue, 17 Jul 2018 11:59:56 GMT  
		Size: 6.6 MB (6628142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70fcc6b3abd37d971fff823418e9e34f70cffa0160a3baf8d7e2eea079fcf3a`  
		Last Modified: Tue, 17 Jul 2018 11:59:57 GMT  
		Size: 9.0 MB (8987743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2ae4496c0916db99e22c0245b34d245a7318740ae4c9f23250d636cf66291a`  
		Last Modified: Tue, 17 Jul 2018 12:52:07 GMT  
		Size: 840.2 KB (840227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0810e84c1a090066340c5d857bf3de97486a9c67a19884712150c85db8d04f`  
		Last Modified: Tue, 17 Jul 2018 12:52:06 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a9d3bd1cde86c197a7efb2ca769a648e6b0bd089e2dba814f5a97d9d504232`  
		Last Modified: Tue, 17 Jul 2018 12:52:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca699895f63c6ab4697ccda3192b25d85f25e35b18c1f9ac11e33042558a8a6`  
		Last Modified: Tue, 17 Jul 2018 12:52:48 GMT  
		Size: 164.2 MB (164161852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fece90aa2ba75d57904493e4f396ea5566d19bc59d851757450aaa7db6e1f2c`  
		Last Modified: Tue, 17 Jul 2018 14:44:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f905885f96fbe01ecb80ae4d7989cfed1be7454f06795f622c14eebf7de361d1`  
		Last Modified: Tue, 17 Jul 2018 14:44:26 GMT  
		Size: 529.4 KB (529396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c28a4deb27cfb352aa983600ad8d8b9615de3096149efcbd8e586bc1f061d3b1`  
		Last Modified: Tue, 17 Jul 2018 14:44:29 GMT  
		Size: 15.2 MB (15190567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134697131101d152736c834b1db40c7ed34f2fa57277722bba07ca054c5e5478`  
		Last Modified: Tue, 17 Jul 2018 14:44:26 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:jre10` - linux; arm variant v7

```console
$ docker pull tomcat@sha256:5196d9ea8b1dd145d6f960022414ea39deeba3183f844b33419e26654c0b8330
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.0 MB (235025552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47a40122a68432fed96556b63ade6080a9ea2a7c48bb20b0cef8bc1abc799b74`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 27 Jun 2018 12:01:58 GMT
ADD file:fb368eeca8896eaf5ae53a4a5f51bb2ffcb3de2afc5288178fc15e87327d624f in / 
# Wed, 27 Jun 2018 12:02:01 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:45:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:45:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 15:18:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:18:48 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 15:18:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 15:22:48 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 15:22:48 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 15:22:48 GMT
ENV JAVA_VERSION=10.0.1+10
# Wed, 27 Jun 2018 15:22:49 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Tue, 03 Jul 2018 12:05:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 03 Jul 2018 12:45:05 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 03 Jul 2018 12:45:05 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Jul 2018 12:45:06 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 03 Jul 2018 12:45:07 GMT
WORKDIR /usr/local/tomcat
# Tue, 03 Jul 2018 12:45:07 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 03 Jul 2018 12:45:07 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 03 Jul 2018 12:45:07 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Tue, 03 Jul 2018 12:45:08 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 03 Jul 2018 12:45:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 03 Jul 2018 12:45:15 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 03 Jul 2018 12:45:16 GMT
ENV TOMCAT_MAJOR=8
# Wed, 04 Jul 2018 12:11:36 GMT
ENV TOMCAT_VERSION=8.5.32
# Wed, 04 Jul 2018 12:11:36 GMT
ENV TOMCAT_SHA512=fc010f4643cb9996cad3812594190564d0a30be717f659110211414faf8063c61fad1f18134154084ad3ddfbbbdb352fa6686a28fbb6402d3207d4e0a88fa9ce
# Wed, 04 Jul 2018 12:11:36 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz
# Wed, 04 Jul 2018 12:11:36 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz.asc
# Wed, 04 Jul 2018 12:12:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Wed, 04 Jul 2018 12:12:27 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 04 Jul 2018 12:12:27 GMT
EXPOSE 8080/tcp
# Wed, 04 Jul 2018 12:12:27 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:4d15482f8eb5deefaf0868a9ccd27a4114951064b3932d35d9efb85e81279901`  
		Last Modified: Wed, 27 Jun 2018 12:11:13 GMT  
		Size: 44.5 MB (44474882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:595c67309009d5c8c4b91b2f94f2a6e15a90740433ae648f42e27abbd7f0d948`  
		Last Modified: Wed, 27 Jun 2018 12:57:07 GMT  
		Size: 6.4 MB (6417304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4a0366c8111904aa25dded355812c67e2d285d60a35b0aba5efe1617309aab0`  
		Last Modified: Wed, 27 Jun 2018 12:57:07 GMT  
		Size: 8.7 MB (8702521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:284b67addc32ed4baa71c0bd6e49a7cb38534548a5f969e6bd22affa99303ea1`  
		Last Modified: Tue, 03 Jul 2018 12:15:06 GMT  
		Size: 822.4 KB (822415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875e8dc0d83a495cf1f5fd0244763dbe87891aef195364e0e3ae16cd0685e7e0`  
		Last Modified: Tue, 03 Jul 2018 12:15:05 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9b960e517db9ddbb939b3c19588c3832465a61291e995c832c6ab4fbff0918a`  
		Last Modified: Tue, 03 Jul 2018 12:23:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e968650f80ff3a4e6b505f6cd45d16e78b54d5b5ad5c8dea50d122aaecfd9c2`  
		Last Modified: Tue, 03 Jul 2018 12:23:59 GMT  
		Size: 162.9 MB (162893233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f2e8de8716e150a4fa3989bf9be3211b312af6f390c54f1f99a70fd3106590`  
		Last Modified: Tue, 03 Jul 2018 12:50:51 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba8da856e2ae767a95ba4fbce1ef1e4cb62f99814008459451c5fcb6305b487`  
		Last Modified: Tue, 03 Jul 2018 12:50:51 GMT  
		Size: 520.5 KB (520471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d4112c5b2eae253355aac9551c1d81d70f76b93fe5fb616655a81a814bc0d77`  
		Last Modified: Wed, 04 Jul 2018 12:21:09 GMT  
		Size: 11.2 MB (11194055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c6b6f10495d556d2fa7ebeeca4bc2d0e4e9739462687ce29a2a18ade08b0be`  
		Last Modified: Wed, 04 Jul 2018 12:21:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:jre10` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:b8b1210900a46be42424fa81cccf6199c2e0f29c6151056b10ddcd89cd8581da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240779269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2886bf3444145e965c99b134f375e08264a48f6aa5533b239e3a5af40c37ac84`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 27 Jun 2018 08:44:47 GMT
ADD file:9e83f24b861895e4f5c52e8dac4324df28bc9245b0cb01fd8ab8e69858eba017 in / 
# Wed, 27 Jun 2018 08:44:48 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:34:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:35:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 19:02:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 19:02:27 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 19:02:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 19:06:29 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 19:06:30 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 19:06:31 GMT
ENV JAVA_VERSION=10.0.1+10
# Wed, 27 Jun 2018 19:06:32 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Tue, 03 Jul 2018 10:02:01 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 03 Jul 2018 11:00:37 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 03 Jul 2018 11:00:38 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Jul 2018 11:00:40 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 03 Jul 2018 11:00:41 GMT
WORKDIR /usr/local/tomcat
# Tue, 03 Jul 2018 11:00:42 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 03 Jul 2018 11:00:43 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 03 Jul 2018 11:00:44 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Tue, 03 Jul 2018 11:00:46 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 03 Jul 2018 11:00:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 03 Jul 2018 11:00:58 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 03 Jul 2018 11:00:59 GMT
ENV TOMCAT_MAJOR=8
# Wed, 04 Jul 2018 09:54:54 GMT
ENV TOMCAT_VERSION=8.5.32
# Wed, 04 Jul 2018 09:54:55 GMT
ENV TOMCAT_SHA512=fc010f4643cb9996cad3812594190564d0a30be717f659110211414faf8063c61fad1f18134154084ad3ddfbbbdb352fa6686a28fbb6402d3207d4e0a88fa9ce
# Wed, 04 Jul 2018 09:54:56 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz
# Wed, 04 Jul 2018 09:54:56 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz.asc
# Wed, 04 Jul 2018 09:56:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Wed, 04 Jul 2018 09:57:03 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 04 Jul 2018 09:57:03 GMT
EXPOSE 8080/tcp
# Wed, 04 Jul 2018 09:57:04 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:264fde3494f7596520730fbecb89582dbd098f0eb089f29cf391f225a07585c1`  
		Last Modified: Wed, 27 Jun 2018 08:55:23 GMT  
		Size: 45.9 MB (45932394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45413e1b68a065bfe89257f57035e36b4322754fb55ab4f3e39317b70c439659`  
		Last Modified: Wed, 27 Jun 2018 11:04:05 GMT  
		Size: 6.6 MB (6645906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f49df4ded335c4959233bf629857422273bbb98855b17f0ddfd19a53d17c2c95`  
		Last Modified: Wed, 27 Jun 2018 11:04:05 GMT  
		Size: 9.0 MB (8980525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e3b99e46a76fb6a5b4de21521ebbdf0e6625b5ea3d1aa66bb59373c6f646bc`  
		Last Modified: Tue, 03 Jul 2018 10:09:32 GMT  
		Size: 831.2 KB (831163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e29b7297914011b0b3290d37e8d4d4c94b4c61aeacaa15cc7cc9bd4ab587908`  
		Last Modified: Tue, 03 Jul 2018 10:09:32 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3a2c15da86323e6f1847301e95e72a0a03a6566f0bbee5c50bd6d6772d417a8`  
		Last Modified: Tue, 03 Jul 2018 10:21:01 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f503ccdbba438411b9ea100bdce17ac47847ec94199e0a540d13d5dd28aeaaee`  
		Last Modified: Tue, 03 Jul 2018 10:21:51 GMT  
		Size: 166.5 MB (166496773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a67d5e69615ebbbdd1f6b7d96ce378cd9cfbb1b3cbfb0b8d26ba9f64261e66`  
		Last Modified: Tue, 03 Jul 2018 11:10:27 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9a5dc15773726e37c23d0609faeb4c88a6b0701d34563f39a3cc376ec2b351`  
		Last Modified: Tue, 03 Jul 2018 11:10:26 GMT  
		Size: 531.9 KB (531930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da337f9f3c6c92d133d04a106c40a08209365bf56a1b9315ec03211f48b3df38`  
		Last Modified: Wed, 04 Jul 2018 10:31:03 GMT  
		Size: 11.4 MB (11359941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc1d2bd075f2fdf8fc11cac41b3311f93a0ab4be95d65c236680460b92d86db`  
		Last Modified: Wed, 04 Jul 2018 10:31:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:jre10` - linux; 386

```console
$ docker pull tomcat@sha256:375759cd443f1ef0fcc40f0c471b396f548c047694b0c460eaec74bad6e9c671
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.6 MB (271626025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b78f1c5a9df4e0f6af194c5769a094b1bb33317edaae14518976c59d44843a0`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 27 Jun 2018 10:44:10 GMT
ADD file:badca613ce9ef25e97e3f69ad617085db1421c5bc61cbe3cdcec3cab6ddb0398 in / 
# Wed, 27 Jun 2018 10:44:10 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:40:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:40:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 15:09:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:09:43 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 15:09:44 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 15:12:56 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 15:12:56 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 15:12:56 GMT
ENV JAVA_VERSION=10.0.1+10
# Wed, 27 Jun 2018 15:12:57 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Tue, 03 Jul 2018 10:55:36 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 03 Jul 2018 11:52:24 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 03 Jul 2018 11:52:24 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Jul 2018 11:52:25 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 03 Jul 2018 11:52:25 GMT
WORKDIR /usr/local/tomcat
# Tue, 03 Jul 2018 11:52:25 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 03 Jul 2018 11:52:25 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 03 Jul 2018 11:52:26 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Tue, 03 Jul 2018 11:52:26 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 03 Jul 2018 11:52:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 03 Jul 2018 11:52:36 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 03 Jul 2018 11:52:36 GMT
ENV TOMCAT_MAJOR=8
# Wed, 04 Jul 2018 11:00:30 GMT
ENV TOMCAT_VERSION=8.5.32
# Wed, 04 Jul 2018 11:00:31 GMT
ENV TOMCAT_SHA512=fc010f4643cb9996cad3812594190564d0a30be717f659110211414faf8063c61fad1f18134154084ad3ddfbbbdb352fa6686a28fbb6402d3207d4e0a88fa9ce
# Wed, 04 Jul 2018 11:00:31 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz
# Wed, 04 Jul 2018 11:00:31 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz.asc
# Wed, 04 Jul 2018 11:01:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Wed, 04 Jul 2018 11:01:44 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 04 Jul 2018 11:01:44 GMT
EXPOSE 8080/tcp
# Wed, 04 Jul 2018 11:01:44 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:7be0c3fc2014161eddb428cc845d9fc8e2626dc2dbee261e6aac6ec5a196261e`  
		Last Modified: Wed, 27 Jun 2018 11:08:01 GMT  
		Size: 49.4 MB (49417756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3027973a27662fd47e70a05b59c4d3ef16e5f2a5ff517a541445846b16f5c693`  
		Last Modified: Wed, 27 Jun 2018 11:50:38 GMT  
		Size: 7.2 MB (7185013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a36130f6d397af272ffd4f7a90143110e77b8b9991abc51d3f4986ec6242aa`  
		Last Modified: Wed, 27 Jun 2018 11:50:38 GMT  
		Size: 9.5 MB (9527411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db4b372fae0cb7a9a8c84b04fa5f7a3235f6af170435311bd7f29f215432e09`  
		Last Modified: Tue, 03 Jul 2018 11:02:22 GMT  
		Size: 853.6 KB (853570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c529620305c6a76d1fcbcaa3487cde28873e12f0d84f381c5b3df3cc20971dfa`  
		Last Modified: Tue, 03 Jul 2018 11:02:21 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea2e7fd63bbbd5ea3e2ef51fdf84829b6f83f4b6d06d7abff6e1c6936f46688e`  
		Last Modified: Tue, 03 Jul 2018 11:16:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada021c2001c595e635c39b5d139b9d3b9a3fb1344e8f85af558886900e876ba`  
		Last Modified: Tue, 03 Jul 2018 11:17:11 GMT  
		Size: 192.8 MB (192778708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c8126f49dff003e1f7fcbade87c27ed0ddbb83435c1c4881db892cf980195d`  
		Last Modified: Tue, 03 Jul 2018 12:03:38 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca20c2a3e7cb14b12b1476c700248bc54e7bfba80c64d5cb2973d93c432d14c9`  
		Last Modified: Tue, 03 Jul 2018 12:03:39 GMT  
		Size: 556.4 KB (556368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432971480700c06ab1f698f860fb260977e9f717c3609770f73d2e27d24508a3`  
		Last Modified: Wed, 04 Jul 2018 11:16:14 GMT  
		Size: 11.3 MB (11306564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dab4200aa2ff25b0ebc103d608176a9917258118f49afd5c785531e0b6ba4f8`  
		Last Modified: Wed, 04 Jul 2018 11:16:11 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:jre10` - linux; ppc64le

```console
$ docker pull tomcat@sha256:5a626fe7cde022fdd3ed52d8dddcde4ce16e4f7daca97dd5cf9b2ba910ba921b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252184951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:913cf27375924e2fd8814ecfb3549b97efa4c43bfd7759fa1d5f536dec10fac5`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 27 Jun 2018 08:19:22 GMT
ADD file:2290834b1e0a2945693bb58e4627798b949f493e7041453e398114cbfba8d224 in / 
# Wed, 27 Jun 2018 08:19:24 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 09:59:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 13:11:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:11:05 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 13:11:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 13:31:16 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 13:31:21 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 13:31:23 GMT
ENV JAVA_VERSION=10.0.1+10
# Wed, 27 Jun 2018 13:31:25 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Wed, 27 Jun 2018 13:35:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 20:15:50 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 27 Jun 2018 20:15:50 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 20:15:53 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 27 Jun 2018 20:15:54 GMT
WORKDIR /usr/local/tomcat
# Wed, 27 Jun 2018 20:15:55 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 27 Jun 2018 20:15:57 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 27 Jun 2018 20:15:58 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Wed, 27 Jun 2018 20:16:00 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 20:16:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 20:16:18 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 27 Jun 2018 20:16:19 GMT
ENV TOMCAT_MAJOR=8
# Wed, 04 Jul 2018 09:28:36 GMT
ENV TOMCAT_VERSION=8.5.32
# Wed, 04 Jul 2018 09:28:38 GMT
ENV TOMCAT_SHA512=fc010f4643cb9996cad3812594190564d0a30be717f659110211414faf8063c61fad1f18134154084ad3ddfbbbdb352fa6686a28fbb6402d3207d4e0a88fa9ce
# Wed, 04 Jul 2018 09:28:39 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz
# Wed, 04 Jul 2018 09:28:40 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz.asc
# Wed, 04 Jul 2018 09:30:42 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Wed, 04 Jul 2018 09:30:52 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 04 Jul 2018 09:30:53 GMT
EXPOSE 8080/tcp
# Wed, 04 Jul 2018 09:30:54 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:b01a63a902832a614dcb8b935dd9404b1ae8932297cbba3e28949a6027626e87`  
		Last Modified: Wed, 27 Jun 2018 08:28:47 GMT  
		Size: 50.1 MB (50116795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cafec902fddf0414f78aeec5b7010de3851b5c2154d22465a9d16a11f5bdc57`  
		Last Modified: Wed, 27 Jun 2018 10:26:36 GMT  
		Size: 6.9 MB (6874206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d7ffceef9b2678d017627071cd185ba2ab411812b48be8a3fdb04bdfd50a33`  
		Last Modified: Wed, 27 Jun 2018 10:26:36 GMT  
		Size: 9.5 MB (9494113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fdff3e7ba135463a1a2174f74c95863f1e040469abf920b56f38dd7055c1615`  
		Last Modified: Wed, 27 Jun 2018 14:04:12 GMT  
		Size: 840.8 KB (840779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8033f45d3394e2264fa7f749c494ee848b18d9b34d2bc15f633012613af24a3`  
		Last Modified: Wed, 27 Jun 2018 14:04:11 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01390b329beb0245eda6e2f97ed80a729117fe90c34c34b4207c28b9f21d0bfe`  
		Last Modified: Wed, 27 Jun 2018 14:04:11 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9d0ca47c54b2049453b1d4021aac419c7509fb588afa7bdc57fc95cb1af5751`  
		Last Modified: Wed, 27 Jun 2018 14:05:21 GMT  
		Size: 172.8 MB (172828385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686837f2e341f1b7f9d569cc105b90f72d838cf5a2b046f81ed9f3b67c575954`  
		Last Modified: Wed, 27 Jun 2018 20:37:03 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7df2ac9a8f7d8eba19e48990acb2ceca0d64b597104170f60daa16848120fc3`  
		Last Modified: Wed, 27 Jun 2018 20:37:03 GMT  
		Size: 543.3 KB (543317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a76d2ecc13f33f472b985d0284ee5a95d1f11e07c841d82d3fc816fdc6ad841`  
		Last Modified: Wed, 04 Jul 2018 09:59:38 GMT  
		Size: 11.5 MB (11486686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bbd2b81d6e63f3f1142e47d1c85c18daf9cf5747a927b20c5c99aa09d68d06d`  
		Last Modified: Wed, 04 Jul 2018 09:59:35 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:jre10` - linux; s390x

```console
$ docker pull tomcat@sha256:50154c62623bfb6722e82a50864b1bf091cb7d977fcacaa76db8f6b870440c62
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.8 MB (223843930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9a3eff719d11a9238150b71a7c505afc8df46d2c8fbad87ffdf8915a2810c51`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 27 Jun 2018 11:47:48 GMT
ADD file:e5fdd44acf3c50e200fa8721ef36ce18dcde4c041d59482bff0f2fcd7ff32082 in / 
# Wed, 27 Jun 2018 11:47:48 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:18:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:18:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 13:50:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:50:44 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 13:50:44 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 13:54:10 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 13:54:10 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 13:54:10 GMT
ENV JAVA_VERSION=10.0.1+10
# Wed, 27 Jun 2018 13:54:10 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Wed, 27 Jun 2018 13:55:00 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 17:55:21 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 27 Jun 2018 17:55:21 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 17:55:22 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 27 Jun 2018 17:55:22 GMT
WORKDIR /usr/local/tomcat
# Wed, 27 Jun 2018 17:55:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 27 Jun 2018 17:55:23 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 27 Jun 2018 17:55:23 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Wed, 27 Jun 2018 17:55:23 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 17:55:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 17:55:28 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 27 Jun 2018 17:55:28 GMT
ENV TOMCAT_MAJOR=8
# Wed, 04 Jul 2018 11:59:42 GMT
ENV TOMCAT_VERSION=8.5.32
# Wed, 04 Jul 2018 11:59:42 GMT
ENV TOMCAT_SHA512=fc010f4643cb9996cad3812594190564d0a30be717f659110211414faf8063c61fad1f18134154084ad3ddfbbbdb352fa6686a28fbb6402d3207d4e0a88fa9ce
# Wed, 04 Jul 2018 11:59:43 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz
# Wed, 04 Jul 2018 11:59:43 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz.asc
# Wed, 04 Jul 2018 12:00:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Wed, 04 Jul 2018 12:00:41 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 04 Jul 2018 12:00:42 GMT
EXPOSE 8080/tcp
# Wed, 04 Jul 2018 12:00:42 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:80e8bd77eaf2fb43b1f457021472f2481479fee109d88246d06d3fdf6743f24f`  
		Last Modified: Wed, 27 Jun 2018 11:52:08 GMT  
		Size: 47.6 MB (47624129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a7d7034306ce1638f02d455b492c16264ae4ddcc59326d23eb8d825dc058dd2`  
		Last Modified: Wed, 27 Jun 2018 12:24:06 GMT  
		Size: 6.8 MB (6762215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea8ed63ea6a254d75d360e4f11bac40c8208127ce5493ac2c599e4e5b4b7a0c`  
		Last Modified: Wed, 27 Jun 2018 12:24:06 GMT  
		Size: 9.2 MB (9182247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a7993b0966628e53703dc2f1132d81932e4e2593f624b0b46f70df26a2c2960`  
		Last Modified: Wed, 27 Jun 2018 14:03:43 GMT  
		Size: 856.8 KB (856821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836e8f0e500bf2af0f536d0705d1d935b00f0379b47b87ae0dd567e3ccb9f24f`  
		Last Modified: Wed, 27 Jun 2018 14:03:42 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc608d50f76b1ac503ba284d4ec4c220524974ba76f070433dbd9ab25fee9946`  
		Last Modified: Wed, 27 Jun 2018 14:03:42 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b39dc95a29b06b56b513f45d5b2a6ea4ccc57039b041aedb2289a4eb2efd434f`  
		Last Modified: Wed, 27 Jun 2018 14:04:08 GMT  
		Size: 147.5 MB (147473727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b526c08f1036aefe1ac29f708e13e11abd9b6e82fa78e838b6293aa72ca9aa`  
		Last Modified: Wed, 27 Jun 2018 18:02:58 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad66d6b5e81496f9709a8bc6602f0e761c06b070f326d9ca7d1b7a06511bee30`  
		Last Modified: Wed, 27 Jun 2018 18:02:58 GMT  
		Size: 548.8 KB (548840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b47fbd0277a9f73433b770292ed7bf054ab6c25a5adfbd844d1ff5a1cd78b8aa`  
		Last Modified: Wed, 04 Jul 2018 12:08:38 GMT  
		Size: 11.4 MB (11395316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:495c22684d944e798117511301bb016f6fbdb3b143f506113ea2a4c8c2733571`  
		Last Modified: Wed, 04 Jul 2018 12:08:31 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
