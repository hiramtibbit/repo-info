## `tomcat:8-jre9-slim`

```console
$ docker pull tomcat@sha256:21aed59cc62b56e0edece072143158346a5e3a8541c09b368b2d6e6f30787f2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5

### `tomcat:8-jre9-slim` - linux; amd64

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

### `tomcat:8-jre9-slim` - linux; arm variant v5

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
