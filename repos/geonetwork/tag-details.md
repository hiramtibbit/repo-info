<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `geonetwork`

-	[`geonetwork:3.0`](#geonetwork30)
-	[`geonetwork:3.0.5`](#geonetwork305)
-	[`geonetwork:3.0.5-postgres`](#geonetwork305-postgres)
-	[`geonetwork:3.0-postgres`](#geonetwork30-postgres)
-	[`geonetwork:3.2`](#geonetwork32)
-	[`geonetwork:3.2.2`](#geonetwork322)
-	[`geonetwork:3.2.2-postgres`](#geonetwork322-postgres)
-	[`geonetwork:3.2-postgres`](#geonetwork32-postgres)
-	[`geonetwork:3.4`](#geonetwork34)
-	[`geonetwork:3.4.1`](#geonetwork341)
-	[`geonetwork:3.4.1-postgres`](#geonetwork341-postgres)
-	[`geonetwork:3.4-postgres`](#geonetwork34-postgres)
-	[`geonetwork:latest`](#geonetworklatest)
-	[`geonetwork:postgres`](#geonetworkpostgres)

## `geonetwork:3.0`

```console
$ docker pull geonetwork@sha256:c517b3d571056506a954db4b83977d5c779722d30ab6b4f11dc9d691e8492923
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `geonetwork:3.0` - linux; amd64

```console
$ docker pull geonetwork@sha256:d1d4b507512e51fc837eb9a5e1563125b54a6f913b9689ec7cc93cdd6856975d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **551.4 MB (551408102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65071ce36f20762bc84ede081bc624d3fcc73bceac1edb364ef41437b108a8aa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 13 Mar 2018 22:21:08 GMT
ADD file:c2c5a1f7f840c0a87a6603fd81068b68028f500e96a33882caa97892b6701254 in / 
# Tue, 13 Mar 2018 22:21:09 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:43:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:43:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:44:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:48 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Mar 2018 10:07:48 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:07:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:07:49 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:07:50 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Mar 2018 06:41:30 GMT
ENV JAVA_VERSION=10-ea+46
# Mon, 19 Mar 2018 20:15:36 GMT
ENV JAVA_DEBIAN_VERSION=10~46-2
# Mon, 19 Mar 2018 20:16:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 20:16:52 GMT
CMD ["jshell"]
# Wed, 28 Mar 2018 02:14:29 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 28 Mar 2018 02:14:29 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Mar 2018 02:14:31 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 28 Mar 2018 02:14:31 GMT
WORKDIR /usr/local/tomcat
# Wed, 28 Mar 2018 02:14:31 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 28 Mar 2018 02:14:32 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 28 Mar 2018 02:14:32 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Wed, 28 Mar 2018 02:14:33 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 28 Mar 2018 02:14:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 02:14:39 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 28 Mar 2018 02:34:09 GMT
ENV TOMCAT_MAJOR=8
# Wed, 28 Mar 2018 02:34:10 GMT
ENV TOMCAT_VERSION=8.0.50
# Wed, 28 Mar 2018 02:34:10 GMT
ENV TOMCAT_SHA1=ec66581d322a8ef58e3988fc72e2c076968f3e2e
# Wed, 28 Mar 2018 02:34:10 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz
# Wed, 28 Mar 2018 02:34:10 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc
# Wed, 28 Mar 2018 02:34:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Wed, 28 Mar 2018 02:34:53 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 28 Mar 2018 02:34:53 GMT
EXPOSE 8080/tcp
# Wed, 28 Mar 2018 02:34:53 GMT
CMD ["catalina.sh" "run"]
# Wed, 28 Mar 2018 05:11:10 GMT
ENV GN_FILE=geonetwork.war
# Wed, 28 Mar 2018 05:11:10 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Wed, 28 Mar 2018 05:11:10 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -Xmx512M -Xss2M -XX:MaxPermSize=512m -XX:+UseConcMarkSweepGC
# Wed, 28 Mar 2018 05:11:11 GMT
ENV GN_VERSION=3.0.5
# Wed, 28 Mar 2018 05:11:11 GMT
ENV GN_DOWNLOAD_MD5=1e77c39de4ad156cc9b3c2b033cab359
# Wed, 28 Mar 2018 05:11:11 GMT
WORKDIR /usr/local/tomcat/webapps
# Wed, 28 Mar 2018 05:11:22 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Wed, 28 Mar 2018 05:11:22 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Wed, 28 Mar 2018 05:11:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Mar 2018 05:11:23 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:2115d46e739639b0003acb80a3ecc4a513e7342139b4e75356e908cc3f8da0d9`  
		Last Modified: Tue, 13 Mar 2018 22:49:37 GMT  
		Size: 48.1 MB (48061488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa734ed5aa001b3091db69d84da99214d28d5e2bf18ad0bc53e376d23fdc681`  
		Last Modified: Wed, 14 Mar 2018 00:38:56 GMT  
		Size: 8.6 MB (8633487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801e6e5516c1babec1897bf4f28b06f246bf275c0275b2e51f2135f579e5a37f`  
		Last Modified: Wed, 14 Mar 2018 00:38:55 GMT  
		Size: 9.1 MB (9103503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8588f1af8d84229b7ea45334888a17f05339362bb918f768adf94315b8e6c150`  
		Last Modified: Wed, 14 Mar 2018 00:39:29 GMT  
		Size: 49.2 MB (49204172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916d2711f8ee1de4ab659162f0fb2d03454d427db2b72545cef0e9c7720a55b5`  
		Last Modified: Wed, 14 Mar 2018 11:52:28 GMT  
		Size: 893.4 KB (893363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb9a53c345d81ad8a261443a92d603617b7b0f3c8d61c2828f08ad172829a4e`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af2dd6a0a77f77827f0c10883cc97695d08bd9fa8d203124b63bce5d8e32c0a`  
		Last Modified: Wed, 14 Mar 2018 11:52:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0519972ef87d1d7dc8cc2b734fad1999d79abd8e5c2b0e32b4c70fe85e25005`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712efbf66aaf3944af91c3f31d1d452922b4160c7b0fc8f7a505eac2ca36d04c`  
		Last Modified: Mon, 19 Mar 2018 22:03:59 GMT  
		Size: 284.8 MB (284826900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c078e8d9c6855801ab64ff174e34c0a6e32d784594390a8412b02954d11a43c`  
		Last Modified: Wed, 28 Mar 2018 02:38:32 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa24400877d42d683e1c473e45653da8be540ee1f24cac9a18247dbde8a73f1`  
		Last Modified: Wed, 28 Mar 2018 02:38:33 GMT  
		Size: 2.5 KB (2530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb01a5d546c1d266bee249e0602e651a9faaaca032fa67631d5c328c1d6b5bea`  
		Last Modified: Wed, 28 Mar 2018 02:41:32 GMT  
		Size: 11.3 MB (11271126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9197615969e7474421191b6902de974d28a401f6163bd66500036594cf452045`  
		Last Modified: Wed, 28 Mar 2018 02:41:30 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa0331e13f094f773544e86de78e1d617cee76bead84a50c495fa441a6971af7`  
		Last Modified: Wed, 28 Mar 2018 05:12:42 GMT  
		Size: 139.4 MB (139410393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20b90328a9b8d3460a37ceea60d4f8048232e94b18577092dab5247c4a6e7858`  
		Last Modified: Wed, 28 Mar 2018 05:12:31 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.0.5`

```console
$ docker pull geonetwork@sha256:c517b3d571056506a954db4b83977d5c779722d30ab6b4f11dc9d691e8492923
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `geonetwork:3.0.5` - linux; amd64

```console
$ docker pull geonetwork@sha256:d1d4b507512e51fc837eb9a5e1563125b54a6f913b9689ec7cc93cdd6856975d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **551.4 MB (551408102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65071ce36f20762bc84ede081bc624d3fcc73bceac1edb364ef41437b108a8aa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 13 Mar 2018 22:21:08 GMT
ADD file:c2c5a1f7f840c0a87a6603fd81068b68028f500e96a33882caa97892b6701254 in / 
# Tue, 13 Mar 2018 22:21:09 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:43:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:43:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:44:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:48 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Mar 2018 10:07:48 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:07:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:07:49 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:07:50 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Mar 2018 06:41:30 GMT
ENV JAVA_VERSION=10-ea+46
# Mon, 19 Mar 2018 20:15:36 GMT
ENV JAVA_DEBIAN_VERSION=10~46-2
# Mon, 19 Mar 2018 20:16:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 20:16:52 GMT
CMD ["jshell"]
# Wed, 28 Mar 2018 02:14:29 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 28 Mar 2018 02:14:29 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Mar 2018 02:14:31 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 28 Mar 2018 02:14:31 GMT
WORKDIR /usr/local/tomcat
# Wed, 28 Mar 2018 02:14:31 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 28 Mar 2018 02:14:32 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 28 Mar 2018 02:14:32 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Wed, 28 Mar 2018 02:14:33 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 28 Mar 2018 02:14:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 02:14:39 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 28 Mar 2018 02:34:09 GMT
ENV TOMCAT_MAJOR=8
# Wed, 28 Mar 2018 02:34:10 GMT
ENV TOMCAT_VERSION=8.0.50
# Wed, 28 Mar 2018 02:34:10 GMT
ENV TOMCAT_SHA1=ec66581d322a8ef58e3988fc72e2c076968f3e2e
# Wed, 28 Mar 2018 02:34:10 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz
# Wed, 28 Mar 2018 02:34:10 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc
# Wed, 28 Mar 2018 02:34:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Wed, 28 Mar 2018 02:34:53 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 28 Mar 2018 02:34:53 GMT
EXPOSE 8080/tcp
# Wed, 28 Mar 2018 02:34:53 GMT
CMD ["catalina.sh" "run"]
# Wed, 28 Mar 2018 05:11:10 GMT
ENV GN_FILE=geonetwork.war
# Wed, 28 Mar 2018 05:11:10 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Wed, 28 Mar 2018 05:11:10 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -Xmx512M -Xss2M -XX:MaxPermSize=512m -XX:+UseConcMarkSweepGC
# Wed, 28 Mar 2018 05:11:11 GMT
ENV GN_VERSION=3.0.5
# Wed, 28 Mar 2018 05:11:11 GMT
ENV GN_DOWNLOAD_MD5=1e77c39de4ad156cc9b3c2b033cab359
# Wed, 28 Mar 2018 05:11:11 GMT
WORKDIR /usr/local/tomcat/webapps
# Wed, 28 Mar 2018 05:11:22 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Wed, 28 Mar 2018 05:11:22 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Wed, 28 Mar 2018 05:11:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Mar 2018 05:11:23 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:2115d46e739639b0003acb80a3ecc4a513e7342139b4e75356e908cc3f8da0d9`  
		Last Modified: Tue, 13 Mar 2018 22:49:37 GMT  
		Size: 48.1 MB (48061488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa734ed5aa001b3091db69d84da99214d28d5e2bf18ad0bc53e376d23fdc681`  
		Last Modified: Wed, 14 Mar 2018 00:38:56 GMT  
		Size: 8.6 MB (8633487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801e6e5516c1babec1897bf4f28b06f246bf275c0275b2e51f2135f579e5a37f`  
		Last Modified: Wed, 14 Mar 2018 00:38:55 GMT  
		Size: 9.1 MB (9103503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8588f1af8d84229b7ea45334888a17f05339362bb918f768adf94315b8e6c150`  
		Last Modified: Wed, 14 Mar 2018 00:39:29 GMT  
		Size: 49.2 MB (49204172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916d2711f8ee1de4ab659162f0fb2d03454d427db2b72545cef0e9c7720a55b5`  
		Last Modified: Wed, 14 Mar 2018 11:52:28 GMT  
		Size: 893.4 KB (893363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb9a53c345d81ad8a261443a92d603617b7b0f3c8d61c2828f08ad172829a4e`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af2dd6a0a77f77827f0c10883cc97695d08bd9fa8d203124b63bce5d8e32c0a`  
		Last Modified: Wed, 14 Mar 2018 11:52:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0519972ef87d1d7dc8cc2b734fad1999d79abd8e5c2b0e32b4c70fe85e25005`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712efbf66aaf3944af91c3f31d1d452922b4160c7b0fc8f7a505eac2ca36d04c`  
		Last Modified: Mon, 19 Mar 2018 22:03:59 GMT  
		Size: 284.8 MB (284826900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c078e8d9c6855801ab64ff174e34c0a6e32d784594390a8412b02954d11a43c`  
		Last Modified: Wed, 28 Mar 2018 02:38:32 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa24400877d42d683e1c473e45653da8be540ee1f24cac9a18247dbde8a73f1`  
		Last Modified: Wed, 28 Mar 2018 02:38:33 GMT  
		Size: 2.5 KB (2530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb01a5d546c1d266bee249e0602e651a9faaaca032fa67631d5c328c1d6b5bea`  
		Last Modified: Wed, 28 Mar 2018 02:41:32 GMT  
		Size: 11.3 MB (11271126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9197615969e7474421191b6902de974d28a401f6163bd66500036594cf452045`  
		Last Modified: Wed, 28 Mar 2018 02:41:30 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa0331e13f094f773544e86de78e1d617cee76bead84a50c495fa441a6971af7`  
		Last Modified: Wed, 28 Mar 2018 05:12:42 GMT  
		Size: 139.4 MB (139410393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20b90328a9b8d3460a37ceea60d4f8048232e94b18577092dab5247c4a6e7858`  
		Last Modified: Wed, 28 Mar 2018 05:12:31 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.0.5-postgres`

```console
$ docker pull geonetwork@sha256:5ac4d381486cd19b308e3958d595117526218f7804bb76b52a27badee1cc2bec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `geonetwork:3.0.5-postgres` - linux; amd64

```console
$ docker pull geonetwork@sha256:20ab1ec0ca44bbd68f42885039e3a44f5e656bb6480115ec982f30203fe301fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **562.4 MB (562428788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f138518d24e1663a1722995628b84f165afe51f7f796dc34570a350df81d6dc7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 13 Mar 2018 22:21:08 GMT
ADD file:c2c5a1f7f840c0a87a6603fd81068b68028f500e96a33882caa97892b6701254 in / 
# Tue, 13 Mar 2018 22:21:09 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:43:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:43:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:44:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:48 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Mar 2018 10:07:48 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:07:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:07:49 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:07:50 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Mar 2018 06:41:30 GMT
ENV JAVA_VERSION=10-ea+46
# Mon, 19 Mar 2018 20:15:36 GMT
ENV JAVA_DEBIAN_VERSION=10~46-2
# Mon, 19 Mar 2018 20:16:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 20:16:52 GMT
CMD ["jshell"]
# Wed, 28 Mar 2018 02:14:29 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 28 Mar 2018 02:14:29 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Mar 2018 02:14:31 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 28 Mar 2018 02:14:31 GMT
WORKDIR /usr/local/tomcat
# Wed, 28 Mar 2018 02:14:31 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 28 Mar 2018 02:14:32 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 28 Mar 2018 02:14:32 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Wed, 28 Mar 2018 02:14:33 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 28 Mar 2018 02:14:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 02:14:39 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 28 Mar 2018 02:34:09 GMT
ENV TOMCAT_MAJOR=8
# Wed, 28 Mar 2018 02:34:10 GMT
ENV TOMCAT_VERSION=8.0.50
# Wed, 28 Mar 2018 02:34:10 GMT
ENV TOMCAT_SHA1=ec66581d322a8ef58e3988fc72e2c076968f3e2e
# Wed, 28 Mar 2018 02:34:10 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz
# Wed, 28 Mar 2018 02:34:10 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc
# Wed, 28 Mar 2018 02:34:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Wed, 28 Mar 2018 02:34:53 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 28 Mar 2018 02:34:53 GMT
EXPOSE 8080/tcp
# Wed, 28 Mar 2018 02:34:53 GMT
CMD ["catalina.sh" "run"]
# Wed, 28 Mar 2018 05:11:10 GMT
ENV GN_FILE=geonetwork.war
# Wed, 28 Mar 2018 05:11:10 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Wed, 28 Mar 2018 05:11:10 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -Xmx512M -Xss2M -XX:MaxPermSize=512m -XX:+UseConcMarkSweepGC
# Wed, 28 Mar 2018 05:11:11 GMT
ENV GN_VERSION=3.0.5
# Wed, 28 Mar 2018 05:11:11 GMT
ENV GN_DOWNLOAD_MD5=1e77c39de4ad156cc9b3c2b033cab359
# Wed, 28 Mar 2018 05:11:11 GMT
WORKDIR /usr/local/tomcat/webapps
# Wed, 28 Mar 2018 05:11:22 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Wed, 28 Mar 2018 05:11:22 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Wed, 28 Mar 2018 05:11:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Mar 2018 05:11:23 GMT
CMD ["catalina.sh" "run"]
# Wed, 28 Mar 2018 05:11:58 GMT
RUN apt-get update && apt-get install -y postgresql-client &&     rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 05:11:59 GMT
RUN sed -i -e 's#<import resource="../config-db/h2.xml"/>#<!--<import resource="../config-db/h2.xml"/> -->#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml
# Wed, 28 Mar 2018 05:11:59 GMT
COPY file:e2fbb7cf0447a8bc2706127d7dc9bceba30008f926826a6c3bf869efc97b906d in /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties 
# Wed, 28 Mar 2018 05:12:00 GMT
COPY file:2dd6f92687b208fdde8d0d8fa36354e2e373245faae443043799a7cca9e3538a in /entrypoint.sh 
# Wed, 28 Mar 2018 05:12:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Mar 2018 05:12:00 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:2115d46e739639b0003acb80a3ecc4a513e7342139b4e75356e908cc3f8da0d9`  
		Last Modified: Tue, 13 Mar 2018 22:49:37 GMT  
		Size: 48.1 MB (48061488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa734ed5aa001b3091db69d84da99214d28d5e2bf18ad0bc53e376d23fdc681`  
		Last Modified: Wed, 14 Mar 2018 00:38:56 GMT  
		Size: 8.6 MB (8633487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801e6e5516c1babec1897bf4f28b06f246bf275c0275b2e51f2135f579e5a37f`  
		Last Modified: Wed, 14 Mar 2018 00:38:55 GMT  
		Size: 9.1 MB (9103503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8588f1af8d84229b7ea45334888a17f05339362bb918f768adf94315b8e6c150`  
		Last Modified: Wed, 14 Mar 2018 00:39:29 GMT  
		Size: 49.2 MB (49204172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916d2711f8ee1de4ab659162f0fb2d03454d427db2b72545cef0e9c7720a55b5`  
		Last Modified: Wed, 14 Mar 2018 11:52:28 GMT  
		Size: 893.4 KB (893363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb9a53c345d81ad8a261443a92d603617b7b0f3c8d61c2828f08ad172829a4e`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af2dd6a0a77f77827f0c10883cc97695d08bd9fa8d203124b63bce5d8e32c0a`  
		Last Modified: Wed, 14 Mar 2018 11:52:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0519972ef87d1d7dc8cc2b734fad1999d79abd8e5c2b0e32b4c70fe85e25005`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712efbf66aaf3944af91c3f31d1d452922b4160c7b0fc8f7a505eac2ca36d04c`  
		Last Modified: Mon, 19 Mar 2018 22:03:59 GMT  
		Size: 284.8 MB (284826900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c078e8d9c6855801ab64ff174e34c0a6e32d784594390a8412b02954d11a43c`  
		Last Modified: Wed, 28 Mar 2018 02:38:32 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa24400877d42d683e1c473e45653da8be540ee1f24cac9a18247dbde8a73f1`  
		Last Modified: Wed, 28 Mar 2018 02:38:33 GMT  
		Size: 2.5 KB (2530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb01a5d546c1d266bee249e0602e651a9faaaca032fa67631d5c328c1d6b5bea`  
		Last Modified: Wed, 28 Mar 2018 02:41:32 GMT  
		Size: 11.3 MB (11271126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9197615969e7474421191b6902de974d28a401f6163bd66500036594cf452045`  
		Last Modified: Wed, 28 Mar 2018 02:41:30 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa0331e13f094f773544e86de78e1d617cee76bead84a50c495fa441a6971af7`  
		Last Modified: Wed, 28 Mar 2018 05:12:42 GMT  
		Size: 139.4 MB (139410393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20b90328a9b8d3460a37ceea60d4f8048232e94b18577092dab5247c4a6e7858`  
		Last Modified: Wed, 28 Mar 2018 05:12:31 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2d3ee64f3900c1382ea6488001dba4e5cea6e3bf34ebb409f77a0c7508a56a4`  
		Last Modified: Wed, 28 Mar 2018 05:13:29 GMT  
		Size: 11.0 MB (11018524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b470f979c27907ac9a54f5f7e4dc0b3589a7ddbb4532de7109fdb0961d19336b`  
		Last Modified: Wed, 28 Mar 2018 05:13:27 GMT  
		Size: 693.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c407d5f36471a9cbadbd54a15bf6cfe523afa199dba7920d63147988d1d917c`  
		Last Modified: Wed, 28 Mar 2018 05:13:29 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:626de7c931df21015d5b37d04d1124115fda2b36f6a30701917df593b0090ae6`  
		Last Modified: Wed, 28 Mar 2018 05:13:27 GMT  
		Size: 927.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.0-postgres`

```console
$ docker pull geonetwork@sha256:5ac4d381486cd19b308e3958d595117526218f7804bb76b52a27badee1cc2bec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `geonetwork:3.0-postgres` - linux; amd64

```console
$ docker pull geonetwork@sha256:20ab1ec0ca44bbd68f42885039e3a44f5e656bb6480115ec982f30203fe301fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **562.4 MB (562428788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f138518d24e1663a1722995628b84f165afe51f7f796dc34570a350df81d6dc7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 13 Mar 2018 22:21:08 GMT
ADD file:c2c5a1f7f840c0a87a6603fd81068b68028f500e96a33882caa97892b6701254 in / 
# Tue, 13 Mar 2018 22:21:09 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:43:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:43:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:44:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:48 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Mar 2018 10:07:48 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:07:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:07:49 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:07:50 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Mar 2018 06:41:30 GMT
ENV JAVA_VERSION=10-ea+46
# Mon, 19 Mar 2018 20:15:36 GMT
ENV JAVA_DEBIAN_VERSION=10~46-2
# Mon, 19 Mar 2018 20:16:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 20:16:52 GMT
CMD ["jshell"]
# Wed, 28 Mar 2018 02:14:29 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 28 Mar 2018 02:14:29 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Mar 2018 02:14:31 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 28 Mar 2018 02:14:31 GMT
WORKDIR /usr/local/tomcat
# Wed, 28 Mar 2018 02:14:31 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 28 Mar 2018 02:14:32 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 28 Mar 2018 02:14:32 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Wed, 28 Mar 2018 02:14:33 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 28 Mar 2018 02:14:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 02:14:39 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 28 Mar 2018 02:34:09 GMT
ENV TOMCAT_MAJOR=8
# Wed, 28 Mar 2018 02:34:10 GMT
ENV TOMCAT_VERSION=8.0.50
# Wed, 28 Mar 2018 02:34:10 GMT
ENV TOMCAT_SHA1=ec66581d322a8ef58e3988fc72e2c076968f3e2e
# Wed, 28 Mar 2018 02:34:10 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz
# Wed, 28 Mar 2018 02:34:10 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc
# Wed, 28 Mar 2018 02:34:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Wed, 28 Mar 2018 02:34:53 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 28 Mar 2018 02:34:53 GMT
EXPOSE 8080/tcp
# Wed, 28 Mar 2018 02:34:53 GMT
CMD ["catalina.sh" "run"]
# Wed, 28 Mar 2018 05:11:10 GMT
ENV GN_FILE=geonetwork.war
# Wed, 28 Mar 2018 05:11:10 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Wed, 28 Mar 2018 05:11:10 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -Xmx512M -Xss2M -XX:MaxPermSize=512m -XX:+UseConcMarkSweepGC
# Wed, 28 Mar 2018 05:11:11 GMT
ENV GN_VERSION=3.0.5
# Wed, 28 Mar 2018 05:11:11 GMT
ENV GN_DOWNLOAD_MD5=1e77c39de4ad156cc9b3c2b033cab359
# Wed, 28 Mar 2018 05:11:11 GMT
WORKDIR /usr/local/tomcat/webapps
# Wed, 28 Mar 2018 05:11:22 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Wed, 28 Mar 2018 05:11:22 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Wed, 28 Mar 2018 05:11:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Mar 2018 05:11:23 GMT
CMD ["catalina.sh" "run"]
# Wed, 28 Mar 2018 05:11:58 GMT
RUN apt-get update && apt-get install -y postgresql-client &&     rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 05:11:59 GMT
RUN sed -i -e 's#<import resource="../config-db/h2.xml"/>#<!--<import resource="../config-db/h2.xml"/> -->#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml
# Wed, 28 Mar 2018 05:11:59 GMT
COPY file:e2fbb7cf0447a8bc2706127d7dc9bceba30008f926826a6c3bf869efc97b906d in /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties 
# Wed, 28 Mar 2018 05:12:00 GMT
COPY file:2dd6f92687b208fdde8d0d8fa36354e2e373245faae443043799a7cca9e3538a in /entrypoint.sh 
# Wed, 28 Mar 2018 05:12:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 28 Mar 2018 05:12:00 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:2115d46e739639b0003acb80a3ecc4a513e7342139b4e75356e908cc3f8da0d9`  
		Last Modified: Tue, 13 Mar 2018 22:49:37 GMT  
		Size: 48.1 MB (48061488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa734ed5aa001b3091db69d84da99214d28d5e2bf18ad0bc53e376d23fdc681`  
		Last Modified: Wed, 14 Mar 2018 00:38:56 GMT  
		Size: 8.6 MB (8633487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801e6e5516c1babec1897bf4f28b06f246bf275c0275b2e51f2135f579e5a37f`  
		Last Modified: Wed, 14 Mar 2018 00:38:55 GMT  
		Size: 9.1 MB (9103503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8588f1af8d84229b7ea45334888a17f05339362bb918f768adf94315b8e6c150`  
		Last Modified: Wed, 14 Mar 2018 00:39:29 GMT  
		Size: 49.2 MB (49204172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916d2711f8ee1de4ab659162f0fb2d03454d427db2b72545cef0e9c7720a55b5`  
		Last Modified: Wed, 14 Mar 2018 11:52:28 GMT  
		Size: 893.4 KB (893363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb9a53c345d81ad8a261443a92d603617b7b0f3c8d61c2828f08ad172829a4e`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af2dd6a0a77f77827f0c10883cc97695d08bd9fa8d203124b63bce5d8e32c0a`  
		Last Modified: Wed, 14 Mar 2018 11:52:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0519972ef87d1d7dc8cc2b734fad1999d79abd8e5c2b0e32b4c70fe85e25005`  
		Last Modified: Wed, 14 Mar 2018 11:52:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712efbf66aaf3944af91c3f31d1d452922b4160c7b0fc8f7a505eac2ca36d04c`  
		Last Modified: Mon, 19 Mar 2018 22:03:59 GMT  
		Size: 284.8 MB (284826900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c078e8d9c6855801ab64ff174e34c0a6e32d784594390a8412b02954d11a43c`  
		Last Modified: Wed, 28 Mar 2018 02:38:32 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa24400877d42d683e1c473e45653da8be540ee1f24cac9a18247dbde8a73f1`  
		Last Modified: Wed, 28 Mar 2018 02:38:33 GMT  
		Size: 2.5 KB (2530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb01a5d546c1d266bee249e0602e651a9faaaca032fa67631d5c328c1d6b5bea`  
		Last Modified: Wed, 28 Mar 2018 02:41:32 GMT  
		Size: 11.3 MB (11271126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9197615969e7474421191b6902de974d28a401f6163bd66500036594cf452045`  
		Last Modified: Wed, 28 Mar 2018 02:41:30 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa0331e13f094f773544e86de78e1d617cee76bead84a50c495fa441a6971af7`  
		Last Modified: Wed, 28 Mar 2018 05:12:42 GMT  
		Size: 139.4 MB (139410393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20b90328a9b8d3460a37ceea60d4f8048232e94b18577092dab5247c4a6e7858`  
		Last Modified: Wed, 28 Mar 2018 05:12:31 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2d3ee64f3900c1382ea6488001dba4e5cea6e3bf34ebb409f77a0c7508a56a4`  
		Last Modified: Wed, 28 Mar 2018 05:13:29 GMT  
		Size: 11.0 MB (11018524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b470f979c27907ac9a54f5f7e4dc0b3589a7ddbb4532de7109fdb0961d19336b`  
		Last Modified: Wed, 28 Mar 2018 05:13:27 GMT  
		Size: 693.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c407d5f36471a9cbadbd54a15bf6cfe523afa199dba7920d63147988d1d917c`  
		Last Modified: Wed, 28 Mar 2018 05:13:29 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:626de7c931df21015d5b37d04d1124115fda2b36f6a30701917df593b0090ae6`  
		Last Modified: Wed, 28 Mar 2018 05:13:27 GMT  
		Size: 927.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.2`

```console
$ docker pull geonetwork@sha256:72bc7717ff7a0badb2e58b44acd4a4d7dadf1e8791dc59caf1e0447697cf27d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `geonetwork:3.2` - linux; amd64

```console
$ docker pull geonetwork@sha256:56c95e2d10e50e2c99ee577657a23519f60a41aca4f5f0227bf432b5e293be38
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **421.7 MB (421710901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c7d816a1a43dda550e02f9fa616b4cb9416aa715300627efce6bace042508b4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:11:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:11:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:11:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 03:48:31 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 20 Mar 2018 03:48:31 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 03:48:32 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 20 Mar 2018 03:48:32 GMT
WORKDIR /usr/local/tomcat
# Tue, 20 Mar 2018 03:48:33 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 20 Mar 2018 03:48:33 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 20 Mar 2018 03:48:33 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Tue, 20 Mar 2018 03:48:34 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 20 Mar 2018 03:48:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 03:48:41 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 20 Mar 2018 04:02:18 GMT
ENV TOMCAT_MAJOR=8
# Tue, 20 Mar 2018 04:02:18 GMT
ENV TOMCAT_VERSION=8.0.50
# Tue, 20 Mar 2018 04:02:18 GMT
ENV TOMCAT_SHA1=ec66581d322a8ef58e3988fc72e2c076968f3e2e
# Tue, 20 Mar 2018 04:02:19 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz
# Tue, 20 Mar 2018 04:02:19 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc
# Tue, 20 Mar 2018 04:03:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 20 Mar 2018 04:03:07 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 20 Mar 2018 04:03:07 GMT
EXPOSE 8080/tcp
# Tue, 20 Mar 2018 04:03:07 GMT
CMD ["catalina.sh" "run"]
# Tue, 20 Mar 2018 19:47:36 GMT
ENV GN_FILE=geonetwork.war
# Tue, 20 Mar 2018 19:47:37 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Tue, 20 Mar 2018 19:47:37 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Tue, 20 Mar 2018 19:47:37 GMT
ENV GN_VERSION=3.2.2
# Tue, 20 Mar 2018 19:47:37 GMT
ENV GN_DOWNLOAD_MD5=93b5279223503106ffeea3e9ca697805
# Tue, 20 Mar 2018 19:47:38 GMT
WORKDIR /usr/local/tomcat/webapps
# Tue, 20 Mar 2018 19:47:48 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Tue, 20 Mar 2018 19:47:49 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Tue, 20 Mar 2018 19:47:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Mar 2018 19:47:50 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbabc90b2b88af86284508836e854ab5ea90ac04c5fb5f0cf32caca8245d7de`  
		Last Modified: Mon, 19 Mar 2018 23:29:49 GMT  
		Size: 155.2 MB (155214277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982930be204d019954bbd61d64a6c48bc498d0577b503edb7d976fa51225f45f`  
		Last Modified: Mon, 19 Mar 2018 23:29:17 GMT  
		Size: 272.1 KB (272080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80869be517389a2d74ddfd0de5f1105ab510dc81ac815a926c440b4ee9bdec2d`  
		Last Modified: Tue, 20 Mar 2018 04:32:14 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc6831d2466cdd1a4cef5b376bb153895869c1c64e65b2cacb271fa3271d6a5`  
		Last Modified: Tue, 20 Mar 2018 04:32:15 GMT  
		Size: 545.0 KB (544974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b247bcefc676b6ce385fea0e54575db507cf55e7e3ec984654ca92d8ca2fa57`  
		Last Modified: Tue, 20 Mar 2018 04:34:27 GMT  
		Size: 10.4 MB (10418919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868a2e87898b7122cb0c411a6cbefbeb0b6101063259a08ce7cb9c31826fefe5`  
		Last Modified: Tue, 20 Mar 2018 04:34:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3c1a928e410e328248c754f62d619a05242f3c4b4c7adf06c6e2255c3d87c2e`  
		Last Modified: Tue, 20 Mar 2018 20:16:25 GMT  
		Size: 193.8 MB (193828778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d959b67671857aef7d4860957ca7f925fef77ef97764299b94db732eb88564`  
		Last Modified: Tue, 20 Mar 2018 20:16:02 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.2.2`

```console
$ docker pull geonetwork@sha256:72bc7717ff7a0badb2e58b44acd4a4d7dadf1e8791dc59caf1e0447697cf27d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `geonetwork:3.2.2` - linux; amd64

```console
$ docker pull geonetwork@sha256:56c95e2d10e50e2c99ee577657a23519f60a41aca4f5f0227bf432b5e293be38
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **421.7 MB (421710901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c7d816a1a43dda550e02f9fa616b4cb9416aa715300627efce6bace042508b4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:11:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:11:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:11:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 03:48:31 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 20 Mar 2018 03:48:31 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 03:48:32 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 20 Mar 2018 03:48:32 GMT
WORKDIR /usr/local/tomcat
# Tue, 20 Mar 2018 03:48:33 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 20 Mar 2018 03:48:33 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 20 Mar 2018 03:48:33 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Tue, 20 Mar 2018 03:48:34 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 20 Mar 2018 03:48:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 03:48:41 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 20 Mar 2018 04:02:18 GMT
ENV TOMCAT_MAJOR=8
# Tue, 20 Mar 2018 04:02:18 GMT
ENV TOMCAT_VERSION=8.0.50
# Tue, 20 Mar 2018 04:02:18 GMT
ENV TOMCAT_SHA1=ec66581d322a8ef58e3988fc72e2c076968f3e2e
# Tue, 20 Mar 2018 04:02:19 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz
# Tue, 20 Mar 2018 04:02:19 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc
# Tue, 20 Mar 2018 04:03:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 20 Mar 2018 04:03:07 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 20 Mar 2018 04:03:07 GMT
EXPOSE 8080/tcp
# Tue, 20 Mar 2018 04:03:07 GMT
CMD ["catalina.sh" "run"]
# Tue, 20 Mar 2018 19:47:36 GMT
ENV GN_FILE=geonetwork.war
# Tue, 20 Mar 2018 19:47:37 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Tue, 20 Mar 2018 19:47:37 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Tue, 20 Mar 2018 19:47:37 GMT
ENV GN_VERSION=3.2.2
# Tue, 20 Mar 2018 19:47:37 GMT
ENV GN_DOWNLOAD_MD5=93b5279223503106ffeea3e9ca697805
# Tue, 20 Mar 2018 19:47:38 GMT
WORKDIR /usr/local/tomcat/webapps
# Tue, 20 Mar 2018 19:47:48 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Tue, 20 Mar 2018 19:47:49 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Tue, 20 Mar 2018 19:47:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Mar 2018 19:47:50 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbabc90b2b88af86284508836e854ab5ea90ac04c5fb5f0cf32caca8245d7de`  
		Last Modified: Mon, 19 Mar 2018 23:29:49 GMT  
		Size: 155.2 MB (155214277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982930be204d019954bbd61d64a6c48bc498d0577b503edb7d976fa51225f45f`  
		Last Modified: Mon, 19 Mar 2018 23:29:17 GMT  
		Size: 272.1 KB (272080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80869be517389a2d74ddfd0de5f1105ab510dc81ac815a926c440b4ee9bdec2d`  
		Last Modified: Tue, 20 Mar 2018 04:32:14 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc6831d2466cdd1a4cef5b376bb153895869c1c64e65b2cacb271fa3271d6a5`  
		Last Modified: Tue, 20 Mar 2018 04:32:15 GMT  
		Size: 545.0 KB (544974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b247bcefc676b6ce385fea0e54575db507cf55e7e3ec984654ca92d8ca2fa57`  
		Last Modified: Tue, 20 Mar 2018 04:34:27 GMT  
		Size: 10.4 MB (10418919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868a2e87898b7122cb0c411a6cbefbeb0b6101063259a08ce7cb9c31826fefe5`  
		Last Modified: Tue, 20 Mar 2018 04:34:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3c1a928e410e328248c754f62d619a05242f3c4b4c7adf06c6e2255c3d87c2e`  
		Last Modified: Tue, 20 Mar 2018 20:16:25 GMT  
		Size: 193.8 MB (193828778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d959b67671857aef7d4860957ca7f925fef77ef97764299b94db732eb88564`  
		Last Modified: Tue, 20 Mar 2018 20:16:02 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.2.2-postgres`

```console
$ docker pull geonetwork@sha256:af6e66a0aefc12293fbc56b6fd2c266132910dcbdfba9dac2068ca46d590f00d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `geonetwork:3.2.2-postgres` - linux; amd64

```console
$ docker pull geonetwork@sha256:b6d0e6adce6f134773ac7c640ac45bbe17a0cd78defa47df7b5355b797f9f32d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.0 MB (434975304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2f2d2092ba26ba26dfcfc7d67309f8cf8ac14672fe7d59ffe4300a56a635862`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:11:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:11:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:11:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 03:48:31 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 20 Mar 2018 03:48:31 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 03:48:32 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 20 Mar 2018 03:48:32 GMT
WORKDIR /usr/local/tomcat
# Tue, 20 Mar 2018 03:48:33 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 20 Mar 2018 03:48:33 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 20 Mar 2018 03:48:33 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Tue, 20 Mar 2018 03:48:34 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 20 Mar 2018 03:48:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 03:48:41 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 20 Mar 2018 04:02:18 GMT
ENV TOMCAT_MAJOR=8
# Tue, 20 Mar 2018 04:02:18 GMT
ENV TOMCAT_VERSION=8.0.50
# Tue, 20 Mar 2018 04:02:18 GMT
ENV TOMCAT_SHA1=ec66581d322a8ef58e3988fc72e2c076968f3e2e
# Tue, 20 Mar 2018 04:02:19 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz
# Tue, 20 Mar 2018 04:02:19 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc
# Tue, 20 Mar 2018 04:03:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 20 Mar 2018 04:03:07 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 20 Mar 2018 04:03:07 GMT
EXPOSE 8080/tcp
# Tue, 20 Mar 2018 04:03:07 GMT
CMD ["catalina.sh" "run"]
# Tue, 20 Mar 2018 19:47:36 GMT
ENV GN_FILE=geonetwork.war
# Tue, 20 Mar 2018 19:47:37 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Tue, 20 Mar 2018 19:47:37 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Tue, 20 Mar 2018 19:47:37 GMT
ENV GN_VERSION=3.2.2
# Tue, 20 Mar 2018 19:47:37 GMT
ENV GN_DOWNLOAD_MD5=93b5279223503106ffeea3e9ca697805
# Tue, 20 Mar 2018 19:47:38 GMT
WORKDIR /usr/local/tomcat/webapps
# Tue, 20 Mar 2018 19:47:48 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Tue, 20 Mar 2018 19:47:49 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Tue, 20 Mar 2018 19:47:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Mar 2018 19:47:50 GMT
CMD ["catalina.sh" "run"]
# Tue, 20 Mar 2018 19:58:00 GMT
RUN apt-get update && apt-get install -y postgresql-client &&     rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 19:58:01 GMT
RUN sed -i -e 's#<import resource="../config-db/h2.xml"/>#<!--<import resource="../config-db/h2.xml"/> -->#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml
# Tue, 20 Mar 2018 19:58:01 GMT
COPY file:e2fbb7cf0447a8bc2706127d7dc9bceba30008f926826a6c3bf869efc97b906d in /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties 
# Tue, 20 Mar 2018 19:58:02 GMT
COPY file:2dd6f92687b208fdde8d0d8fa36354e2e373245faae443043799a7cca9e3538a in /entrypoint.sh 
# Tue, 20 Mar 2018 19:58:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Mar 2018 19:58:02 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbabc90b2b88af86284508836e854ab5ea90ac04c5fb5f0cf32caca8245d7de`  
		Last Modified: Mon, 19 Mar 2018 23:29:49 GMT  
		Size: 155.2 MB (155214277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982930be204d019954bbd61d64a6c48bc498d0577b503edb7d976fa51225f45f`  
		Last Modified: Mon, 19 Mar 2018 23:29:17 GMT  
		Size: 272.1 KB (272080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80869be517389a2d74ddfd0de5f1105ab510dc81ac815a926c440b4ee9bdec2d`  
		Last Modified: Tue, 20 Mar 2018 04:32:14 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc6831d2466cdd1a4cef5b376bb153895869c1c64e65b2cacb271fa3271d6a5`  
		Last Modified: Tue, 20 Mar 2018 04:32:15 GMT  
		Size: 545.0 KB (544974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b247bcefc676b6ce385fea0e54575db507cf55e7e3ec984654ca92d8ca2fa57`  
		Last Modified: Tue, 20 Mar 2018 04:34:27 GMT  
		Size: 10.4 MB (10418919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868a2e87898b7122cb0c411a6cbefbeb0b6101063259a08ce7cb9c31826fefe5`  
		Last Modified: Tue, 20 Mar 2018 04:34:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3c1a928e410e328248c754f62d619a05242f3c4b4c7adf06c6e2255c3d87c2e`  
		Last Modified: Tue, 20 Mar 2018 20:16:25 GMT  
		Size: 193.8 MB (193828778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d959b67671857aef7d4860957ca7f925fef77ef97764299b94db732eb88564`  
		Last Modified: Tue, 20 Mar 2018 20:16:02 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12ef2cf671d9a5ffc1c9b9d4b53ecad27a6c16c25896f15075b91daf8f8ae22c`  
		Last Modified: Tue, 20 Mar 2018 20:17:12 GMT  
		Size: 13.3 MB (13261639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23dc72b034b1beaa310eddc3558ccf23c01584f20e6e4295b92158407e14f0e`  
		Last Modified: Tue, 20 Mar 2018 20:17:08 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbec57c5a53af769856400fb95248d04900914088fdf85993904c9cf42d3309f`  
		Last Modified: Tue, 20 Mar 2018 20:17:08 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eea55957836830e7ab01fdcd367ce752123a6d8faae3ffc0caba14865e4e3ee`  
		Last Modified: Tue, 20 Mar 2018 20:17:08 GMT  
		Size: 925.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.2-postgres`

```console
$ docker pull geonetwork@sha256:af6e66a0aefc12293fbc56b6fd2c266132910dcbdfba9dac2068ca46d590f00d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `geonetwork:3.2-postgres` - linux; amd64

```console
$ docker pull geonetwork@sha256:b6d0e6adce6f134773ac7c640ac45bbe17a0cd78defa47df7b5355b797f9f32d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.0 MB (434975304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2f2d2092ba26ba26dfcfc7d67309f8cf8ac14672fe7d59ffe4300a56a635862`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:11:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:11:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:11:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 03:48:31 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 20 Mar 2018 03:48:31 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 03:48:32 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 20 Mar 2018 03:48:32 GMT
WORKDIR /usr/local/tomcat
# Tue, 20 Mar 2018 03:48:33 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 20 Mar 2018 03:48:33 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 20 Mar 2018 03:48:33 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Tue, 20 Mar 2018 03:48:34 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 20 Mar 2018 03:48:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 03:48:41 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 20 Mar 2018 04:02:18 GMT
ENV TOMCAT_MAJOR=8
# Tue, 20 Mar 2018 04:02:18 GMT
ENV TOMCAT_VERSION=8.0.50
# Tue, 20 Mar 2018 04:02:18 GMT
ENV TOMCAT_SHA1=ec66581d322a8ef58e3988fc72e2c076968f3e2e
# Tue, 20 Mar 2018 04:02:19 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz
# Tue, 20 Mar 2018 04:02:19 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc
# Tue, 20 Mar 2018 04:03:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 20 Mar 2018 04:03:07 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 20 Mar 2018 04:03:07 GMT
EXPOSE 8080/tcp
# Tue, 20 Mar 2018 04:03:07 GMT
CMD ["catalina.sh" "run"]
# Tue, 20 Mar 2018 19:47:36 GMT
ENV GN_FILE=geonetwork.war
# Tue, 20 Mar 2018 19:47:37 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Tue, 20 Mar 2018 19:47:37 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Tue, 20 Mar 2018 19:47:37 GMT
ENV GN_VERSION=3.2.2
# Tue, 20 Mar 2018 19:47:37 GMT
ENV GN_DOWNLOAD_MD5=93b5279223503106ffeea3e9ca697805
# Tue, 20 Mar 2018 19:47:38 GMT
WORKDIR /usr/local/tomcat/webapps
# Tue, 20 Mar 2018 19:47:48 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Tue, 20 Mar 2018 19:47:49 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Tue, 20 Mar 2018 19:47:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Mar 2018 19:47:50 GMT
CMD ["catalina.sh" "run"]
# Tue, 20 Mar 2018 19:58:00 GMT
RUN apt-get update && apt-get install -y postgresql-client &&     rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 19:58:01 GMT
RUN sed -i -e 's#<import resource="../config-db/h2.xml"/>#<!--<import resource="../config-db/h2.xml"/> -->#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml
# Tue, 20 Mar 2018 19:58:01 GMT
COPY file:e2fbb7cf0447a8bc2706127d7dc9bceba30008f926826a6c3bf869efc97b906d in /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties 
# Tue, 20 Mar 2018 19:58:02 GMT
COPY file:2dd6f92687b208fdde8d0d8fa36354e2e373245faae443043799a7cca9e3538a in /entrypoint.sh 
# Tue, 20 Mar 2018 19:58:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Mar 2018 19:58:02 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbabc90b2b88af86284508836e854ab5ea90ac04c5fb5f0cf32caca8245d7de`  
		Last Modified: Mon, 19 Mar 2018 23:29:49 GMT  
		Size: 155.2 MB (155214277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982930be204d019954bbd61d64a6c48bc498d0577b503edb7d976fa51225f45f`  
		Last Modified: Mon, 19 Mar 2018 23:29:17 GMT  
		Size: 272.1 KB (272080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80869be517389a2d74ddfd0de5f1105ab510dc81ac815a926c440b4ee9bdec2d`  
		Last Modified: Tue, 20 Mar 2018 04:32:14 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc6831d2466cdd1a4cef5b376bb153895869c1c64e65b2cacb271fa3271d6a5`  
		Last Modified: Tue, 20 Mar 2018 04:32:15 GMT  
		Size: 545.0 KB (544974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b247bcefc676b6ce385fea0e54575db507cf55e7e3ec984654ca92d8ca2fa57`  
		Last Modified: Tue, 20 Mar 2018 04:34:27 GMT  
		Size: 10.4 MB (10418919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868a2e87898b7122cb0c411a6cbefbeb0b6101063259a08ce7cb9c31826fefe5`  
		Last Modified: Tue, 20 Mar 2018 04:34:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3c1a928e410e328248c754f62d619a05242f3c4b4c7adf06c6e2255c3d87c2e`  
		Last Modified: Tue, 20 Mar 2018 20:16:25 GMT  
		Size: 193.8 MB (193828778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d959b67671857aef7d4860957ca7f925fef77ef97764299b94db732eb88564`  
		Last Modified: Tue, 20 Mar 2018 20:16:02 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12ef2cf671d9a5ffc1c9b9d4b53ecad27a6c16c25896f15075b91daf8f8ae22c`  
		Last Modified: Tue, 20 Mar 2018 20:17:12 GMT  
		Size: 13.3 MB (13261639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23dc72b034b1beaa310eddc3558ccf23c01584f20e6e4295b92158407e14f0e`  
		Last Modified: Tue, 20 Mar 2018 20:17:08 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbec57c5a53af769856400fb95248d04900914088fdf85993904c9cf42d3309f`  
		Last Modified: Tue, 20 Mar 2018 20:17:08 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eea55957836830e7ab01fdcd367ce752123a6d8faae3ffc0caba14865e4e3ee`  
		Last Modified: Tue, 20 Mar 2018 20:17:08 GMT  
		Size: 925.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.4`

```console
$ docker pull geonetwork@sha256:3f1f3e9239066ca1d32a8d1732d360a7bfae327c8cc83e81609b0df32dee29be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `geonetwork:3.4` - linux; amd64

```console
$ docker pull geonetwork@sha256:f7797a47e5efe2f65663d7cf86d4851fb94ab4fbbbf7deb93c3ba853c92b5948
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **522.9 MB (522904551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:940fc0a89ac26693bcfa8e1487815be7da92c3e1423c6b61304d313acf83aa5a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:11:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:11:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:11:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 03:48:31 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 20 Mar 2018 03:48:31 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 03:48:32 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 20 Mar 2018 03:48:32 GMT
WORKDIR /usr/local/tomcat
# Tue, 20 Mar 2018 03:48:33 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 20 Mar 2018 03:48:33 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 20 Mar 2018 03:48:33 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Tue, 20 Mar 2018 03:48:34 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 20 Mar 2018 03:48:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 03:48:41 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 20 Mar 2018 04:02:18 GMT
ENV TOMCAT_MAJOR=8
# Tue, 20 Mar 2018 04:02:18 GMT
ENV TOMCAT_VERSION=8.0.50
# Tue, 20 Mar 2018 04:02:18 GMT
ENV TOMCAT_SHA1=ec66581d322a8ef58e3988fc72e2c076968f3e2e
# Tue, 20 Mar 2018 04:02:19 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz
# Tue, 20 Mar 2018 04:02:19 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc
# Tue, 20 Mar 2018 04:03:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 20 Mar 2018 04:03:07 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 20 Mar 2018 04:03:07 GMT
EXPOSE 8080/tcp
# Tue, 20 Mar 2018 04:03:07 GMT
CMD ["catalina.sh" "run"]
# Tue, 20 Mar 2018 19:47:36 GMT
ENV GN_FILE=geonetwork.war
# Tue, 20 Mar 2018 19:47:37 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Tue, 20 Mar 2018 19:47:37 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Tue, 20 Mar 2018 20:00:25 GMT
ENV GN_VERSION=3.4.1
# Tue, 20 Mar 2018 20:00:25 GMT
ENV GN_DOWNLOAD_MD5=7fc1e3b86769f314618df4321cf95cbc
# Tue, 20 Mar 2018 20:00:26 GMT
WORKDIR /usr/local/tomcat/webapps
# Tue, 20 Mar 2018 20:00:44 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Tue, 20 Mar 2018 20:00:46 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Tue, 20 Mar 2018 20:00:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Mar 2018 20:00:46 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbabc90b2b88af86284508836e854ab5ea90ac04c5fb5f0cf32caca8245d7de`  
		Last Modified: Mon, 19 Mar 2018 23:29:49 GMT  
		Size: 155.2 MB (155214277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982930be204d019954bbd61d64a6c48bc498d0577b503edb7d976fa51225f45f`  
		Last Modified: Mon, 19 Mar 2018 23:29:17 GMT  
		Size: 272.1 KB (272080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80869be517389a2d74ddfd0de5f1105ab510dc81ac815a926c440b4ee9bdec2d`  
		Last Modified: Tue, 20 Mar 2018 04:32:14 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc6831d2466cdd1a4cef5b376bb153895869c1c64e65b2cacb271fa3271d6a5`  
		Last Modified: Tue, 20 Mar 2018 04:32:15 GMT  
		Size: 545.0 KB (544974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b247bcefc676b6ce385fea0e54575db507cf55e7e3ec984654ca92d8ca2fa57`  
		Last Modified: Tue, 20 Mar 2018 04:34:27 GMT  
		Size: 10.4 MB (10418919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868a2e87898b7122cb0c411a6cbefbeb0b6101063259a08ce7cb9c31826fefe5`  
		Last Modified: Tue, 20 Mar 2018 04:34:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f044dac0eb6e67bee441baec30675c8afc4adc929b6884187c21c46ef601a40a`  
		Last Modified: Tue, 20 Mar 2018 20:18:28 GMT  
		Size: 295.0 MB (295022429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b809f745a535e9bd4df805feb23d6022e68717e2a5f9c37df014e8225b1b496a`  
		Last Modified: Tue, 20 Mar 2018 20:17:58 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.4.1`

```console
$ docker pull geonetwork@sha256:3f1f3e9239066ca1d32a8d1732d360a7bfae327c8cc83e81609b0df32dee29be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `geonetwork:3.4.1` - linux; amd64

```console
$ docker pull geonetwork@sha256:f7797a47e5efe2f65663d7cf86d4851fb94ab4fbbbf7deb93c3ba853c92b5948
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **522.9 MB (522904551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:940fc0a89ac26693bcfa8e1487815be7da92c3e1423c6b61304d313acf83aa5a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:11:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:11:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:11:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 03:48:31 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 20 Mar 2018 03:48:31 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 03:48:32 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 20 Mar 2018 03:48:32 GMT
WORKDIR /usr/local/tomcat
# Tue, 20 Mar 2018 03:48:33 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 20 Mar 2018 03:48:33 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 20 Mar 2018 03:48:33 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Tue, 20 Mar 2018 03:48:34 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 20 Mar 2018 03:48:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 03:48:41 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 20 Mar 2018 04:02:18 GMT
ENV TOMCAT_MAJOR=8
# Tue, 20 Mar 2018 04:02:18 GMT
ENV TOMCAT_VERSION=8.0.50
# Tue, 20 Mar 2018 04:02:18 GMT
ENV TOMCAT_SHA1=ec66581d322a8ef58e3988fc72e2c076968f3e2e
# Tue, 20 Mar 2018 04:02:19 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz
# Tue, 20 Mar 2018 04:02:19 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc
# Tue, 20 Mar 2018 04:03:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 20 Mar 2018 04:03:07 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 20 Mar 2018 04:03:07 GMT
EXPOSE 8080/tcp
# Tue, 20 Mar 2018 04:03:07 GMT
CMD ["catalina.sh" "run"]
# Tue, 20 Mar 2018 19:47:36 GMT
ENV GN_FILE=geonetwork.war
# Tue, 20 Mar 2018 19:47:37 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Tue, 20 Mar 2018 19:47:37 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Tue, 20 Mar 2018 20:00:25 GMT
ENV GN_VERSION=3.4.1
# Tue, 20 Mar 2018 20:00:25 GMT
ENV GN_DOWNLOAD_MD5=7fc1e3b86769f314618df4321cf95cbc
# Tue, 20 Mar 2018 20:00:26 GMT
WORKDIR /usr/local/tomcat/webapps
# Tue, 20 Mar 2018 20:00:44 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Tue, 20 Mar 2018 20:00:46 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Tue, 20 Mar 2018 20:00:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Mar 2018 20:00:46 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbabc90b2b88af86284508836e854ab5ea90ac04c5fb5f0cf32caca8245d7de`  
		Last Modified: Mon, 19 Mar 2018 23:29:49 GMT  
		Size: 155.2 MB (155214277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982930be204d019954bbd61d64a6c48bc498d0577b503edb7d976fa51225f45f`  
		Last Modified: Mon, 19 Mar 2018 23:29:17 GMT  
		Size: 272.1 KB (272080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80869be517389a2d74ddfd0de5f1105ab510dc81ac815a926c440b4ee9bdec2d`  
		Last Modified: Tue, 20 Mar 2018 04:32:14 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc6831d2466cdd1a4cef5b376bb153895869c1c64e65b2cacb271fa3271d6a5`  
		Last Modified: Tue, 20 Mar 2018 04:32:15 GMT  
		Size: 545.0 KB (544974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b247bcefc676b6ce385fea0e54575db507cf55e7e3ec984654ca92d8ca2fa57`  
		Last Modified: Tue, 20 Mar 2018 04:34:27 GMT  
		Size: 10.4 MB (10418919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868a2e87898b7122cb0c411a6cbefbeb0b6101063259a08ce7cb9c31826fefe5`  
		Last Modified: Tue, 20 Mar 2018 04:34:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f044dac0eb6e67bee441baec30675c8afc4adc929b6884187c21c46ef601a40a`  
		Last Modified: Tue, 20 Mar 2018 20:18:28 GMT  
		Size: 295.0 MB (295022429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b809f745a535e9bd4df805feb23d6022e68717e2a5f9c37df014e8225b1b496a`  
		Last Modified: Tue, 20 Mar 2018 20:17:58 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.4.1-postgres`

```console
$ docker pull geonetwork@sha256:2fe1bf6ec22f39ce1a5b7023b3a6bf0b8be16752f614b7e5edc5c2afbb4902bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `geonetwork:3.4.1-postgres` - linux; amd64

```console
$ docker pull geonetwork@sha256:fd9dd5ca929d9bf497e8575af1cfa9cd57245b367cc5461463200e80a9352265
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **536.2 MB (536169087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47b35dca27786e88ae5e7c5d9ddbf926759a881ea9af5ed8c451966cc1dd3b14`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:11:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:11:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:11:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 03:48:31 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 20 Mar 2018 03:48:31 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 03:48:32 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 20 Mar 2018 03:48:32 GMT
WORKDIR /usr/local/tomcat
# Tue, 20 Mar 2018 03:48:33 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 20 Mar 2018 03:48:33 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 20 Mar 2018 03:48:33 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Tue, 20 Mar 2018 03:48:34 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 20 Mar 2018 03:48:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 03:48:41 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 20 Mar 2018 04:02:18 GMT
ENV TOMCAT_MAJOR=8
# Tue, 20 Mar 2018 04:02:18 GMT
ENV TOMCAT_VERSION=8.0.50
# Tue, 20 Mar 2018 04:02:18 GMT
ENV TOMCAT_SHA1=ec66581d322a8ef58e3988fc72e2c076968f3e2e
# Tue, 20 Mar 2018 04:02:19 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz
# Tue, 20 Mar 2018 04:02:19 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc
# Tue, 20 Mar 2018 04:03:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 20 Mar 2018 04:03:07 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 20 Mar 2018 04:03:07 GMT
EXPOSE 8080/tcp
# Tue, 20 Mar 2018 04:03:07 GMT
CMD ["catalina.sh" "run"]
# Tue, 20 Mar 2018 19:47:36 GMT
ENV GN_FILE=geonetwork.war
# Tue, 20 Mar 2018 19:47:37 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Tue, 20 Mar 2018 19:47:37 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Tue, 20 Mar 2018 20:00:25 GMT
ENV GN_VERSION=3.4.1
# Tue, 20 Mar 2018 20:00:25 GMT
ENV GN_DOWNLOAD_MD5=7fc1e3b86769f314618df4321cf95cbc
# Tue, 20 Mar 2018 20:00:26 GMT
WORKDIR /usr/local/tomcat/webapps
# Tue, 20 Mar 2018 20:00:44 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Tue, 20 Mar 2018 20:00:46 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Tue, 20 Mar 2018 20:00:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Mar 2018 20:00:46 GMT
CMD ["catalina.sh" "run"]
# Tue, 20 Mar 2018 20:15:35 GMT
RUN apt-get update && apt-get install -y postgresql-client &&     rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 20:15:36 GMT
RUN sed -i -e 's#<import resource="../config-db/h2.xml"/>#<!--<import resource="../config-db/h2.xml"/> -->#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml
# Tue, 20 Mar 2018 20:15:36 GMT
COPY file:e2fbb7cf0447a8bc2706127d7dc9bceba30008f926826a6c3bf869efc97b906d in /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties 
# Tue, 20 Mar 2018 20:15:36 GMT
COPY file:2dd6f92687b208fdde8d0d8fa36354e2e373245faae443043799a7cca9e3538a in /entrypoint.sh 
# Tue, 20 Mar 2018 20:15:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Mar 2018 20:15:37 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbabc90b2b88af86284508836e854ab5ea90ac04c5fb5f0cf32caca8245d7de`  
		Last Modified: Mon, 19 Mar 2018 23:29:49 GMT  
		Size: 155.2 MB (155214277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982930be204d019954bbd61d64a6c48bc498d0577b503edb7d976fa51225f45f`  
		Last Modified: Mon, 19 Mar 2018 23:29:17 GMT  
		Size: 272.1 KB (272080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80869be517389a2d74ddfd0de5f1105ab510dc81ac815a926c440b4ee9bdec2d`  
		Last Modified: Tue, 20 Mar 2018 04:32:14 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc6831d2466cdd1a4cef5b376bb153895869c1c64e65b2cacb271fa3271d6a5`  
		Last Modified: Tue, 20 Mar 2018 04:32:15 GMT  
		Size: 545.0 KB (544974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b247bcefc676b6ce385fea0e54575db507cf55e7e3ec984654ca92d8ca2fa57`  
		Last Modified: Tue, 20 Mar 2018 04:34:27 GMT  
		Size: 10.4 MB (10418919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868a2e87898b7122cb0c411a6cbefbeb0b6101063259a08ce7cb9c31826fefe5`  
		Last Modified: Tue, 20 Mar 2018 04:34:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f044dac0eb6e67bee441baec30675c8afc4adc929b6884187c21c46ef601a40a`  
		Last Modified: Tue, 20 Mar 2018 20:18:28 GMT  
		Size: 295.0 MB (295022429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b809f745a535e9bd4df805feb23d6022e68717e2a5f9c37df014e8225b1b496a`  
		Last Modified: Tue, 20 Mar 2018 20:17:58 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be3a058988d866ad58defdfbbd903e3de47d8928ad3112a9520255c7c6ec788c`  
		Last Modified: Tue, 20 Mar 2018 20:29:51 GMT  
		Size: 13.3 MB (13261770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a5ef50e4cd316b5323351a06747274a8152203f551368a2d3b1af8026e88876`  
		Last Modified: Tue, 20 Mar 2018 20:29:46 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaffb1653ff2be49aa82e12e177f183a581fea21d0d42a699312c43c9fd63019`  
		Last Modified: Tue, 20 Mar 2018 20:29:46 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a598cea036297bf5468c5d6f3abe53b7bda8d5ddd45bc097a0aae458c684efa`  
		Last Modified: Tue, 20 Mar 2018 20:29:46 GMT  
		Size: 927.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:3.4-postgres`

```console
$ docker pull geonetwork@sha256:2fe1bf6ec22f39ce1a5b7023b3a6bf0b8be16752f614b7e5edc5c2afbb4902bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `geonetwork:3.4-postgres` - linux; amd64

```console
$ docker pull geonetwork@sha256:fd9dd5ca929d9bf497e8575af1cfa9cd57245b367cc5461463200e80a9352265
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **536.2 MB (536169087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47b35dca27786e88ae5e7c5d9ddbf926759a881ea9af5ed8c451966cc1dd3b14`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:11:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:11:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:11:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 03:48:31 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 20 Mar 2018 03:48:31 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 03:48:32 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 20 Mar 2018 03:48:32 GMT
WORKDIR /usr/local/tomcat
# Tue, 20 Mar 2018 03:48:33 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 20 Mar 2018 03:48:33 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 20 Mar 2018 03:48:33 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Tue, 20 Mar 2018 03:48:34 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 20 Mar 2018 03:48:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 03:48:41 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 20 Mar 2018 04:02:18 GMT
ENV TOMCAT_MAJOR=8
# Tue, 20 Mar 2018 04:02:18 GMT
ENV TOMCAT_VERSION=8.0.50
# Tue, 20 Mar 2018 04:02:18 GMT
ENV TOMCAT_SHA1=ec66581d322a8ef58e3988fc72e2c076968f3e2e
# Tue, 20 Mar 2018 04:02:19 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz
# Tue, 20 Mar 2018 04:02:19 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc
# Tue, 20 Mar 2018 04:03:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 20 Mar 2018 04:03:07 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 20 Mar 2018 04:03:07 GMT
EXPOSE 8080/tcp
# Tue, 20 Mar 2018 04:03:07 GMT
CMD ["catalina.sh" "run"]
# Tue, 20 Mar 2018 19:47:36 GMT
ENV GN_FILE=geonetwork.war
# Tue, 20 Mar 2018 19:47:37 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Tue, 20 Mar 2018 19:47:37 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Tue, 20 Mar 2018 20:00:25 GMT
ENV GN_VERSION=3.4.1
# Tue, 20 Mar 2018 20:00:25 GMT
ENV GN_DOWNLOAD_MD5=7fc1e3b86769f314618df4321cf95cbc
# Tue, 20 Mar 2018 20:00:26 GMT
WORKDIR /usr/local/tomcat/webapps
# Tue, 20 Mar 2018 20:00:44 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Tue, 20 Mar 2018 20:00:46 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Tue, 20 Mar 2018 20:00:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Mar 2018 20:00:46 GMT
CMD ["catalina.sh" "run"]
# Tue, 20 Mar 2018 20:15:35 GMT
RUN apt-get update && apt-get install -y postgresql-client &&     rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 20:15:36 GMT
RUN sed -i -e 's#<import resource="../config-db/h2.xml"/>#<!--<import resource="../config-db/h2.xml"/> -->#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml
# Tue, 20 Mar 2018 20:15:36 GMT
COPY file:e2fbb7cf0447a8bc2706127d7dc9bceba30008f926826a6c3bf869efc97b906d in /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties 
# Tue, 20 Mar 2018 20:15:36 GMT
COPY file:2dd6f92687b208fdde8d0d8fa36354e2e373245faae443043799a7cca9e3538a in /entrypoint.sh 
# Tue, 20 Mar 2018 20:15:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Mar 2018 20:15:37 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbabc90b2b88af86284508836e854ab5ea90ac04c5fb5f0cf32caca8245d7de`  
		Last Modified: Mon, 19 Mar 2018 23:29:49 GMT  
		Size: 155.2 MB (155214277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982930be204d019954bbd61d64a6c48bc498d0577b503edb7d976fa51225f45f`  
		Last Modified: Mon, 19 Mar 2018 23:29:17 GMT  
		Size: 272.1 KB (272080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80869be517389a2d74ddfd0de5f1105ab510dc81ac815a926c440b4ee9bdec2d`  
		Last Modified: Tue, 20 Mar 2018 04:32:14 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc6831d2466cdd1a4cef5b376bb153895869c1c64e65b2cacb271fa3271d6a5`  
		Last Modified: Tue, 20 Mar 2018 04:32:15 GMT  
		Size: 545.0 KB (544974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b247bcefc676b6ce385fea0e54575db507cf55e7e3ec984654ca92d8ca2fa57`  
		Last Modified: Tue, 20 Mar 2018 04:34:27 GMT  
		Size: 10.4 MB (10418919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868a2e87898b7122cb0c411a6cbefbeb0b6101063259a08ce7cb9c31826fefe5`  
		Last Modified: Tue, 20 Mar 2018 04:34:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f044dac0eb6e67bee441baec30675c8afc4adc929b6884187c21c46ef601a40a`  
		Last Modified: Tue, 20 Mar 2018 20:18:28 GMT  
		Size: 295.0 MB (295022429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b809f745a535e9bd4df805feb23d6022e68717e2a5f9c37df014e8225b1b496a`  
		Last Modified: Tue, 20 Mar 2018 20:17:58 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be3a058988d866ad58defdfbbd903e3de47d8928ad3112a9520255c7c6ec788c`  
		Last Modified: Tue, 20 Mar 2018 20:29:51 GMT  
		Size: 13.3 MB (13261770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a5ef50e4cd316b5323351a06747274a8152203f551368a2d3b1af8026e88876`  
		Last Modified: Tue, 20 Mar 2018 20:29:46 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaffb1653ff2be49aa82e12e177f183a581fea21d0d42a699312c43c9fd63019`  
		Last Modified: Tue, 20 Mar 2018 20:29:46 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a598cea036297bf5468c5d6f3abe53b7bda8d5ddd45bc097a0aae458c684efa`  
		Last Modified: Tue, 20 Mar 2018 20:29:46 GMT  
		Size: 927.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:latest`

```console
$ docker pull geonetwork@sha256:3f1f3e9239066ca1d32a8d1732d360a7bfae327c8cc83e81609b0df32dee29be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `geonetwork:latest` - linux; amd64

```console
$ docker pull geonetwork@sha256:f7797a47e5efe2f65663d7cf86d4851fb94ab4fbbbf7deb93c3ba853c92b5948
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **522.9 MB (522904551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:940fc0a89ac26693bcfa8e1487815be7da92c3e1423c6b61304d313acf83aa5a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:11:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:11:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:11:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 03:48:31 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 20 Mar 2018 03:48:31 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 03:48:32 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 20 Mar 2018 03:48:32 GMT
WORKDIR /usr/local/tomcat
# Tue, 20 Mar 2018 03:48:33 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 20 Mar 2018 03:48:33 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 20 Mar 2018 03:48:33 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Tue, 20 Mar 2018 03:48:34 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 20 Mar 2018 03:48:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 03:48:41 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 20 Mar 2018 04:02:18 GMT
ENV TOMCAT_MAJOR=8
# Tue, 20 Mar 2018 04:02:18 GMT
ENV TOMCAT_VERSION=8.0.50
# Tue, 20 Mar 2018 04:02:18 GMT
ENV TOMCAT_SHA1=ec66581d322a8ef58e3988fc72e2c076968f3e2e
# Tue, 20 Mar 2018 04:02:19 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz
# Tue, 20 Mar 2018 04:02:19 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc
# Tue, 20 Mar 2018 04:03:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 20 Mar 2018 04:03:07 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 20 Mar 2018 04:03:07 GMT
EXPOSE 8080/tcp
# Tue, 20 Mar 2018 04:03:07 GMT
CMD ["catalina.sh" "run"]
# Tue, 20 Mar 2018 19:47:36 GMT
ENV GN_FILE=geonetwork.war
# Tue, 20 Mar 2018 19:47:37 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Tue, 20 Mar 2018 19:47:37 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Tue, 20 Mar 2018 20:00:25 GMT
ENV GN_VERSION=3.4.1
# Tue, 20 Mar 2018 20:00:25 GMT
ENV GN_DOWNLOAD_MD5=7fc1e3b86769f314618df4321cf95cbc
# Tue, 20 Mar 2018 20:00:26 GMT
WORKDIR /usr/local/tomcat/webapps
# Tue, 20 Mar 2018 20:00:44 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Tue, 20 Mar 2018 20:00:46 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Tue, 20 Mar 2018 20:00:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Mar 2018 20:00:46 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbabc90b2b88af86284508836e854ab5ea90ac04c5fb5f0cf32caca8245d7de`  
		Last Modified: Mon, 19 Mar 2018 23:29:49 GMT  
		Size: 155.2 MB (155214277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982930be204d019954bbd61d64a6c48bc498d0577b503edb7d976fa51225f45f`  
		Last Modified: Mon, 19 Mar 2018 23:29:17 GMT  
		Size: 272.1 KB (272080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80869be517389a2d74ddfd0de5f1105ab510dc81ac815a926c440b4ee9bdec2d`  
		Last Modified: Tue, 20 Mar 2018 04:32:14 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc6831d2466cdd1a4cef5b376bb153895869c1c64e65b2cacb271fa3271d6a5`  
		Last Modified: Tue, 20 Mar 2018 04:32:15 GMT  
		Size: 545.0 KB (544974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b247bcefc676b6ce385fea0e54575db507cf55e7e3ec984654ca92d8ca2fa57`  
		Last Modified: Tue, 20 Mar 2018 04:34:27 GMT  
		Size: 10.4 MB (10418919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868a2e87898b7122cb0c411a6cbefbeb0b6101063259a08ce7cb9c31826fefe5`  
		Last Modified: Tue, 20 Mar 2018 04:34:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f044dac0eb6e67bee441baec30675c8afc4adc929b6884187c21c46ef601a40a`  
		Last Modified: Tue, 20 Mar 2018 20:18:28 GMT  
		Size: 295.0 MB (295022429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b809f745a535e9bd4df805feb23d6022e68717e2a5f9c37df014e8225b1b496a`  
		Last Modified: Tue, 20 Mar 2018 20:17:58 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `geonetwork:postgres`

```console
$ docker pull geonetwork@sha256:2fe1bf6ec22f39ce1a5b7023b3a6bf0b8be16752f614b7e5edc5c2afbb4902bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `geonetwork:postgres` - linux; amd64

```console
$ docker pull geonetwork@sha256:fd9dd5ca929d9bf497e8575af1cfa9cd57245b367cc5461463200e80a9352265
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **536.2 MB (536169087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47b35dca27786e88ae5e7c5d9ddbf926759a881ea9af5ed8c451966cc1dd3b14`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:11:11 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:11:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:11:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:11:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 03:48:31 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 20 Mar 2018 03:48:31 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 03:48:32 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 20 Mar 2018 03:48:32 GMT
WORKDIR /usr/local/tomcat
# Tue, 20 Mar 2018 03:48:33 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 20 Mar 2018 03:48:33 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 20 Mar 2018 03:48:33 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Tue, 20 Mar 2018 03:48:34 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 20 Mar 2018 03:48:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 03:48:41 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 20 Mar 2018 04:02:18 GMT
ENV TOMCAT_MAJOR=8
# Tue, 20 Mar 2018 04:02:18 GMT
ENV TOMCAT_VERSION=8.0.50
# Tue, 20 Mar 2018 04:02:18 GMT
ENV TOMCAT_SHA1=ec66581d322a8ef58e3988fc72e2c076968f3e2e
# Tue, 20 Mar 2018 04:02:19 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz
# Tue, 20 Mar 2018 04:02:19 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz.asc
# Tue, 20 Mar 2018 04:03:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 20 Mar 2018 04:03:07 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 20 Mar 2018 04:03:07 GMT
EXPOSE 8080/tcp
# Tue, 20 Mar 2018 04:03:07 GMT
CMD ["catalina.sh" "run"]
# Tue, 20 Mar 2018 19:47:36 GMT
ENV GN_FILE=geonetwork.war
# Tue, 20 Mar 2018 19:47:37 GMT
ENV DATA_DIR=/usr/local/tomcat/webapps/geonetwork/WEB-INF/data
# Tue, 20 Mar 2018 19:47:37 GMT
ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -server -Xms512m -Xmx2024m -XX:NewSize=512m -XX:MaxNewSize=1024m -XX:+UseConcMarkSweepGC
# Tue, 20 Mar 2018 20:00:25 GMT
ENV GN_VERSION=3.4.1
# Tue, 20 Mar 2018 20:00:25 GMT
ENV GN_DOWNLOAD_MD5=7fc1e3b86769f314618df4321cf95cbc
# Tue, 20 Mar 2018 20:00:26 GMT
WORKDIR /usr/local/tomcat/webapps
# Tue, 20 Mar 2018 20:00:44 GMT
RUN curl -fSL -o $GN_FILE      https://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${GN_VERSION}/geonetwork.war/download &&      echo "$GN_DOWNLOAD_MD5 *$GN_FILE" | md5sum -c &&      mkdir -p geonetwork &&      unzip -e $GN_FILE -d geonetwork &&      rm $GN_FILE
# Tue, 20 Mar 2018 20:00:46 GMT
COPY file:80432c4531c627e0cdf0de71c059d44a74d09bb678d0caf329b148a8f4b65fb9 in /entrypoint.sh 
# Tue, 20 Mar 2018 20:00:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Mar 2018 20:00:46 GMT
CMD ["catalina.sh" "run"]
# Tue, 20 Mar 2018 20:15:35 GMT
RUN apt-get update && apt-get install -y postgresql-client &&     rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 20:15:36 GMT
RUN sed -i -e 's#<import resource="../config-db/h2.xml"/>#<!--<import resource="../config-db/h2.xml"/> -->#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml && sed -i -e 's#<!--<import resource="../config-db/postgres.xml"/>-->#<import resource="../config-db/postgres.xml"/>#g' $CATALINA_HOME/webapps/geonetwork/WEB-INF/config-node/srv.xml
# Tue, 20 Mar 2018 20:15:36 GMT
COPY file:e2fbb7cf0447a8bc2706127d7dc9bceba30008f926826a6c3bf869efc97b906d in /usr/local/tomcat/webapps/geonetwork/WEB-INF/config-db/jdbc.properties 
# Tue, 20 Mar 2018 20:15:36 GMT
COPY file:2dd6f92687b208fdde8d0d8fa36354e2e373245faae443043799a7cca9e3538a in /entrypoint.sh 
# Tue, 20 Mar 2018 20:15:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Mar 2018 20:15:37 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbabc90b2b88af86284508836e854ab5ea90ac04c5fb5f0cf32caca8245d7de`  
		Last Modified: Mon, 19 Mar 2018 23:29:49 GMT  
		Size: 155.2 MB (155214277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982930be204d019954bbd61d64a6c48bc498d0577b503edb7d976fa51225f45f`  
		Last Modified: Mon, 19 Mar 2018 23:29:17 GMT  
		Size: 272.1 KB (272080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80869be517389a2d74ddfd0de5f1105ab510dc81ac815a926c440b4ee9bdec2d`  
		Last Modified: Tue, 20 Mar 2018 04:32:14 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc6831d2466cdd1a4cef5b376bb153895869c1c64e65b2cacb271fa3271d6a5`  
		Last Modified: Tue, 20 Mar 2018 04:32:15 GMT  
		Size: 545.0 KB (544974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b247bcefc676b6ce385fea0e54575db507cf55e7e3ec984654ca92d8ca2fa57`  
		Last Modified: Tue, 20 Mar 2018 04:34:27 GMT  
		Size: 10.4 MB (10418919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868a2e87898b7122cb0c411a6cbefbeb0b6101063259a08ce7cb9c31826fefe5`  
		Last Modified: Tue, 20 Mar 2018 04:34:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f044dac0eb6e67bee441baec30675c8afc4adc929b6884187c21c46ef601a40a`  
		Last Modified: Tue, 20 Mar 2018 20:18:28 GMT  
		Size: 295.0 MB (295022429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b809f745a535e9bd4df805feb23d6022e68717e2a5f9c37df014e8225b1b496a`  
		Last Modified: Tue, 20 Mar 2018 20:17:58 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be3a058988d866ad58defdfbbd903e3de47d8928ad3112a9520255c7c6ec788c`  
		Last Modified: Tue, 20 Mar 2018 20:29:51 GMT  
		Size: 13.3 MB (13261770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a5ef50e4cd316b5323351a06747274a8152203f551368a2d3b1af8026e88876`  
		Last Modified: Tue, 20 Mar 2018 20:29:46 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaffb1653ff2be49aa82e12e177f183a581fea21d0d42a699312c43c9fd63019`  
		Last Modified: Tue, 20 Mar 2018 20:29:46 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a598cea036297bf5468c5d6f3abe53b7bda8d5ddd45bc097a0aae458c684efa`  
		Last Modified: Tue, 20 Mar 2018 20:29:46 GMT  
		Size: 927.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
