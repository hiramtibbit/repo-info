## `tomcat:9-jre11-slim`

```console
$ docker pull tomcat@sha256:903090c6954677fe1fd1c297dc503ed2def44c2fbca81cfc6488db7955b66c59
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
$ docker pull tomcat@sha256:a5df1a63c82d501b8aafd8ed0f0341a0360279e23c26af31c4db727d78121128
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.3 MB (112276570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b55b2300cac9b41ae43524354554d3ce6de8e5c4261a155bc1781fe82be70305`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:04:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:04:24 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 08 May 2019 05:04:25 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:04:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:04:27 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:04:27 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 08 May 2019 05:04:27 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 08 May 2019 05:04:27 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Wed, 08 May 2019 05:06:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 13:28:15 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 08 May 2019 13:28:15 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 13:28:16 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 08 May 2019 13:28:16 GMT
WORKDIR /usr/local/tomcat
# Wed, 08 May 2019 13:28:16 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:28:16 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 13:28:16 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 08 May 2019 13:28:17 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:28:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:34:21 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 08 May 2019 13:34:22 GMT
ENV TOMCAT_MAJOR=9
# Wed, 08 May 2019 13:34:22 GMT
ENV TOMCAT_VERSION=9.0.19
# Wed, 08 May 2019 13:34:22 GMT
ENV TOMCAT_SHA512=d1984947f7ead6da8679447ebd5101ec9a5766210a81d257a5f878e244755fcf192e9c1d2b139556d29b1aed67b9f15b16a754a1bd33f9d271666caa2dd28ed8
# Wed, 08 May 2019 13:34:22 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz
# Wed, 08 May 2019 13:34:23 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc
# Wed, 08 May 2019 13:36:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Wed, 08 May 2019 13:36:04 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 08 May 2019 13:36:04 GMT
EXPOSE 8080
# Wed, 08 May 2019 13:36:05 GMT
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
	-	`sha256:84a54a21b0f2624aed91e64b1c74960532e22ad1d53c1f4d1fc57edee13a1fe0`  
		Last Modified: Wed, 08 May 2019 05:27:26 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9d1bc98b28734307692403b69c0cab99f586567bcf8a1c6e393b5060cbecf0e`  
		Last Modified: Wed, 08 May 2019 05:27:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99e982badffd77dec4601d66c7dab2af440c58cd6d5e05cb5f9769e4fd69442`  
		Last Modified: Wed, 08 May 2019 05:27:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50c6b4dfde57fb9032ebbfdd3e386205614b7c6838487f4d68b28eb462612138`  
		Last Modified: Wed, 08 May 2019 05:28:55 GMT  
		Size: 77.2 MB (77161538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baf34d1e501e1f87d50646bb9a396b8b76f83ec8def2f4f0f4c9b080ac2b89ec`  
		Last Modified: Wed, 08 May 2019 13:38:40 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:094583998b0492806d811528b7d110cd0fa83a5af4b32f4fb46aec66e3fd6b56`  
		Last Modified: Wed, 08 May 2019 13:38:40 GMT  
		Size: 429.1 KB (429066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9029272754fb9655b1b56f60fee7463b927f226841ddcd25aae729cee467def`  
		Last Modified: Wed, 08 May 2019 13:39:21 GMT  
		Size: 11.7 MB (11740678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6df3746ea4c3aa6243c32a55b11aaec2cbc1a25a9a8aa2ae112a95871309a3`  
		Last Modified: Wed, 08 May 2019 13:39:18 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:9-jre11-slim` - linux; arm variant v5

```console
$ docker pull tomcat@sha256:4b448c3c9c024bdd38b744f05c91000028aa0e00ce8a0a2f9266e7eed86df505
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 MB (94459000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1afe4b769d906acde1e22114ccee3390c52557afc37f5b63d1a4f68b0e0f6624`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:26:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:26:37 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 08 May 2019 11:26:38 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 11:26:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 11:26:40 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 11:26:40 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 08 May 2019 11:26:41 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 08 May 2019 11:26:41 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Wed, 08 May 2019 11:33:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 16:57:47 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 08 May 2019 16:57:48 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 16:57:49 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 08 May 2019 16:57:49 GMT
WORKDIR /usr/local/tomcat
# Wed, 08 May 2019 16:57:50 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 16:57:50 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 16:57:51 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 08 May 2019 16:57:52 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 16:58:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 17:04:55 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 08 May 2019 17:04:55 GMT
ENV TOMCAT_MAJOR=9
# Wed, 08 May 2019 17:04:56 GMT
ENV TOMCAT_VERSION=9.0.19
# Wed, 08 May 2019 17:04:56 GMT
ENV TOMCAT_SHA512=d1984947f7ead6da8679447ebd5101ec9a5766210a81d257a5f878e244755fcf192e9c1d2b139556d29b1aed67b9f15b16a754a1bd33f9d271666caa2dd28ed8
# Wed, 08 May 2019 17:04:57 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz
# Wed, 08 May 2019 17:04:57 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc
# Wed, 08 May 2019 17:06:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Wed, 08 May 2019 17:06:59 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 08 May 2019 17:07:00 GMT
EXPOSE 8080
# Wed, 08 May 2019 17:07:00 GMT
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
	-	`sha256:6202081ec9437f9d58f6a17ab3f797fff5bee8164f6ecf096e1095a80e302b35`  
		Last Modified: Wed, 08 May 2019 11:49:23 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00638137c1d83617c6d964134317e85c11255c53b3017e2e2deadecf85757c56`  
		Last Modified: Wed, 08 May 2019 11:49:23 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1227fbf1f3662c72a7b8df3ee46c4e2c5b59755cd433401e605edf2f133a442`  
		Last Modified: Wed, 08 May 2019 11:49:23 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60c27a62565af1e78e294d57c242d9cb4382e9b924a28a6486098e812fb2d174`  
		Last Modified: Wed, 08 May 2019 11:51:21 GMT  
		Size: 60.7 MB (60748903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46350914804ac2a1e282a25fead9b42714957d8204adc13151db35018a662293`  
		Last Modified: Wed, 08 May 2019 17:09:21 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f95eba79d63865f523187acd838ddd347e4dfcb045782443a9680a98f27352f`  
		Last Modified: Wed, 08 May 2019 17:09:21 GMT  
		Size: 414.5 KB (414531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9ef17cea195d7e35822a0fe238bd34a3a0e5eff6f15e9b2836f41d1d602d28`  
		Last Modified: Wed, 08 May 2019 17:10:09 GMT  
		Size: 11.7 MB (11690958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a6e4a66d7ee96028cb8246dabb9901122e2d6f993670ed02990e6ffe06069a5`  
		Last Modified: Wed, 08 May 2019 17:10:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:9-jre11-slim` - linux; arm variant v7

```console
$ docker pull tomcat@sha256:ae6347f9eb8220aa3d559990d3f111bd6177e0d6b994e90491ce459555f4b3f1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.0 MB (94950946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d80642a1c7110628a9c134492e35a7f2317f0ac8015a091aaf5c753b9839509`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:08:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 14:08:39 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 08 May 2019 14:08:40 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 14:08:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 14:08:43 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 14:08:44 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 08 May 2019 14:08:44 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 08 May 2019 14:08:45 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Wed, 08 May 2019 14:12:27 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 17:35:44 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 08 May 2019 17:35:44 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 17:35:46 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 08 May 2019 17:35:47 GMT
WORKDIR /usr/local/tomcat
# Wed, 08 May 2019 17:35:47 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 17:35:47 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 08 May 2019 17:35:48 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 08 May 2019 17:35:49 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 17:35:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 17:42:23 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 08 May 2019 17:42:24 GMT
ENV TOMCAT_MAJOR=9
# Wed, 08 May 2019 17:42:24 GMT
ENV TOMCAT_VERSION=9.0.19
# Wed, 08 May 2019 17:42:25 GMT
ENV TOMCAT_SHA512=d1984947f7ead6da8679447ebd5101ec9a5766210a81d257a5f878e244755fcf192e9c1d2b139556d29b1aed67b9f15b16a754a1bd33f9d271666caa2dd28ed8
# Wed, 08 May 2019 17:42:26 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz
# Wed, 08 May 2019 17:42:26 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc
# Wed, 08 May 2019 17:43:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Wed, 08 May 2019 17:43:59 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 08 May 2019 17:43:59 GMT
EXPOSE 8080
# Wed, 08 May 2019 17:44:00 GMT
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
	-	`sha256:6ea8b476c9632d40bd7ff2d3a0de36e86ab7e5881c8bc03d2c7350c40d35e100`  
		Last Modified: Wed, 08 May 2019 14:30:10 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac31ca1b6e9c765ee62cbc4f79d70e59f2e76c145720c49edbef30262bc46023`  
		Last Modified: Wed, 08 May 2019 14:30:10 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2deb81c0363f41df04b6118ec76c8d3882d36450a5101fffbbb9320df685ac91`  
		Last Modified: Wed, 08 May 2019 14:30:11 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b740f16c9ac3925216afa2c5dac8b83e74aa00bc923d69aab3b37ec6a195c8`  
		Last Modified: Wed, 08 May 2019 14:32:12 GMT  
		Size: 63.2 MB (63169772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b526983cde24c2dac93f0f389fc3e99c305cd201b28fd0406238db601124bfd`  
		Last Modified: Wed, 08 May 2019 17:46:34 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e82160c63380b19b9ed29c35d92145c06a9d111b91d3de814db82ba98cb9f6`  
		Last Modified: Wed, 08 May 2019 17:46:34 GMT  
		Size: 404.5 KB (404511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94060ee8978c70b7c2a4ff8d79f70105bcd1a84e68e4ce1c02c5234904bb9e3f`  
		Last Modified: Wed, 08 May 2019 17:47:20 GMT  
		Size: 11.7 MB (11668812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36935087b06c643aa515c8e346946b4f34e3152164305d44278ab688bd7a9e47`  
		Last Modified: Wed, 08 May 2019 17:47:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:9-jre11-slim` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:4e64d9c3f32f41e11e283ff8f3cdc16b7ba16dbec1d8970ddb433454a45cfe15
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.5 MB (101548087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2566287a1b91897f67781893d17101102964636b165a32c07364cb5697a1f119`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 19:25:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 19:25:16 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 19:25:17 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 19:25:20 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 19:25:22 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 19:25:23 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 05 Apr 2019 09:08:42 GMT
ENV JAVA_VERSION=11.0.3
# Fri, 05 Apr 2019 09:08:43 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Fri, 05 Apr 2019 09:16:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 Apr 2019 10:03:01 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 05 Apr 2019 10:03:01 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 05 Apr 2019 10:03:04 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 05 Apr 2019 10:03:05 GMT
WORKDIR /usr/local/tomcat
# Fri, 05 Apr 2019 10:03:05 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 05 Apr 2019 10:03:06 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 05 Apr 2019 10:03:07 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Fri, 05 Apr 2019 10:03:09 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 05 Apr 2019 10:03:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 Apr 2019 10:14:35 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 05 Apr 2019 10:14:36 GMT
ENV TOMCAT_MAJOR=9
# Thu, 18 Apr 2019 10:42:23 GMT
ENV TOMCAT_VERSION=9.0.19
# Thu, 18 Apr 2019 10:42:24 GMT
ENV TOMCAT_SHA512=d1984947f7ead6da8679447ebd5101ec9a5766210a81d257a5f878e244755fcf192e9c1d2b139556d29b1aed67b9f15b16a754a1bd33f9d271666caa2dd28ed8
# Thu, 18 Apr 2019 10:42:25 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz
# Thu, 18 Apr 2019 10:42:26 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc
# Thu, 18 Apr 2019 10:52:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 18 Apr 2019 10:53:04 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 18 Apr 2019 10:53:05 GMT
EXPOSE 8080
# Thu, 18 Apr 2019 10:53:06 GMT
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
	-	`sha256:c3107a939efc2ffecd268a5637e3705163c31eab4af1855d8a47e1f21b3abc8c`  
		Last Modified: Wed, 27 Mar 2019 19:41:48 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20ad91712d904c5cc444aaf6ea61774d3b75110c9b2a7b0a320f1c79259189cf`  
		Last Modified: Wed, 27 Mar 2019 19:41:48 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebe9595e756b55d5fb73915326e01dacd5ece818fe47b430ec90407e006244b`  
		Last Modified: Wed, 27 Mar 2019 19:41:48 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a1673cd7e242690bdefa8565f00f0eadc7c285b12e02b6624aababe1adfc0d`  
		Last Modified: Fri, 05 Apr 2019 09:22:12 GMT  
		Size: 68.6 MB (68603325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f73fe028130a998a2844a2243927fc8890fee3715435000344b14e3b83d11f8`  
		Last Modified: Fri, 05 Apr 2019 10:23:22 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8376f41febec4c79c19254f59ce7f0dcb2d473423174b070b3cbe49aa239350`  
		Last Modified: Fri, 05 Apr 2019 10:23:22 GMT  
		Size: 412.9 KB (412936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0b268c3d2a189af28515534e35b85f9711a088ef04c584fa8c744f6b9ddf9d`  
		Last Modified: Thu, 18 Apr 2019 10:55:30 GMT  
		Size: 11.7 MB (11749868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62da85e3d764087ded00e16f100805617265b127c4abaed77b48eb010538dc70`  
		Last Modified: Thu, 18 Apr 2019 10:55:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:9-jre11-slim` - linux; 386

```console
$ docker pull tomcat@sha256:5823d0c16bee6fb3802a05b52c6febb8865edd5bc80c7fe02f98662153362868
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117156406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44315776379c8ac0ea9f93dae5b3cad88f9ddbe1cf7c7700c5c5747bad73a91f`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 17:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 17:53:36 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 17:53:36 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 17:53:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 17:53:37 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 17:53:38 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 05 Apr 2019 10:50:00 GMT
ENV JAVA_VERSION=11.0.3
# Fri, 05 Apr 2019 10:50:00 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Fri, 05 Apr 2019 10:52:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 Apr 2019 11:25:14 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 05 Apr 2019 11:25:15 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 05 Apr 2019 11:25:15 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 05 Apr 2019 11:25:16 GMT
WORKDIR /usr/local/tomcat
# Fri, 05 Apr 2019 11:25:16 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 05 Apr 2019 11:25:16 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 05 Apr 2019 11:25:16 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Fri, 05 Apr 2019 11:25:17 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 05 Apr 2019 11:25:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 Apr 2019 11:27:51 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 05 Apr 2019 11:27:51 GMT
ENV TOMCAT_MAJOR=9
# Thu, 18 Apr 2019 12:24:16 GMT
ENV TOMCAT_VERSION=9.0.19
# Thu, 18 Apr 2019 12:24:16 GMT
ENV TOMCAT_SHA512=d1984947f7ead6da8679447ebd5101ec9a5766210a81d257a5f878e244755fcf192e9c1d2b139556d29b1aed67b9f15b16a754a1bd33f9d271666caa2dd28ed8
# Thu, 18 Apr 2019 12:24:16 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz
# Thu, 18 Apr 2019 12:24:16 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc
# Thu, 18 Apr 2019 12:25:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 18 Apr 2019 12:25:32 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 18 Apr 2019 12:25:32 GMT
EXPOSE 8080
# Thu, 18 Apr 2019 12:25:33 GMT
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
	-	`sha256:a84397945a3d0c25bcccd7ab1d3c7320834d353502f3fdaaebd58bf1c9bc428a`  
		Last Modified: Wed, 27 Mar 2019 18:29:13 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84ab93bd8c7dab019374a7c07aa8698315ccb7032b45d41afc48c5288e946d66`  
		Last Modified: Wed, 27 Mar 2019 18:29:13 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6530ef488aac5e7d903ce6a46a482601846e8fea4c6952f2ccde4bf11a733af9`  
		Last Modified: Wed, 27 Mar 2019 18:29:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3444dd8a7d221d98a1f9b614a114ccdafac633f42fabae0b49394b068397a1e`  
		Last Modified: Fri, 05 Apr 2019 10:55:48 GMT  
		Size: 81.5 MB (81489876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812c8a2618e41a93df358a9dbea591902fe317816352dcc086a86cd6c9e8371d`  
		Last Modified: Fri, 05 Apr 2019 12:15:42 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf23e81dac53065479e5f2cb2486fcde13381b5bf9bbefdec541e9c4e280e0a9`  
		Last Modified: Fri, 05 Apr 2019 12:15:42 GMT  
		Size: 439.2 KB (439199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1adf9a327aae6484c3aec1fe8fddfa494b11bf99e897c4326cf5b42aaf26247d`  
		Last Modified: Thu, 18 Apr 2019 12:26:44 GMT  
		Size: 11.6 MB (11637160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:876bcbb9d4e71651f878bf9c58f17282afb8b2285827922ced318ed7ea9fc5f4`  
		Last Modified: Thu, 18 Apr 2019 12:26:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:9-jre11-slim` - linux; ppc64le

```console
$ docker pull tomcat@sha256:7ad84dcd9821e286e9a6875eace8378c2a825dc5cfac8833a75bc0c6e802f771
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.6 MB (100628487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b9abb0d722377a8f0d7f1edacef90fe39e704fd68008eaf7f6b26872037f1b0`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:38:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:38:09 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 12:38:13 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:38:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:38:24 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:38:27 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 05 Apr 2019 08:40:14 GMT
ENV JAVA_VERSION=11.0.3
# Fri, 05 Apr 2019 08:40:16 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Fri, 05 Apr 2019 08:47:01 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 Apr 2019 09:22:48 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 05 Apr 2019 09:22:50 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 05 Apr 2019 09:22:55 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 05 Apr 2019 09:22:57 GMT
WORKDIR /usr/local/tomcat
# Fri, 05 Apr 2019 09:22:59 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 05 Apr 2019 09:23:02 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 05 Apr 2019 09:23:04 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Fri, 05 Apr 2019 09:23:09 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 05 Apr 2019 09:23:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 Apr 2019 09:33:39 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 05 Apr 2019 09:33:40 GMT
ENV TOMCAT_MAJOR=9
# Thu, 18 Apr 2019 09:39:39 GMT
ENV TOMCAT_VERSION=9.0.19
# Thu, 18 Apr 2019 09:39:42 GMT
ENV TOMCAT_SHA512=d1984947f7ead6da8679447ebd5101ec9a5766210a81d257a5f878e244755fcf192e9c1d2b139556d29b1aed67b9f15b16a754a1bd33f9d271666caa2dd28ed8
# Thu, 18 Apr 2019 09:39:45 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz
# Thu, 18 Apr 2019 09:39:49 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc
# Thu, 18 Apr 2019 09:46:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 18 Apr 2019 09:46:43 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 18 Apr 2019 09:46:47 GMT
EXPOSE 8080
# Thu, 18 Apr 2019 09:46:51 GMT
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
	-	`sha256:c42bed384a1bc49851ddb4977e776db4695170f1df4be311e3b913425147eee0`  
		Last Modified: Wed, 27 Mar 2019 12:54:56 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3234b120f694dab250cf6abc76557729027d06c76b1185994f7db77f429cf167`  
		Last Modified: Wed, 27 Mar 2019 12:54:56 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03655f1b29e38c21f639109a34e5ffccea1be73dd65b73ac84c7be22561c6ee`  
		Last Modified: Wed, 27 Mar 2019 12:54:56 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c46d93e9ef5ba95d64690f0825cf3f5590e27934421ed4644665ecf585e3739`  
		Last Modified: Fri, 05 Apr 2019 08:52:35 GMT  
		Size: 65.2 MB (65240831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:545828f413fec5a15a3da1580037a8c161a599565cf2c41ea538a0453b520367`  
		Last Modified: Fri, 05 Apr 2019 09:42:15 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb3bfc772ea3cc9ad9d985188db57cd055ea53ad7946ea2489716cac01c9dbcb`  
		Last Modified: Fri, 05 Apr 2019 09:42:15 GMT  
		Size: 422.6 KB (422598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a0becde75f563277e307f21522d135d405d85d337c897e1fe2f673f3357e720`  
		Last Modified: Thu, 18 Apr 2019 09:49:36 GMT  
		Size: 11.8 MB (11762922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9354744ea8214415b7c891186a5a3dbf3ea10f50201c3a187c55cb08835a7f25`  
		Last Modified: Thu, 18 Apr 2019 09:49:34 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:9-jre11-slim` - linux; s390x

```console
$ docker pull tomcat@sha256:68821bfa8b7b4d58902860f66e190624ef565b52cd06816c7585dd6c4ecc5cbd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.9 MB (99901340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:193ad1be07581c35db2655755be9394759613729b42af9a65540c561f7ceb150`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:45 GMT
ADD file:bbc08c16057153af2910791402d3a29eb5da11e030d2fc6778644c444142d2ab in / 
# Wed, 27 Mar 2019 11:43:46 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:24:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:24:05 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 15:24:05 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 15:24:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 15:24:07 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 15:24:07 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 05 Apr 2019 11:47:44 GMT
ENV JAVA_VERSION=11.0.3
# Fri, 05 Apr 2019 11:47:45 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Fri, 05 Apr 2019 11:50:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 Apr 2019 12:29:54 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 05 Apr 2019 12:29:55 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 05 Apr 2019 12:29:56 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 05 Apr 2019 12:29:56 GMT
WORKDIR /usr/local/tomcat
# Fri, 05 Apr 2019 12:29:57 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 05 Apr 2019 12:29:57 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 05 Apr 2019 12:29:57 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Fri, 05 Apr 2019 12:29:59 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 05 Apr 2019 12:30:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 Apr 2019 12:33:16 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 05 Apr 2019 12:33:17 GMT
ENV TOMCAT_MAJOR=9
# Thu, 18 Apr 2019 16:08:53 GMT
ENV TOMCAT_VERSION=9.0.19
# Thu, 18 Apr 2019 16:08:53 GMT
ENV TOMCAT_SHA512=d1984947f7ead6da8679447ebd5101ec9a5766210a81d257a5f878e244755fcf192e9c1d2b139556d29b1aed67b9f15b16a754a1bd33f9d271666caa2dd28ed8
# Thu, 18 Apr 2019 16:08:54 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz
# Thu, 18 Apr 2019 16:08:54 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.19/bin/apache-tomcat-9.0.19.tar.gz.asc
# Thu, 18 Apr 2019 16:11:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 18 Apr 2019 16:11:10 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 18 Apr 2019 16:11:11 GMT
EXPOSE 8080
# Thu, 18 Apr 2019 16:11:11 GMT
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
	-	`sha256:77ede3dec1c45a344c8837e8c49e9830fb57cd1ab775fc552499b7c5163d6db4`  
		Last Modified: Wed, 27 Mar 2019 15:30:36 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe09440de22b01805591eadf2f1240c95731db424b6699d38f21c72edd8f6204`  
		Last Modified: Wed, 27 Mar 2019 15:30:36 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cca42a3a5352c8608f15abe2b11017cee5385d019762535efd3b95767b7419`  
		Last Modified: Wed, 27 Mar 2019 15:30:36 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312ef422f5c26d80581e00be8531c5f68189fdb71d998152e25972db0bc0b32d`  
		Last Modified: Fri, 05 Apr 2019 11:54:23 GMT  
		Size: 64.7 MB (64746224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf73675205ac0572c3c3ef96a69fe311bc7cc01b16bf74d2c554d2a8a1778f8`  
		Last Modified: Fri, 05 Apr 2019 12:36:12 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68fc58f784748a652e5a5826b5a63470ee4a4ec44478f3dbab3f417f64f2bfa6`  
		Last Modified: Fri, 05 Apr 2019 12:36:12 GMT  
		Size: 432.6 KB (432554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa83fb6f6a435f905e836400993eb2c9f386f98d7ea9edeb9192ab6b6752722c`  
		Last Modified: Thu, 18 Apr 2019 16:13:07 GMT  
		Size: 11.9 MB (11910627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1bbbcf17c7256d19ba4539a4d2c6c2e6af86e7141ff207d38440bc9e473a45d`  
		Last Modified: Thu, 18 Apr 2019 16:13:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
