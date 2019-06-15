## `tomcat:9-jdk11-openjdk-slim`

```console
$ docker pull tomcat@sha256:189cd885dd5ec4bee9c553e25fb9c1f8f40e4e918e2d187d0619d393c1a7e65a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `tomcat:9-jdk11-openjdk-slim` - linux; amd64

```console
$ docker pull tomcat@sha256:e7467d73965f5274037006b939b1a9d357470128c8fa3293370f611503571c12
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.4 MB (232421911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29c4cb4d1b5ec752be674d76dd2f54ba852f22952a87b093f33f6082b4f7f6c6`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 07:18:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:18:53 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 07:18:53 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Tue, 11 Jun 2019 07:18:53 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 07:18:55 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 11 Jun 2019 07:18:55 GMT
ENV JAVA_VERSION=11.0.3
# Tue, 11 Jun 2019 07:18:55 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Tue, 11 Jun 2019 07:18:56 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Tue, 11 Jun 2019 07:19:29 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Tue, 11 Jun 2019 07:19:30 GMT
CMD ["jshell"]
# Tue, 11 Jun 2019 16:53:44 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 11 Jun 2019 16:53:45 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 16:53:45 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 11 Jun 2019 16:53:46 GMT
WORKDIR /usr/local/tomcat
# Tue, 11 Jun 2019 16:53:46 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 11 Jun 2019 16:53:46 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 14 Jun 2019 22:38:44 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 14 Jun 2019 22:38:44 GMT
ENV TOMCAT_MAJOR=9
# Fri, 14 Jun 2019 22:38:45 GMT
ENV TOMCAT_VERSION=9.0.21
# Fri, 14 Jun 2019 22:38:45 GMT
ENV TOMCAT_SHA512=a8788ba8187f940b55d3db6cb0108943b8b48aecc2d9a3307409d3cbf72fac9b19fa434baa97aa0d4ac552f7c13967932b8a36dbae5d582bc14ed13bb058ea9b
# Fri, 14 Jun 2019 22:38:45 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.21/bin/apache-tomcat-9.0.21.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.21/bin/apache-tomcat-9.0.21.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.21/bin/apache-tomcat-9.0.21.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.21/bin/apache-tomcat-9.0.21.tar.gz
# Fri, 14 Jun 2019 22:38:45 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.21/bin/apache-tomcat-9.0.21.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.21/bin/apache-tomcat-9.0.21.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.21/bin/apache-tomcat-9.0.21.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.21/bin/apache-tomcat-9.0.21.tar.gz.asc
# Fri, 14 Jun 2019 22:39:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(which apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Fri, 14 Jun 2019 22:39:37 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 14 Jun 2019 22:39:37 GMT
EXPOSE 8080
# Fri, 14 Jun 2019 22:39:38 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73f08ce352c86de44048828a8c20f22011f46efd4d03cab7269354f97b131688`  
		Last Modified: Tue, 11 Jun 2019 07:23:33 GMT  
		Size: 2.9 MB (2905854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea63d497adb0eff8140381f087204abe75558ecb7adc0a7fef0777daeef9fe2`  
		Last Modified: Tue, 11 Jun 2019 07:23:31 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d35e7964a7711a4202c62b9951020562d1093f5a014f8e9b7a109ca321f283`  
		Last Modified: Tue, 11 Jun 2019 07:24:02 GMT  
		Size: 195.2 MB (195214235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4fc0b78f4cc7e140b2ab164ef353712fea8bb700507fdf65c514aede9b534e`  
		Last Modified: Tue, 11 Jun 2019 17:02:07 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2d64e8fa0146bcbae8b72d4c9bffc9d272214a74b79432b1ae56bae25a49fbd`  
		Last Modified: Fri, 14 Jun 2019 23:06:07 GMT  
		Size: 11.8 MB (11812020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd039cadaaa48282cd9ea76d9f50dd80eea7afb105436bcc852feb76aa55d6e`  
		Last Modified: Fri, 14 Jun 2019 23:06:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:9-jdk11-openjdk-slim` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:28cf58e4222b8813da5f08fe9df6757ae9f21e0fdc72cebef7bc859d6977de75
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.5 MB (227516395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5d49f798594beb2761223578a3c72900b9e63a6035b784990b65bdc11a9a998`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:29:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:29:25 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 01:29:25 GMT
ENV JAVA_HOME=/usr/local/openjdk-11
# Tue, 11 Jun 2019 01:29:26 GMT
ENV PATH=/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 01:29:27 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 11 Jun 2019 01:29:28 GMT
ENV JAVA_VERSION=11.0.3
# Tue, 11 Jun 2019 01:29:28 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-
# Tue, 11 Jun 2019 01:29:29 GMT
ENV JAVA_URL_VERSION=11.0.3_7
# Tue, 11 Jun 2019 01:30:06 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac --version; 	java --version
# Tue, 11 Jun 2019 01:30:09 GMT
CMD ["jshell"]
# Thu, 13 Jun 2019 02:29:45 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 13 Jun 2019 02:29:46 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Jun 2019 02:29:49 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 13 Jun 2019 02:29:51 GMT
WORKDIR /usr/local/tomcat
# Thu, 13 Jun 2019 02:29:51 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 13 Jun 2019 02:29:51 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 14 Jun 2019 22:48:07 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 14 Jun 2019 22:48:08 GMT
ENV TOMCAT_MAJOR=9
# Fri, 14 Jun 2019 22:48:08 GMT
ENV TOMCAT_VERSION=9.0.21
# Fri, 14 Jun 2019 22:48:09 GMT
ENV TOMCAT_SHA512=a8788ba8187f940b55d3db6cb0108943b8b48aecc2d9a3307409d3cbf72fac9b19fa434baa97aa0d4ac552f7c13967932b8a36dbae5d582bc14ed13bb058ea9b
# Fri, 14 Jun 2019 22:48:10 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.21/bin/apache-tomcat-9.0.21.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.21/bin/apache-tomcat-9.0.21.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.21/bin/apache-tomcat-9.0.21.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.21/bin/apache-tomcat-9.0.21.tar.gz
# Fri, 14 Jun 2019 22:48:10 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.21/bin/apache-tomcat-9.0.21.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.21/bin/apache-tomcat-9.0.21.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.21/bin/apache-tomcat-9.0.21.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.21/bin/apache-tomcat-9.0.21.tar.gz.asc
# Fri, 14 Jun 2019 22:49:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(which apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Fri, 14 Jun 2019 22:49:06 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 14 Jun 2019 22:49:06 GMT
EXPOSE 8080
# Fri, 14 Jun 2019 22:49:07 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f6a6dbd4815856015331dc5296cc767e37d9e67e9bec2096b520615131b73c`  
		Last Modified: Tue, 11 Jun 2019 01:31:18 GMT  
		Size: 2.6 MB (2575428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd96867e170e2fac482b913aabf2bb6d45672816869099a47f0b4acf130423bd`  
		Last Modified: Tue, 11 Jun 2019 01:31:17 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df736562079ae6e07f97599288fc6e65f7cb6b5d6bc0b7be677d15dbd9e2605`  
		Last Modified: Tue, 11 Jun 2019 01:32:03 GMT  
		Size: 192.8 MB (192802052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00c48c51ac39bbcfbdd4509d570b8a277b809b5bc2c136d793714262fd3f8b1`  
		Last Modified: Thu, 13 Jun 2019 02:34:21 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8efa42bda998c15f9d2872676299aff4edceb59958a507742dc315bd28400bb`  
		Last Modified: Fri, 14 Jun 2019 22:55:34 GMT  
		Size: 11.8 MB (11804591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d28ce62b926a180668116d720c96e5bf81bc0dba0e2b9007954eb21f415d99`  
		Last Modified: Fri, 14 Jun 2019 22:55:32 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
