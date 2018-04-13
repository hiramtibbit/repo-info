## `tomcat:9-jre8-slim`

```console
$ docker pull tomcat@sha256:5aaab68f4815716fa44ccffceb4d3a7e4e46d9ba2fc72560603b0e6f58a27307
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
$ docker pull tomcat@sha256:19de679c394396e14fdbc2bc8f475f35eca65c049c73c9097b62c9177d0beda9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.4 MB (92395136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50e690bd41bef75e5dc678d3e3dd174d769376df1cb07fe36aba08da1d75a6bb`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 11:07:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 11:07:04 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 11:07:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 11:07:06 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 11:07:06 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 19 Mar 2018 21:22:11 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:22:11 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:22:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:22:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:22:32 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 03:49:58 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 20 Mar 2018 03:49:58 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 03:50:00 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 20 Mar 2018 03:50:00 GMT
WORKDIR /usr/local/tomcat
# Tue, 20 Mar 2018 03:50:00 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 20 Mar 2018 03:50:01 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 05 Apr 2018 08:52:52 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Thu, 05 Apr 2018 08:52:59 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 05 Apr 2018 08:53:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 05 Apr 2018 09:52:34 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 05 Apr 2018 09:52:34 GMT
ENV TOMCAT_MAJOR=9
# Wed, 11 Apr 2018 21:32:20 GMT
ENV TOMCAT_VERSION=9.0.7
# Wed, 11 Apr 2018 21:32:20 GMT
ENV TOMCAT_SHA512=2050f368a32c44ed1b8bc6d2c964fb47e4f9c7ec2c4222141bd0edcd9da1708185c00eba63ccf28b1d55f452284ed0265058913d58d2f1ef10be8a6b7da1711f
# Wed, 11 Apr 2018 21:32:21 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz
# Wed, 11 Apr 2018 21:32:21 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz.asc
# Wed, 11 Apr 2018 21:33:42 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Wed, 11 Apr 2018 21:33:50 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 11 Apr 2018 21:33:50 GMT
EXPOSE 8080/tcp
# Wed, 11 Apr 2018 21:33:50 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b826b31940917d1052a280a46c73120f9688ce9b03a4f185d80b57755e0a9d`  
		Last Modified: Wed, 14 Mar 2018 12:48:12 GMT  
		Size: 454.8 KB (454841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb043c2d1520ae17e6480642d46665aeb109f65e9fa57cd74e8d82beb3f6eb5f`  
		Last Modified: Wed, 14 Mar 2018 12:48:11 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9d9a7482db5eaf9dfdeb02742795077ba645020e34eb8d7edade6f3ad7736b`  
		Last Modified: Wed, 14 Mar 2018 12:48:11 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:738a1eed659c303423af71274171c689423bd0d5831be032c5adb438cff57500`  
		Last Modified: Mon, 19 Mar 2018 23:40:01 GMT  
		Size: 56.0 MB (56047319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d68af610a7f793e9c3c794bc12d7b7b4b7286321b09140479450646da47f6f2`  
		Last Modified: Mon, 19 Mar 2018 23:39:51 GMT  
		Size: 272.1 KB (272107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57cc34ec0ffd2b7ab33521e74e33981647603ceb096487e40bee178b10a305c9`  
		Last Modified: Tue, 20 Mar 2018 04:33:16 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb69852182c35ec66059a1bdd84dac3dae8aa4ca7e311b7a5c23c7d14892623`  
		Last Modified: Thu, 05 Apr 2018 10:22:43 GMT  
		Size: 600.2 KB (600243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff30d2056fd99e2383b0439f2da198d4d90a3e01d58f2ab77622d075350882dc`  
		Last Modified: Thu, 05 Apr 2018 10:22:43 GMT  
		Size: 429.5 KB (429463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d8bfd7dde88dce20f5766ed2c370d1d0c78ea5c51fa20bb13d2bdb6a10fe06`  
		Last Modified: Wed, 11 Apr 2018 23:31:24 GMT  
		Size: 12.1 MB (12101525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da59792f93ea9e139dd8ce106fc389c3f7c5d5be9adea939c3affc4f787eb5fd`  
		Last Modified: Wed, 11 Apr 2018 23:31:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:9-jre8-slim` - linux; arm variant v5

```console
$ docker pull tomcat@sha256:179674255054ed5124f66ab4a3b2cd90f4a0b1e94355e2c63809be68afd358a0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.5 MB (81452492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ba18869392084620cbd4128e5016671cfbb9af93588467f2cef2d67f0f97493`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 14 Mar 2018 20:01:39 GMT
ADD file:c472062baa8d8c35c7642162b18516ecdc2e143d0e5c147b472312cfc532efe9 in / 
# Wed, 14 Mar 2018 20:01:40 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 22:48:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:48:27 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 22:48:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 22:48:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 22:48:29 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 20 Mar 2018 10:10:08 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 10:10:08 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 10:10:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 10:10:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 10:10:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 11:22:44 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 20 Mar 2018 11:22:45 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 11:22:46 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 20 Mar 2018 11:22:46 GMT
WORKDIR /usr/local/tomcat
# Tue, 20 Mar 2018 11:22:46 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 20 Mar 2018 11:22:47 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 05 Apr 2018 18:15:51 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Thu, 05 Apr 2018 18:15:59 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 05 Apr 2018 18:16:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 05 Apr 2018 18:33:38 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 05 Apr 2018 18:33:38 GMT
ENV TOMCAT_MAJOR=9
# Thu, 12 Apr 2018 09:22:57 GMT
ENV TOMCAT_VERSION=9.0.7
# Thu, 12 Apr 2018 09:22:57 GMT
ENV TOMCAT_SHA512=2050f368a32c44ed1b8bc6d2c964fb47e4f9c7ec2c4222141bd0edcd9da1708185c00eba63ccf28b1d55f452284ed0265058913d58d2f1ef10be8a6b7da1711f
# Thu, 12 Apr 2018 09:22:58 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz
# Thu, 12 Apr 2018 09:22:58 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz.asc
# Thu, 12 Apr 2018 09:24:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 12 Apr 2018 09:24:58 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 12 Apr 2018 09:24:58 GMT
EXPOSE 8080/tcp
# Thu, 12 Apr 2018 09:24:58 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:8efba53ec4136476603e9856d8bb17541faa0f33abada48ac4d2d7efe61ff43f`  
		Last Modified: Wed, 14 Mar 2018 20:13:21 GMT  
		Size: 21.2 MB (21164955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1949e18a328f3c9b962c19755d8a55af0f21d21943810d7daf39862ab8bedf`  
		Last Modified: Wed, 14 Mar 2018 23:12:26 GMT  
		Size: 447.7 KB (447681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b95963c2f246890fe81e80837f0f83814d454828b59a18fb683a23a7f0eb09c`  
		Last Modified: Wed, 14 Mar 2018 23:12:26 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f7dc2f45c72f39e5727403aaf034f49ea08f3db29ca0556933a777d8ea0ff9d`  
		Last Modified: Wed, 14 Mar 2018 23:12:26 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe7ebe9087566b4846d8d84ad60e770fc58feacc3d48922ba3347086a053c2e`  
		Last Modified: Tue, 20 Mar 2018 10:35:18 GMT  
		Size: 46.8 MB (46769117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04050d4ef04d67036e2c7b7030099e6fe96d79886e9f7a1d55b14daff4488ac5`  
		Last Modified: Tue, 20 Mar 2018 10:35:07 GMT  
		Size: 272.2 KB (272188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0faabd990bebf8c45d889eadf7325e1ef38a65799ca5075c6ef21c7d679ec311`  
		Last Modified: Tue, 20 Mar 2018 11:53:23 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3723a218d86d1e7cfcecfe49050e89bc54c316f602f7bcbb8f44c408f812fba1`  
		Last Modified: Thu, 05 Apr 2018 18:38:14 GMT  
		Size: 587.9 KB (587922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d64f6b4bbcc1db47138fad1380b3e3fc35f430b38a8d32f9bb036edf0590274`  
		Last Modified: Thu, 05 Apr 2018 18:38:14 GMT  
		Size: 414.9 KB (414946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf97807c2dd98494b256adb645a4f8e7abf59c19ff9c1c4c3af66e7b3502e5dc`  
		Last Modified: Thu, 12 Apr 2018 09:38:31 GMT  
		Size: 11.8 MB (11794990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd34a1e0ec40bafe2520e8cc17d6c22bcb7621ca82d4e7e50a56e666c0ce46b`  
		Last Modified: Thu, 12 Apr 2018 09:38:29 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:9-jre8-slim` - linux; arm variant v7

```console
$ docker pull tomcat@sha256:4a3289bb3484ae7a755a34714d638b14995ebe8ad828b4e0589be06cc4b63141
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.5 MB (81452512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50c7e624131657722f48edea0ce5ec919195a6d719586097dbb4600751debc70`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 14 Mar 2018 20:01:39 GMT
ADD file:c472062baa8d8c35c7642162b18516ecdc2e143d0e5c147b472312cfc532efe9 in / 
# Wed, 14 Mar 2018 20:01:40 GMT
CMD ["bash"]
# Tue, 27 Mar 2018 01:50:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 27 Mar 2018 01:50:11 GMT
ENV LANG=C.UTF-8
# Tue, 27 Mar 2018 01:50:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Mar 2018 01:50:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 27 Mar 2018 01:50:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 27 Mar 2018 01:50:15 GMT
ENV JAVA_VERSION=8u162
# Tue, 27 Mar 2018 01:50:15 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 27 Mar 2018 01:50:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 27 Mar 2018 01:50:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 27 Mar 2018 01:51:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 29 Mar 2018 02:45:49 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 29 Mar 2018 02:45:50 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Mar 2018 02:45:51 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 29 Mar 2018 02:45:51 GMT
WORKDIR /usr/local/tomcat
# Thu, 29 Mar 2018 02:45:51 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 29 Mar 2018 02:45:51 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 05 Apr 2018 18:15:32 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Thu, 05 Apr 2018 18:15:40 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 05 Apr 2018 18:15:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 05 Apr 2018 18:35:21 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 05 Apr 2018 18:35:21 GMT
ENV TOMCAT_MAJOR=9
# Thu, 12 Apr 2018 12:27:51 GMT
ENV TOMCAT_VERSION=9.0.7
# Thu, 12 Apr 2018 12:27:51 GMT
ENV TOMCAT_SHA512=2050f368a32c44ed1b8bc6d2c964fb47e4f9c7ec2c4222141bd0edcd9da1708185c00eba63ccf28b1d55f452284ed0265058913d58d2f1ef10be8a6b7da1711f
# Thu, 12 Apr 2018 12:27:52 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz
# Thu, 12 Apr 2018 12:27:52 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz.asc
# Thu, 12 Apr 2018 12:29:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 12 Apr 2018 12:29:36 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 12 Apr 2018 12:29:36 GMT
EXPOSE 8080/tcp
# Thu, 12 Apr 2018 12:29:36 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:8efba53ec4136476603e9856d8bb17541faa0f33abada48ac4d2d7efe61ff43f`  
		Last Modified: Wed, 14 Mar 2018 20:13:21 GMT  
		Size: 21.2 MB (21164955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b006c16d8c81f9d03b541fa686cb57f40818f1d13ca2a326b7685a357d63e5`  
		Last Modified: Tue, 27 Mar 2018 02:13:30 GMT  
		Size: 447.7 KB (447679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4c60102a2d43ceb83f32f54bc9fc75f477a8b3b7b43521e705bca7293161f6`  
		Last Modified: Tue, 27 Mar 2018 02:13:30 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b290902da6536cde53ecb48ed3327fcebd41dd015833f9822475ef20d500ef85`  
		Last Modified: Tue, 27 Mar 2018 02:13:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd7dafe25a2c944102fd7f991fbe4c637540d55a8c821e79b4c9314d2a490d02`  
		Last Modified: Tue, 27 Mar 2018 02:13:42 GMT  
		Size: 46.8 MB (46769228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f3d863baa2a4efcf659083b9683c68d6ea00f60e0acb7d7610efb2edc9d4f5`  
		Last Modified: Tue, 27 Mar 2018 02:13:30 GMT  
		Size: 272.2 KB (272185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53c51e6e02882fb8a75ed0c6bb4b8bda6f54806164f89b7ddb7933eefb65e02`  
		Last Modified: Thu, 29 Mar 2018 03:03:53 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9082ba22592c2a0d623c6d3d954d63048f0cb9f2633dd62bd44e8c25e07471`  
		Last Modified: Thu, 05 Apr 2018 18:39:34 GMT  
		Size: 587.9 KB (587915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1c21ea9dec69ee65463fd23435d05a2e8daafcd0c5720c6852c2a80833ac21c`  
		Last Modified: Thu, 05 Apr 2018 18:39:35 GMT  
		Size: 414.9 KB (414898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d21026b016f2f991b1dfb3f4a41fb153b4f268188f589e04e75d52bccec209`  
		Last Modified: Thu, 12 Apr 2018 12:43:19 GMT  
		Size: 11.8 MB (11794959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03dffc2e65d5665d37394f883444afbc017a0d7511f5f7c29171c174ede2a58e`  
		Last Modified: Thu, 12 Apr 2018 12:43:17 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:9-jre8-slim` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:87f4d8f524ab4f9b79bb6cc824a3fb2f2837645268c48dd0f79cd3d6ced5d02a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.1 MB (82074412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5d1cdcd2e458cd310403ef25820c60bcebf7b9563b95d38adbcbe5780ab8c4c`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 14 Mar 2018 17:31:57 GMT
ADD file:c8a9419b2fbc1297f28b404507a39054e101a6f21f15c352b351cab19067cb4f in / 
# Wed, 14 Mar 2018 17:31:57 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:40:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:40:14 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 20:40:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 20:40:20 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 20:40:21 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 20 Mar 2018 10:53:20 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 10:53:21 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 10:53:22 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 10:54:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 10:55:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 13:45:43 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 20 Mar 2018 13:45:43 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 13:45:45 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 20 Mar 2018 13:45:46 GMT
WORKDIR /usr/local/tomcat
# Tue, 20 Mar 2018 13:45:46 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 20 Mar 2018 13:45:47 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 05 Apr 2018 18:38:26 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Thu, 05 Apr 2018 18:38:45 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 05 Apr 2018 18:39:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 05 Apr 2018 19:36:48 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 05 Apr 2018 19:36:49 GMT
ENV TOMCAT_MAJOR=9
# Thu, 12 Apr 2018 10:51:01 GMT
ENV TOMCAT_VERSION=9.0.7
# Thu, 12 Apr 2018 10:51:01 GMT
ENV TOMCAT_SHA512=2050f368a32c44ed1b8bc6d2c964fb47e4f9c7ec2c4222141bd0edcd9da1708185c00eba63ccf28b1d55f452284ed0265058913d58d2f1ef10be8a6b7da1711f
# Thu, 12 Apr 2018 10:51:02 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz
# Thu, 12 Apr 2018 10:51:03 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz.asc
# Thu, 12 Apr 2018 11:00:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 12 Apr 2018 11:00:40 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 12 Apr 2018 11:00:41 GMT
EXPOSE 8080/tcp
# Thu, 12 Apr 2018 11:00:41 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:fe48c4e9ee8492678b1070a971759d407b15524c49c40762b590ba4b52766dde`  
		Last Modified: Wed, 14 Mar 2018 17:47:11 GMT  
		Size: 20.3 MB (20337203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c2c870b6a03218fa96a1914a126961281284a49163a7dac0a01e1e541e1d87`  
		Last Modified: Wed, 14 Mar 2018 21:41:04 GMT  
		Size: 440.8 KB (440847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9452cad7dfe516b55adcda81dc66f8983610a046558f0ff3c2fbc4d640273838`  
		Last Modified: Wed, 14 Mar 2018 21:41:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bd53f132dbd6ebdabddfe1a5d0db8da6317d63520610c9287202b678034df19`  
		Last Modified: Wed, 14 Mar 2018 21:41:03 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d05e73f66f45acf85b3af94a3c6063e748c9204d4cf1cdb958dc5bb6dcfd70d`  
		Last Modified: Tue, 20 Mar 2018 12:08:45 GMT  
		Size: 48.2 MB (48187410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d870bdca30a549212c05dddcbaa5bd6960a6c34694a305bdde5e57307517df27`  
		Last Modified: Tue, 20 Mar 2018 12:08:31 GMT  
		Size: 272.1 KB (272088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e075af223520713b183f223b59498b59106b4090796bd466679c3938707a25`  
		Last Modified: Tue, 20 Mar 2018 15:39:00 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f94a021e048f4d5bed023f04402872056493102427590a9fc8cdde87cb8b7d`  
		Last Modified: Thu, 05 Apr 2018 19:52:52 GMT  
		Size: 576.5 KB (576529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52334e215b7bb16bdf1f0fc588746e71f48e884593f119031eab6f99f0c89738`  
		Last Modified: Thu, 05 Apr 2018 19:52:53 GMT  
		Size: 413.4 KB (413384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e7770db5051b3b7b7a2a3fe33408d3c2070c394a03ec95622f1658d041f136`  
		Last Modified: Thu, 12 Apr 2018 11:58:44 GMT  
		Size: 11.8 MB (11846292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f9c21a8acf92b3de70edf9d3c935047539e1558c905e05aa4e1f01c876d945`  
		Last Modified: Thu, 12 Apr 2018 11:58:41 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:9-jre8-slim` - linux; 386

```console
$ docker pull tomcat@sha256:ec44b790c19849691961a9192edbdc8d9f65c9beddff1b3f3d9d492c66022007
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.2 MB (90216161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5636dace957a2111d06748169753d9b1b86468d666a509f41b6f1820173914af`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 27 Mar 2018 16:09:09 GMT
ADD file:5f8e2fbc1268ac5b46594efb678568241114da3315a48a2b48d45a696e709a59 in / 
# Tue, 27 Mar 2018 16:09:09 GMT
CMD ["bash"]
# Fri, 30 Mar 2018 04:53:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 30 Mar 2018 04:53:45 GMT
ENV LANG=C.UTF-8
# Fri, 30 Mar 2018 04:53:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 30 Mar 2018 04:53:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 30 Mar 2018 04:53:47 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 30 Mar 2018 04:53:47 GMT
ENV JAVA_VERSION=8u162
# Fri, 30 Mar 2018 04:53:47 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Fri, 30 Mar 2018 04:53:47 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 30 Mar 2018 04:54:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 30 Mar 2018 04:54:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 13 Apr 2018 21:17:09 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 13 Apr 2018 21:17:10 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Apr 2018 21:17:11 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 13 Apr 2018 21:17:11 GMT
WORKDIR /usr/local/tomcat
# Fri, 13 Apr 2018 21:17:11 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 13 Apr 2018 21:17:11 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 13 Apr 2018 21:17:11 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Fri, 13 Apr 2018 21:17:12 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 13 Apr 2018 21:17:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 21:42:05 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 13 Apr 2018 21:42:05 GMT
ENV TOMCAT_MAJOR=9
# Fri, 13 Apr 2018 21:42:05 GMT
ENV TOMCAT_VERSION=9.0.7
# Fri, 13 Apr 2018 21:42:05 GMT
ENV TOMCAT_SHA512=2050f368a32c44ed1b8bc6d2c964fb47e4f9c7ec2c4222141bd0edcd9da1708185c00eba63ccf28b1d55f452284ed0265058913d58d2f1ef10be8a6b7da1711f
# Fri, 13 Apr 2018 21:42:05 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz
# Fri, 13 Apr 2018 21:42:06 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz.asc
# Fri, 13 Apr 2018 21:43:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Fri, 13 Apr 2018 21:43:20 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 13 Apr 2018 21:43:21 GMT
EXPOSE 8080/tcp
# Fri, 13 Apr 2018 21:43:21 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:4bbaad9d12d2240d446a4bdd775931ab087231a82c5d07172d661861d447f336`  
		Last Modified: Thu, 15 Mar 2018 01:29:42 GMT  
		Size: 23.1 MB (23128783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bad67933f892aadaa7fe850865baa4171544ccd0a5d66e1d5da638e71bc75ed`  
		Last Modified: Fri, 30 Mar 2018 15:20:11 GMT  
		Size: 463.5 KB (463520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61e42df41c9b40500bf98f9ba05bcf117613bf44b5ce979a41ed8fcebb69651`  
		Last Modified: Fri, 30 Mar 2018 15:20:11 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbcefbba0e9215bdf7a4e5c88c4d5f6210d5c744a48721b108b2cbc7b0590e5d`  
		Last Modified: Fri, 30 Mar 2018 15:20:11 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c02e05ef211e9cdfd17fd75a915f7feb26be6fb0f6d50643ef4646f940c58c`  
		Last Modified: Fri, 30 Mar 2018 15:20:25 GMT  
		Size: 55.6 MB (55587747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48911feb759081ab40d300f9707975e209322c9a811359ef0429caf6f16f14b`  
		Last Modified: Fri, 30 Mar 2018 15:20:11 GMT  
		Size: 272.1 KB (272147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9eba17933e70d7288dea831163a61c11b32473601cbe33c9608631378533f97`  
		Last Modified: Fri, 13 Apr 2018 21:52:04 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04af0ff8153daaa4fa201d81c0b78e20dd515b0d9a1de65614b802742825d002`  
		Last Modified: Fri, 13 Apr 2018 21:52:04 GMT  
		Size: 439.5 KB (439467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab6bbcb21b30a6e3ae63354f26b49ef22957f025c99c0cdb44ffa605c047ce18`  
		Last Modified: Fri, 13 Apr 2018 21:56:59 GMT  
		Size: 10.3 MB (10323838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a3fb3b7408b089abaaa0feb6a83c106ae4881bf1047da14791c8fe67a7a706`  
		Last Modified: Fri, 13 Apr 2018 21:56:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:9-jre8-slim` - linux; ppc64le

```console
$ docker pull tomcat@sha256:1ad807cf46f6e9f88f0dccdcc13d25cccca079d855b31a45b979e6c4c4d1724b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.0 MB (84955482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08bc0832e698aa522b38bb90fbcc2890607045d7e0d2685e98c7612d76c713af`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 14 Mar 2018 00:35:22 GMT
ADD file:eb08f3c15b97624b92d23e06e82a8de439723fe3fd0f2d75b242fd2a9b9abc51 in / 
# Wed, 14 Mar 2018 00:35:24 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 04:52:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:52:45 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 04:52:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Mar 2018 04:52:59 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Mar 2018 04:53:02 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 20 Mar 2018 11:48:08 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 11:48:09 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 11:48:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 11:50:18 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 11:50:24 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 13:00:03 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 20 Mar 2018 13:00:05 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 13:00:08 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 20 Mar 2018 13:00:10 GMT
WORKDIR /usr/local/tomcat
# Tue, 20 Mar 2018 13:00:13 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 20 Mar 2018 13:00:14 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 05 Apr 2018 18:27:44 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Thu, 05 Apr 2018 18:27:58 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 05 Apr 2018 18:28:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 05 Apr 2018 19:27:52 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 05 Apr 2018 19:27:54 GMT
ENV TOMCAT_MAJOR=9
# Thu, 12 Apr 2018 09:55:01 GMT
ENV TOMCAT_VERSION=9.0.7
# Thu, 12 Apr 2018 09:55:02 GMT
ENV TOMCAT_SHA512=2050f368a32c44ed1b8bc6d2c964fb47e4f9c7ec2c4222141bd0edcd9da1708185c00eba63ccf28b1d55f452284ed0265058913d58d2f1ef10be8a6b7da1711f
# Thu, 12 Apr 2018 09:55:02 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz
# Thu, 12 Apr 2018 09:55:03 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz.asc
# Thu, 12 Apr 2018 10:03:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 12 Apr 2018 10:03:08 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 12 Apr 2018 10:03:08 GMT
EXPOSE 8080/tcp
# Thu, 12 Apr 2018 10:03:08 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:f3543c3a35ef83bbd42a728d1995f79f0163e330a44b0abe41042ac8b94787ca`  
		Last Modified: Thu, 15 Mar 2018 00:33:06 GMT  
		Size: 22.7 MB (22746142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2161f1e27455c4f326ed4a0e9f04c75ab7cf7ec817ac77d09e60f7546eba89eb`  
		Last Modified: Thu, 15 Mar 2018 06:06:39 GMT  
		Size: 449.8 KB (449810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab6707568a8fbabd710d6a1bd122f68bb3fb7bf70a82f71a8166262bc6ea9041`  
		Last Modified: Thu, 15 Mar 2018 06:06:38 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:291e9f652987d4079557622fc40bd32490a0d89f8a608d317ab0dbcdbd3557c5`  
		Last Modified: Thu, 15 Mar 2018 06:06:39 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3c30d2ed678686f06ec167a3119ec5704ce27bdf6a5722f2b73b1a8e43e0f7`  
		Last Modified: Tue, 20 Mar 2018 12:18:33 GMT  
		Size: 48.7 MB (48677527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afbdb0411f5ff6b0c792228f222ddaf9c2d47926328aa7770546cad601ba410`  
		Last Modified: Tue, 20 Mar 2018 12:18:23 GMT  
		Size: 272.1 KB (272071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ef7777de4077ece1660d8bc801131e6fc454df31abd80b6f88ce54a91edb39f`  
		Last Modified: Tue, 20 Mar 2018 14:47:39 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f3e8d6b8f2200447339da2bd1f5ba4de5638eaa5791b95d6395c25574ba0fb0`  
		Last Modified: Thu, 05 Apr 2018 19:42:56 GMT  
		Size: 592.2 KB (592214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a16224cf251d32a846e5d739855d9e6cc800928efe103272a1b542557c7b303`  
		Last Modified: Thu, 05 Apr 2018 19:42:57 GMT  
		Size: 423.3 KB (423284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e30edf1154903ab495baa04c86635cf9d811c728e3f76aabd68f05a52063f067`  
		Last Modified: Thu, 12 Apr 2018 10:43:26 GMT  
		Size: 11.8 MB (11793738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5ff96967a05d6cc1629ce8cea1c6d91b372ae09bee58c822d9b94c66dde5fc6`  
		Last Modified: Thu, 12 Apr 2018 10:43:24 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:9-jre8-slim` - linux; s390x

```console
$ docker pull tomcat@sha256:e77c3a36f1d8eea9c43705973a88e25c0486745605c922fb2fbd844f64b38ece
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.0 MB (84011077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c7673f03231455eaed19c136cecb50d635ba21c903b25d63c22250c99e7713e`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 14 Mar 2018 05:24:07 GMT
ADD file:61d2621323852492d52f23ac03a18fa0af2bcc5597691b40f508eae65f4a9242 in / 
# Wed, 14 Mar 2018 05:24:07 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:43:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:43:19 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 06:43:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 06:43:20 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 06:43:20 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 20 Mar 2018 17:03:19 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 17:03:20 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 17:03:20 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 17:03:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 17:03:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 17:50:10 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 20 Mar 2018 17:50:10 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 17:50:12 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 20 Mar 2018 17:50:13 GMT
WORKDIR /usr/local/tomcat
# Tue, 20 Mar 2018 17:50:13 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 20 Mar 2018 17:50:13 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 05 Apr 2018 18:12:06 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Thu, 05 Apr 2018 18:12:11 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 05 Apr 2018 18:12:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 05 Apr 2018 18:27:15 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 05 Apr 2018 18:27:15 GMT
ENV TOMCAT_MAJOR=9
# Thu, 12 Apr 2018 12:39:37 GMT
ENV TOMCAT_VERSION=9.0.7
# Thu, 12 Apr 2018 12:39:37 GMT
ENV TOMCAT_SHA512=2050f368a32c44ed1b8bc6d2c964fb47e4f9c7ec2c4222141bd0edcd9da1708185c00eba63ccf28b1d55f452284ed0265058913d58d2f1ef10be8a6b7da1711f
# Thu, 12 Apr 2018 12:39:38 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz
# Thu, 12 Apr 2018 12:39:38 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.7/bin/apache-tomcat-9.0.7.tar.gz.asc
# Thu, 12 Apr 2018 12:40:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 12 Apr 2018 12:40:35 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 12 Apr 2018 12:40:35 GMT
EXPOSE 8080/tcp
# Thu, 12 Apr 2018 12:40:35 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:b1c81357f99190a5db0d8057d246a1f1ef9b85b2af5569523da5f1dc979989d3`  
		Last Modified: Wed, 14 Mar 2018 05:29:05 GMT  
		Size: 22.3 MB (22340478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:512c47784c512985a2f670e2a9aebfa09511f48279b95d9891a337a558a3ad3a`  
		Last Modified: Wed, 14 Mar 2018 06:57:32 GMT  
		Size: 465.7 KB (465722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc17c7b5f20c51c5f2c4f4d919514f4d98fd1056c2f72b08ab8a805bcacec06`  
		Last Modified: Wed, 14 Mar 2018 06:57:32 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7342609907d585fc4e70d60bdbe4417280ca389d6d95b71e976510cad8cecc9c`  
		Last Modified: Wed, 14 Mar 2018 06:57:32 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a23cbdb9070a5a059b7093ce9e8fe0927407af0d8c370640536b30c47c4736`  
		Last Modified: Tue, 20 Mar 2018 17:15:51 GMT  
		Size: 47.9 MB (47889111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042569123ebd4d3ed6f9dab02eabb813f320a905372630bcf023fa4b9369a464`  
		Last Modified: Tue, 20 Mar 2018 17:15:44 GMT  
		Size: 272.1 KB (272149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428d8de1886d8c590474c5e227af06965b8f534c21a04855067cba04981767eb`  
		Last Modified: Tue, 20 Mar 2018 18:05:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135b33fb3af14a9f3fcf8d435374b5537a5cf773a269b303be3fbfd521000865`  
		Last Modified: Thu, 05 Apr 2018 18:32:12 GMT  
		Size: 602.5 KB (602534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c9654ed7285e414d89f08c7ddf739974790aa11ecf916dc8e1d1818f3bc932`  
		Last Modified: Thu, 05 Apr 2018 18:32:13 GMT  
		Size: 433.0 KB (432999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f13c492762da0985aba9865c5c32426701394d025ae62e5fb82946070e766709`  
		Last Modified: Thu, 12 Apr 2018 12:56:38 GMT  
		Size: 12.0 MB (12007424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132bbcd087d8a0b611fcf66e258f161596735d5e74897f369090af445709b2d0`  
		Last Modified: Thu, 12 Apr 2018 12:56:36 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
