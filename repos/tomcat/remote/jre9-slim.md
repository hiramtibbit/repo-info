## `tomcat:jre9-slim`

```console
$ docker pull tomcat@sha256:04072aef7953c2b26b62413781ac9ad91e82c9b295deaef5d7947f2d384c20b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `tomcat:jre9-slim` - linux; amd64

```console
$ docker pull tomcat@sha256:3dd50b4d952441ee3469e87a40c6742e24b39d67cd8376cc5f78604491538f9f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.2 MB (120219937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:066ecdb415a85e8f8dfbc35e5f0dde8caa2f686ff8b69e27d89761ba43de9ac5`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 13 Mar 2018 22:21:43 GMT
ADD file:abc56f5a5510633481f0de7469b312f4f4cdcfbbe92bf1d7bddb5d716a2a5820 in / 
# Tue, 13 Mar 2018 22:21:44 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 09:56:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:30:14 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:30:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:30:16 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:30:16 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 19 Mar 2018 20:53:56 GMT
ENV JAVA_VERSION=9.0.4+12
# Wed, 04 Apr 2018 19:36:38 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Wed, 04 Apr 2018 19:37:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 05 Apr 2018 09:49:14 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 05 Apr 2018 09:49:14 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Apr 2018 09:49:15 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 05 Apr 2018 09:49:16 GMT
WORKDIR /usr/local/tomcat
# Thu, 05 Apr 2018 09:49:16 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 05 Apr 2018 09:49:16 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 05 Apr 2018 09:49:16 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Thu, 05 Apr 2018 09:49:17 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 05 Apr 2018 09:49:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 05 Apr 2018 09:49:29 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 05 Apr 2018 09:49:29 GMT
ENV TOMCAT_MAJOR=8
# Wed, 11 Apr 2018 21:07:03 GMT
ENV TOMCAT_VERSION=8.5.30
# Wed, 11 Apr 2018 21:07:03 GMT
ENV TOMCAT_SHA512=f7e84fed604dc183dc1bdad07f3b025547d95d024ccfb05da68f5f45256f3082af6ba28c7f0148ae4ee43637248a0074c92bb12198ab58331d0c4f04906b86b6
# Wed, 11 Apr 2018 21:07:03 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.30/bin/apache-tomcat-8.5.30.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.30/bin/apache-tomcat-8.5.30.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.30/bin/apache-tomcat-8.5.30.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.30/bin/apache-tomcat-8.5.30.tar.gz
# Wed, 11 Apr 2018 21:07:03 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.30/bin/apache-tomcat-8.5.30.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.30/bin/apache-tomcat-8.5.30.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.30/bin/apache-tomcat-8.5.30.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.30/bin/apache-tomcat-8.5.30.tar.gz.asc
# Wed, 11 Apr 2018 21:09:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Wed, 11 Apr 2018 21:09:10 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 11 Apr 2018 21:09:10 GMT
EXPOSE 8080/tcp
# Wed, 11 Apr 2018 21:09:10 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:8d602e635a7063b254ddcd64997153b2e8f74c29ff4648089ae116a4ca3ea8e3`  
		Last Modified: Tue, 13 Mar 2018 22:50:19 GMT  
		Size: 25.7 MB (25713113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b0cb5bfff7921055b3160e463c0cbbd0da8804c54c0e81870e32789de17696`  
		Last Modified: Wed, 14 Mar 2018 11:50:29 GMT  
		Size: 460.3 KB (460326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31aaf5b382af90e713d7581c352ac81060358c641b90a3708b45268486ae3911`  
		Last Modified: Wed, 14 Mar 2018 12:30:26 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5713db526a481e662cb137cca84372e8433d562ce47cab6f445157cd465a6caf`  
		Last Modified: Wed, 14 Mar 2018 12:30:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c022488a3aefc27a949d96571c265577806baff4c4977ec1522c4384801c06`  
		Last Modified: Wed, 04 Apr 2018 21:33:50 GMT  
		Size: 76.6 MB (76557763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a8964016dda2da3ddaf4020adca777448cd3c6359cd01ba3e2dc64db7258c8a`  
		Last Modified: Thu, 05 Apr 2018 10:33:51 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae487a6e7fa75639aacaa42d6f874b5d40681df893c03edd0a57e9f36afe9f69`  
		Last Modified: Thu, 05 Apr 2018 10:33:52 GMT  
		Size: 409.6 KB (409618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef691c506569d4bd67522360df1610af32c35065908920fc751ecc19d3b759dd`  
		Last Modified: Wed, 11 Apr 2018 23:23:08 GMT  
		Size: 17.1 MB (17078478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce8940193234a757c13326b6be9edc705158baef22d63f251f882135ce73e6f5`  
		Last Modified: Wed, 11 Apr 2018 23:23:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:jre9-slim` - linux; arm variant v5

```console
$ docker pull tomcat@sha256:dc67495331b48d5aca9e796b2172e0af755ae98f03ec9893c91f6a626cddb50a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.5 MB (102458612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d82ed1004cc28a56d11f669e30e04fca6d6e4fc8ca454047f233750ea3196bba`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 14 Mar 2018 19:59:20 GMT
ADD file:b829fe1b85a76eaae255627baf7572a89310e31a86d94c40353cdf5184a08296 in / 
# Wed, 14 Mar 2018 19:59:21 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 22:37:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:42:18 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 22:42:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 22:42:20 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 22:42:20 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 10:04:24 GMT
ENV JAVA_VERSION=9.0.4+12
# Fri, 06 Apr 2018 18:06:18 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Fri, 06 Apr 2018 18:06:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 06 Apr 2018 19:05:37 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 06 Apr 2018 19:05:38 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Apr 2018 19:05:39 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 06 Apr 2018 19:05:39 GMT
WORKDIR /usr/local/tomcat
# Fri, 06 Apr 2018 19:05:39 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 06 Apr 2018 19:05:40 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 06 Apr 2018 19:05:40 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Fri, 06 Apr 2018 19:05:42 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 06 Apr 2018 19:05:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Apr 2018 19:05:50 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 06 Apr 2018 19:05:51 GMT
ENV TOMCAT_MAJOR=8
# Thu, 12 Apr 2018 09:14:28 GMT
ENV TOMCAT_VERSION=8.5.30
# Thu, 12 Apr 2018 09:14:28 GMT
ENV TOMCAT_SHA512=f7e84fed604dc183dc1bdad07f3b025547d95d024ccfb05da68f5f45256f3082af6ba28c7f0148ae4ee43637248a0074c92bb12198ab58331d0c4f04906b86b6
# Thu, 12 Apr 2018 09:14:29 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.30/bin/apache-tomcat-8.5.30.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.30/bin/apache-tomcat-8.5.30.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.30/bin/apache-tomcat-8.5.30.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.30/bin/apache-tomcat-8.5.30.tar.gz
# Thu, 12 Apr 2018 09:14:29 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.30/bin/apache-tomcat-8.5.30.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.30/bin/apache-tomcat-8.5.30.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.30/bin/apache-tomcat-8.5.30.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.30/bin/apache-tomcat-8.5.30.tar.gz.asc
# Thu, 12 Apr 2018 09:16:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 12 Apr 2018 09:17:00 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 12 Apr 2018 09:17:01 GMT
EXPOSE 8080/tcp
# Thu, 12 Apr 2018 09:17:01 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:1df428c58793052c39aa67c5a0cfc437c4f5e97e12915970ffa3b5a637915c81`  
		Last Modified: Wed, 14 Mar 2018 20:10:52 GMT  
		Size: 23.7 MB (23719570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ea34fa7879bc512ea22a1ff5fd2caeccec4a4a30a175ae662a07c22e57532a`  
		Last Modified: Wed, 14 Mar 2018 23:01:39 GMT  
		Size: 453.8 KB (453792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d53ef6ceaeefa22395981d0871593abdf315d62946258906c10c78378424bd2`  
		Last Modified: Wed, 14 Mar 2018 23:01:38 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a94ee72e00db1ec221beadb93954960dbae55a4101ae2563b8b4f26818118ce`  
		Last Modified: Wed, 14 Mar 2018 23:01:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:084a583f8ead937844e0b640a548e1fa9e03389a3485c64a8f8413153f3bfed4`  
		Last Modified: Fri, 06 Apr 2018 18:17:23 GMT  
		Size: 61.9 MB (61925840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b6b8f25a8a6214c5b92db2f88b7e29815f53a9025a7bf6bba4b88c2989bb68`  
		Last Modified: Fri, 06 Apr 2018 19:13:20 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5239d8cc09fce6a56402690d80956e8d498184f437c0038ee2f397098147b86`  
		Last Modified: Fri, 06 Apr 2018 19:13:20 GMT  
		Size: 393.3 KB (393339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bdbb5e5322ae7f1fe9fe5dfc17f71b6aed7c8dd2f704448897e89e665dae7bf`  
		Last Modified: Thu, 12 Apr 2018 09:37:11 GMT  
		Size: 16.0 MB (15965396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3dcf47de7d7d1e3fdb680147c7d43a11d5623d53fea7b8f31769dc533587b50`  
		Last Modified: Thu, 12 Apr 2018 09:37:07 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:jre9-slim` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:61903f8e4013b2a181d9f2e76cda78f8d221c9b6ecd53b9f89e8ba7faa2c45a9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.4 MB (105396129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdb331197a2634c7bf65400230dff8ee12b0cb24662e4eac623cd88b275baf10`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 14 Mar 2018 17:28:31 GMT
ADD file:e02f4f3766155e52cc84a63120d6a2789b8ecbc9d3d5311e6fde66f676f7bb09 in / 
# Wed, 14 Mar 2018 17:28:32 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 19:56:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:20:33 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 20:20:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 20:20:45 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 20:20:46 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 10:31:12 GMT
ENV JAVA_VERSION=9.0.4+12
# Fri, 06 Apr 2018 18:36:38 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Fri, 06 Apr 2018 18:38:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 06 Apr 2018 20:29:36 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 06 Apr 2018 20:29:37 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Apr 2018 20:29:40 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 06 Apr 2018 20:29:40 GMT
WORKDIR /usr/local/tomcat
# Fri, 06 Apr 2018 20:29:41 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 06 Apr 2018 20:29:42 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 06 Apr 2018 20:29:43 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Fri, 06 Apr 2018 20:29:45 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 06 Apr 2018 20:29:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Apr 2018 20:30:04 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 06 Apr 2018 20:30:05 GMT
ENV TOMCAT_MAJOR=8
# Thu, 12 Apr 2018 10:24:48 GMT
ENV TOMCAT_VERSION=8.5.30
# Thu, 12 Apr 2018 10:24:49 GMT
ENV TOMCAT_SHA512=f7e84fed604dc183dc1bdad07f3b025547d95d024ccfb05da68f5f45256f3082af6ba28c7f0148ae4ee43637248a0074c92bb12198ab58331d0c4f04906b86b6
# Thu, 12 Apr 2018 10:24:49 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.30/bin/apache-tomcat-8.5.30.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.30/bin/apache-tomcat-8.5.30.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.30/bin/apache-tomcat-8.5.30.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.30/bin/apache-tomcat-8.5.30.tar.gz
# Thu, 12 Apr 2018 10:24:50 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.30/bin/apache-tomcat-8.5.30.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.30/bin/apache-tomcat-8.5.30.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.30/bin/apache-tomcat-8.5.30.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.30/bin/apache-tomcat-8.5.30.tar.gz.asc
# Thu, 12 Apr 2018 10:38:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 12 Apr 2018 10:38:16 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 12 Apr 2018 10:38:16 GMT
EXPOSE 8080/tcp
# Thu, 12 Apr 2018 10:38:17 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:793dde53d6e905ab81ddaae8c8ff711e51c5782e6ff5c8065a2f2017b116e00c`  
		Last Modified: Wed, 14 Mar 2018 17:43:12 GMT  
		Size: 23.1 MB (23087383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd912422d8771b9bce422bc6af0c49132976576aa3834e0baccfc7c50ebd2ef9`  
		Last Modified: Wed, 14 Mar 2018 21:04:08 GMT  
		Size: 445.1 KB (445107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d547b26b9f7cb3ede348dd4e8f8d68fbb9c762a4bcd74738fd220c848c542972`  
		Last Modified: Wed, 14 Mar 2018 21:22:59 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b497df78fddfa0a48758ce249e8008ee03e6e16ab3325b17130d54deacb85a1`  
		Last Modified: Wed, 14 Mar 2018 21:22:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06fb368244bb03bfe7a88fe8e91080fa8c60afab6012195266d2a7f42a39a80`  
		Last Modified: Fri, 06 Apr 2018 19:27:04 GMT  
		Size: 65.4 MB (65402124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a122ab67ad9c7ce5c5c61bcc505ab328a7ff94a4313398a7fac9a6f39b60b20`  
		Last Modified: Fri, 06 Apr 2018 21:02:21 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e030f2d4e529991655e19224db2193ffcd162cf2c7cd54bb01f586be733dd3c`  
		Last Modified: Fri, 06 Apr 2018 21:02:22 GMT  
		Size: 394.5 KB (394510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7264ae18e107e9b4de583f9f8c1a33d627886f4a3d272f8da2616f5131d14a2f`  
		Last Modified: Thu, 12 Apr 2018 11:54:10 GMT  
		Size: 16.1 MB (16066366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83b7fe30aff0730c76a54a3235e18c7a69f80e1e043a013b4c6637bdd8e9ca0d`  
		Last Modified: Thu, 12 Apr 2018 11:54:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:jre9-slim` - linux; ppc64le

```console
$ docker pull tomcat@sha256:56d905bf809d38bb29b31094526a58c05ad58bfaef9f9c96ffdc71edaf4e6ef8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.0 MB (112007174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aab64ba40ded6249b7c61b589c7a188c20cbe848e42af2d7bd063b4e930a5531`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 14 Mar 2018 00:33:55 GMT
ADD file:e890898916a686430a0d7cea9f16c3859f35938952b26ba20163570f64ab383c in / 
# Wed, 14 Mar 2018 00:33:57 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 04:03:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:17:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 04:18:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Mar 2018 04:18:08 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Mar 2018 04:18:11 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 11:27:37 GMT
ENV JAVA_VERSION=9.0.4+12
# Fri, 06 Apr 2018 18:48:54 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Fri, 06 Apr 2018 18:51:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 06 Apr 2018 20:36:11 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 06 Apr 2018 20:36:12 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Apr 2018 20:36:16 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 06 Apr 2018 20:36:17 GMT
WORKDIR /usr/local/tomcat
# Fri, 06 Apr 2018 20:36:18 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 06 Apr 2018 20:36:19 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 06 Apr 2018 20:36:21 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Fri, 06 Apr 2018 20:36:24 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 06 Apr 2018 20:36:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Apr 2018 20:36:39 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 06 Apr 2018 20:36:40 GMT
ENV TOMCAT_MAJOR=8
# Thu, 12 Apr 2018 09:27:43 GMT
ENV TOMCAT_VERSION=8.5.30
# Thu, 12 Apr 2018 09:27:46 GMT
ENV TOMCAT_SHA512=f7e84fed604dc183dc1bdad07f3b025547d95d024ccfb05da68f5f45256f3082af6ba28c7f0148ae4ee43637248a0074c92bb12198ab58331d0c4f04906b86b6
# Thu, 12 Apr 2018 09:27:47 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.30/bin/apache-tomcat-8.5.30.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.30/bin/apache-tomcat-8.5.30.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.30/bin/apache-tomcat-8.5.30.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.30/bin/apache-tomcat-8.5.30.tar.gz
# Thu, 12 Apr 2018 09:27:47 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.30/bin/apache-tomcat-8.5.30.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.30/bin/apache-tomcat-8.5.30.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.30/bin/apache-tomcat-8.5.30.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.30/bin/apache-tomcat-8.5.30.tar.gz.asc
# Thu, 12 Apr 2018 09:36:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 12 Apr 2018 09:36:20 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 12 Apr 2018 09:36:21 GMT
EXPOSE 8080/tcp
# Thu, 12 Apr 2018 09:36:22 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:b3949de4c16b03531582180df6c78e53e16851fa35f1a3ab12ac83a511cae577`  
		Last Modified: Wed, 14 Mar 2018 00:41:23 GMT  
		Size: 26.9 MB (26942453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ecfa491131fe3c43d09dfae52d8bf81576df7e7c5fa65cc8ca02dd14a07330c`  
		Last Modified: Thu, 15 Mar 2018 06:00:01 GMT  
		Size: 455.0 KB (454980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84cd6dec31efd7f104c93e0092e096437e0fd71c847ebb04861345763d94a407`  
		Last Modified: Thu, 15 Mar 2018 06:00:00 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11873e1792eb622e309cc818dbfe177c0e164e2fd83f1b6a56413a55ec2a7c9`  
		Last Modified: Thu, 15 Mar 2018 06:00:01 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d9ac6a1fbbe0869bc2e5aba742f7c4b4133ff1c0c3f3f748fef69f9f1d6f52d`  
		Last Modified: Fri, 06 Apr 2018 19:19:22 GMT  
		Size: 66.6 MB (66631787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6262241cbd6ab3c2d8bb53d55681c0c13a6d481acf213ea97bcf5451c87920e4`  
		Last Modified: Fri, 06 Apr 2018 21:19:15 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d2a4bcc3b398801945f4d30440e9b517c4dbf2400f9dd243764ced093a55e4`  
		Last Modified: Fri, 06 Apr 2018 21:19:17 GMT  
		Size: 406.4 KB (406390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31d8cda129038ba8ad0cc655191bc9ddac1cf17cac551cf07fd40dc999f68c41`  
		Last Modified: Thu, 12 Apr 2018 10:40:33 GMT  
		Size: 17.6 MB (17570891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a354d4d8aaa08918a8e093bc18451c33b68574d01199b57d670a303db0e591`  
		Last Modified: Thu, 12 Apr 2018 10:40:29 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
