## `tomcat:jre9-slim`

```console
$ docker pull tomcat@sha256:8724a0a3b591c33109d0fb511a7e9be4a80e11d61f95a9a6ef055b9d0c59c2e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `tomcat:jre9-slim` - linux; amd64

```console
$ docker pull tomcat@sha256:2e28938096feef646ebc36e584b53e18c2f6712c96428fb4a3bb66ef2ff6812a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.7 MB (116707399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d2465fe06f5173a95a0034109ec353e45d7434b2a834b8de04ed4c473813391`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Sat, 28 Apr 2018 07:02:48 GMT
ADD file:4ac5b74448a361591479d0374d36fef5832baedf42ca81cbd6fbd8ac037ad414 in / 
# Sat, 28 Apr 2018 07:02:49 GMT
CMD ["bash"]
# Tue, 01 May 2018 09:40:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 09:40:17 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 09:40:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 01 May 2018 11:00:51 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 01 May 2018 11:00:51 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 01 May 2018 11:00:51 GMT
ENV JAVA_VERSION=9.0.4+12
# Tue, 01 May 2018 11:00:51 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Tue, 01 May 2018 11:01:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 05 May 2018 09:01:52 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 05 May 2018 09:01:52 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 05 May 2018 09:01:54 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 05 May 2018 09:01:54 GMT
WORKDIR /usr/local/tomcat
# Sat, 05 May 2018 09:01:54 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 05 May 2018 09:01:54 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 05 May 2018 09:01:54 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Sat, 05 May 2018 09:01:55 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:02:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:02:01 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 05 May 2018 09:02:01 GMT
ENV TOMCAT_MAJOR=8
# Wed, 09 May 2018 18:10:02 GMT
ENV TOMCAT_VERSION=8.5.31
# Wed, 09 May 2018 18:10:03 GMT
ENV TOMCAT_SHA512=a961eedc4b0c0729f1fb96dafb75eb48e000502233b849f47c84a6355873bc96d131b112400587e96391262e0659df9b991b4e66a78fda74168f939c4ab5af88
# Wed, 09 May 2018 18:10:03 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz
# Wed, 09 May 2018 18:10:03 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc
# Wed, 09 May 2018 18:11:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Wed, 09 May 2018 18:11:23 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 09 May 2018 18:11:24 GMT
EXPOSE 8080/tcp
# Wed, 09 May 2018 18:11:24 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:c2ad77de49cedb25345a40be4f3ccc592075053d2d1b4cafcc67a011c070df60`  
		Last Modified: Sat, 28 Apr 2018 09:01:30 GMT  
		Size: 26.0 MB (26007039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6485a2cca95b289b549728c0c66bb1b463cdb7a204d224291f28c111a64a371`  
		Last Modified: Tue, 01 May 2018 14:02:46 GMT  
		Size: 460.5 KB (460510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4ea4e6ab41ff82240aed63937b358af3ee0d7749491ea788298b5cd38027cd`  
		Last Modified: Tue, 01 May 2018 14:02:47 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:649f9534d72bc7ab44e527f83b63f51976a27696dc7ccbef9db571a111943a92`  
		Last Modified: Tue, 01 May 2018 16:08:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa9e11b878800e09895e4e95db227393b844eef01c3735755eb15368c5a1f83d`  
		Last Modified: Tue, 01 May 2018 16:08:22 GMT  
		Size: 76.5 MB (76529225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be955b08b047bbbdae775839635d5866a5567a75f680f4442ede8ec0373a9e45`  
		Last Modified: Sat, 05 May 2018 09:18:12 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca52e8c7eb6e907c9159823f1ea718ae3b4cf0628779132f636d7e59006166b1`  
		Last Modified: Sat, 05 May 2018 09:18:12 GMT  
		Size: 409.6 KB (409620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73669f0e4dba74cd20a1e8dab77626d55bbece87cb28475c1d885c681dc6aa52`  
		Last Modified: Wed, 09 May 2018 18:25:22 GMT  
		Size: 13.3 MB (13300334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6e33b03c6dd42a0bdbd9d69353a6f2f1c3e62a45d2b27005952e5bbf4fa9ba`  
		Last Modified: Wed, 09 May 2018 18:25:20 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:jre9-slim` - linux; arm variant v5

```console
$ docker pull tomcat@sha256:d9112d58424b88fe4f99be5ad674abec69e288e75182a2f40a6580535a6476ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.9 MB (99851804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:075390ca8e7225e9f8a5674f7c5b2af8ddc5e022a85bfa6318ed946d982879f9`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Sat, 28 Apr 2018 08:51:57 GMT
ADD file:4bb0a1afcce11262886b693c92f368728f7ca179f516dcfd86a6a74d9941a2bd in / 
# Sat, 28 Apr 2018 08:51:57 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:33:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:33:18 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 12:33:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 12:43:12 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 12:43:13 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 28 Apr 2018 12:43:13 GMT
ENV JAVA_VERSION=9.0.4+12
# Sat, 28 Apr 2018 12:43:13 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Sat, 28 Apr 2018 12:43:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 28 Apr 2018 15:45:10 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 28 Apr 2018 15:45:10 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 15:45:11 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 28 Apr 2018 15:45:11 GMT
WORKDIR /usr/local/tomcat
# Sat, 28 Apr 2018 15:45:11 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 28 Apr 2018 15:45:12 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 28 Apr 2018 15:45:12 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Sat, 28 Apr 2018 15:45:13 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 15:45:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:45:20 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 28 Apr 2018 15:45:21 GMT
ENV TOMCAT_MAJOR=8
# Thu, 10 May 2018 08:56:30 GMT
ENV TOMCAT_VERSION=8.5.31
# Thu, 10 May 2018 08:56:31 GMT
ENV TOMCAT_SHA512=a961eedc4b0c0729f1fb96dafb75eb48e000502233b849f47c84a6355873bc96d131b112400587e96391262e0659df9b991b4e66a78fda74168f939c4ab5af88
# Thu, 10 May 2018 08:56:31 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz
# Thu, 10 May 2018 08:56:31 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc
# Thu, 10 May 2018 08:57:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 10 May 2018 08:58:08 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 10 May 2018 08:58:08 GMT
EXPOSE 8080/tcp
# Thu, 10 May 2018 08:58:08 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:d8a6a213c8dfd9e72ad11408970d74e2be7ffdfbac3683ed1a40c28534145e4a`  
		Last Modified: Sat, 28 Apr 2018 09:00:19 GMT  
		Size: 24.0 MB (23990346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbe23918d5c3df5c5737b91e6e16035342f47e61426f3dd0265882e998ef16a4`  
		Last Modified: Sat, 28 Apr 2018 13:02:15 GMT  
		Size: 454.0 KB (453984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3278875f078d656ef3d6c8ce9702f8344f1343454d75403da10d4e583f90931`  
		Last Modified: Sat, 28 Apr 2018 13:02:15 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9dbfd25a8aacdb785bb88625b5386d6a6ac1a5c949ece261c79ebd30009759`  
		Last Modified: Sat, 28 Apr 2018 13:17:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb70f6b67971f358dd5f3de5545d1f2389fefda08e11a7db6badaf09bf1c858f`  
		Last Modified: Sat, 28 Apr 2018 13:17:44 GMT  
		Size: 61.9 MB (61883727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e05ed73606f4ce09c290cb5a32329a6ce69ac4522da9f6a7aed3222a307e79`  
		Last Modified: Sat, 28 Apr 2018 16:08:43 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a57d5a9d0f65c2646c3643f4ad1d6d991860aa09996ab5017fa883a47ed65ed`  
		Last Modified: Sat, 28 Apr 2018 16:08:44 GMT  
		Size: 393.2 KB (393198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11fca798000b424a61f99157dc6576284b9365a77816f6e5c18a23f43dcae681`  
		Last Modified: Thu, 10 May 2018 09:16:19 GMT  
		Size: 13.1 MB (13129878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb62804c6d6a27dd78a3dac00b16806d1f1bd44d65d164feb4644937cf967abc`  
		Last Modified: Thu, 10 May 2018 09:16:16 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:jre9-slim` - linux; arm variant v7

```console
$ docker pull tomcat@sha256:bb2e90adf2af07f5360fdc9422cd86274c037001aadc556436001ff4782fbb56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.5 MB (99544464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75be0342252907c99c616d2db8e594f33318932ad62eb92b54a522cf31284caa`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Sat, 28 Apr 2018 12:02:41 GMT
ADD file:51a6f559367fc724be19aeee6bd277b378069389bc848507cfa991829488f7a6 in / 
# Sat, 28 Apr 2018 12:02:41 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:38:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:38:04 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 12:38:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 12:47:33 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 12:47:33 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 28 Apr 2018 12:47:34 GMT
ENV JAVA_VERSION=9.0.4+12
# Sat, 28 Apr 2018 12:47:35 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Sat, 28 Apr 2018 12:47:57 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 28 Apr 2018 17:34:46 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 28 Apr 2018 17:34:46 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 17:34:47 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 28 Apr 2018 17:34:47 GMT
WORKDIR /usr/local/tomcat
# Sat, 28 Apr 2018 17:34:48 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 28 Apr 2018 17:34:48 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 28 Apr 2018 17:34:48 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Sat, 28 Apr 2018 17:34:49 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 17:34:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:34:55 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 28 Apr 2018 17:34:55 GMT
ENV TOMCAT_MAJOR=8
# Thu, 10 May 2018 12:25:37 GMT
ENV TOMCAT_VERSION=8.5.31
# Thu, 10 May 2018 12:25:38 GMT
ENV TOMCAT_SHA512=a961eedc4b0c0729f1fb96dafb75eb48e000502233b849f47c84a6355873bc96d131b112400587e96391262e0659df9b991b4e66a78fda74168f939c4ab5af88
# Thu, 10 May 2018 12:25:38 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz
# Thu, 10 May 2018 12:25:47 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc
# Thu, 10 May 2018 12:27:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 10 May 2018 12:27:12 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 10 May 2018 12:27:12 GMT
EXPOSE 8080/tcp
# Thu, 10 May 2018 12:27:12 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:e896ce6a07096665b9b10eea8b8d7a9f0f6e26c3d88bd463db48304823b92890`  
		Last Modified: Sat, 28 Apr 2018 12:14:08 GMT  
		Size: 22.0 MB (21967210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:925e7bf3333e528dfd915abfbcbc560f820ce29a375d884865566688160e4eed`  
		Last Modified: Sat, 28 Apr 2018 13:05:56 GMT  
		Size: 436.6 KB (436647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc2cc177a3ab014156f5c72f5b4f97a9fb66c88c1f2d8c79cdf90ed2dab6a6c`  
		Last Modified: Sat, 28 Apr 2018 13:05:56 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ccb997b52fc92a7c297f6b56be1f7c3f0a231772051e22da26267550fad9e97`  
		Last Modified: Sat, 28 Apr 2018 13:16:53 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dae94056a18db48ac462f7bf8e20486629d5dea5be491cb2f38f17c3b88ff73`  
		Last Modified: Sat, 28 Apr 2018 13:17:11 GMT  
		Size: 63.8 MB (63802800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c94eed0108e4eb0e3b52ab8b6b7d15cff75935f4102b4c292d45b7ce161c334`  
		Last Modified: Sat, 28 Apr 2018 17:52:14 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e628fb8f4a867c85d30c4ba16f2c51c90244be0cf56cdf55595fadc21ce0c0ed`  
		Last Modified: Sat, 28 Apr 2018 17:52:14 GMT  
		Size: 383.0 KB (382954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca399819284668c91917683728dfafb8eefc5468135af07d7b3ae3ecd0fd6e64`  
		Last Modified: Thu, 10 May 2018 12:45:50 GMT  
		Size: 13.0 MB (12954181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3266ced342ca5de4e3390af36630c0595aa91471db99b252839fe0147a501782`  
		Last Modified: Thu, 10 May 2018 12:45:47 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:jre9-slim` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:b18bc12fedf15ac93f93c966e0806af6cc17112f98c448c109e0634eaf746969
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.8 MB (102750078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5257bcc70e78968afd265f83f7a47cdf94be59554870264693082c648e104a4f`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 30 Apr 2018 23:28:38 GMT
ADD file:0c141fd79d3e8c492efc85f35f6f2273b082454831ae4e4e58f2bb99395ac72b in / 
# Mon, 30 Apr 2018 23:28:47 GMT
CMD ["bash"]
# Tue, 01 May 2018 10:26:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 10:26:43 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 10:26:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 01 May 2018 10:56:53 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 01 May 2018 10:56:53 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 01 May 2018 10:56:54 GMT
ENV JAVA_VERSION=9.0.4+12
# Tue, 01 May 2018 10:56:55 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Tue, 01 May 2018 10:58:04 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 01 May 2018 22:50:34 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 01 May 2018 22:50:39 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 May 2018 22:50:42 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 01 May 2018 22:50:44 GMT
WORKDIR /usr/local/tomcat
# Tue, 01 May 2018 22:50:46 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 01 May 2018 22:50:47 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 01 May 2018 22:50:49 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Tue, 01 May 2018 22:50:53 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 01 May 2018 22:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 22:51:06 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 01 May 2018 22:51:07 GMT
ENV TOMCAT_MAJOR=8
# Thu, 10 May 2018 10:25:26 GMT
ENV TOMCAT_VERSION=8.5.31
# Thu, 10 May 2018 10:25:27 GMT
ENV TOMCAT_SHA512=a961eedc4b0c0729f1fb96dafb75eb48e000502233b849f47c84a6355873bc96d131b112400587e96391262e0659df9b991b4e66a78fda74168f939c4ab5af88
# Thu, 10 May 2018 10:25:29 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz
# Thu, 10 May 2018 10:25:30 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc
# Thu, 10 May 2018 10:39:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 10 May 2018 10:40:05 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 10 May 2018 10:40:06 GMT
EXPOSE 8080/tcp
# Thu, 10 May 2018 10:40:07 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:8a965c5efd07de5feb761f2ff7f7c9319fbd736849e5c372d102a79db79c4f2f`  
		Last Modified: Mon, 30 Apr 2018 23:48:28 GMT  
		Size: 23.4 MB (23364515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca2f61f6ee678d7988be608168e9c185ba5c895ae0c465aae1111cc9b9f381e`  
		Last Modified: Tue, 01 May 2018 11:43:20 GMT  
		Size: 445.3 KB (445326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46c81d59c641d2ddc2a09929f5b5d1a2b5181d4c465d5d47ac607bb97deb6f8a`  
		Last Modified: Tue, 01 May 2018 11:43:20 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3359846d10d5ef13605aa0470f33e1cb5fd5e8e6977c33a370b2abacad0613f`  
		Last Modified: Tue, 01 May 2018 11:51:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9046913955e963e5852795f1ed4cf7cb064ea7a2eb2e62071126e8b3204dc7b`  
		Last Modified: Tue, 01 May 2018 11:52:10 GMT  
		Size: 65.4 MB (65364962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6a80b3193635c6288c606e2cc91b3676c494399efeaa210d1a114207fba58b`  
		Last Modified: Tue, 01 May 2018 23:47:35 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03ba0bb4fab42ada4f88a38eec6ffce4f7f3dc0812f26f779c17149841ca9c69`  
		Last Modified: Tue, 01 May 2018 23:47:35 GMT  
		Size: 394.4 KB (394447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d0c4f837bbdc9b8da4cfeef0db558d1f703c61cfb5dff07655cf879238e2531`  
		Last Modified: Thu, 10 May 2018 11:48:52 GMT  
		Size: 13.2 MB (13180189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40006359aadd66878d91e197b34390d44a31c4353c4e12410cc4ffea43d4469e`  
		Last Modified: Thu, 10 May 2018 11:48:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:jre9-slim` - linux; 386

```console
$ docker pull tomcat@sha256:2daefad9ee14c8998c51da43c0c2f0839ef938bb529e91867fc4ec74baa78cac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.5 MB (122463386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64450a81c37e4885a3ad597ce6aef1051c85eb16e034bce55361bef9b4ec62c8`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Sat, 28 Apr 2018 10:40:59 GMT
ADD file:9e204bd06575325653d9ca924ded453fa1a0f9eb3fe6d0fb8390160b39768da9 in / 
# Sat, 28 Apr 2018 10:40:59 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 14:41:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 14:41:58 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 14:41:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 14:50:01 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 14:50:01 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 28 Apr 2018 14:50:01 GMT
ENV JAVA_VERSION=9.0.4+12
# Sat, 28 Apr 2018 14:50:01 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Sat, 28 Apr 2018 14:50:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 28 Apr 2018 22:54:36 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 28 Apr 2018 22:54:37 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 22:54:38 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 28 Apr 2018 22:54:38 GMT
WORKDIR /usr/local/tomcat
# Sat, 28 Apr 2018 22:54:38 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 28 Apr 2018 22:54:38 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 28 Apr 2018 22:54:39 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Sat, 28 Apr 2018 22:54:39 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 22:54:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 22:54:49 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 28 Apr 2018 22:54:49 GMT
ENV TOMCAT_MAJOR=8
# Thu, 10 May 2018 12:32:54 GMT
ENV TOMCAT_VERSION=8.5.31
# Thu, 10 May 2018 12:32:54 GMT
ENV TOMCAT_SHA512=a961eedc4b0c0729f1fb96dafb75eb48e000502233b849f47c84a6355873bc96d131b112400587e96391262e0659df9b991b4e66a78fda74168f939c4ab5af88
# Thu, 10 May 2018 12:32:54 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz
# Thu, 10 May 2018 12:32:54 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc
# Thu, 10 May 2018 12:34:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 10 May 2018 12:34:27 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 10 May 2018 12:34:27 GMT
EXPOSE 8080/tcp
# Thu, 10 May 2018 12:34:28 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:b0b251c3fa17d0cdbdd0cb21b207843e9e733533c09d41956b9606a7c6aaf613`  
		Last Modified: Sat, 28 Apr 2018 10:47:45 GMT  
		Size: 26.7 MB (26687092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dba5883d54ea2e960ec74337613b22d342a4cf7dc0a8004731c69f17ca460c2`  
		Last Modified: Sat, 28 Apr 2018 15:06:11 GMT  
		Size: 469.1 KB (469104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0202ed9a08fb9954731cc7fe5f246e4b09b730c006ef6ba471b6671db09dbe`  
		Last Modified: Sat, 28 Apr 2018 15:06:11 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21011dd0714ba1832917938749b79fe5fa3314ae25a124bdd3b538211696d4d2`  
		Last Modified: Sat, 28 Apr 2018 15:13:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3053bbc0ef53d7b7746489e5a586bab529193a3454a2374b880ca3c54d822641`  
		Last Modified: Sat, 28 Apr 2018 15:14:15 GMT  
		Size: 81.5 MB (81481192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af1e512a2dfcf77780c9209022a1c86520dfc75460b7953e91cbc1f1f9a04c5`  
		Last Modified: Sat, 28 Apr 2018 23:09:06 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca232f3ac4d04feb90f8b4f9326f3078db26f650c8772c7931dbada1924ff71`  
		Last Modified: Sat, 28 Apr 2018 23:09:06 GMT  
		Size: 419.2 KB (419242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6be75c2c7c32950733c14ca412530c5d34d74a58679bc90f760a18c756c0d2`  
		Last Modified: Thu, 10 May 2018 12:49:07 GMT  
		Size: 13.4 MB (13406083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c1ed814238eda6b4429917fd015f79f091be74f33d0dadc96c78a0b0fc2914`  
		Last Modified: Thu, 10 May 2018 12:49:01 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
