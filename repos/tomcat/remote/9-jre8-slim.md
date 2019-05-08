## `tomcat:9-jre8-slim`

```console
$ docker pull tomcat@sha256:2ac4fd059813851ac3b3059ee54f2ae0c50dcd7db8f9df45ce0be4e4f9adc04e
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

### `tomcat:9-jre8-slim` - linux; amd64

```console
$ docker pull tomcat@sha256:eea92c134b4e014268197162751288817d33821975eb65d3658a884c7e6fa950
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.0 MB (91001823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:360e21f08444ca19bdecd34ac7316bed536469e88c6a07e2b77cdc3d16b00861`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:04:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:08:01 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:08:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:08:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 05:09:39 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 05:09:40 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 05:09:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 13:22:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 08 May 2019 13:22:20 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 13:22:21 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 08 May 2019 13:22:22 GMT
WORKDIR /usr/local/tomcat
# Wed, 08 May 2019 13:22:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:22:23 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 08 May 2019 13:22:24 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:22:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:31:06 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 08 May 2019 13:31:06 GMT
ENV TOMCAT_MAJOR=9
# Wed, 08 May 2019 13:31:07 GMT
ENV TOMCAT_VERSION=9.0.19
# Wed, 08 May 2019 13:31:07 GMT
ENV TOMCAT_SHA512=d1984947f7ead6da8679447ebd5101ec9a5766210a81d257a5f878e244755fcf192e9c1d2b139556d29b1aed67b9f15b16a754a1bd33f9d271666caa2dd28ed8
# Wed, 08 May 2019 13:31:07 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz
# Wed, 08 May 2019 13:31:07 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc
# Wed, 08 May 2019 13:32:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Wed, 08 May 2019 13:32:38 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 08 May 2019 13:32:38 GMT
EXPOSE 8080
# Wed, 08 May 2019 13:32:39 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c14188d098058e3f431438a8c65ff0d08baf6d69bfa541c3e165adfbd4e9fd1`  
		Last Modified: Wed, 08 May 2019 05:27:27 GMT  
		Size: 455.1 KB (455054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b1d66a77cb68f822706904b33c4c0f3a8548deaa62194b6a854c647e800035`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16218aebd626ea89bb004f7a69cf5f1083d44dfce938c24623b8ff91ff420d82`  
		Last Modified: Wed, 08 May 2019 05:29:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9483ae9711f08a433ce86683d6b6e598ada12cbfbe50d365b53bbc6ff5a411cd`  
		Last Modified: Wed, 08 May 2019 05:30:39 GMT  
		Size: 55.9 MB (55885560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b79f4eafe733a5da5c2e096250ccda0b4dfe086d4f0f7350fbf5171a78c627`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56161715f8b5528aaab9a008a95feb30332d3aa7cedaa5900ebbf6131d41a61`  
		Last Modified: Wed, 08 May 2019 13:37:53 GMT  
		Size: 427.6 KB (427636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d778cac39a7bc033403a8865a882a410dc9f558217aa9226ab9038de69aa39b`  
		Last Modified: Wed, 08 May 2019 13:38:59 GMT  
		Size: 11.7 MB (11743532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e040521eab82e612cfc8d8425e14060c4e76f221e41511f61bcec134ab1c7f`  
		Last Modified: Wed, 08 May 2019 13:38:56 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:9-jre8-slim` - linux; arm variant v5

```console
$ docker pull tomcat@sha256:f7fb9bf766a5edd9a2d1428a2d4916563a692f5a780c63a99083155a527cb651
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.3 MB (80342053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20c4f9f6b9e6e192c05243f5a56b08fc0280b9eb42672bb70ddaa46346bb13c2`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:26:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:34:40 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 11:34:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 11:34:43 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 11:36:42 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 11:36:43 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 11:36:43 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 11:37:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 16:50:26 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 08 May 2019 16:50:26 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 16:50:28 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 08 May 2019 16:50:28 GMT
WORKDIR /usr/local/tomcat
# Wed, 08 May 2019 16:50:29 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 16:50:30 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 16:50:30 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 08 May 2019 16:50:32 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 16:50:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 17:01:40 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 08 May 2019 17:01:40 GMT
ENV TOMCAT_MAJOR=9
# Wed, 08 May 2019 17:01:41 GMT
ENV TOMCAT_VERSION=9.0.19
# Wed, 08 May 2019 17:01:41 GMT
ENV TOMCAT_SHA512=d1984947f7ead6da8679447ebd5101ec9a5766210a81d257a5f878e244755fcf192e9c1d2b139556d29b1aed67b9f15b16a754a1bd33f9d271666caa2dd28ed8
# Wed, 08 May 2019 17:01:42 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz
# Wed, 08 May 2019 17:01:42 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc
# Wed, 08 May 2019 17:03:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Wed, 08 May 2019 17:03:22 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 08 May 2019 17:03:22 GMT
EXPOSE 8080
# Wed, 08 May 2019 17:03:23 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a153ac62bf0a68e25aa314f9d9d8d55c61e86ae10aac14bedc6c64c37e21a68`  
		Last Modified: Wed, 08 May 2019 11:49:23 GMT  
		Size: 447.8 KB (447828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc0f4036898a564db0558503f792619f9d8155487349629e3bb9d5542f70dbf`  
		Last Modified: Wed, 08 May 2019 11:52:21 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5441c65dab7cdacdc5d99c24a4c8cb98455629e217bd13c1c1b268fae7ecdf`  
		Last Modified: Wed, 08 May 2019 11:52:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc86280b018539923b3f14c6e70a727ef2bfa0a57501af714f144a2858a955b2`  
		Last Modified: Wed, 08 May 2019 11:53:43 GMT  
		Size: 46.6 MB (46631060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75eb5e149eeec59376a6d43912967cde9becf700ed545f2773d49a9bc8a8605d`  
		Last Modified: Wed, 08 May 2019 17:08:21 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0111fedd7d634b05cf9f7a3ddb2ad93d6e9acace598dc82b674f4b7ff35d516`  
		Last Modified: Wed, 08 May 2019 17:08:21 GMT  
		Size: 413.0 KB (413002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdd7b3a21b7c62decbc6bd26354775bce86cc74743173beec1c0c2538373c2e`  
		Last Modified: Wed, 08 May 2019 17:09:47 GMT  
		Size: 11.7 MB (11693608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb136fbaced43b5b52b1e076b45bd421ca3b14e7dd8939bccf97f3fda8301e4`  
		Last Modified: Wed, 08 May 2019 17:09:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:9-jre8-slim` - linux; arm variant v7

```console
$ docker pull tomcat@sha256:d480f035ecced2c0fcc1e2c5b5f9c2578bb4c4ab05f7cc91a60118105e8752df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.8 MB (77821655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24c7ff0de6ebfc839f1ab6b68a6f01c14fd49661cd5be155a2a52180d20f2462`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:08:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 14:14:09 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 14:14:11 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 14:14:13 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 14:16:28 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 14:16:28 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 14:16:29 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 14:16:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 17:29:28 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 08 May 2019 17:29:28 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 17:29:30 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 08 May 2019 17:29:30 GMT
WORKDIR /usr/local/tomcat
# Wed, 08 May 2019 17:29:31 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 17:29:31 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 17:29:32 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 08 May 2019 17:29:33 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 17:29:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 17:38:47 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 08 May 2019 17:38:48 GMT
ENV TOMCAT_MAJOR=9
# Wed, 08 May 2019 17:38:48 GMT
ENV TOMCAT_VERSION=9.0.19
# Wed, 08 May 2019 17:38:49 GMT
ENV TOMCAT_SHA512=d1984947f7ead6da8679447ebd5101ec9a5766210a81d257a5f878e244755fcf192e9c1d2b139556d29b1aed67b9f15b16a754a1bd33f9d271666caa2dd28ed8
# Wed, 08 May 2019 17:38:49 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz
# Wed, 08 May 2019 17:38:49 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc
# Wed, 08 May 2019 17:40:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Wed, 08 May 2019 17:40:39 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 08 May 2019 17:40:40 GMT
EXPOSE 8080
# Wed, 08 May 2019 17:40:40 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e4b3bd395a6982a3d52e8e2c57651fb045081876d3ca9e21f248e1d6bc74cb`  
		Last Modified: Wed, 08 May 2019 14:30:10 GMT  
		Size: 430.7 KB (430721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a541a7bc5211dd1a923061f4978b3cf7a6b4b3144dbdb679863fe09240886a`  
		Last Modified: Wed, 08 May 2019 14:33:09 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9581944edf718a07e1853240b2d7caec780beaf162aec89a02314401ec2b62c6`  
		Last Modified: Wed, 08 May 2019 14:33:09 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4960c9f9a6a57ba2eb41a01e21d874521f6160a1e7ba32320b14498bd95df93`  
		Last Modified: Wed, 08 May 2019 14:34:33 GMT  
		Size: 46.0 MB (46040019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d51df8f9854501f705ca9e32ff4c2b36f2c2c963fd1b07b060f1334a936409f`  
		Last Modified: Wed, 08 May 2019 17:45:29 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6a76091b453429ad2e39b209250c73360134afa0e614f93ca040a8d0e27b9c`  
		Last Modified: Wed, 08 May 2019 17:45:29 GMT  
		Size: 403.2 KB (403239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f322bd9719cbc3fe9d3e5f5a88b44e4c488500c8e3f1470e4086d9391645db0d`  
		Last Modified: Wed, 08 May 2019 17:46:58 GMT  
		Size: 11.7 MB (11670766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94523ea7a085421ddf1f1378dcdce0948782b744ae8f24120bb9a16edd29acfa`  
		Last Modified: Wed, 08 May 2019 17:46:55 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:9-jre8-slim` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:66cd835b2b55da1b7a492db86e95f3f12d16094493bd7259b2d345ad09e06041
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.3 MB (81283576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e7e4784e431c599f3307acf02767825306e27d5c380af9ccf64f83b32228252`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 19:25:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 19:36:08 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 19:36:11 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 19:36:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 19:37:33 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 28 Mar 2019 04:06:46 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 04:06:47 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 04:08:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 05:01:16 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 28 Mar 2019 05:01:17 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 05:01:19 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 28 Mar 2019 05:01:20 GMT
WORKDIR /usr/local/tomcat
# Thu, 28 Mar 2019 05:01:21 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 28 Mar 2019 05:01:23 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 28 Mar 2019 05:01:24 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Thu, 28 Mar 2019 05:01:26 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 28 Mar 2019 05:01:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 05:41:06 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 28 Mar 2019 05:41:07 GMT
ENV TOMCAT_MAJOR=9
# Thu, 18 Apr 2019 10:26:40 GMT
ENV TOMCAT_VERSION=9.0.19
# Thu, 18 Apr 2019 10:26:41 GMT
ENV TOMCAT_SHA512=d1984947f7ead6da8679447ebd5101ec9a5766210a81d257a5f878e244755fcf192e9c1d2b139556d29b1aed67b9f15b16a754a1bd33f9d271666caa2dd28ed8
# Thu, 18 Apr 2019 10:26:42 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz
# Thu, 18 Apr 2019 10:26:42 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc
# Thu, 18 Apr 2019 10:36:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 18 Apr 2019 10:37:04 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 18 Apr 2019 10:37:05 GMT
EXPOSE 8080
# Thu, 18 Apr 2019 10:37:06 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6b2a3db5fe5bcef92897d12d82e7bf4b1c81832ef030a3036b2cf488ad45373`  
		Last Modified: Wed, 27 Mar 2019 19:41:48 GMT  
		Size: 440.9 KB (440897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2999ac8d95dfa97fcb9e08a6e0ebc377b5f2f7e28df1ec2186d8aa260a79cbb9`  
		Last Modified: Wed, 27 Mar 2019 19:45:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ac67d53f5794f0dd5934751906f180b059d1b5c1f3a8c7e849166451397cc7`  
		Last Modified: Wed, 27 Mar 2019 19:45:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41caee5c5141838a760546f5b4864d421c1c8d118d97ecadec29a0a165ae32a`  
		Last Modified: Thu, 28 Mar 2019 04:14:06 GMT  
		Size: 48.3 MB (48336536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3675857debb32026d9e957f70225bee9a7f908b6896f98af611483ae1a310ff`  
		Last Modified: Thu, 28 Mar 2019 06:02:08 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d020fb4269732ad284af5da51da2372ec403f689ef25a453f2508286e2c726`  
		Last Modified: Thu, 28 Mar 2019 06:02:07 GMT  
		Size: 411.7 KB (411672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19acfd979f2050ddbf05c48c6e3416c3cfa70f0f38ad1ea1412dbec080f4c7f9`  
		Last Modified: Thu, 18 Apr 2019 10:54:35 GMT  
		Size: 11.8 MB (11753634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5a060d58cd0d8dc105e361c1563471e55fff43cb4c3451ebfd6d4e616d336b4`  
		Last Modified: Thu, 18 Apr 2019 10:54:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:9-jre8-slim` - linux; 386

```console
$ docker pull tomcat@sha256:c5f4f3666c852a549c4412b3e7e49f930e6da86e127c6d92a424c936c54481bd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.1 MB (91104984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c606b9e8c7caf6d5507f6b6cbc68487b573d98df537ac9e125f71b7d5ba50f63`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 17:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 17:56:38 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 17:56:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 17:56:39 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 17:57:19 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 28 Mar 2019 01:00:26 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 01:00:26 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 01:00:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 04:11:05 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 28 Mar 2019 04:11:05 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 04:11:06 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 28 Mar 2019 04:11:06 GMT
WORKDIR /usr/local/tomcat
# Thu, 28 Mar 2019 04:11:06 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 28 Mar 2019 04:11:06 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 28 Mar 2019 04:11:06 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Thu, 28 Mar 2019 04:11:07 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 28 Mar 2019 04:11:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 05:07:18 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 28 Mar 2019 05:07:19 GMT
ENV TOMCAT_MAJOR=9
# Thu, 18 Apr 2019 12:21:11 GMT
ENV TOMCAT_VERSION=9.0.19
# Thu, 18 Apr 2019 12:21:11 GMT
ENV TOMCAT_SHA512=d1984947f7ead6da8679447ebd5101ec9a5766210a81d257a5f878e244755fcf192e9c1d2b139556d29b1aed67b9f15b16a754a1bd33f9d271666caa2dd28ed8
# Thu, 18 Apr 2019 12:21:12 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz
# Thu, 18 Apr 2019 12:21:12 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc
# Thu, 18 Apr 2019 12:22:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 18 Apr 2019 12:22:24 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 18 Apr 2019 12:22:24 GMT
EXPOSE 8080
# Thu, 18 Apr 2019 12:22:25 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca3d7f9eb531082cde488d0aa03b101f3e89fbf5c5a1258cd81277fc760913c1`  
		Last Modified: Wed, 27 Mar 2019 18:29:13 GMT  
		Size: 463.5 KB (463546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d06032fd0d07a7a76e209678dc483ec560f49df6b1b9383ad5b54571cb3a91b3`  
		Last Modified: Wed, 27 Mar 2019 18:30:56 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a72c4d4f34e622de5c0a44259e6a9f14b9b6308cfec4d440550815ba715d6e3`  
		Last Modified: Wed, 27 Mar 2019 18:30:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee6b84d2a2a544f0b52f24a5d54bdfcab585f349493ac9ab26a2b720c6bd883f`  
		Last Modified: Thu, 28 Mar 2019 01:18:38 GMT  
		Size: 55.4 MB (55436804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc77b4a2a864c7e60bead249326296c913bf670ffb7ce21b286489d96d951d2c`  
		Last Modified: Thu, 28 Mar 2019 05:12:20 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbc12c5603c358a565f670921bbd09dd34104e5c29ef8b9a668819214b39624`  
		Last Modified: Thu, 28 Mar 2019 05:12:21 GMT  
		Size: 437.8 KB (437845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44dff1d4c548586e2ea14065a713c8d205b229fb8801193fd069fc8bf81cec70`  
		Last Modified: Thu, 18 Apr 2019 12:26:21 GMT  
		Size: 11.6 MB (11640348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d282f0ab24bf8b6d1e60f1c768a2dbd9be41acbe609b70857ea860ffb754f726`  
		Last Modified: Thu, 18 Apr 2019 12:26:20 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:9-jre8-slim` - linux; ppc64le

```console
$ docker pull tomcat@sha256:c397ffb83237137d721195563a0800bb2b7c566c416608a3b2ba73f18218a130
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83928605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d6555b85f253392e7e5fb1f4d243625dc87084ba2d5bce1f3ec38a6cff479bb`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:38:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:47:26 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:47:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:47:36 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:49:13 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 28 Mar 2019 08:35:19 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 08:35:24 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 08:37:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 10:14:49 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 28 Mar 2019 10:14:53 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 10:15:00 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 28 Mar 2019 10:15:06 GMT
WORKDIR /usr/local/tomcat
# Thu, 28 Mar 2019 10:15:10 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 28 Mar 2019 10:15:12 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 28 Mar 2019 10:15:15 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Thu, 28 Mar 2019 10:15:19 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 28 Mar 2019 10:15:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 10:41:29 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 28 Mar 2019 10:41:31 GMT
ENV TOMCAT_MAJOR=9
# Thu, 18 Apr 2019 09:24:34 GMT
ENV TOMCAT_VERSION=9.0.19
# Thu, 18 Apr 2019 09:24:39 GMT
ENV TOMCAT_SHA512=d1984947f7ead6da8679447ebd5101ec9a5766210a81d257a5f878e244755fcf192e9c1d2b139556d29b1aed67b9f15b16a754a1bd33f9d271666caa2dd28ed8
# Thu, 18 Apr 2019 09:24:44 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz
# Thu, 18 Apr 2019 09:24:48 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc
# Thu, 18 Apr 2019 09:33:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 18 Apr 2019 09:33:51 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 18 Apr 2019 09:33:54 GMT
EXPOSE 8080
# Thu, 18 Apr 2019 09:33:57 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d945fa8d0ebb59b7a9080958527a126b684d68ce1af2c32555975da70823c1d6`  
		Last Modified: Wed, 27 Mar 2019 12:54:56 GMT  
		Size: 449.8 KB (449831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaac200ccbb1f705459f6ba1a980b7e193ae0a0433122be0ede9884a3e15b218`  
		Last Modified: Wed, 27 Mar 2019 12:59:32 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:127ae473cc2b004b945b881fd180a947e21b7791e14fe0ff38041e9b5f9a03e9`  
		Last Modified: Wed, 27 Mar 2019 12:59:33 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb86fba52d14a165b78745a1ddb558414e06684b430c574e712dc791287b28b6`  
		Last Modified: Thu, 28 Mar 2019 08:47:54 GMT  
		Size: 48.5 MB (48538128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f68bb06517bb646dd7f59de3b27f2a3f1dc5153da43c080178dbb8816076c1a7`  
		Last Modified: Thu, 28 Mar 2019 10:50:16 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d7d472920c465672de0e6f202a215e8c3e22188d4cbd39a0f5b75c027705497`  
		Last Modified: Thu, 28 Mar 2019 10:50:17 GMT  
		Size: 421.3 KB (421304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7072ab50c44d7a62f0342a7f0306df4f4e05f300430711f6617704a6ee9ac733`  
		Last Modified: Thu, 18 Apr 2019 09:48:39 GMT  
		Size: 11.8 MB (11767264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fd41bb7faad46d56655ac333737eaa7681e0f39b70b2fd35c6616bc9e39c61`  
		Last Modified: Thu, 18 Apr 2019 09:48:37 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:9-jre8-slim` - linux; s390x

```console
$ docker pull tomcat@sha256:e8160a7d1c257aafd92f221c374f71a448dc745fcfdefe49cf291b89226bd120
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82899857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4753359793617b7054956ad66abda906d28158f496a4f9a17589dca3242a4856`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:45 GMT
ADD file:bbc08c16057153af2910791402d3a29eb5da11e030d2fc6778644c444142d2ab in / 
# Wed, 27 Mar 2019 11:43:46 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:24:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:27:18 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 15:27:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 15:27:23 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 15:28:09 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 28 Mar 2019 11:49:04 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 11:49:04 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 11:49:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 12:55:48 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 28 Mar 2019 12:55:48 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 12:55:49 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 28 Mar 2019 12:55:49 GMT
WORKDIR /usr/local/tomcat
# Thu, 28 Mar 2019 12:55:50 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 28 Mar 2019 12:55:50 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 28 Mar 2019 12:55:51 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Thu, 28 Mar 2019 12:55:52 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 28 Mar 2019 12:55:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 13:05:57 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 28 Mar 2019 13:05:58 GMT
ENV TOMCAT_MAJOR=9
# Thu, 18 Apr 2019 16:03:36 GMT
ENV TOMCAT_VERSION=9.0.19
# Thu, 18 Apr 2019 16:03:37 GMT
ENV TOMCAT_SHA512=d1984947f7ead6da8679447ebd5101ec9a5766210a81d257a5f878e244755fcf192e9c1d2b139556d29b1aed67b9f15b16a754a1bd33f9d271666caa2dd28ed8
# Thu, 18 Apr 2019 16:03:37 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz
# Thu, 18 Apr 2019 16:03:38 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc
# Thu, 18 Apr 2019 16:06:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 18 Apr 2019 16:06:25 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 18 Apr 2019 16:06:25 GMT
EXPOSE 8080
# Thu, 18 Apr 2019 16:06:25 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:9ce36a197e11ef57ec11f749055a2d2db6113c6b0026d930d3ddbbd86a7ec15b`  
		Last Modified: Wed, 27 Mar 2019 11:46:50 GMT  
		Size: 22.3 MB (22345282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873fe20cf16e09acaa32a84770546a724019d27f9da4b456666341fadae1ea88`  
		Last Modified: Wed, 27 Mar 2019 15:30:36 GMT  
		Size: 465.8 KB (465770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:445408b0902c2419b7cc3d1762ee0bc078d31c2d81f29966541fec2914ebe400`  
		Last Modified: Wed, 27 Mar 2019 15:32:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2bc0dd8dea0f699a84937a5b9a07cc30cd2ab90383d1893ca850f6110f7a5b9`  
		Last Modified: Wed, 27 Mar 2019 15:32:22 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff601d5c8e335300915ab44e6cdfc439facceb7e4818d1831cc93f9049584cff`  
		Last Modified: Thu, 28 Mar 2019 11:53:32 GMT  
		Size: 47.7 MB (47742332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d28663d8cd0c433d6d5d186e0a584998ae3e09dec5c3c7e1f743ec7ceb6bec`  
		Last Modified: Thu, 28 Mar 2019 13:09:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a449be5e40ee1ffd6f111406ad187365e7a637fc02ff222af2f3834d9de5294`  
		Last Modified: Thu, 28 Mar 2019 13:09:17 GMT  
		Size: 431.1 KB (431144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5a465beebe008cd155b770846e57678f1a0e95f2fef32879d84fd5e6c30d8cc`  
		Last Modified: Thu, 18 Apr 2019 16:12:38 GMT  
		Size: 11.9 MB (11914670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fa234657ed66d139adb634c3a12fa16e74821d9760d2f245db832b0b1a228cd`  
		Last Modified: Thu, 18 Apr 2019 16:12:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
