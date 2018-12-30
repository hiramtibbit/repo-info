<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `xwiki`

-	[`xwiki:10`](#xwiki10)
-	[`xwiki:10.11`](#xwiki1011)
-	[`xwiki:10.11-mysql-tomcat`](#xwiki1011-mysql-tomcat)
-	[`xwiki:10.11-postgres-tomcat`](#xwiki1011-postgres-tomcat)
-	[`xwiki:10-mysql-tomcat`](#xwiki10-mysql-tomcat)
-	[`xwiki:10-postgres-tomcat`](#xwiki10-postgres-tomcat)
-	[`xwiki:9`](#xwiki9)
-	[`xwiki:9.11`](#xwiki911)
-	[`xwiki:9.11.8`](#xwiki9118)
-	[`xwiki:9.11.8-postgres-tomcat`](#xwiki9118-postgres-tomcat)
-	[`xwiki:9.11-postgres-tomcat`](#xwiki911-postgres-tomcat)
-	[`xwiki:9-mysql-tomcat`](#xwiki9-mysql-tomcat)
-	[`xwiki:9-postgres-tomcat`](#xwiki9-postgres-tomcat)
-	[`xwiki:latest`](#xwikilatest)
-	[`xwiki:lts`](#xwikilts)
-	[`xwiki:lts-mysql`](#xwikilts-mysql)
-	[`xwiki:lts-mysql-tomcat`](#xwikilts-mysql-tomcat)
-	[`xwiki:lts-postgres`](#xwikilts-postgres)
-	[`xwiki:lts-postgres-tomcat`](#xwikilts-postgres-tomcat)
-	[`xwiki:mysql-tomcat`](#xwikimysql-tomcat)
-	[`xwiki:postgres-tomcat`](#xwikipostgres-tomcat)
-	[`xwiki:stable`](#xwikistable)
-	[`xwiki:stable-mysql`](#xwikistable-mysql)
-	[`xwiki:stable-mysql-tomcat`](#xwikistable-mysql-tomcat)
-	[`xwiki:stable-postgres`](#xwikistable-postgres)
-	[`xwiki:stable-postgres-tomcat`](#xwikistable-postgres-tomcat)

## `xwiki:10`

```console
$ docker pull xwiki@sha256:c098bc23e240a8166631042b7e017d5d5c3bba079ae5d70b613116a8573f2f80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:10` - linux; amd64

```console
$ docker pull xwiki@sha256:34a6cc90010ad08614305b7618907edebba224287df2c808977b8497abe77c61
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.9 MB (602863119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d24d6be9eb85de8148cd292427f352292b0654bd60a5c26d5bc75a163cb6184`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 02:55:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:58:33 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:58:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:59:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 11:44:25 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 29 Dec 2018 11:44:25 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 11:44:26 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 29 Dec 2018 11:44:27 GMT
WORKDIR /usr/local/tomcat
# Sat, 29 Dec 2018 11:44:27 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Sat, 29 Dec 2018 11:44:29 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 11:44:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:44:37 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 29 Dec 2018 11:48:11 GMT
ENV TOMCAT_MAJOR=8
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_VERSION=8.5.37
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_SHA512=be6d6df8b49a760b2e181d4a45d8e6dc7bba5ef2ec6a000f8562cf5f34db5b7fac300cba65bca782bfd25a9f9d8d4a48625f1ad046115c1d6629ea5f210a2718
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc
# Sat, 29 Dec 2018 11:49:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sat, 29 Dec 2018 11:49:11 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 29 Dec 2018 11:49:11 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 11:49:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 29 Dec 2018 17:35:20 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 29 Dec 2018 17:36:43 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:39:50 GMT
ENV XWIKI_VERSION=10.11
# Sat, 29 Dec 2018 17:39:50 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.11
# Sat, 29 Dec 2018 17:39:51 GMT
ENV XWIKI_DOWNLOAD_SHA256=e926bbb7c339d3308c6b11d2c2699a072fc535aeba5c18a30c6f9c10fe395ec7
# Sat, 29 Dec 2018 17:40:31 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Sat, 29 Dec 2018 17:40:33 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Sat, 29 Dec 2018 17:40:33 GMT
COPY file:1bfb464d9ffbc4b2641e16ea3462f548658d64a99d68b666c0a19a602f1c4763 in /usr/local/tomcat/bin/ 
# Sat, 29 Dec 2018 17:40:34 GMT
COPY file:5cb0f323ea59fe0a73f1b01b79d12680af026017edde31c1799a5f6dd37fb425 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Sat, 29 Dec 2018 17:40:35 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Sat, 29 Dec 2018 17:40:36 GMT
COPY file:68e7bd92c597bf38d36e9f48dd0c065817e3afacc4ecfe0615bd20c97da58ee5 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 29 Dec 2018 17:40:36 GMT
VOLUME [/usr/local/xwiki]
# Sat, 29 Dec 2018 17:40:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 17:40:37 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d7fcb5828abd01ec003887486f6054e939373f0b850db15529e9d877094896`  
		Last Modified: Sat, 29 Dec 2018 03:23:11 GMT  
		Size: 852.8 KB (852813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c860563d607821af1e6da364188f0fd7991176bb88b60b51f325ed8ed5d33b`  
		Last Modified: Sat, 29 Dec 2018 03:25:35 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f754145d12e37fa48f92002c88fbc77c762041b65288ad5c8e6214c032ea46`  
		Last Modified: Sat, 29 Dec 2018 03:25:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff15a87739e7b3027d0605252271d7db50944805518c366f933ce0cf070aa6e`  
		Last Modified: Sat, 29 Dec 2018 03:26:03 GMT  
		Size: 122.1 MB (122120750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5d3f0336b98d472fffeb06e1e4f951fe26086cb3146a55fa03518e6156d70c`  
		Last Modified: Sat, 29 Dec 2018 12:02:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d858972966ccbcf552f1d66ed1e14456bcdb2f666c3ad5dae7f0818f70b0847`  
		Last Modified: Sat, 29 Dec 2018 12:02:18 GMT  
		Size: 528.4 KB (528403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2dc2e148d0f877272f5165f608404540bd5370f495307ef00eedd2b95db33c`  
		Last Modified: Sat, 29 Dec 2018 12:02:38 GMT  
		Size: 10.6 MB (10620028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db18a2f7d48d94226efa6c98bdfd5b911363c5be3a566f63b80b8bc555c5e191`  
		Last Modified: Sat, 29 Dec 2018 12:02:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5227cef1d9b357c7fbe2af1189015eebf8af4eb9c9366d3c5c9c003db66eb2c4`  
		Last Modified: Sat, 29 Dec 2018 17:42:56 GMT  
		Size: 161.4 MB (161447853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9923c11ae7a9366fc4ab609d50d4e2c70ff4a87f0deebf2ccf963e91d3ab8e73`  
		Last Modified: Sat, 29 Dec 2018 17:44:51 GMT  
		Size: 245.9 MB (245886044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8317231ec1fe5dc5fd42d5218eda680d8137daa52df6ae1872a0a0114a935777`  
		Last Modified: Sat, 29 Dec 2018 17:44:22 GMT  
		Size: 952.1 KB (952104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04fa2c83fe1dca9daf2e8303d2c545324c2938874e774b3b53e8ffbdd2442df`  
		Last Modified: Sat, 29 Dec 2018 17:44:22 GMT  
		Size: 1.2 KB (1151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fb30cbb0074cc797889e2d6c848a8b893acaa1292b0d4bc7709b46776d221df`  
		Last Modified: Sat, 29 Dec 2018 17:44:22 GMT  
		Size: 2.3 KB (2329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe7496ebaf511684076056877731fa3a97faa02c79867e5af29eac2975d7579`  
		Last Modified: Sat, 29 Dec 2018 17:44:22 GMT  
		Size: 3.8 KB (3843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0e8aef00a32c3cb658bb2a092705a0b8483682a3c8dffc910fc3bef457e382`  
		Last Modified: Sat, 29 Dec 2018 17:44:22 GMT  
		Size: 2.4 KB (2382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:10.11`

```console
$ docker pull xwiki@sha256:c098bc23e240a8166631042b7e017d5d5c3bba079ae5d70b613116a8573f2f80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:10.11` - linux; amd64

```console
$ docker pull xwiki@sha256:34a6cc90010ad08614305b7618907edebba224287df2c808977b8497abe77c61
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.9 MB (602863119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d24d6be9eb85de8148cd292427f352292b0654bd60a5c26d5bc75a163cb6184`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 02:55:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:58:33 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:58:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:59:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 11:44:25 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 29 Dec 2018 11:44:25 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 11:44:26 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 29 Dec 2018 11:44:27 GMT
WORKDIR /usr/local/tomcat
# Sat, 29 Dec 2018 11:44:27 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Sat, 29 Dec 2018 11:44:29 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 11:44:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:44:37 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 29 Dec 2018 11:48:11 GMT
ENV TOMCAT_MAJOR=8
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_VERSION=8.5.37
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_SHA512=be6d6df8b49a760b2e181d4a45d8e6dc7bba5ef2ec6a000f8562cf5f34db5b7fac300cba65bca782bfd25a9f9d8d4a48625f1ad046115c1d6629ea5f210a2718
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc
# Sat, 29 Dec 2018 11:49:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sat, 29 Dec 2018 11:49:11 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 29 Dec 2018 11:49:11 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 11:49:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 29 Dec 2018 17:35:20 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 29 Dec 2018 17:36:43 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:39:50 GMT
ENV XWIKI_VERSION=10.11
# Sat, 29 Dec 2018 17:39:50 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.11
# Sat, 29 Dec 2018 17:39:51 GMT
ENV XWIKI_DOWNLOAD_SHA256=e926bbb7c339d3308c6b11d2c2699a072fc535aeba5c18a30c6f9c10fe395ec7
# Sat, 29 Dec 2018 17:40:31 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Sat, 29 Dec 2018 17:40:33 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Sat, 29 Dec 2018 17:40:33 GMT
COPY file:1bfb464d9ffbc4b2641e16ea3462f548658d64a99d68b666c0a19a602f1c4763 in /usr/local/tomcat/bin/ 
# Sat, 29 Dec 2018 17:40:34 GMT
COPY file:5cb0f323ea59fe0a73f1b01b79d12680af026017edde31c1799a5f6dd37fb425 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Sat, 29 Dec 2018 17:40:35 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Sat, 29 Dec 2018 17:40:36 GMT
COPY file:68e7bd92c597bf38d36e9f48dd0c065817e3afacc4ecfe0615bd20c97da58ee5 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 29 Dec 2018 17:40:36 GMT
VOLUME [/usr/local/xwiki]
# Sat, 29 Dec 2018 17:40:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 17:40:37 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d7fcb5828abd01ec003887486f6054e939373f0b850db15529e9d877094896`  
		Last Modified: Sat, 29 Dec 2018 03:23:11 GMT  
		Size: 852.8 KB (852813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c860563d607821af1e6da364188f0fd7991176bb88b60b51f325ed8ed5d33b`  
		Last Modified: Sat, 29 Dec 2018 03:25:35 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f754145d12e37fa48f92002c88fbc77c762041b65288ad5c8e6214c032ea46`  
		Last Modified: Sat, 29 Dec 2018 03:25:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff15a87739e7b3027d0605252271d7db50944805518c366f933ce0cf070aa6e`  
		Last Modified: Sat, 29 Dec 2018 03:26:03 GMT  
		Size: 122.1 MB (122120750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5d3f0336b98d472fffeb06e1e4f951fe26086cb3146a55fa03518e6156d70c`  
		Last Modified: Sat, 29 Dec 2018 12:02:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d858972966ccbcf552f1d66ed1e14456bcdb2f666c3ad5dae7f0818f70b0847`  
		Last Modified: Sat, 29 Dec 2018 12:02:18 GMT  
		Size: 528.4 KB (528403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2dc2e148d0f877272f5165f608404540bd5370f495307ef00eedd2b95db33c`  
		Last Modified: Sat, 29 Dec 2018 12:02:38 GMT  
		Size: 10.6 MB (10620028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db18a2f7d48d94226efa6c98bdfd5b911363c5be3a566f63b80b8bc555c5e191`  
		Last Modified: Sat, 29 Dec 2018 12:02:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5227cef1d9b357c7fbe2af1189015eebf8af4eb9c9366d3c5c9c003db66eb2c4`  
		Last Modified: Sat, 29 Dec 2018 17:42:56 GMT  
		Size: 161.4 MB (161447853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9923c11ae7a9366fc4ab609d50d4e2c70ff4a87f0deebf2ccf963e91d3ab8e73`  
		Last Modified: Sat, 29 Dec 2018 17:44:51 GMT  
		Size: 245.9 MB (245886044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8317231ec1fe5dc5fd42d5218eda680d8137daa52df6ae1872a0a0114a935777`  
		Last Modified: Sat, 29 Dec 2018 17:44:22 GMT  
		Size: 952.1 KB (952104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04fa2c83fe1dca9daf2e8303d2c545324c2938874e774b3b53e8ffbdd2442df`  
		Last Modified: Sat, 29 Dec 2018 17:44:22 GMT  
		Size: 1.2 KB (1151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fb30cbb0074cc797889e2d6c848a8b893acaa1292b0d4bc7709b46776d221df`  
		Last Modified: Sat, 29 Dec 2018 17:44:22 GMT  
		Size: 2.3 KB (2329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe7496ebaf511684076056877731fa3a97faa02c79867e5af29eac2975d7579`  
		Last Modified: Sat, 29 Dec 2018 17:44:22 GMT  
		Size: 3.8 KB (3843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0e8aef00a32c3cb658bb2a092705a0b8483682a3c8dffc910fc3bef457e382`  
		Last Modified: Sat, 29 Dec 2018 17:44:22 GMT  
		Size: 2.4 KB (2382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:10.11-mysql-tomcat`

```console
$ docker pull xwiki@sha256:c098bc23e240a8166631042b7e017d5d5c3bba079ae5d70b613116a8573f2f80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:10.11-mysql-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:34a6cc90010ad08614305b7618907edebba224287df2c808977b8497abe77c61
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.9 MB (602863119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d24d6be9eb85de8148cd292427f352292b0654bd60a5c26d5bc75a163cb6184`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 02:55:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:58:33 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:58:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:59:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 11:44:25 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 29 Dec 2018 11:44:25 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 11:44:26 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 29 Dec 2018 11:44:27 GMT
WORKDIR /usr/local/tomcat
# Sat, 29 Dec 2018 11:44:27 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Sat, 29 Dec 2018 11:44:29 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 11:44:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:44:37 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 29 Dec 2018 11:48:11 GMT
ENV TOMCAT_MAJOR=8
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_VERSION=8.5.37
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_SHA512=be6d6df8b49a760b2e181d4a45d8e6dc7bba5ef2ec6a000f8562cf5f34db5b7fac300cba65bca782bfd25a9f9d8d4a48625f1ad046115c1d6629ea5f210a2718
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc
# Sat, 29 Dec 2018 11:49:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sat, 29 Dec 2018 11:49:11 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 29 Dec 2018 11:49:11 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 11:49:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 29 Dec 2018 17:35:20 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 29 Dec 2018 17:36:43 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:39:50 GMT
ENV XWIKI_VERSION=10.11
# Sat, 29 Dec 2018 17:39:50 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.11
# Sat, 29 Dec 2018 17:39:51 GMT
ENV XWIKI_DOWNLOAD_SHA256=e926bbb7c339d3308c6b11d2c2699a072fc535aeba5c18a30c6f9c10fe395ec7
# Sat, 29 Dec 2018 17:40:31 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Sat, 29 Dec 2018 17:40:33 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Sat, 29 Dec 2018 17:40:33 GMT
COPY file:1bfb464d9ffbc4b2641e16ea3462f548658d64a99d68b666c0a19a602f1c4763 in /usr/local/tomcat/bin/ 
# Sat, 29 Dec 2018 17:40:34 GMT
COPY file:5cb0f323ea59fe0a73f1b01b79d12680af026017edde31c1799a5f6dd37fb425 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Sat, 29 Dec 2018 17:40:35 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Sat, 29 Dec 2018 17:40:36 GMT
COPY file:68e7bd92c597bf38d36e9f48dd0c065817e3afacc4ecfe0615bd20c97da58ee5 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 29 Dec 2018 17:40:36 GMT
VOLUME [/usr/local/xwiki]
# Sat, 29 Dec 2018 17:40:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 17:40:37 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d7fcb5828abd01ec003887486f6054e939373f0b850db15529e9d877094896`  
		Last Modified: Sat, 29 Dec 2018 03:23:11 GMT  
		Size: 852.8 KB (852813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c860563d607821af1e6da364188f0fd7991176bb88b60b51f325ed8ed5d33b`  
		Last Modified: Sat, 29 Dec 2018 03:25:35 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f754145d12e37fa48f92002c88fbc77c762041b65288ad5c8e6214c032ea46`  
		Last Modified: Sat, 29 Dec 2018 03:25:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff15a87739e7b3027d0605252271d7db50944805518c366f933ce0cf070aa6e`  
		Last Modified: Sat, 29 Dec 2018 03:26:03 GMT  
		Size: 122.1 MB (122120750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5d3f0336b98d472fffeb06e1e4f951fe26086cb3146a55fa03518e6156d70c`  
		Last Modified: Sat, 29 Dec 2018 12:02:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d858972966ccbcf552f1d66ed1e14456bcdb2f666c3ad5dae7f0818f70b0847`  
		Last Modified: Sat, 29 Dec 2018 12:02:18 GMT  
		Size: 528.4 KB (528403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2dc2e148d0f877272f5165f608404540bd5370f495307ef00eedd2b95db33c`  
		Last Modified: Sat, 29 Dec 2018 12:02:38 GMT  
		Size: 10.6 MB (10620028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db18a2f7d48d94226efa6c98bdfd5b911363c5be3a566f63b80b8bc555c5e191`  
		Last Modified: Sat, 29 Dec 2018 12:02:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5227cef1d9b357c7fbe2af1189015eebf8af4eb9c9366d3c5c9c003db66eb2c4`  
		Last Modified: Sat, 29 Dec 2018 17:42:56 GMT  
		Size: 161.4 MB (161447853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9923c11ae7a9366fc4ab609d50d4e2c70ff4a87f0deebf2ccf963e91d3ab8e73`  
		Last Modified: Sat, 29 Dec 2018 17:44:51 GMT  
		Size: 245.9 MB (245886044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8317231ec1fe5dc5fd42d5218eda680d8137daa52df6ae1872a0a0114a935777`  
		Last Modified: Sat, 29 Dec 2018 17:44:22 GMT  
		Size: 952.1 KB (952104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04fa2c83fe1dca9daf2e8303d2c545324c2938874e774b3b53e8ffbdd2442df`  
		Last Modified: Sat, 29 Dec 2018 17:44:22 GMT  
		Size: 1.2 KB (1151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fb30cbb0074cc797889e2d6c848a8b893acaa1292b0d4bc7709b46776d221df`  
		Last Modified: Sat, 29 Dec 2018 17:44:22 GMT  
		Size: 2.3 KB (2329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe7496ebaf511684076056877731fa3a97faa02c79867e5af29eac2975d7579`  
		Last Modified: Sat, 29 Dec 2018 17:44:22 GMT  
		Size: 3.8 KB (3843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0e8aef00a32c3cb658bb2a092705a0b8483682a3c8dffc910fc3bef457e382`  
		Last Modified: Sat, 29 Dec 2018 17:44:22 GMT  
		Size: 2.4 KB (2382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:10.11-postgres-tomcat`

```console
$ docker pull xwiki@sha256:5438698d4f8cfed44bff158e23d91cb4d5bed8cfdbd313baf9e617a45c32f8b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `xwiki:10.11-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:1758f7a3283e7f234ff4198c579234861cc3c0c269616d2ba5a3c733c456940f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.1 MB (602129397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c5ce2bef6b2b90998c90c410a422d4bbf2f94d1db68a40338879346caf5cfe6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 02:55:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:58:33 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:58:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:59:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 11:44:25 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 29 Dec 2018 11:44:25 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 11:44:26 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 29 Dec 2018 11:44:27 GMT
WORKDIR /usr/local/tomcat
# Sat, 29 Dec 2018 11:44:27 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Sat, 29 Dec 2018 11:44:29 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 11:44:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:44:37 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 29 Dec 2018 11:48:11 GMT
ENV TOMCAT_MAJOR=8
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_VERSION=8.5.37
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_SHA512=be6d6df8b49a760b2e181d4a45d8e6dc7bba5ef2ec6a000f8562cf5f34db5b7fac300cba65bca782bfd25a9f9d8d4a48625f1ad046115c1d6629ea5f210a2718
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc
# Sat, 29 Dec 2018 11:49:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sat, 29 Dec 2018 11:49:11 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 29 Dec 2018 11:49:11 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 11:49:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 29 Dec 2018 17:35:20 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 29 Dec 2018 17:38:45 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:40:43 GMT
ENV XWIKI_VERSION=10.11
# Sat, 29 Dec 2018 17:40:44 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.11
# Sat, 29 Dec 2018 17:40:44 GMT
ENV XWIKI_DOWNLOAD_SHA256=e926bbb7c339d3308c6b11d2c2699a072fc535aeba5c18a30c6f9c10fe395ec7
# Sat, 29 Dec 2018 17:41:24 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Sat, 29 Dec 2018 17:41:25 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Sat, 29 Dec 2018 17:41:26 GMT
COPY file:1bfb464d9ffbc4b2641e16ea3462f548658d64a99d68b666c0a19a602f1c4763 in /usr/local/tomcat/bin/ 
# Sat, 29 Dec 2018 17:41:26 GMT
COPY file:dda012d0f6fc0098c2752af86314e191fc377279364c22a1ba9f690d7d0d6ca8 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Sat, 29 Dec 2018 17:41:27 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Sat, 29 Dec 2018 17:41:27 GMT
COPY file:68e7bd92c597bf38d36e9f48dd0c065817e3afacc4ecfe0615bd20c97da58ee5 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 29 Dec 2018 17:41:28 GMT
VOLUME [/usr/local/xwiki]
# Sat, 29 Dec 2018 17:41:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 17:41:28 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d7fcb5828abd01ec003887486f6054e939373f0b850db15529e9d877094896`  
		Last Modified: Sat, 29 Dec 2018 03:23:11 GMT  
		Size: 852.8 KB (852813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c860563d607821af1e6da364188f0fd7991176bb88b60b51f325ed8ed5d33b`  
		Last Modified: Sat, 29 Dec 2018 03:25:35 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f754145d12e37fa48f92002c88fbc77c762041b65288ad5c8e6214c032ea46`  
		Last Modified: Sat, 29 Dec 2018 03:25:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff15a87739e7b3027d0605252271d7db50944805518c366f933ce0cf070aa6e`  
		Last Modified: Sat, 29 Dec 2018 03:26:03 GMT  
		Size: 122.1 MB (122120750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5d3f0336b98d472fffeb06e1e4f951fe26086cb3146a55fa03518e6156d70c`  
		Last Modified: Sat, 29 Dec 2018 12:02:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d858972966ccbcf552f1d66ed1e14456bcdb2f666c3ad5dae7f0818f70b0847`  
		Last Modified: Sat, 29 Dec 2018 12:02:18 GMT  
		Size: 528.4 KB (528403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2dc2e148d0f877272f5165f608404540bd5370f495307ef00eedd2b95db33c`  
		Last Modified: Sat, 29 Dec 2018 12:02:38 GMT  
		Size: 10.6 MB (10620028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db18a2f7d48d94226efa6c98bdfd5b911363c5be3a566f63b80b8bc555c5e191`  
		Last Modified: Sat, 29 Dec 2018 12:02:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70102b104b8accff04fb215fb915de19942d5b335b229fc1badbeec0150094f7`  
		Last Modified: Sat, 29 Dec 2018 17:44:06 GMT  
		Size: 161.0 MB (161047141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceb73df3cce87e93fb33c3b0759484028c0df0b1bfdddc0be78f5393df8b3a5f`  
		Last Modified: Sat, 29 Dec 2018 17:46:09 GMT  
		Size: 245.9 MB (245886160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f9636b5c0187dd86b59c2f287955ef73ed6e4bd10ce60126ff66010a21d06e`  
		Last Modified: Sat, 29 Dec 2018 17:45:44 GMT  
		Size: 618.9 KB (618871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f30b28dd96c4e166f0ea8a3a7e53119198a79084151f4957b9e3f53081a69e40`  
		Last Modified: Sat, 29 Dec 2018 17:45:44 GMT  
		Size: 1.1 KB (1150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6d171c3c2d2670ce98e0de340d6a4a078b370c9d54828de931f8d9b319987f`  
		Last Modified: Sat, 29 Dec 2018 17:45:44 GMT  
		Size: 2.4 KB (2439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11d442db6f73d62767bea9f7eb67c33f1de3fe3be668ebb74ab03d1134d94516`  
		Last Modified: Sat, 29 Dec 2018 17:45:44 GMT  
		Size: 3.8 KB (3842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7cc0b10f9909ca2a70cb1ddeaf53b0c737f594b4c7f8b9ab6172543738a3b13`  
		Last Modified: Sat, 29 Dec 2018 17:45:44 GMT  
		Size: 2.4 KB (2381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `xwiki:10.11-postgres-tomcat` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:113d96f01de9a81d70a0c86a6242fd40274295f6ca300b8d8a7088e7dc1beb43
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **582.1 MB (582102237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a15c64012d0e8212f6980952009bd5d5af2a02f7924dc9cb3335731906f8fb32`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 16:57:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:14:07 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 17:14:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 17:14:11 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 17:14:12 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 17:14:13 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 17:14:13 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 17:19:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sun, 30 Dec 2018 04:20:54 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sun, 30 Dec 2018 04:20:55 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 30 Dec 2018 04:20:56 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sun, 30 Dec 2018 04:20:57 GMT
WORKDIR /usr/local/tomcat
# Sun, 30 Dec 2018 04:20:58 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sun, 30 Dec 2018 04:20:58 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sun, 30 Dec 2018 04:20:59 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Sun, 30 Dec 2018 04:21:01 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sun, 30 Dec 2018 04:21:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 04:21:14 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sun, 30 Dec 2018 04:33:33 GMT
ENV TOMCAT_MAJOR=8
# Sun, 30 Dec 2018 04:33:34 GMT
ENV TOMCAT_VERSION=8.5.37
# Sun, 30 Dec 2018 04:33:34 GMT
ENV TOMCAT_SHA512=be6d6df8b49a760b2e181d4a45d8e6dc7bba5ef2ec6a000f8562cf5f34db5b7fac300cba65bca782bfd25a9f9d8d4a48625f1ad046115c1d6629ea5f210a2718
# Sun, 30 Dec 2018 04:33:35 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz
# Sun, 30 Dec 2018 04:33:36 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc
# Sun, 30 Dec 2018 04:35:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sun, 30 Dec 2018 04:35:50 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sun, 30 Dec 2018 04:35:52 GMT
EXPOSE 8080
# Sun, 30 Dec 2018 04:35:53 GMT
CMD ["catalina.sh" "run"]
# Sun, 30 Dec 2018 08:29:06 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sun, 30 Dec 2018 08:31:44 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 08:35:52 GMT
ENV XWIKI_VERSION=10.11
# Sun, 30 Dec 2018 08:35:52 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.11
# Sun, 30 Dec 2018 08:35:53 GMT
ENV XWIKI_DOWNLOAD_SHA256=e926bbb7c339d3308c6b11d2c2699a072fc535aeba5c18a30c6f9c10fe395ec7
# Sun, 30 Dec 2018 08:40:09 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Sun, 30 Dec 2018 08:40:11 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Sun, 30 Dec 2018 08:40:12 GMT
COPY file:1bfb464d9ffbc4b2641e16ea3462f548658d64a99d68b666c0a19a602f1c4763 in /usr/local/tomcat/bin/ 
# Sun, 30 Dec 2018 08:40:12 GMT
COPY file:dda012d0f6fc0098c2752af86314e191fc377279364c22a1ba9f690d7d0d6ca8 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Sun, 30 Dec 2018 08:40:14 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Sun, 30 Dec 2018 08:40:15 GMT
COPY file:68e7bd92c597bf38d36e9f48dd0c065817e3afacc4ecfe0615bd20c97da58ee5 in /usr/local/bin/docker-entrypoint.sh 
# Sun, 30 Dec 2018 08:40:15 GMT
VOLUME [/usr/local/xwiki]
# Sun, 30 Dec 2018 08:40:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 30 Dec 2018 08:40:16 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48571cc473b88fcffd22eb773861106e62ad3dea84834463ed7e9d150439057`  
		Last Modified: Sat, 29 Dec 2018 17:25:57 GMT  
		Size: 839.2 KB (839233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344869d13b124ac74cf306b58444652eed73f02dae6bcde459d7ec5e7129d8c3`  
		Last Modified: Sat, 29 Dec 2018 17:29:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176c87f6576e84823739aa84291c369e1903bc4632e8c92d57ec74946b93c0e4`  
		Last Modified: Sat, 29 Dec 2018 17:29:44 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31d5b5377617d8168a16e074e5d337d3afa5ca70b88f12abcb6c34f65695e0e5`  
		Last Modified: Sat, 29 Dec 2018 17:30:22 GMT  
		Size: 112.8 MB (112755781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc0aebc76f15ba9cc518de6e315ac669e5fe7251f6236333aab8b052cfcb0742`  
		Last Modified: Sun, 30 Dec 2018 05:23:09 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3372b72c945a6ee5780794f4ff106dad87f51dad895159424643ab45f8efa43`  
		Last Modified: Sun, 30 Dec 2018 05:23:10 GMT  
		Size: 513.1 KB (513096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4482b329bfecf1ee5459138710663b10bc47f2bbd3d8c580ee7e2e6efffeeece`  
		Last Modified: Sun, 30 Dec 2018 05:23:58 GMT  
		Size: 10.6 MB (10628402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb6a031a1860063674b852bcb6ae6d8a165d871e42c1a32629255d390479067`  
		Last Modified: Sun, 30 Dec 2018 05:23:55 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2808b38bd2d167e06276394cee69332e2bf838a09502558fb6e8cdefd7329816`  
		Last Modified: Sun, 30 Dec 2018 08:41:27 GMT  
		Size: 153.9 MB (153911949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d490f5206df27891b772944d74e0e3b9231542864a56675bb34f7d1011f49cc0`  
		Last Modified: Sun, 30 Dec 2018 08:42:29 GMT  
		Size: 245.9 MB (245886093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ec505e1c191b0c3f25012f57a888b286d967b17a1eab952b6db776d61042015`  
		Last Modified: Sun, 30 Dec 2018 08:41:50 GMT  
		Size: 618.9 KB (618880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb7dababc2576a14001d83f98c256e912ff55bb792dddbf4b7e558fa71a6f1e7`  
		Last Modified: Sun, 30 Dec 2018 08:41:50 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365e43dfe0e997d3f79c0281f98c6e590eade4e806656c5586b9b2962656b246`  
		Last Modified: Sun, 30 Dec 2018 08:41:50 GMT  
		Size: 2.4 KB (2443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ab4c88a4f985cd69b4bc1205cec695a7273d2e0ac3416c16a69652c49863b1`  
		Last Modified: Sun, 30 Dec 2018 08:41:50 GMT  
		Size: 3.8 KB (3841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b93c3b6e2a5b5e69ff6c5a1e71519a26fc84145bb655a65b78365a203ff626b`  
		Last Modified: Sun, 30 Dec 2018 08:41:50 GMT  
		Size: 2.4 KB (2383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:10-mysql-tomcat`

```console
$ docker pull xwiki@sha256:c098bc23e240a8166631042b7e017d5d5c3bba079ae5d70b613116a8573f2f80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:10-mysql-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:34a6cc90010ad08614305b7618907edebba224287df2c808977b8497abe77c61
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.9 MB (602863119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d24d6be9eb85de8148cd292427f352292b0654bd60a5c26d5bc75a163cb6184`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 02:55:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:58:33 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:58:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:59:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 11:44:25 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 29 Dec 2018 11:44:25 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 11:44:26 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 29 Dec 2018 11:44:27 GMT
WORKDIR /usr/local/tomcat
# Sat, 29 Dec 2018 11:44:27 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Sat, 29 Dec 2018 11:44:29 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 11:44:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:44:37 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 29 Dec 2018 11:48:11 GMT
ENV TOMCAT_MAJOR=8
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_VERSION=8.5.37
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_SHA512=be6d6df8b49a760b2e181d4a45d8e6dc7bba5ef2ec6a000f8562cf5f34db5b7fac300cba65bca782bfd25a9f9d8d4a48625f1ad046115c1d6629ea5f210a2718
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc
# Sat, 29 Dec 2018 11:49:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sat, 29 Dec 2018 11:49:11 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 29 Dec 2018 11:49:11 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 11:49:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 29 Dec 2018 17:35:20 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 29 Dec 2018 17:36:43 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:39:50 GMT
ENV XWIKI_VERSION=10.11
# Sat, 29 Dec 2018 17:39:50 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.11
# Sat, 29 Dec 2018 17:39:51 GMT
ENV XWIKI_DOWNLOAD_SHA256=e926bbb7c339d3308c6b11d2c2699a072fc535aeba5c18a30c6f9c10fe395ec7
# Sat, 29 Dec 2018 17:40:31 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Sat, 29 Dec 2018 17:40:33 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Sat, 29 Dec 2018 17:40:33 GMT
COPY file:1bfb464d9ffbc4b2641e16ea3462f548658d64a99d68b666c0a19a602f1c4763 in /usr/local/tomcat/bin/ 
# Sat, 29 Dec 2018 17:40:34 GMT
COPY file:5cb0f323ea59fe0a73f1b01b79d12680af026017edde31c1799a5f6dd37fb425 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Sat, 29 Dec 2018 17:40:35 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Sat, 29 Dec 2018 17:40:36 GMT
COPY file:68e7bd92c597bf38d36e9f48dd0c065817e3afacc4ecfe0615bd20c97da58ee5 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 29 Dec 2018 17:40:36 GMT
VOLUME [/usr/local/xwiki]
# Sat, 29 Dec 2018 17:40:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 17:40:37 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d7fcb5828abd01ec003887486f6054e939373f0b850db15529e9d877094896`  
		Last Modified: Sat, 29 Dec 2018 03:23:11 GMT  
		Size: 852.8 KB (852813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c860563d607821af1e6da364188f0fd7991176bb88b60b51f325ed8ed5d33b`  
		Last Modified: Sat, 29 Dec 2018 03:25:35 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f754145d12e37fa48f92002c88fbc77c762041b65288ad5c8e6214c032ea46`  
		Last Modified: Sat, 29 Dec 2018 03:25:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff15a87739e7b3027d0605252271d7db50944805518c366f933ce0cf070aa6e`  
		Last Modified: Sat, 29 Dec 2018 03:26:03 GMT  
		Size: 122.1 MB (122120750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5d3f0336b98d472fffeb06e1e4f951fe26086cb3146a55fa03518e6156d70c`  
		Last Modified: Sat, 29 Dec 2018 12:02:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d858972966ccbcf552f1d66ed1e14456bcdb2f666c3ad5dae7f0818f70b0847`  
		Last Modified: Sat, 29 Dec 2018 12:02:18 GMT  
		Size: 528.4 KB (528403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2dc2e148d0f877272f5165f608404540bd5370f495307ef00eedd2b95db33c`  
		Last Modified: Sat, 29 Dec 2018 12:02:38 GMT  
		Size: 10.6 MB (10620028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db18a2f7d48d94226efa6c98bdfd5b911363c5be3a566f63b80b8bc555c5e191`  
		Last Modified: Sat, 29 Dec 2018 12:02:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5227cef1d9b357c7fbe2af1189015eebf8af4eb9c9366d3c5c9c003db66eb2c4`  
		Last Modified: Sat, 29 Dec 2018 17:42:56 GMT  
		Size: 161.4 MB (161447853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9923c11ae7a9366fc4ab609d50d4e2c70ff4a87f0deebf2ccf963e91d3ab8e73`  
		Last Modified: Sat, 29 Dec 2018 17:44:51 GMT  
		Size: 245.9 MB (245886044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8317231ec1fe5dc5fd42d5218eda680d8137daa52df6ae1872a0a0114a935777`  
		Last Modified: Sat, 29 Dec 2018 17:44:22 GMT  
		Size: 952.1 KB (952104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04fa2c83fe1dca9daf2e8303d2c545324c2938874e774b3b53e8ffbdd2442df`  
		Last Modified: Sat, 29 Dec 2018 17:44:22 GMT  
		Size: 1.2 KB (1151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fb30cbb0074cc797889e2d6c848a8b893acaa1292b0d4bc7709b46776d221df`  
		Last Modified: Sat, 29 Dec 2018 17:44:22 GMT  
		Size: 2.3 KB (2329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe7496ebaf511684076056877731fa3a97faa02c79867e5af29eac2975d7579`  
		Last Modified: Sat, 29 Dec 2018 17:44:22 GMT  
		Size: 3.8 KB (3843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0e8aef00a32c3cb658bb2a092705a0b8483682a3c8dffc910fc3bef457e382`  
		Last Modified: Sat, 29 Dec 2018 17:44:22 GMT  
		Size: 2.4 KB (2382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:10-postgres-tomcat`

```console
$ docker pull xwiki@sha256:5438698d4f8cfed44bff158e23d91cb4d5bed8cfdbd313baf9e617a45c32f8b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `xwiki:10-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:1758f7a3283e7f234ff4198c579234861cc3c0c269616d2ba5a3c733c456940f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.1 MB (602129397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c5ce2bef6b2b90998c90c410a422d4bbf2f94d1db68a40338879346caf5cfe6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 02:55:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:58:33 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:58:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:59:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 11:44:25 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 29 Dec 2018 11:44:25 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 11:44:26 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 29 Dec 2018 11:44:27 GMT
WORKDIR /usr/local/tomcat
# Sat, 29 Dec 2018 11:44:27 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Sat, 29 Dec 2018 11:44:29 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 11:44:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:44:37 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 29 Dec 2018 11:48:11 GMT
ENV TOMCAT_MAJOR=8
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_VERSION=8.5.37
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_SHA512=be6d6df8b49a760b2e181d4a45d8e6dc7bba5ef2ec6a000f8562cf5f34db5b7fac300cba65bca782bfd25a9f9d8d4a48625f1ad046115c1d6629ea5f210a2718
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc
# Sat, 29 Dec 2018 11:49:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sat, 29 Dec 2018 11:49:11 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 29 Dec 2018 11:49:11 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 11:49:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 29 Dec 2018 17:35:20 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 29 Dec 2018 17:38:45 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:40:43 GMT
ENV XWIKI_VERSION=10.11
# Sat, 29 Dec 2018 17:40:44 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.11
# Sat, 29 Dec 2018 17:40:44 GMT
ENV XWIKI_DOWNLOAD_SHA256=e926bbb7c339d3308c6b11d2c2699a072fc535aeba5c18a30c6f9c10fe395ec7
# Sat, 29 Dec 2018 17:41:24 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Sat, 29 Dec 2018 17:41:25 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Sat, 29 Dec 2018 17:41:26 GMT
COPY file:1bfb464d9ffbc4b2641e16ea3462f548658d64a99d68b666c0a19a602f1c4763 in /usr/local/tomcat/bin/ 
# Sat, 29 Dec 2018 17:41:26 GMT
COPY file:dda012d0f6fc0098c2752af86314e191fc377279364c22a1ba9f690d7d0d6ca8 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Sat, 29 Dec 2018 17:41:27 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Sat, 29 Dec 2018 17:41:27 GMT
COPY file:68e7bd92c597bf38d36e9f48dd0c065817e3afacc4ecfe0615bd20c97da58ee5 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 29 Dec 2018 17:41:28 GMT
VOLUME [/usr/local/xwiki]
# Sat, 29 Dec 2018 17:41:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 17:41:28 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d7fcb5828abd01ec003887486f6054e939373f0b850db15529e9d877094896`  
		Last Modified: Sat, 29 Dec 2018 03:23:11 GMT  
		Size: 852.8 KB (852813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c860563d607821af1e6da364188f0fd7991176bb88b60b51f325ed8ed5d33b`  
		Last Modified: Sat, 29 Dec 2018 03:25:35 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f754145d12e37fa48f92002c88fbc77c762041b65288ad5c8e6214c032ea46`  
		Last Modified: Sat, 29 Dec 2018 03:25:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff15a87739e7b3027d0605252271d7db50944805518c366f933ce0cf070aa6e`  
		Last Modified: Sat, 29 Dec 2018 03:26:03 GMT  
		Size: 122.1 MB (122120750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5d3f0336b98d472fffeb06e1e4f951fe26086cb3146a55fa03518e6156d70c`  
		Last Modified: Sat, 29 Dec 2018 12:02:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d858972966ccbcf552f1d66ed1e14456bcdb2f666c3ad5dae7f0818f70b0847`  
		Last Modified: Sat, 29 Dec 2018 12:02:18 GMT  
		Size: 528.4 KB (528403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2dc2e148d0f877272f5165f608404540bd5370f495307ef00eedd2b95db33c`  
		Last Modified: Sat, 29 Dec 2018 12:02:38 GMT  
		Size: 10.6 MB (10620028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db18a2f7d48d94226efa6c98bdfd5b911363c5be3a566f63b80b8bc555c5e191`  
		Last Modified: Sat, 29 Dec 2018 12:02:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70102b104b8accff04fb215fb915de19942d5b335b229fc1badbeec0150094f7`  
		Last Modified: Sat, 29 Dec 2018 17:44:06 GMT  
		Size: 161.0 MB (161047141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceb73df3cce87e93fb33c3b0759484028c0df0b1bfdddc0be78f5393df8b3a5f`  
		Last Modified: Sat, 29 Dec 2018 17:46:09 GMT  
		Size: 245.9 MB (245886160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f9636b5c0187dd86b59c2f287955ef73ed6e4bd10ce60126ff66010a21d06e`  
		Last Modified: Sat, 29 Dec 2018 17:45:44 GMT  
		Size: 618.9 KB (618871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f30b28dd96c4e166f0ea8a3a7e53119198a79084151f4957b9e3f53081a69e40`  
		Last Modified: Sat, 29 Dec 2018 17:45:44 GMT  
		Size: 1.1 KB (1150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6d171c3c2d2670ce98e0de340d6a4a078b370c9d54828de931f8d9b319987f`  
		Last Modified: Sat, 29 Dec 2018 17:45:44 GMT  
		Size: 2.4 KB (2439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11d442db6f73d62767bea9f7eb67c33f1de3fe3be668ebb74ab03d1134d94516`  
		Last Modified: Sat, 29 Dec 2018 17:45:44 GMT  
		Size: 3.8 KB (3842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7cc0b10f9909ca2a70cb1ddeaf53b0c737f594b4c7f8b9ab6172543738a3b13`  
		Last Modified: Sat, 29 Dec 2018 17:45:44 GMT  
		Size: 2.4 KB (2381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `xwiki:10-postgres-tomcat` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:113d96f01de9a81d70a0c86a6242fd40274295f6ca300b8d8a7088e7dc1beb43
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **582.1 MB (582102237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a15c64012d0e8212f6980952009bd5d5af2a02f7924dc9cb3335731906f8fb32`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 16:57:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:14:07 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 17:14:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 17:14:11 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 17:14:12 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 17:14:13 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 17:14:13 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 17:19:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sun, 30 Dec 2018 04:20:54 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sun, 30 Dec 2018 04:20:55 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 30 Dec 2018 04:20:56 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sun, 30 Dec 2018 04:20:57 GMT
WORKDIR /usr/local/tomcat
# Sun, 30 Dec 2018 04:20:58 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sun, 30 Dec 2018 04:20:58 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sun, 30 Dec 2018 04:20:59 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Sun, 30 Dec 2018 04:21:01 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sun, 30 Dec 2018 04:21:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 04:21:14 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sun, 30 Dec 2018 04:33:33 GMT
ENV TOMCAT_MAJOR=8
# Sun, 30 Dec 2018 04:33:34 GMT
ENV TOMCAT_VERSION=8.5.37
# Sun, 30 Dec 2018 04:33:34 GMT
ENV TOMCAT_SHA512=be6d6df8b49a760b2e181d4a45d8e6dc7bba5ef2ec6a000f8562cf5f34db5b7fac300cba65bca782bfd25a9f9d8d4a48625f1ad046115c1d6629ea5f210a2718
# Sun, 30 Dec 2018 04:33:35 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz
# Sun, 30 Dec 2018 04:33:36 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc
# Sun, 30 Dec 2018 04:35:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sun, 30 Dec 2018 04:35:50 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sun, 30 Dec 2018 04:35:52 GMT
EXPOSE 8080
# Sun, 30 Dec 2018 04:35:53 GMT
CMD ["catalina.sh" "run"]
# Sun, 30 Dec 2018 08:29:06 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sun, 30 Dec 2018 08:31:44 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 08:35:52 GMT
ENV XWIKI_VERSION=10.11
# Sun, 30 Dec 2018 08:35:52 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.11
# Sun, 30 Dec 2018 08:35:53 GMT
ENV XWIKI_DOWNLOAD_SHA256=e926bbb7c339d3308c6b11d2c2699a072fc535aeba5c18a30c6f9c10fe395ec7
# Sun, 30 Dec 2018 08:40:09 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Sun, 30 Dec 2018 08:40:11 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Sun, 30 Dec 2018 08:40:12 GMT
COPY file:1bfb464d9ffbc4b2641e16ea3462f548658d64a99d68b666c0a19a602f1c4763 in /usr/local/tomcat/bin/ 
# Sun, 30 Dec 2018 08:40:12 GMT
COPY file:dda012d0f6fc0098c2752af86314e191fc377279364c22a1ba9f690d7d0d6ca8 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Sun, 30 Dec 2018 08:40:14 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Sun, 30 Dec 2018 08:40:15 GMT
COPY file:68e7bd92c597bf38d36e9f48dd0c065817e3afacc4ecfe0615bd20c97da58ee5 in /usr/local/bin/docker-entrypoint.sh 
# Sun, 30 Dec 2018 08:40:15 GMT
VOLUME [/usr/local/xwiki]
# Sun, 30 Dec 2018 08:40:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 30 Dec 2018 08:40:16 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48571cc473b88fcffd22eb773861106e62ad3dea84834463ed7e9d150439057`  
		Last Modified: Sat, 29 Dec 2018 17:25:57 GMT  
		Size: 839.2 KB (839233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344869d13b124ac74cf306b58444652eed73f02dae6bcde459d7ec5e7129d8c3`  
		Last Modified: Sat, 29 Dec 2018 17:29:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176c87f6576e84823739aa84291c369e1903bc4632e8c92d57ec74946b93c0e4`  
		Last Modified: Sat, 29 Dec 2018 17:29:44 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31d5b5377617d8168a16e074e5d337d3afa5ca70b88f12abcb6c34f65695e0e5`  
		Last Modified: Sat, 29 Dec 2018 17:30:22 GMT  
		Size: 112.8 MB (112755781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc0aebc76f15ba9cc518de6e315ac669e5fe7251f6236333aab8b052cfcb0742`  
		Last Modified: Sun, 30 Dec 2018 05:23:09 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3372b72c945a6ee5780794f4ff106dad87f51dad895159424643ab45f8efa43`  
		Last Modified: Sun, 30 Dec 2018 05:23:10 GMT  
		Size: 513.1 KB (513096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4482b329bfecf1ee5459138710663b10bc47f2bbd3d8c580ee7e2e6efffeeece`  
		Last Modified: Sun, 30 Dec 2018 05:23:58 GMT  
		Size: 10.6 MB (10628402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb6a031a1860063674b852bcb6ae6d8a165d871e42c1a32629255d390479067`  
		Last Modified: Sun, 30 Dec 2018 05:23:55 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2808b38bd2d167e06276394cee69332e2bf838a09502558fb6e8cdefd7329816`  
		Last Modified: Sun, 30 Dec 2018 08:41:27 GMT  
		Size: 153.9 MB (153911949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d490f5206df27891b772944d74e0e3b9231542864a56675bb34f7d1011f49cc0`  
		Last Modified: Sun, 30 Dec 2018 08:42:29 GMT  
		Size: 245.9 MB (245886093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ec505e1c191b0c3f25012f57a888b286d967b17a1eab952b6db776d61042015`  
		Last Modified: Sun, 30 Dec 2018 08:41:50 GMT  
		Size: 618.9 KB (618880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb7dababc2576a14001d83f98c256e912ff55bb792dddbf4b7e558fa71a6f1e7`  
		Last Modified: Sun, 30 Dec 2018 08:41:50 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365e43dfe0e997d3f79c0281f98c6e590eade4e806656c5586b9b2962656b246`  
		Last Modified: Sun, 30 Dec 2018 08:41:50 GMT  
		Size: 2.4 KB (2443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ab4c88a4f985cd69b4bc1205cec695a7273d2e0ac3416c16a69652c49863b1`  
		Last Modified: Sun, 30 Dec 2018 08:41:50 GMT  
		Size: 3.8 KB (3841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b93c3b6e2a5b5e69ff6c5a1e71519a26fc84145bb655a65b78365a203ff626b`  
		Last Modified: Sun, 30 Dec 2018 08:41:50 GMT  
		Size: 2.4 KB (2383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:9`

```console
$ docker pull xwiki@sha256:69e5e560c686c044b49d280da90c44ff0faaae8d4d876a3d25892f80e47c0547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:9` - linux; amd64

```console
$ docker pull xwiki@sha256:8d868ff4c1897c68c8a42dcf46f1417b5fd9e292b901eddeb730db781ecac77c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **582.7 MB (582735094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d6d3809f1fcf90829bfc59e3d274bb5350b20d078d575e2f78a77603b94a7a2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 02:55:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:58:33 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:58:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:59:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 11:44:25 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 29 Dec 2018 11:44:25 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 11:44:26 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 29 Dec 2018 11:44:27 GMT
WORKDIR /usr/local/tomcat
# Sat, 29 Dec 2018 11:44:27 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Sat, 29 Dec 2018 11:44:29 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 11:44:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:44:37 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 29 Dec 2018 11:48:11 GMT
ENV TOMCAT_MAJOR=8
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_VERSION=8.5.37
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_SHA512=be6d6df8b49a760b2e181d4a45d8e6dc7bba5ef2ec6a000f8562cf5f34db5b7fac300cba65bca782bfd25a9f9d8d4a48625f1ad046115c1d6629ea5f210a2718
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc
# Sat, 29 Dec 2018 11:49:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sat, 29 Dec 2018 11:49:11 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 29 Dec 2018 11:49:11 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 11:49:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 29 Dec 2018 17:35:20 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 29 Dec 2018 17:36:43 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:36:44 GMT
ENV XWIKI_VERSION=9.11.8
# Sat, 29 Dec 2018 17:36:45 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.8
# Sat, 29 Dec 2018 17:36:45 GMT
ENV XWIKI_DOWNLOAD_SHA256=e7b6f563012349dad2051fa7bb2ba5a5c2e736d11fcc41363a6acde16a4c128c
# Sat, 29 Dec 2018 17:37:25 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Sat, 29 Dec 2018 17:37:26 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Sat, 29 Dec 2018 17:37:27 GMT
COPY file:1bfb464d9ffbc4b2641e16ea3462f548658d64a99d68b666c0a19a602f1c4763 in /usr/local/tomcat/bin/ 
# Sat, 29 Dec 2018 17:37:27 GMT
COPY file:7e19e395759915dc8d77ac24361f1583af28857beda83e2f7e6520cfc9c06461 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Sat, 29 Dec 2018 17:37:28 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Sat, 29 Dec 2018 17:37:28 GMT
COPY file:3cb02aae77950ec07a4b3d028f378c2172d0834d03df7525854fe5ff38ec942b in /usr/local/bin/docker-entrypoint.sh 
# Sat, 29 Dec 2018 17:37:29 GMT
VOLUME [/usr/local/xwiki]
# Sat, 29 Dec 2018 17:37:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 17:37:29 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d7fcb5828abd01ec003887486f6054e939373f0b850db15529e9d877094896`  
		Last Modified: Sat, 29 Dec 2018 03:23:11 GMT  
		Size: 852.8 KB (852813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c860563d607821af1e6da364188f0fd7991176bb88b60b51f325ed8ed5d33b`  
		Last Modified: Sat, 29 Dec 2018 03:25:35 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f754145d12e37fa48f92002c88fbc77c762041b65288ad5c8e6214c032ea46`  
		Last Modified: Sat, 29 Dec 2018 03:25:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff15a87739e7b3027d0605252271d7db50944805518c366f933ce0cf070aa6e`  
		Last Modified: Sat, 29 Dec 2018 03:26:03 GMT  
		Size: 122.1 MB (122120750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5d3f0336b98d472fffeb06e1e4f951fe26086cb3146a55fa03518e6156d70c`  
		Last Modified: Sat, 29 Dec 2018 12:02:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d858972966ccbcf552f1d66ed1e14456bcdb2f666c3ad5dae7f0818f70b0847`  
		Last Modified: Sat, 29 Dec 2018 12:02:18 GMT  
		Size: 528.4 KB (528403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2dc2e148d0f877272f5165f608404540bd5370f495307ef00eedd2b95db33c`  
		Last Modified: Sat, 29 Dec 2018 12:02:38 GMT  
		Size: 10.6 MB (10620028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db18a2f7d48d94226efa6c98bdfd5b911363c5be3a566f63b80b8bc555c5e191`  
		Last Modified: Sat, 29 Dec 2018 12:02:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5227cef1d9b357c7fbe2af1189015eebf8af4eb9c9366d3c5c9c003db66eb2c4`  
		Last Modified: Sat, 29 Dec 2018 17:42:56 GMT  
		Size: 161.4 MB (161447853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de56619530b01139c4391a7ba88731cb79bd18dec5ead72ca34cc4394cae287`  
		Last Modified: Sat, 29 Dec 2018 17:42:35 GMT  
		Size: 225.8 MB (225758188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d0a6d54f57ce4b731797f564d9bfc833ef4f7ddff1f8ef3e29232b6bf28942`  
		Last Modified: Sat, 29 Dec 2018 17:42:04 GMT  
		Size: 952.1 KB (952110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5badcbd8e200b3c0e5672a8bdce32392899cfc7a7f36822a4b595537bcd0d2e`  
		Last Modified: Sat, 29 Dec 2018 17:42:03 GMT  
		Size: 1.1 KB (1149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e8e2d4c20c60c23f6a50a6ce818ca231cc78b63c895d62ce569e46d496862b`  
		Last Modified: Sat, 29 Dec 2018 17:42:03 GMT  
		Size: 2.3 KB (2312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efad6f47c2a73cde1e9c64e189616051d2c716d04be36f9555927301c3ce0cf1`  
		Last Modified: Sat, 29 Dec 2018 17:42:04 GMT  
		Size: 3.6 KB (3613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f05038347e43131931a0af72ee28216335efe09acf16b7b551f1636a79faf443`  
		Last Modified: Sat, 29 Dec 2018 17:42:04 GMT  
		Size: 2.5 KB (2456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:9.11`

```console
$ docker pull xwiki@sha256:69e5e560c686c044b49d280da90c44ff0faaae8d4d876a3d25892f80e47c0547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:9.11` - linux; amd64

```console
$ docker pull xwiki@sha256:8d868ff4c1897c68c8a42dcf46f1417b5fd9e292b901eddeb730db781ecac77c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **582.7 MB (582735094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d6d3809f1fcf90829bfc59e3d274bb5350b20d078d575e2f78a77603b94a7a2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 02:55:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:58:33 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:58:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:59:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 11:44:25 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 29 Dec 2018 11:44:25 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 11:44:26 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 29 Dec 2018 11:44:27 GMT
WORKDIR /usr/local/tomcat
# Sat, 29 Dec 2018 11:44:27 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Sat, 29 Dec 2018 11:44:29 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 11:44:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:44:37 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 29 Dec 2018 11:48:11 GMT
ENV TOMCAT_MAJOR=8
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_VERSION=8.5.37
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_SHA512=be6d6df8b49a760b2e181d4a45d8e6dc7bba5ef2ec6a000f8562cf5f34db5b7fac300cba65bca782bfd25a9f9d8d4a48625f1ad046115c1d6629ea5f210a2718
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc
# Sat, 29 Dec 2018 11:49:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sat, 29 Dec 2018 11:49:11 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 29 Dec 2018 11:49:11 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 11:49:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 29 Dec 2018 17:35:20 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 29 Dec 2018 17:36:43 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:36:44 GMT
ENV XWIKI_VERSION=9.11.8
# Sat, 29 Dec 2018 17:36:45 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.8
# Sat, 29 Dec 2018 17:36:45 GMT
ENV XWIKI_DOWNLOAD_SHA256=e7b6f563012349dad2051fa7bb2ba5a5c2e736d11fcc41363a6acde16a4c128c
# Sat, 29 Dec 2018 17:37:25 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Sat, 29 Dec 2018 17:37:26 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Sat, 29 Dec 2018 17:37:27 GMT
COPY file:1bfb464d9ffbc4b2641e16ea3462f548658d64a99d68b666c0a19a602f1c4763 in /usr/local/tomcat/bin/ 
# Sat, 29 Dec 2018 17:37:27 GMT
COPY file:7e19e395759915dc8d77ac24361f1583af28857beda83e2f7e6520cfc9c06461 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Sat, 29 Dec 2018 17:37:28 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Sat, 29 Dec 2018 17:37:28 GMT
COPY file:3cb02aae77950ec07a4b3d028f378c2172d0834d03df7525854fe5ff38ec942b in /usr/local/bin/docker-entrypoint.sh 
# Sat, 29 Dec 2018 17:37:29 GMT
VOLUME [/usr/local/xwiki]
# Sat, 29 Dec 2018 17:37:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 17:37:29 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d7fcb5828abd01ec003887486f6054e939373f0b850db15529e9d877094896`  
		Last Modified: Sat, 29 Dec 2018 03:23:11 GMT  
		Size: 852.8 KB (852813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c860563d607821af1e6da364188f0fd7991176bb88b60b51f325ed8ed5d33b`  
		Last Modified: Sat, 29 Dec 2018 03:25:35 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f754145d12e37fa48f92002c88fbc77c762041b65288ad5c8e6214c032ea46`  
		Last Modified: Sat, 29 Dec 2018 03:25:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff15a87739e7b3027d0605252271d7db50944805518c366f933ce0cf070aa6e`  
		Last Modified: Sat, 29 Dec 2018 03:26:03 GMT  
		Size: 122.1 MB (122120750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5d3f0336b98d472fffeb06e1e4f951fe26086cb3146a55fa03518e6156d70c`  
		Last Modified: Sat, 29 Dec 2018 12:02:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d858972966ccbcf552f1d66ed1e14456bcdb2f666c3ad5dae7f0818f70b0847`  
		Last Modified: Sat, 29 Dec 2018 12:02:18 GMT  
		Size: 528.4 KB (528403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2dc2e148d0f877272f5165f608404540bd5370f495307ef00eedd2b95db33c`  
		Last Modified: Sat, 29 Dec 2018 12:02:38 GMT  
		Size: 10.6 MB (10620028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db18a2f7d48d94226efa6c98bdfd5b911363c5be3a566f63b80b8bc555c5e191`  
		Last Modified: Sat, 29 Dec 2018 12:02:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5227cef1d9b357c7fbe2af1189015eebf8af4eb9c9366d3c5c9c003db66eb2c4`  
		Last Modified: Sat, 29 Dec 2018 17:42:56 GMT  
		Size: 161.4 MB (161447853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de56619530b01139c4391a7ba88731cb79bd18dec5ead72ca34cc4394cae287`  
		Last Modified: Sat, 29 Dec 2018 17:42:35 GMT  
		Size: 225.8 MB (225758188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d0a6d54f57ce4b731797f564d9bfc833ef4f7ddff1f8ef3e29232b6bf28942`  
		Last Modified: Sat, 29 Dec 2018 17:42:04 GMT  
		Size: 952.1 KB (952110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5badcbd8e200b3c0e5672a8bdce32392899cfc7a7f36822a4b595537bcd0d2e`  
		Last Modified: Sat, 29 Dec 2018 17:42:03 GMT  
		Size: 1.1 KB (1149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e8e2d4c20c60c23f6a50a6ce818ca231cc78b63c895d62ce569e46d496862b`  
		Last Modified: Sat, 29 Dec 2018 17:42:03 GMT  
		Size: 2.3 KB (2312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efad6f47c2a73cde1e9c64e189616051d2c716d04be36f9555927301c3ce0cf1`  
		Last Modified: Sat, 29 Dec 2018 17:42:04 GMT  
		Size: 3.6 KB (3613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f05038347e43131931a0af72ee28216335efe09acf16b7b551f1636a79faf443`  
		Last Modified: Sat, 29 Dec 2018 17:42:04 GMT  
		Size: 2.5 KB (2456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:9.11.8`

```console
$ docker pull xwiki@sha256:69e5e560c686c044b49d280da90c44ff0faaae8d4d876a3d25892f80e47c0547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:9.11.8` - linux; amd64

```console
$ docker pull xwiki@sha256:8d868ff4c1897c68c8a42dcf46f1417b5fd9e292b901eddeb730db781ecac77c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **582.7 MB (582735094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d6d3809f1fcf90829bfc59e3d274bb5350b20d078d575e2f78a77603b94a7a2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 02:55:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:58:33 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:58:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:59:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 11:44:25 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 29 Dec 2018 11:44:25 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 11:44:26 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 29 Dec 2018 11:44:27 GMT
WORKDIR /usr/local/tomcat
# Sat, 29 Dec 2018 11:44:27 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Sat, 29 Dec 2018 11:44:29 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 11:44:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:44:37 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 29 Dec 2018 11:48:11 GMT
ENV TOMCAT_MAJOR=8
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_VERSION=8.5.37
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_SHA512=be6d6df8b49a760b2e181d4a45d8e6dc7bba5ef2ec6a000f8562cf5f34db5b7fac300cba65bca782bfd25a9f9d8d4a48625f1ad046115c1d6629ea5f210a2718
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc
# Sat, 29 Dec 2018 11:49:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sat, 29 Dec 2018 11:49:11 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 29 Dec 2018 11:49:11 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 11:49:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 29 Dec 2018 17:35:20 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 29 Dec 2018 17:36:43 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:36:44 GMT
ENV XWIKI_VERSION=9.11.8
# Sat, 29 Dec 2018 17:36:45 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.8
# Sat, 29 Dec 2018 17:36:45 GMT
ENV XWIKI_DOWNLOAD_SHA256=e7b6f563012349dad2051fa7bb2ba5a5c2e736d11fcc41363a6acde16a4c128c
# Sat, 29 Dec 2018 17:37:25 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Sat, 29 Dec 2018 17:37:26 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Sat, 29 Dec 2018 17:37:27 GMT
COPY file:1bfb464d9ffbc4b2641e16ea3462f548658d64a99d68b666c0a19a602f1c4763 in /usr/local/tomcat/bin/ 
# Sat, 29 Dec 2018 17:37:27 GMT
COPY file:7e19e395759915dc8d77ac24361f1583af28857beda83e2f7e6520cfc9c06461 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Sat, 29 Dec 2018 17:37:28 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Sat, 29 Dec 2018 17:37:28 GMT
COPY file:3cb02aae77950ec07a4b3d028f378c2172d0834d03df7525854fe5ff38ec942b in /usr/local/bin/docker-entrypoint.sh 
# Sat, 29 Dec 2018 17:37:29 GMT
VOLUME [/usr/local/xwiki]
# Sat, 29 Dec 2018 17:37:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 17:37:29 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d7fcb5828abd01ec003887486f6054e939373f0b850db15529e9d877094896`  
		Last Modified: Sat, 29 Dec 2018 03:23:11 GMT  
		Size: 852.8 KB (852813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c860563d607821af1e6da364188f0fd7991176bb88b60b51f325ed8ed5d33b`  
		Last Modified: Sat, 29 Dec 2018 03:25:35 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f754145d12e37fa48f92002c88fbc77c762041b65288ad5c8e6214c032ea46`  
		Last Modified: Sat, 29 Dec 2018 03:25:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff15a87739e7b3027d0605252271d7db50944805518c366f933ce0cf070aa6e`  
		Last Modified: Sat, 29 Dec 2018 03:26:03 GMT  
		Size: 122.1 MB (122120750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5d3f0336b98d472fffeb06e1e4f951fe26086cb3146a55fa03518e6156d70c`  
		Last Modified: Sat, 29 Dec 2018 12:02:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d858972966ccbcf552f1d66ed1e14456bcdb2f666c3ad5dae7f0818f70b0847`  
		Last Modified: Sat, 29 Dec 2018 12:02:18 GMT  
		Size: 528.4 KB (528403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2dc2e148d0f877272f5165f608404540bd5370f495307ef00eedd2b95db33c`  
		Last Modified: Sat, 29 Dec 2018 12:02:38 GMT  
		Size: 10.6 MB (10620028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db18a2f7d48d94226efa6c98bdfd5b911363c5be3a566f63b80b8bc555c5e191`  
		Last Modified: Sat, 29 Dec 2018 12:02:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5227cef1d9b357c7fbe2af1189015eebf8af4eb9c9366d3c5c9c003db66eb2c4`  
		Last Modified: Sat, 29 Dec 2018 17:42:56 GMT  
		Size: 161.4 MB (161447853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de56619530b01139c4391a7ba88731cb79bd18dec5ead72ca34cc4394cae287`  
		Last Modified: Sat, 29 Dec 2018 17:42:35 GMT  
		Size: 225.8 MB (225758188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d0a6d54f57ce4b731797f564d9bfc833ef4f7ddff1f8ef3e29232b6bf28942`  
		Last Modified: Sat, 29 Dec 2018 17:42:04 GMT  
		Size: 952.1 KB (952110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5badcbd8e200b3c0e5672a8bdce32392899cfc7a7f36822a4b595537bcd0d2e`  
		Last Modified: Sat, 29 Dec 2018 17:42:03 GMT  
		Size: 1.1 KB (1149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e8e2d4c20c60c23f6a50a6ce818ca231cc78b63c895d62ce569e46d496862b`  
		Last Modified: Sat, 29 Dec 2018 17:42:03 GMT  
		Size: 2.3 KB (2312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efad6f47c2a73cde1e9c64e189616051d2c716d04be36f9555927301c3ce0cf1`  
		Last Modified: Sat, 29 Dec 2018 17:42:04 GMT  
		Size: 3.6 KB (3613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f05038347e43131931a0af72ee28216335efe09acf16b7b551f1636a79faf443`  
		Last Modified: Sat, 29 Dec 2018 17:42:04 GMT  
		Size: 2.5 KB (2456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:9.11.8-postgres-tomcat`

```console
$ docker pull xwiki@sha256:39feb1b33a4932a28afc066befd397b4cf740c773c45fa9bd701e8b0bca0ac52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `xwiki:9.11.8-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:e36dac324a505512c02904fa11a7a7fa3f4ef7501d4f54770985b854a56fc214
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **582.0 MB (582001328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:087bf724a2922985e12fd02ffa3ba424e3916028bf2e1bff06c54a2b06013653`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 02:55:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:58:33 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:58:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:59:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 11:44:25 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 29 Dec 2018 11:44:25 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 11:44:26 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 29 Dec 2018 11:44:27 GMT
WORKDIR /usr/local/tomcat
# Sat, 29 Dec 2018 11:44:27 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Sat, 29 Dec 2018 11:44:29 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 11:44:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:44:37 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 29 Dec 2018 11:48:11 GMT
ENV TOMCAT_MAJOR=8
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_VERSION=8.5.37
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_SHA512=be6d6df8b49a760b2e181d4a45d8e6dc7bba5ef2ec6a000f8562cf5f34db5b7fac300cba65bca782bfd25a9f9d8d4a48625f1ad046115c1d6629ea5f210a2718
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc
# Sat, 29 Dec 2018 11:49:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sat, 29 Dec 2018 11:49:11 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 29 Dec 2018 11:49:11 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 11:49:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 29 Dec 2018 17:35:20 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 29 Dec 2018 17:38:45 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:38:46 GMT
ENV XWIKI_VERSION=9.11.8
# Sat, 29 Dec 2018 17:38:46 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.8
# Sat, 29 Dec 2018 17:38:46 GMT
ENV XWIKI_DOWNLOAD_SHA256=e7b6f563012349dad2051fa7bb2ba5a5c2e736d11fcc41363a6acde16a4c128c
# Sat, 29 Dec 2018 17:39:27 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Sat, 29 Dec 2018 17:39:29 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Sat, 29 Dec 2018 17:39:29 GMT
COPY file:1bfb464d9ffbc4b2641e16ea3462f548658d64a99d68b666c0a19a602f1c4763 in /usr/local/tomcat/bin/ 
# Sat, 29 Dec 2018 17:39:30 GMT
COPY file:10a8d8f8962c7c7c84d660323e8460f36a2abc6540ce2c2b5faa1f233a72cd39 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Sat, 29 Dec 2018 17:39:31 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Sat, 29 Dec 2018 17:39:32 GMT
COPY file:3cb02aae77950ec07a4b3d028f378c2172d0834d03df7525854fe5ff38ec942b in /usr/local/bin/docker-entrypoint.sh 
# Sat, 29 Dec 2018 17:39:32 GMT
VOLUME [/usr/local/xwiki]
# Sat, 29 Dec 2018 17:39:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 17:39:33 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d7fcb5828abd01ec003887486f6054e939373f0b850db15529e9d877094896`  
		Last Modified: Sat, 29 Dec 2018 03:23:11 GMT  
		Size: 852.8 KB (852813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c860563d607821af1e6da364188f0fd7991176bb88b60b51f325ed8ed5d33b`  
		Last Modified: Sat, 29 Dec 2018 03:25:35 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f754145d12e37fa48f92002c88fbc77c762041b65288ad5c8e6214c032ea46`  
		Last Modified: Sat, 29 Dec 2018 03:25:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff15a87739e7b3027d0605252271d7db50944805518c366f933ce0cf070aa6e`  
		Last Modified: Sat, 29 Dec 2018 03:26:03 GMT  
		Size: 122.1 MB (122120750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5d3f0336b98d472fffeb06e1e4f951fe26086cb3146a55fa03518e6156d70c`  
		Last Modified: Sat, 29 Dec 2018 12:02:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d858972966ccbcf552f1d66ed1e14456bcdb2f666c3ad5dae7f0818f70b0847`  
		Last Modified: Sat, 29 Dec 2018 12:02:18 GMT  
		Size: 528.4 KB (528403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2dc2e148d0f877272f5165f608404540bd5370f495307ef00eedd2b95db33c`  
		Last Modified: Sat, 29 Dec 2018 12:02:38 GMT  
		Size: 10.6 MB (10620028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db18a2f7d48d94226efa6c98bdfd5b911363c5be3a566f63b80b8bc555c5e191`  
		Last Modified: Sat, 29 Dec 2018 12:02:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70102b104b8accff04fb215fb915de19942d5b335b229fc1badbeec0150094f7`  
		Last Modified: Sat, 29 Dec 2018 17:44:06 GMT  
		Size: 161.0 MB (161047141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2d0c7c630ead80cefae202881ceb221b88a320961a6a55b43f11a15c7123e3`  
		Last Modified: Sat, 29 Dec 2018 17:43:48 GMT  
		Size: 225.8 MB (225758271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:452dc324ac5a60461bdc337b4aacdd36685eefb146f327dcd3d2ecafe5122d60`  
		Last Modified: Sat, 29 Dec 2018 17:43:19 GMT  
		Size: 618.9 KB (618873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6770b37a19fbc8666d0b717018d8aa5ee98a304ca05a2931ae7cded1e24d870`  
		Last Modified: Sat, 29 Dec 2018 17:43:18 GMT  
		Size: 1.1 KB (1149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacd4f8b8eaf702eb59ac0e04fe7e9c281afb06ce53d20f40038f83783084d1c`  
		Last Modified: Sat, 29 Dec 2018 17:43:19 GMT  
		Size: 2.4 KB (2418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a9741f9b642a1090dcaa2ecb96a58917ec3bfcade9ab0f909aed5275f9a9c2`  
		Last Modified: Sat, 29 Dec 2018 17:43:18 GMT  
		Size: 3.6 KB (3606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:995b08568aab397adff100774ca5cf0f77ba1d6de3931aae84a4731a5d02e8ac`  
		Last Modified: Sat, 29 Dec 2018 17:43:18 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `xwiki:9.11.8-postgres-tomcat` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:48dbced6e71856a46da6501f011348f71ff2e3c5bdb9b6beda508011a05efae1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **562.0 MB (561974163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f83a030a77ce1bb66208ab80b9f4568bcbd1ce6f7258e3da513d208d7e65e266`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 16:57:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:14:07 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 17:14:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 17:14:11 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 17:14:12 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 17:14:13 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 17:14:13 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 17:19:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sun, 30 Dec 2018 04:20:54 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sun, 30 Dec 2018 04:20:55 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 30 Dec 2018 04:20:56 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sun, 30 Dec 2018 04:20:57 GMT
WORKDIR /usr/local/tomcat
# Sun, 30 Dec 2018 04:20:58 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sun, 30 Dec 2018 04:20:58 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sun, 30 Dec 2018 04:20:59 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Sun, 30 Dec 2018 04:21:01 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sun, 30 Dec 2018 04:21:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 04:21:14 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sun, 30 Dec 2018 04:33:33 GMT
ENV TOMCAT_MAJOR=8
# Sun, 30 Dec 2018 04:33:34 GMT
ENV TOMCAT_VERSION=8.5.37
# Sun, 30 Dec 2018 04:33:34 GMT
ENV TOMCAT_SHA512=be6d6df8b49a760b2e181d4a45d8e6dc7bba5ef2ec6a000f8562cf5f34db5b7fac300cba65bca782bfd25a9f9d8d4a48625f1ad046115c1d6629ea5f210a2718
# Sun, 30 Dec 2018 04:33:35 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz
# Sun, 30 Dec 2018 04:33:36 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc
# Sun, 30 Dec 2018 04:35:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sun, 30 Dec 2018 04:35:50 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sun, 30 Dec 2018 04:35:52 GMT
EXPOSE 8080
# Sun, 30 Dec 2018 04:35:53 GMT
CMD ["catalina.sh" "run"]
# Sun, 30 Dec 2018 08:29:06 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sun, 30 Dec 2018 08:31:44 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 08:31:45 GMT
ENV XWIKI_VERSION=9.11.8
# Sun, 30 Dec 2018 08:31:46 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.8
# Sun, 30 Dec 2018 08:31:46 GMT
ENV XWIKI_DOWNLOAD_SHA256=e7b6f563012349dad2051fa7bb2ba5a5c2e736d11fcc41363a6acde16a4c128c
# Sun, 30 Dec 2018 08:35:38 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Sun, 30 Dec 2018 08:35:40 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Sun, 30 Dec 2018 08:35:41 GMT
COPY file:1bfb464d9ffbc4b2641e16ea3462f548658d64a99d68b666c0a19a602f1c4763 in /usr/local/tomcat/bin/ 
# Sun, 30 Dec 2018 08:35:41 GMT
COPY file:10a8d8f8962c7c7c84d660323e8460f36a2abc6540ce2c2b5faa1f233a72cd39 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Sun, 30 Dec 2018 08:35:43 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Sun, 30 Dec 2018 08:35:44 GMT
COPY file:3cb02aae77950ec07a4b3d028f378c2172d0834d03df7525854fe5ff38ec942b in /usr/local/bin/docker-entrypoint.sh 
# Sun, 30 Dec 2018 08:35:44 GMT
VOLUME [/usr/local/xwiki]
# Sun, 30 Dec 2018 08:35:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 30 Dec 2018 08:35:46 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48571cc473b88fcffd22eb773861106e62ad3dea84834463ed7e9d150439057`  
		Last Modified: Sat, 29 Dec 2018 17:25:57 GMT  
		Size: 839.2 KB (839233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344869d13b124ac74cf306b58444652eed73f02dae6bcde459d7ec5e7129d8c3`  
		Last Modified: Sat, 29 Dec 2018 17:29:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176c87f6576e84823739aa84291c369e1903bc4632e8c92d57ec74946b93c0e4`  
		Last Modified: Sat, 29 Dec 2018 17:29:44 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31d5b5377617d8168a16e074e5d337d3afa5ca70b88f12abcb6c34f65695e0e5`  
		Last Modified: Sat, 29 Dec 2018 17:30:22 GMT  
		Size: 112.8 MB (112755781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc0aebc76f15ba9cc518de6e315ac669e5fe7251f6236333aab8b052cfcb0742`  
		Last Modified: Sun, 30 Dec 2018 05:23:09 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3372b72c945a6ee5780794f4ff106dad87f51dad895159424643ab45f8efa43`  
		Last Modified: Sun, 30 Dec 2018 05:23:10 GMT  
		Size: 513.1 KB (513096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4482b329bfecf1ee5459138710663b10bc47f2bbd3d8c580ee7e2e6efffeeece`  
		Last Modified: Sun, 30 Dec 2018 05:23:58 GMT  
		Size: 10.6 MB (10628402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb6a031a1860063674b852bcb6ae6d8a165d871e42c1a32629255d390479067`  
		Last Modified: Sun, 30 Dec 2018 05:23:55 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2808b38bd2d167e06276394cee69332e2bf838a09502558fb6e8cdefd7329816`  
		Last Modified: Sun, 30 Dec 2018 08:41:27 GMT  
		Size: 153.9 MB (153911949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf79c2f152b6c31ed59f3e849f0971ed081be5942caf822d7ed6e2c61c1de56`  
		Last Modified: Sun, 30 Dec 2018 08:41:10 GMT  
		Size: 225.8 MB (225758191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2856b76dfdc5d9f4081802c8719313d86f49466d18316a8559237311e34ea319`  
		Last Modified: Sun, 30 Dec 2018 08:40:32 GMT  
		Size: 618.9 KB (618882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0904cb3d77f9f1b949f14a3d21ffba80c15c1b702f7b8c349a5e7f7ce317dccf`  
		Last Modified: Sun, 30 Dec 2018 08:40:32 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049198cd006245ddaaf35a1ffdefaaa56a58f201c3e8f579e1632f4dcb458832`  
		Last Modified: Sun, 30 Dec 2018 08:40:32 GMT  
		Size: 2.4 KB (2424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678a400a5628b3647e2ee9a1b3a95668357bcae50793b105523dd2187f32101d`  
		Last Modified: Sun, 30 Dec 2018 08:40:32 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27cba007c81511ebbde63782f0e02352b88acc9ae549182c0175521ddbb52a2`  
		Last Modified: Sun, 30 Dec 2018 08:40:32 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:9.11-postgres-tomcat`

```console
$ docker pull xwiki@sha256:39feb1b33a4932a28afc066befd397b4cf740c773c45fa9bd701e8b0bca0ac52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `xwiki:9.11-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:e36dac324a505512c02904fa11a7a7fa3f4ef7501d4f54770985b854a56fc214
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **582.0 MB (582001328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:087bf724a2922985e12fd02ffa3ba424e3916028bf2e1bff06c54a2b06013653`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 02:55:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:58:33 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:58:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:59:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 11:44:25 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 29 Dec 2018 11:44:25 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 11:44:26 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 29 Dec 2018 11:44:27 GMT
WORKDIR /usr/local/tomcat
# Sat, 29 Dec 2018 11:44:27 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Sat, 29 Dec 2018 11:44:29 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 11:44:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:44:37 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 29 Dec 2018 11:48:11 GMT
ENV TOMCAT_MAJOR=8
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_VERSION=8.5.37
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_SHA512=be6d6df8b49a760b2e181d4a45d8e6dc7bba5ef2ec6a000f8562cf5f34db5b7fac300cba65bca782bfd25a9f9d8d4a48625f1ad046115c1d6629ea5f210a2718
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc
# Sat, 29 Dec 2018 11:49:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sat, 29 Dec 2018 11:49:11 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 29 Dec 2018 11:49:11 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 11:49:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 29 Dec 2018 17:35:20 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 29 Dec 2018 17:38:45 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:38:46 GMT
ENV XWIKI_VERSION=9.11.8
# Sat, 29 Dec 2018 17:38:46 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.8
# Sat, 29 Dec 2018 17:38:46 GMT
ENV XWIKI_DOWNLOAD_SHA256=e7b6f563012349dad2051fa7bb2ba5a5c2e736d11fcc41363a6acde16a4c128c
# Sat, 29 Dec 2018 17:39:27 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Sat, 29 Dec 2018 17:39:29 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Sat, 29 Dec 2018 17:39:29 GMT
COPY file:1bfb464d9ffbc4b2641e16ea3462f548658d64a99d68b666c0a19a602f1c4763 in /usr/local/tomcat/bin/ 
# Sat, 29 Dec 2018 17:39:30 GMT
COPY file:10a8d8f8962c7c7c84d660323e8460f36a2abc6540ce2c2b5faa1f233a72cd39 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Sat, 29 Dec 2018 17:39:31 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Sat, 29 Dec 2018 17:39:32 GMT
COPY file:3cb02aae77950ec07a4b3d028f378c2172d0834d03df7525854fe5ff38ec942b in /usr/local/bin/docker-entrypoint.sh 
# Sat, 29 Dec 2018 17:39:32 GMT
VOLUME [/usr/local/xwiki]
# Sat, 29 Dec 2018 17:39:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 17:39:33 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d7fcb5828abd01ec003887486f6054e939373f0b850db15529e9d877094896`  
		Last Modified: Sat, 29 Dec 2018 03:23:11 GMT  
		Size: 852.8 KB (852813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c860563d607821af1e6da364188f0fd7991176bb88b60b51f325ed8ed5d33b`  
		Last Modified: Sat, 29 Dec 2018 03:25:35 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f754145d12e37fa48f92002c88fbc77c762041b65288ad5c8e6214c032ea46`  
		Last Modified: Sat, 29 Dec 2018 03:25:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff15a87739e7b3027d0605252271d7db50944805518c366f933ce0cf070aa6e`  
		Last Modified: Sat, 29 Dec 2018 03:26:03 GMT  
		Size: 122.1 MB (122120750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5d3f0336b98d472fffeb06e1e4f951fe26086cb3146a55fa03518e6156d70c`  
		Last Modified: Sat, 29 Dec 2018 12:02:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d858972966ccbcf552f1d66ed1e14456bcdb2f666c3ad5dae7f0818f70b0847`  
		Last Modified: Sat, 29 Dec 2018 12:02:18 GMT  
		Size: 528.4 KB (528403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2dc2e148d0f877272f5165f608404540bd5370f495307ef00eedd2b95db33c`  
		Last Modified: Sat, 29 Dec 2018 12:02:38 GMT  
		Size: 10.6 MB (10620028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db18a2f7d48d94226efa6c98bdfd5b911363c5be3a566f63b80b8bc555c5e191`  
		Last Modified: Sat, 29 Dec 2018 12:02:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70102b104b8accff04fb215fb915de19942d5b335b229fc1badbeec0150094f7`  
		Last Modified: Sat, 29 Dec 2018 17:44:06 GMT  
		Size: 161.0 MB (161047141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2d0c7c630ead80cefae202881ceb221b88a320961a6a55b43f11a15c7123e3`  
		Last Modified: Sat, 29 Dec 2018 17:43:48 GMT  
		Size: 225.8 MB (225758271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:452dc324ac5a60461bdc337b4aacdd36685eefb146f327dcd3d2ecafe5122d60`  
		Last Modified: Sat, 29 Dec 2018 17:43:19 GMT  
		Size: 618.9 KB (618873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6770b37a19fbc8666d0b717018d8aa5ee98a304ca05a2931ae7cded1e24d870`  
		Last Modified: Sat, 29 Dec 2018 17:43:18 GMT  
		Size: 1.1 KB (1149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacd4f8b8eaf702eb59ac0e04fe7e9c281afb06ce53d20f40038f83783084d1c`  
		Last Modified: Sat, 29 Dec 2018 17:43:19 GMT  
		Size: 2.4 KB (2418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a9741f9b642a1090dcaa2ecb96a58917ec3bfcade9ab0f909aed5275f9a9c2`  
		Last Modified: Sat, 29 Dec 2018 17:43:18 GMT  
		Size: 3.6 KB (3606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:995b08568aab397adff100774ca5cf0f77ba1d6de3931aae84a4731a5d02e8ac`  
		Last Modified: Sat, 29 Dec 2018 17:43:18 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `xwiki:9.11-postgres-tomcat` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:48dbced6e71856a46da6501f011348f71ff2e3c5bdb9b6beda508011a05efae1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **562.0 MB (561974163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f83a030a77ce1bb66208ab80b9f4568bcbd1ce6f7258e3da513d208d7e65e266`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 16:57:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:14:07 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 17:14:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 17:14:11 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 17:14:12 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 17:14:13 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 17:14:13 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 17:19:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sun, 30 Dec 2018 04:20:54 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sun, 30 Dec 2018 04:20:55 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 30 Dec 2018 04:20:56 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sun, 30 Dec 2018 04:20:57 GMT
WORKDIR /usr/local/tomcat
# Sun, 30 Dec 2018 04:20:58 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sun, 30 Dec 2018 04:20:58 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sun, 30 Dec 2018 04:20:59 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Sun, 30 Dec 2018 04:21:01 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sun, 30 Dec 2018 04:21:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 04:21:14 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sun, 30 Dec 2018 04:33:33 GMT
ENV TOMCAT_MAJOR=8
# Sun, 30 Dec 2018 04:33:34 GMT
ENV TOMCAT_VERSION=8.5.37
# Sun, 30 Dec 2018 04:33:34 GMT
ENV TOMCAT_SHA512=be6d6df8b49a760b2e181d4a45d8e6dc7bba5ef2ec6a000f8562cf5f34db5b7fac300cba65bca782bfd25a9f9d8d4a48625f1ad046115c1d6629ea5f210a2718
# Sun, 30 Dec 2018 04:33:35 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz
# Sun, 30 Dec 2018 04:33:36 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc
# Sun, 30 Dec 2018 04:35:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sun, 30 Dec 2018 04:35:50 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sun, 30 Dec 2018 04:35:52 GMT
EXPOSE 8080
# Sun, 30 Dec 2018 04:35:53 GMT
CMD ["catalina.sh" "run"]
# Sun, 30 Dec 2018 08:29:06 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sun, 30 Dec 2018 08:31:44 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 08:31:45 GMT
ENV XWIKI_VERSION=9.11.8
# Sun, 30 Dec 2018 08:31:46 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.8
# Sun, 30 Dec 2018 08:31:46 GMT
ENV XWIKI_DOWNLOAD_SHA256=e7b6f563012349dad2051fa7bb2ba5a5c2e736d11fcc41363a6acde16a4c128c
# Sun, 30 Dec 2018 08:35:38 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Sun, 30 Dec 2018 08:35:40 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Sun, 30 Dec 2018 08:35:41 GMT
COPY file:1bfb464d9ffbc4b2641e16ea3462f548658d64a99d68b666c0a19a602f1c4763 in /usr/local/tomcat/bin/ 
# Sun, 30 Dec 2018 08:35:41 GMT
COPY file:10a8d8f8962c7c7c84d660323e8460f36a2abc6540ce2c2b5faa1f233a72cd39 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Sun, 30 Dec 2018 08:35:43 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Sun, 30 Dec 2018 08:35:44 GMT
COPY file:3cb02aae77950ec07a4b3d028f378c2172d0834d03df7525854fe5ff38ec942b in /usr/local/bin/docker-entrypoint.sh 
# Sun, 30 Dec 2018 08:35:44 GMT
VOLUME [/usr/local/xwiki]
# Sun, 30 Dec 2018 08:35:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 30 Dec 2018 08:35:46 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48571cc473b88fcffd22eb773861106e62ad3dea84834463ed7e9d150439057`  
		Last Modified: Sat, 29 Dec 2018 17:25:57 GMT  
		Size: 839.2 KB (839233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344869d13b124ac74cf306b58444652eed73f02dae6bcde459d7ec5e7129d8c3`  
		Last Modified: Sat, 29 Dec 2018 17:29:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176c87f6576e84823739aa84291c369e1903bc4632e8c92d57ec74946b93c0e4`  
		Last Modified: Sat, 29 Dec 2018 17:29:44 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31d5b5377617d8168a16e074e5d337d3afa5ca70b88f12abcb6c34f65695e0e5`  
		Last Modified: Sat, 29 Dec 2018 17:30:22 GMT  
		Size: 112.8 MB (112755781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc0aebc76f15ba9cc518de6e315ac669e5fe7251f6236333aab8b052cfcb0742`  
		Last Modified: Sun, 30 Dec 2018 05:23:09 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3372b72c945a6ee5780794f4ff106dad87f51dad895159424643ab45f8efa43`  
		Last Modified: Sun, 30 Dec 2018 05:23:10 GMT  
		Size: 513.1 KB (513096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4482b329bfecf1ee5459138710663b10bc47f2bbd3d8c580ee7e2e6efffeeece`  
		Last Modified: Sun, 30 Dec 2018 05:23:58 GMT  
		Size: 10.6 MB (10628402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb6a031a1860063674b852bcb6ae6d8a165d871e42c1a32629255d390479067`  
		Last Modified: Sun, 30 Dec 2018 05:23:55 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2808b38bd2d167e06276394cee69332e2bf838a09502558fb6e8cdefd7329816`  
		Last Modified: Sun, 30 Dec 2018 08:41:27 GMT  
		Size: 153.9 MB (153911949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf79c2f152b6c31ed59f3e849f0971ed081be5942caf822d7ed6e2c61c1de56`  
		Last Modified: Sun, 30 Dec 2018 08:41:10 GMT  
		Size: 225.8 MB (225758191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2856b76dfdc5d9f4081802c8719313d86f49466d18316a8559237311e34ea319`  
		Last Modified: Sun, 30 Dec 2018 08:40:32 GMT  
		Size: 618.9 KB (618882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0904cb3d77f9f1b949f14a3d21ffba80c15c1b702f7b8c349a5e7f7ce317dccf`  
		Last Modified: Sun, 30 Dec 2018 08:40:32 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049198cd006245ddaaf35a1ffdefaaa56a58f201c3e8f579e1632f4dcb458832`  
		Last Modified: Sun, 30 Dec 2018 08:40:32 GMT  
		Size: 2.4 KB (2424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678a400a5628b3647e2ee9a1b3a95668357bcae50793b105523dd2187f32101d`  
		Last Modified: Sun, 30 Dec 2018 08:40:32 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27cba007c81511ebbde63782f0e02352b88acc9ae549182c0175521ddbb52a2`  
		Last Modified: Sun, 30 Dec 2018 08:40:32 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:9-mysql-tomcat`

```console
$ docker pull xwiki@sha256:69e5e560c686c044b49d280da90c44ff0faaae8d4d876a3d25892f80e47c0547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:9-mysql-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:8d868ff4c1897c68c8a42dcf46f1417b5fd9e292b901eddeb730db781ecac77c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **582.7 MB (582735094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d6d3809f1fcf90829bfc59e3d274bb5350b20d078d575e2f78a77603b94a7a2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 02:55:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:58:33 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:58:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:59:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 11:44:25 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 29 Dec 2018 11:44:25 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 11:44:26 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 29 Dec 2018 11:44:27 GMT
WORKDIR /usr/local/tomcat
# Sat, 29 Dec 2018 11:44:27 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Sat, 29 Dec 2018 11:44:29 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 11:44:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:44:37 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 29 Dec 2018 11:48:11 GMT
ENV TOMCAT_MAJOR=8
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_VERSION=8.5.37
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_SHA512=be6d6df8b49a760b2e181d4a45d8e6dc7bba5ef2ec6a000f8562cf5f34db5b7fac300cba65bca782bfd25a9f9d8d4a48625f1ad046115c1d6629ea5f210a2718
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc
# Sat, 29 Dec 2018 11:49:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sat, 29 Dec 2018 11:49:11 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 29 Dec 2018 11:49:11 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 11:49:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 29 Dec 2018 17:35:20 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 29 Dec 2018 17:36:43 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:36:44 GMT
ENV XWIKI_VERSION=9.11.8
# Sat, 29 Dec 2018 17:36:45 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.8
# Sat, 29 Dec 2018 17:36:45 GMT
ENV XWIKI_DOWNLOAD_SHA256=e7b6f563012349dad2051fa7bb2ba5a5c2e736d11fcc41363a6acde16a4c128c
# Sat, 29 Dec 2018 17:37:25 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Sat, 29 Dec 2018 17:37:26 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Sat, 29 Dec 2018 17:37:27 GMT
COPY file:1bfb464d9ffbc4b2641e16ea3462f548658d64a99d68b666c0a19a602f1c4763 in /usr/local/tomcat/bin/ 
# Sat, 29 Dec 2018 17:37:27 GMT
COPY file:7e19e395759915dc8d77ac24361f1583af28857beda83e2f7e6520cfc9c06461 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Sat, 29 Dec 2018 17:37:28 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Sat, 29 Dec 2018 17:37:28 GMT
COPY file:3cb02aae77950ec07a4b3d028f378c2172d0834d03df7525854fe5ff38ec942b in /usr/local/bin/docker-entrypoint.sh 
# Sat, 29 Dec 2018 17:37:29 GMT
VOLUME [/usr/local/xwiki]
# Sat, 29 Dec 2018 17:37:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 17:37:29 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d7fcb5828abd01ec003887486f6054e939373f0b850db15529e9d877094896`  
		Last Modified: Sat, 29 Dec 2018 03:23:11 GMT  
		Size: 852.8 KB (852813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c860563d607821af1e6da364188f0fd7991176bb88b60b51f325ed8ed5d33b`  
		Last Modified: Sat, 29 Dec 2018 03:25:35 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f754145d12e37fa48f92002c88fbc77c762041b65288ad5c8e6214c032ea46`  
		Last Modified: Sat, 29 Dec 2018 03:25:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff15a87739e7b3027d0605252271d7db50944805518c366f933ce0cf070aa6e`  
		Last Modified: Sat, 29 Dec 2018 03:26:03 GMT  
		Size: 122.1 MB (122120750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5d3f0336b98d472fffeb06e1e4f951fe26086cb3146a55fa03518e6156d70c`  
		Last Modified: Sat, 29 Dec 2018 12:02:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d858972966ccbcf552f1d66ed1e14456bcdb2f666c3ad5dae7f0818f70b0847`  
		Last Modified: Sat, 29 Dec 2018 12:02:18 GMT  
		Size: 528.4 KB (528403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2dc2e148d0f877272f5165f608404540bd5370f495307ef00eedd2b95db33c`  
		Last Modified: Sat, 29 Dec 2018 12:02:38 GMT  
		Size: 10.6 MB (10620028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db18a2f7d48d94226efa6c98bdfd5b911363c5be3a566f63b80b8bc555c5e191`  
		Last Modified: Sat, 29 Dec 2018 12:02:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5227cef1d9b357c7fbe2af1189015eebf8af4eb9c9366d3c5c9c003db66eb2c4`  
		Last Modified: Sat, 29 Dec 2018 17:42:56 GMT  
		Size: 161.4 MB (161447853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de56619530b01139c4391a7ba88731cb79bd18dec5ead72ca34cc4394cae287`  
		Last Modified: Sat, 29 Dec 2018 17:42:35 GMT  
		Size: 225.8 MB (225758188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d0a6d54f57ce4b731797f564d9bfc833ef4f7ddff1f8ef3e29232b6bf28942`  
		Last Modified: Sat, 29 Dec 2018 17:42:04 GMT  
		Size: 952.1 KB (952110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5badcbd8e200b3c0e5672a8bdce32392899cfc7a7f36822a4b595537bcd0d2e`  
		Last Modified: Sat, 29 Dec 2018 17:42:03 GMT  
		Size: 1.1 KB (1149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e8e2d4c20c60c23f6a50a6ce818ca231cc78b63c895d62ce569e46d496862b`  
		Last Modified: Sat, 29 Dec 2018 17:42:03 GMT  
		Size: 2.3 KB (2312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efad6f47c2a73cde1e9c64e189616051d2c716d04be36f9555927301c3ce0cf1`  
		Last Modified: Sat, 29 Dec 2018 17:42:04 GMT  
		Size: 3.6 KB (3613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f05038347e43131931a0af72ee28216335efe09acf16b7b551f1636a79faf443`  
		Last Modified: Sat, 29 Dec 2018 17:42:04 GMT  
		Size: 2.5 KB (2456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:9-postgres-tomcat`

```console
$ docker pull xwiki@sha256:39feb1b33a4932a28afc066befd397b4cf740c773c45fa9bd701e8b0bca0ac52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `xwiki:9-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:e36dac324a505512c02904fa11a7a7fa3f4ef7501d4f54770985b854a56fc214
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **582.0 MB (582001328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:087bf724a2922985e12fd02ffa3ba424e3916028bf2e1bff06c54a2b06013653`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 02:55:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:58:33 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:58:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:59:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 11:44:25 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 29 Dec 2018 11:44:25 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 11:44:26 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 29 Dec 2018 11:44:27 GMT
WORKDIR /usr/local/tomcat
# Sat, 29 Dec 2018 11:44:27 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Sat, 29 Dec 2018 11:44:29 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 11:44:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:44:37 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 29 Dec 2018 11:48:11 GMT
ENV TOMCAT_MAJOR=8
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_VERSION=8.5.37
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_SHA512=be6d6df8b49a760b2e181d4a45d8e6dc7bba5ef2ec6a000f8562cf5f34db5b7fac300cba65bca782bfd25a9f9d8d4a48625f1ad046115c1d6629ea5f210a2718
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc
# Sat, 29 Dec 2018 11:49:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sat, 29 Dec 2018 11:49:11 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 29 Dec 2018 11:49:11 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 11:49:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 29 Dec 2018 17:35:20 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 29 Dec 2018 17:38:45 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:38:46 GMT
ENV XWIKI_VERSION=9.11.8
# Sat, 29 Dec 2018 17:38:46 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.8
# Sat, 29 Dec 2018 17:38:46 GMT
ENV XWIKI_DOWNLOAD_SHA256=e7b6f563012349dad2051fa7bb2ba5a5c2e736d11fcc41363a6acde16a4c128c
# Sat, 29 Dec 2018 17:39:27 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Sat, 29 Dec 2018 17:39:29 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Sat, 29 Dec 2018 17:39:29 GMT
COPY file:1bfb464d9ffbc4b2641e16ea3462f548658d64a99d68b666c0a19a602f1c4763 in /usr/local/tomcat/bin/ 
# Sat, 29 Dec 2018 17:39:30 GMT
COPY file:10a8d8f8962c7c7c84d660323e8460f36a2abc6540ce2c2b5faa1f233a72cd39 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Sat, 29 Dec 2018 17:39:31 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Sat, 29 Dec 2018 17:39:32 GMT
COPY file:3cb02aae77950ec07a4b3d028f378c2172d0834d03df7525854fe5ff38ec942b in /usr/local/bin/docker-entrypoint.sh 
# Sat, 29 Dec 2018 17:39:32 GMT
VOLUME [/usr/local/xwiki]
# Sat, 29 Dec 2018 17:39:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 17:39:33 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d7fcb5828abd01ec003887486f6054e939373f0b850db15529e9d877094896`  
		Last Modified: Sat, 29 Dec 2018 03:23:11 GMT  
		Size: 852.8 KB (852813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c860563d607821af1e6da364188f0fd7991176bb88b60b51f325ed8ed5d33b`  
		Last Modified: Sat, 29 Dec 2018 03:25:35 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f754145d12e37fa48f92002c88fbc77c762041b65288ad5c8e6214c032ea46`  
		Last Modified: Sat, 29 Dec 2018 03:25:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff15a87739e7b3027d0605252271d7db50944805518c366f933ce0cf070aa6e`  
		Last Modified: Sat, 29 Dec 2018 03:26:03 GMT  
		Size: 122.1 MB (122120750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5d3f0336b98d472fffeb06e1e4f951fe26086cb3146a55fa03518e6156d70c`  
		Last Modified: Sat, 29 Dec 2018 12:02:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d858972966ccbcf552f1d66ed1e14456bcdb2f666c3ad5dae7f0818f70b0847`  
		Last Modified: Sat, 29 Dec 2018 12:02:18 GMT  
		Size: 528.4 KB (528403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2dc2e148d0f877272f5165f608404540bd5370f495307ef00eedd2b95db33c`  
		Last Modified: Sat, 29 Dec 2018 12:02:38 GMT  
		Size: 10.6 MB (10620028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db18a2f7d48d94226efa6c98bdfd5b911363c5be3a566f63b80b8bc555c5e191`  
		Last Modified: Sat, 29 Dec 2018 12:02:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70102b104b8accff04fb215fb915de19942d5b335b229fc1badbeec0150094f7`  
		Last Modified: Sat, 29 Dec 2018 17:44:06 GMT  
		Size: 161.0 MB (161047141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2d0c7c630ead80cefae202881ceb221b88a320961a6a55b43f11a15c7123e3`  
		Last Modified: Sat, 29 Dec 2018 17:43:48 GMT  
		Size: 225.8 MB (225758271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:452dc324ac5a60461bdc337b4aacdd36685eefb146f327dcd3d2ecafe5122d60`  
		Last Modified: Sat, 29 Dec 2018 17:43:19 GMT  
		Size: 618.9 KB (618873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6770b37a19fbc8666d0b717018d8aa5ee98a304ca05a2931ae7cded1e24d870`  
		Last Modified: Sat, 29 Dec 2018 17:43:18 GMT  
		Size: 1.1 KB (1149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacd4f8b8eaf702eb59ac0e04fe7e9c281afb06ce53d20f40038f83783084d1c`  
		Last Modified: Sat, 29 Dec 2018 17:43:19 GMT  
		Size: 2.4 KB (2418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a9741f9b642a1090dcaa2ecb96a58917ec3bfcade9ab0f909aed5275f9a9c2`  
		Last Modified: Sat, 29 Dec 2018 17:43:18 GMT  
		Size: 3.6 KB (3606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:995b08568aab397adff100774ca5cf0f77ba1d6de3931aae84a4731a5d02e8ac`  
		Last Modified: Sat, 29 Dec 2018 17:43:18 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `xwiki:9-postgres-tomcat` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:48dbced6e71856a46da6501f011348f71ff2e3c5bdb9b6beda508011a05efae1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **562.0 MB (561974163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f83a030a77ce1bb66208ab80b9f4568bcbd1ce6f7258e3da513d208d7e65e266`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 16:57:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:14:07 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 17:14:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 17:14:11 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 17:14:12 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 17:14:13 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 17:14:13 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 17:19:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sun, 30 Dec 2018 04:20:54 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sun, 30 Dec 2018 04:20:55 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 30 Dec 2018 04:20:56 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sun, 30 Dec 2018 04:20:57 GMT
WORKDIR /usr/local/tomcat
# Sun, 30 Dec 2018 04:20:58 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sun, 30 Dec 2018 04:20:58 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sun, 30 Dec 2018 04:20:59 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Sun, 30 Dec 2018 04:21:01 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sun, 30 Dec 2018 04:21:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 04:21:14 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sun, 30 Dec 2018 04:33:33 GMT
ENV TOMCAT_MAJOR=8
# Sun, 30 Dec 2018 04:33:34 GMT
ENV TOMCAT_VERSION=8.5.37
# Sun, 30 Dec 2018 04:33:34 GMT
ENV TOMCAT_SHA512=be6d6df8b49a760b2e181d4a45d8e6dc7bba5ef2ec6a000f8562cf5f34db5b7fac300cba65bca782bfd25a9f9d8d4a48625f1ad046115c1d6629ea5f210a2718
# Sun, 30 Dec 2018 04:33:35 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz
# Sun, 30 Dec 2018 04:33:36 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc
# Sun, 30 Dec 2018 04:35:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sun, 30 Dec 2018 04:35:50 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sun, 30 Dec 2018 04:35:52 GMT
EXPOSE 8080
# Sun, 30 Dec 2018 04:35:53 GMT
CMD ["catalina.sh" "run"]
# Sun, 30 Dec 2018 08:29:06 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sun, 30 Dec 2018 08:31:44 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 08:31:45 GMT
ENV XWIKI_VERSION=9.11.8
# Sun, 30 Dec 2018 08:31:46 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.8
# Sun, 30 Dec 2018 08:31:46 GMT
ENV XWIKI_DOWNLOAD_SHA256=e7b6f563012349dad2051fa7bb2ba5a5c2e736d11fcc41363a6acde16a4c128c
# Sun, 30 Dec 2018 08:35:38 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Sun, 30 Dec 2018 08:35:40 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Sun, 30 Dec 2018 08:35:41 GMT
COPY file:1bfb464d9ffbc4b2641e16ea3462f548658d64a99d68b666c0a19a602f1c4763 in /usr/local/tomcat/bin/ 
# Sun, 30 Dec 2018 08:35:41 GMT
COPY file:10a8d8f8962c7c7c84d660323e8460f36a2abc6540ce2c2b5faa1f233a72cd39 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Sun, 30 Dec 2018 08:35:43 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Sun, 30 Dec 2018 08:35:44 GMT
COPY file:3cb02aae77950ec07a4b3d028f378c2172d0834d03df7525854fe5ff38ec942b in /usr/local/bin/docker-entrypoint.sh 
# Sun, 30 Dec 2018 08:35:44 GMT
VOLUME [/usr/local/xwiki]
# Sun, 30 Dec 2018 08:35:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 30 Dec 2018 08:35:46 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48571cc473b88fcffd22eb773861106e62ad3dea84834463ed7e9d150439057`  
		Last Modified: Sat, 29 Dec 2018 17:25:57 GMT  
		Size: 839.2 KB (839233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344869d13b124ac74cf306b58444652eed73f02dae6bcde459d7ec5e7129d8c3`  
		Last Modified: Sat, 29 Dec 2018 17:29:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176c87f6576e84823739aa84291c369e1903bc4632e8c92d57ec74946b93c0e4`  
		Last Modified: Sat, 29 Dec 2018 17:29:44 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31d5b5377617d8168a16e074e5d337d3afa5ca70b88f12abcb6c34f65695e0e5`  
		Last Modified: Sat, 29 Dec 2018 17:30:22 GMT  
		Size: 112.8 MB (112755781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc0aebc76f15ba9cc518de6e315ac669e5fe7251f6236333aab8b052cfcb0742`  
		Last Modified: Sun, 30 Dec 2018 05:23:09 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3372b72c945a6ee5780794f4ff106dad87f51dad895159424643ab45f8efa43`  
		Last Modified: Sun, 30 Dec 2018 05:23:10 GMT  
		Size: 513.1 KB (513096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4482b329bfecf1ee5459138710663b10bc47f2bbd3d8c580ee7e2e6efffeeece`  
		Last Modified: Sun, 30 Dec 2018 05:23:58 GMT  
		Size: 10.6 MB (10628402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb6a031a1860063674b852bcb6ae6d8a165d871e42c1a32629255d390479067`  
		Last Modified: Sun, 30 Dec 2018 05:23:55 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2808b38bd2d167e06276394cee69332e2bf838a09502558fb6e8cdefd7329816`  
		Last Modified: Sun, 30 Dec 2018 08:41:27 GMT  
		Size: 153.9 MB (153911949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf79c2f152b6c31ed59f3e849f0971ed081be5942caf822d7ed6e2c61c1de56`  
		Last Modified: Sun, 30 Dec 2018 08:41:10 GMT  
		Size: 225.8 MB (225758191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2856b76dfdc5d9f4081802c8719313d86f49466d18316a8559237311e34ea319`  
		Last Modified: Sun, 30 Dec 2018 08:40:32 GMT  
		Size: 618.9 KB (618882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0904cb3d77f9f1b949f14a3d21ffba80c15c1b702f7b8c349a5e7f7ce317dccf`  
		Last Modified: Sun, 30 Dec 2018 08:40:32 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049198cd006245ddaaf35a1ffdefaaa56a58f201c3e8f579e1632f4dcb458832`  
		Last Modified: Sun, 30 Dec 2018 08:40:32 GMT  
		Size: 2.4 KB (2424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678a400a5628b3647e2ee9a1b3a95668357bcae50793b105523dd2187f32101d`  
		Last Modified: Sun, 30 Dec 2018 08:40:32 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27cba007c81511ebbde63782f0e02352b88acc9ae549182c0175521ddbb52a2`  
		Last Modified: Sun, 30 Dec 2018 08:40:32 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:latest`

```console
$ docker pull xwiki@sha256:c098bc23e240a8166631042b7e017d5d5c3bba079ae5d70b613116a8573f2f80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:latest` - linux; amd64

```console
$ docker pull xwiki@sha256:34a6cc90010ad08614305b7618907edebba224287df2c808977b8497abe77c61
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.9 MB (602863119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d24d6be9eb85de8148cd292427f352292b0654bd60a5c26d5bc75a163cb6184`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 02:55:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:58:33 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:58:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:59:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 11:44:25 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 29 Dec 2018 11:44:25 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 11:44:26 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 29 Dec 2018 11:44:27 GMT
WORKDIR /usr/local/tomcat
# Sat, 29 Dec 2018 11:44:27 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Sat, 29 Dec 2018 11:44:29 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 11:44:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:44:37 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 29 Dec 2018 11:48:11 GMT
ENV TOMCAT_MAJOR=8
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_VERSION=8.5.37
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_SHA512=be6d6df8b49a760b2e181d4a45d8e6dc7bba5ef2ec6a000f8562cf5f34db5b7fac300cba65bca782bfd25a9f9d8d4a48625f1ad046115c1d6629ea5f210a2718
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc
# Sat, 29 Dec 2018 11:49:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sat, 29 Dec 2018 11:49:11 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 29 Dec 2018 11:49:11 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 11:49:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 29 Dec 2018 17:35:20 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 29 Dec 2018 17:36:43 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:39:50 GMT
ENV XWIKI_VERSION=10.11
# Sat, 29 Dec 2018 17:39:50 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.11
# Sat, 29 Dec 2018 17:39:51 GMT
ENV XWIKI_DOWNLOAD_SHA256=e926bbb7c339d3308c6b11d2c2699a072fc535aeba5c18a30c6f9c10fe395ec7
# Sat, 29 Dec 2018 17:40:31 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Sat, 29 Dec 2018 17:40:33 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Sat, 29 Dec 2018 17:40:33 GMT
COPY file:1bfb464d9ffbc4b2641e16ea3462f548658d64a99d68b666c0a19a602f1c4763 in /usr/local/tomcat/bin/ 
# Sat, 29 Dec 2018 17:40:34 GMT
COPY file:5cb0f323ea59fe0a73f1b01b79d12680af026017edde31c1799a5f6dd37fb425 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Sat, 29 Dec 2018 17:40:35 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Sat, 29 Dec 2018 17:40:36 GMT
COPY file:68e7bd92c597bf38d36e9f48dd0c065817e3afacc4ecfe0615bd20c97da58ee5 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 29 Dec 2018 17:40:36 GMT
VOLUME [/usr/local/xwiki]
# Sat, 29 Dec 2018 17:40:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 17:40:37 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d7fcb5828abd01ec003887486f6054e939373f0b850db15529e9d877094896`  
		Last Modified: Sat, 29 Dec 2018 03:23:11 GMT  
		Size: 852.8 KB (852813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c860563d607821af1e6da364188f0fd7991176bb88b60b51f325ed8ed5d33b`  
		Last Modified: Sat, 29 Dec 2018 03:25:35 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f754145d12e37fa48f92002c88fbc77c762041b65288ad5c8e6214c032ea46`  
		Last Modified: Sat, 29 Dec 2018 03:25:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff15a87739e7b3027d0605252271d7db50944805518c366f933ce0cf070aa6e`  
		Last Modified: Sat, 29 Dec 2018 03:26:03 GMT  
		Size: 122.1 MB (122120750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5d3f0336b98d472fffeb06e1e4f951fe26086cb3146a55fa03518e6156d70c`  
		Last Modified: Sat, 29 Dec 2018 12:02:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d858972966ccbcf552f1d66ed1e14456bcdb2f666c3ad5dae7f0818f70b0847`  
		Last Modified: Sat, 29 Dec 2018 12:02:18 GMT  
		Size: 528.4 KB (528403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2dc2e148d0f877272f5165f608404540bd5370f495307ef00eedd2b95db33c`  
		Last Modified: Sat, 29 Dec 2018 12:02:38 GMT  
		Size: 10.6 MB (10620028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db18a2f7d48d94226efa6c98bdfd5b911363c5be3a566f63b80b8bc555c5e191`  
		Last Modified: Sat, 29 Dec 2018 12:02:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5227cef1d9b357c7fbe2af1189015eebf8af4eb9c9366d3c5c9c003db66eb2c4`  
		Last Modified: Sat, 29 Dec 2018 17:42:56 GMT  
		Size: 161.4 MB (161447853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9923c11ae7a9366fc4ab609d50d4e2c70ff4a87f0deebf2ccf963e91d3ab8e73`  
		Last Modified: Sat, 29 Dec 2018 17:44:51 GMT  
		Size: 245.9 MB (245886044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8317231ec1fe5dc5fd42d5218eda680d8137daa52df6ae1872a0a0114a935777`  
		Last Modified: Sat, 29 Dec 2018 17:44:22 GMT  
		Size: 952.1 KB (952104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04fa2c83fe1dca9daf2e8303d2c545324c2938874e774b3b53e8ffbdd2442df`  
		Last Modified: Sat, 29 Dec 2018 17:44:22 GMT  
		Size: 1.2 KB (1151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fb30cbb0074cc797889e2d6c848a8b893acaa1292b0d4bc7709b46776d221df`  
		Last Modified: Sat, 29 Dec 2018 17:44:22 GMT  
		Size: 2.3 KB (2329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe7496ebaf511684076056877731fa3a97faa02c79867e5af29eac2975d7579`  
		Last Modified: Sat, 29 Dec 2018 17:44:22 GMT  
		Size: 3.8 KB (3843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0e8aef00a32c3cb658bb2a092705a0b8483682a3c8dffc910fc3bef457e382`  
		Last Modified: Sat, 29 Dec 2018 17:44:22 GMT  
		Size: 2.4 KB (2382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:lts`

```console
$ docker pull xwiki@sha256:69e5e560c686c044b49d280da90c44ff0faaae8d4d876a3d25892f80e47c0547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:lts` - linux; amd64

```console
$ docker pull xwiki@sha256:8d868ff4c1897c68c8a42dcf46f1417b5fd9e292b901eddeb730db781ecac77c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **582.7 MB (582735094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d6d3809f1fcf90829bfc59e3d274bb5350b20d078d575e2f78a77603b94a7a2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 02:55:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:58:33 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:58:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:59:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 11:44:25 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 29 Dec 2018 11:44:25 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 11:44:26 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 29 Dec 2018 11:44:27 GMT
WORKDIR /usr/local/tomcat
# Sat, 29 Dec 2018 11:44:27 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Sat, 29 Dec 2018 11:44:29 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 11:44:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:44:37 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 29 Dec 2018 11:48:11 GMT
ENV TOMCAT_MAJOR=8
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_VERSION=8.5.37
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_SHA512=be6d6df8b49a760b2e181d4a45d8e6dc7bba5ef2ec6a000f8562cf5f34db5b7fac300cba65bca782bfd25a9f9d8d4a48625f1ad046115c1d6629ea5f210a2718
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc
# Sat, 29 Dec 2018 11:49:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sat, 29 Dec 2018 11:49:11 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 29 Dec 2018 11:49:11 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 11:49:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 29 Dec 2018 17:35:20 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 29 Dec 2018 17:36:43 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:36:44 GMT
ENV XWIKI_VERSION=9.11.8
# Sat, 29 Dec 2018 17:36:45 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.8
# Sat, 29 Dec 2018 17:36:45 GMT
ENV XWIKI_DOWNLOAD_SHA256=e7b6f563012349dad2051fa7bb2ba5a5c2e736d11fcc41363a6acde16a4c128c
# Sat, 29 Dec 2018 17:37:25 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Sat, 29 Dec 2018 17:37:26 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Sat, 29 Dec 2018 17:37:27 GMT
COPY file:1bfb464d9ffbc4b2641e16ea3462f548658d64a99d68b666c0a19a602f1c4763 in /usr/local/tomcat/bin/ 
# Sat, 29 Dec 2018 17:37:27 GMT
COPY file:7e19e395759915dc8d77ac24361f1583af28857beda83e2f7e6520cfc9c06461 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Sat, 29 Dec 2018 17:37:28 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Sat, 29 Dec 2018 17:37:28 GMT
COPY file:3cb02aae77950ec07a4b3d028f378c2172d0834d03df7525854fe5ff38ec942b in /usr/local/bin/docker-entrypoint.sh 
# Sat, 29 Dec 2018 17:37:29 GMT
VOLUME [/usr/local/xwiki]
# Sat, 29 Dec 2018 17:37:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 17:37:29 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d7fcb5828abd01ec003887486f6054e939373f0b850db15529e9d877094896`  
		Last Modified: Sat, 29 Dec 2018 03:23:11 GMT  
		Size: 852.8 KB (852813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c860563d607821af1e6da364188f0fd7991176bb88b60b51f325ed8ed5d33b`  
		Last Modified: Sat, 29 Dec 2018 03:25:35 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f754145d12e37fa48f92002c88fbc77c762041b65288ad5c8e6214c032ea46`  
		Last Modified: Sat, 29 Dec 2018 03:25:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff15a87739e7b3027d0605252271d7db50944805518c366f933ce0cf070aa6e`  
		Last Modified: Sat, 29 Dec 2018 03:26:03 GMT  
		Size: 122.1 MB (122120750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5d3f0336b98d472fffeb06e1e4f951fe26086cb3146a55fa03518e6156d70c`  
		Last Modified: Sat, 29 Dec 2018 12:02:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d858972966ccbcf552f1d66ed1e14456bcdb2f666c3ad5dae7f0818f70b0847`  
		Last Modified: Sat, 29 Dec 2018 12:02:18 GMT  
		Size: 528.4 KB (528403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2dc2e148d0f877272f5165f608404540bd5370f495307ef00eedd2b95db33c`  
		Last Modified: Sat, 29 Dec 2018 12:02:38 GMT  
		Size: 10.6 MB (10620028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db18a2f7d48d94226efa6c98bdfd5b911363c5be3a566f63b80b8bc555c5e191`  
		Last Modified: Sat, 29 Dec 2018 12:02:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5227cef1d9b357c7fbe2af1189015eebf8af4eb9c9366d3c5c9c003db66eb2c4`  
		Last Modified: Sat, 29 Dec 2018 17:42:56 GMT  
		Size: 161.4 MB (161447853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de56619530b01139c4391a7ba88731cb79bd18dec5ead72ca34cc4394cae287`  
		Last Modified: Sat, 29 Dec 2018 17:42:35 GMT  
		Size: 225.8 MB (225758188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d0a6d54f57ce4b731797f564d9bfc833ef4f7ddff1f8ef3e29232b6bf28942`  
		Last Modified: Sat, 29 Dec 2018 17:42:04 GMT  
		Size: 952.1 KB (952110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5badcbd8e200b3c0e5672a8bdce32392899cfc7a7f36822a4b595537bcd0d2e`  
		Last Modified: Sat, 29 Dec 2018 17:42:03 GMT  
		Size: 1.1 KB (1149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e8e2d4c20c60c23f6a50a6ce818ca231cc78b63c895d62ce569e46d496862b`  
		Last Modified: Sat, 29 Dec 2018 17:42:03 GMT  
		Size: 2.3 KB (2312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efad6f47c2a73cde1e9c64e189616051d2c716d04be36f9555927301c3ce0cf1`  
		Last Modified: Sat, 29 Dec 2018 17:42:04 GMT  
		Size: 3.6 KB (3613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f05038347e43131931a0af72ee28216335efe09acf16b7b551f1636a79faf443`  
		Last Modified: Sat, 29 Dec 2018 17:42:04 GMT  
		Size: 2.5 KB (2456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:lts-mysql`

```console
$ docker pull xwiki@sha256:69e5e560c686c044b49d280da90c44ff0faaae8d4d876a3d25892f80e47c0547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:lts-mysql` - linux; amd64

```console
$ docker pull xwiki@sha256:8d868ff4c1897c68c8a42dcf46f1417b5fd9e292b901eddeb730db781ecac77c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **582.7 MB (582735094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d6d3809f1fcf90829bfc59e3d274bb5350b20d078d575e2f78a77603b94a7a2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 02:55:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:58:33 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:58:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:59:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 11:44:25 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 29 Dec 2018 11:44:25 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 11:44:26 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 29 Dec 2018 11:44:27 GMT
WORKDIR /usr/local/tomcat
# Sat, 29 Dec 2018 11:44:27 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Sat, 29 Dec 2018 11:44:29 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 11:44:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:44:37 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 29 Dec 2018 11:48:11 GMT
ENV TOMCAT_MAJOR=8
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_VERSION=8.5.37
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_SHA512=be6d6df8b49a760b2e181d4a45d8e6dc7bba5ef2ec6a000f8562cf5f34db5b7fac300cba65bca782bfd25a9f9d8d4a48625f1ad046115c1d6629ea5f210a2718
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc
# Sat, 29 Dec 2018 11:49:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sat, 29 Dec 2018 11:49:11 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 29 Dec 2018 11:49:11 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 11:49:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 29 Dec 2018 17:35:20 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 29 Dec 2018 17:36:43 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:36:44 GMT
ENV XWIKI_VERSION=9.11.8
# Sat, 29 Dec 2018 17:36:45 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.8
# Sat, 29 Dec 2018 17:36:45 GMT
ENV XWIKI_DOWNLOAD_SHA256=e7b6f563012349dad2051fa7bb2ba5a5c2e736d11fcc41363a6acde16a4c128c
# Sat, 29 Dec 2018 17:37:25 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Sat, 29 Dec 2018 17:37:26 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Sat, 29 Dec 2018 17:37:27 GMT
COPY file:1bfb464d9ffbc4b2641e16ea3462f548658d64a99d68b666c0a19a602f1c4763 in /usr/local/tomcat/bin/ 
# Sat, 29 Dec 2018 17:37:27 GMT
COPY file:7e19e395759915dc8d77ac24361f1583af28857beda83e2f7e6520cfc9c06461 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Sat, 29 Dec 2018 17:37:28 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Sat, 29 Dec 2018 17:37:28 GMT
COPY file:3cb02aae77950ec07a4b3d028f378c2172d0834d03df7525854fe5ff38ec942b in /usr/local/bin/docker-entrypoint.sh 
# Sat, 29 Dec 2018 17:37:29 GMT
VOLUME [/usr/local/xwiki]
# Sat, 29 Dec 2018 17:37:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 17:37:29 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d7fcb5828abd01ec003887486f6054e939373f0b850db15529e9d877094896`  
		Last Modified: Sat, 29 Dec 2018 03:23:11 GMT  
		Size: 852.8 KB (852813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c860563d607821af1e6da364188f0fd7991176bb88b60b51f325ed8ed5d33b`  
		Last Modified: Sat, 29 Dec 2018 03:25:35 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f754145d12e37fa48f92002c88fbc77c762041b65288ad5c8e6214c032ea46`  
		Last Modified: Sat, 29 Dec 2018 03:25:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff15a87739e7b3027d0605252271d7db50944805518c366f933ce0cf070aa6e`  
		Last Modified: Sat, 29 Dec 2018 03:26:03 GMT  
		Size: 122.1 MB (122120750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5d3f0336b98d472fffeb06e1e4f951fe26086cb3146a55fa03518e6156d70c`  
		Last Modified: Sat, 29 Dec 2018 12:02:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d858972966ccbcf552f1d66ed1e14456bcdb2f666c3ad5dae7f0818f70b0847`  
		Last Modified: Sat, 29 Dec 2018 12:02:18 GMT  
		Size: 528.4 KB (528403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2dc2e148d0f877272f5165f608404540bd5370f495307ef00eedd2b95db33c`  
		Last Modified: Sat, 29 Dec 2018 12:02:38 GMT  
		Size: 10.6 MB (10620028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db18a2f7d48d94226efa6c98bdfd5b911363c5be3a566f63b80b8bc555c5e191`  
		Last Modified: Sat, 29 Dec 2018 12:02:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5227cef1d9b357c7fbe2af1189015eebf8af4eb9c9366d3c5c9c003db66eb2c4`  
		Last Modified: Sat, 29 Dec 2018 17:42:56 GMT  
		Size: 161.4 MB (161447853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de56619530b01139c4391a7ba88731cb79bd18dec5ead72ca34cc4394cae287`  
		Last Modified: Sat, 29 Dec 2018 17:42:35 GMT  
		Size: 225.8 MB (225758188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d0a6d54f57ce4b731797f564d9bfc833ef4f7ddff1f8ef3e29232b6bf28942`  
		Last Modified: Sat, 29 Dec 2018 17:42:04 GMT  
		Size: 952.1 KB (952110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5badcbd8e200b3c0e5672a8bdce32392899cfc7a7f36822a4b595537bcd0d2e`  
		Last Modified: Sat, 29 Dec 2018 17:42:03 GMT  
		Size: 1.1 KB (1149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e8e2d4c20c60c23f6a50a6ce818ca231cc78b63c895d62ce569e46d496862b`  
		Last Modified: Sat, 29 Dec 2018 17:42:03 GMT  
		Size: 2.3 KB (2312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efad6f47c2a73cde1e9c64e189616051d2c716d04be36f9555927301c3ce0cf1`  
		Last Modified: Sat, 29 Dec 2018 17:42:04 GMT  
		Size: 3.6 KB (3613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f05038347e43131931a0af72ee28216335efe09acf16b7b551f1636a79faf443`  
		Last Modified: Sat, 29 Dec 2018 17:42:04 GMT  
		Size: 2.5 KB (2456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:lts-mysql-tomcat`

```console
$ docker pull xwiki@sha256:69e5e560c686c044b49d280da90c44ff0faaae8d4d876a3d25892f80e47c0547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:lts-mysql-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:8d868ff4c1897c68c8a42dcf46f1417b5fd9e292b901eddeb730db781ecac77c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **582.7 MB (582735094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d6d3809f1fcf90829bfc59e3d274bb5350b20d078d575e2f78a77603b94a7a2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 02:55:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:58:33 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:58:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:59:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 11:44:25 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 29 Dec 2018 11:44:25 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 11:44:26 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 29 Dec 2018 11:44:27 GMT
WORKDIR /usr/local/tomcat
# Sat, 29 Dec 2018 11:44:27 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Sat, 29 Dec 2018 11:44:29 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 11:44:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:44:37 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 29 Dec 2018 11:48:11 GMT
ENV TOMCAT_MAJOR=8
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_VERSION=8.5.37
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_SHA512=be6d6df8b49a760b2e181d4a45d8e6dc7bba5ef2ec6a000f8562cf5f34db5b7fac300cba65bca782bfd25a9f9d8d4a48625f1ad046115c1d6629ea5f210a2718
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc
# Sat, 29 Dec 2018 11:49:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sat, 29 Dec 2018 11:49:11 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 29 Dec 2018 11:49:11 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 11:49:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 29 Dec 2018 17:35:20 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 29 Dec 2018 17:36:43 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:36:44 GMT
ENV XWIKI_VERSION=9.11.8
# Sat, 29 Dec 2018 17:36:45 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.8
# Sat, 29 Dec 2018 17:36:45 GMT
ENV XWIKI_DOWNLOAD_SHA256=e7b6f563012349dad2051fa7bb2ba5a5c2e736d11fcc41363a6acde16a4c128c
# Sat, 29 Dec 2018 17:37:25 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Sat, 29 Dec 2018 17:37:26 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Sat, 29 Dec 2018 17:37:27 GMT
COPY file:1bfb464d9ffbc4b2641e16ea3462f548658d64a99d68b666c0a19a602f1c4763 in /usr/local/tomcat/bin/ 
# Sat, 29 Dec 2018 17:37:27 GMT
COPY file:7e19e395759915dc8d77ac24361f1583af28857beda83e2f7e6520cfc9c06461 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Sat, 29 Dec 2018 17:37:28 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Sat, 29 Dec 2018 17:37:28 GMT
COPY file:3cb02aae77950ec07a4b3d028f378c2172d0834d03df7525854fe5ff38ec942b in /usr/local/bin/docker-entrypoint.sh 
# Sat, 29 Dec 2018 17:37:29 GMT
VOLUME [/usr/local/xwiki]
# Sat, 29 Dec 2018 17:37:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 17:37:29 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d7fcb5828abd01ec003887486f6054e939373f0b850db15529e9d877094896`  
		Last Modified: Sat, 29 Dec 2018 03:23:11 GMT  
		Size: 852.8 KB (852813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c860563d607821af1e6da364188f0fd7991176bb88b60b51f325ed8ed5d33b`  
		Last Modified: Sat, 29 Dec 2018 03:25:35 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f754145d12e37fa48f92002c88fbc77c762041b65288ad5c8e6214c032ea46`  
		Last Modified: Sat, 29 Dec 2018 03:25:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff15a87739e7b3027d0605252271d7db50944805518c366f933ce0cf070aa6e`  
		Last Modified: Sat, 29 Dec 2018 03:26:03 GMT  
		Size: 122.1 MB (122120750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5d3f0336b98d472fffeb06e1e4f951fe26086cb3146a55fa03518e6156d70c`  
		Last Modified: Sat, 29 Dec 2018 12:02:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d858972966ccbcf552f1d66ed1e14456bcdb2f666c3ad5dae7f0818f70b0847`  
		Last Modified: Sat, 29 Dec 2018 12:02:18 GMT  
		Size: 528.4 KB (528403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2dc2e148d0f877272f5165f608404540bd5370f495307ef00eedd2b95db33c`  
		Last Modified: Sat, 29 Dec 2018 12:02:38 GMT  
		Size: 10.6 MB (10620028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db18a2f7d48d94226efa6c98bdfd5b911363c5be3a566f63b80b8bc555c5e191`  
		Last Modified: Sat, 29 Dec 2018 12:02:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5227cef1d9b357c7fbe2af1189015eebf8af4eb9c9366d3c5c9c003db66eb2c4`  
		Last Modified: Sat, 29 Dec 2018 17:42:56 GMT  
		Size: 161.4 MB (161447853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de56619530b01139c4391a7ba88731cb79bd18dec5ead72ca34cc4394cae287`  
		Last Modified: Sat, 29 Dec 2018 17:42:35 GMT  
		Size: 225.8 MB (225758188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d0a6d54f57ce4b731797f564d9bfc833ef4f7ddff1f8ef3e29232b6bf28942`  
		Last Modified: Sat, 29 Dec 2018 17:42:04 GMT  
		Size: 952.1 KB (952110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5badcbd8e200b3c0e5672a8bdce32392899cfc7a7f36822a4b595537bcd0d2e`  
		Last Modified: Sat, 29 Dec 2018 17:42:03 GMT  
		Size: 1.1 KB (1149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e8e2d4c20c60c23f6a50a6ce818ca231cc78b63c895d62ce569e46d496862b`  
		Last Modified: Sat, 29 Dec 2018 17:42:03 GMT  
		Size: 2.3 KB (2312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efad6f47c2a73cde1e9c64e189616051d2c716d04be36f9555927301c3ce0cf1`  
		Last Modified: Sat, 29 Dec 2018 17:42:04 GMT  
		Size: 3.6 KB (3613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f05038347e43131931a0af72ee28216335efe09acf16b7b551f1636a79faf443`  
		Last Modified: Sat, 29 Dec 2018 17:42:04 GMT  
		Size: 2.5 KB (2456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:lts-postgres`

```console
$ docker pull xwiki@sha256:39feb1b33a4932a28afc066befd397b4cf740c773c45fa9bd701e8b0bca0ac52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `xwiki:lts-postgres` - linux; amd64

```console
$ docker pull xwiki@sha256:e36dac324a505512c02904fa11a7a7fa3f4ef7501d4f54770985b854a56fc214
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **582.0 MB (582001328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:087bf724a2922985e12fd02ffa3ba424e3916028bf2e1bff06c54a2b06013653`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 02:55:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:58:33 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:58:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:59:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 11:44:25 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 29 Dec 2018 11:44:25 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 11:44:26 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 29 Dec 2018 11:44:27 GMT
WORKDIR /usr/local/tomcat
# Sat, 29 Dec 2018 11:44:27 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Sat, 29 Dec 2018 11:44:29 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 11:44:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:44:37 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 29 Dec 2018 11:48:11 GMT
ENV TOMCAT_MAJOR=8
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_VERSION=8.5.37
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_SHA512=be6d6df8b49a760b2e181d4a45d8e6dc7bba5ef2ec6a000f8562cf5f34db5b7fac300cba65bca782bfd25a9f9d8d4a48625f1ad046115c1d6629ea5f210a2718
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc
# Sat, 29 Dec 2018 11:49:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sat, 29 Dec 2018 11:49:11 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 29 Dec 2018 11:49:11 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 11:49:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 29 Dec 2018 17:35:20 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 29 Dec 2018 17:38:45 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:38:46 GMT
ENV XWIKI_VERSION=9.11.8
# Sat, 29 Dec 2018 17:38:46 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.8
# Sat, 29 Dec 2018 17:38:46 GMT
ENV XWIKI_DOWNLOAD_SHA256=e7b6f563012349dad2051fa7bb2ba5a5c2e736d11fcc41363a6acde16a4c128c
# Sat, 29 Dec 2018 17:39:27 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Sat, 29 Dec 2018 17:39:29 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Sat, 29 Dec 2018 17:39:29 GMT
COPY file:1bfb464d9ffbc4b2641e16ea3462f548658d64a99d68b666c0a19a602f1c4763 in /usr/local/tomcat/bin/ 
# Sat, 29 Dec 2018 17:39:30 GMT
COPY file:10a8d8f8962c7c7c84d660323e8460f36a2abc6540ce2c2b5faa1f233a72cd39 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Sat, 29 Dec 2018 17:39:31 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Sat, 29 Dec 2018 17:39:32 GMT
COPY file:3cb02aae77950ec07a4b3d028f378c2172d0834d03df7525854fe5ff38ec942b in /usr/local/bin/docker-entrypoint.sh 
# Sat, 29 Dec 2018 17:39:32 GMT
VOLUME [/usr/local/xwiki]
# Sat, 29 Dec 2018 17:39:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 17:39:33 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d7fcb5828abd01ec003887486f6054e939373f0b850db15529e9d877094896`  
		Last Modified: Sat, 29 Dec 2018 03:23:11 GMT  
		Size: 852.8 KB (852813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c860563d607821af1e6da364188f0fd7991176bb88b60b51f325ed8ed5d33b`  
		Last Modified: Sat, 29 Dec 2018 03:25:35 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f754145d12e37fa48f92002c88fbc77c762041b65288ad5c8e6214c032ea46`  
		Last Modified: Sat, 29 Dec 2018 03:25:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff15a87739e7b3027d0605252271d7db50944805518c366f933ce0cf070aa6e`  
		Last Modified: Sat, 29 Dec 2018 03:26:03 GMT  
		Size: 122.1 MB (122120750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5d3f0336b98d472fffeb06e1e4f951fe26086cb3146a55fa03518e6156d70c`  
		Last Modified: Sat, 29 Dec 2018 12:02:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d858972966ccbcf552f1d66ed1e14456bcdb2f666c3ad5dae7f0818f70b0847`  
		Last Modified: Sat, 29 Dec 2018 12:02:18 GMT  
		Size: 528.4 KB (528403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2dc2e148d0f877272f5165f608404540bd5370f495307ef00eedd2b95db33c`  
		Last Modified: Sat, 29 Dec 2018 12:02:38 GMT  
		Size: 10.6 MB (10620028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db18a2f7d48d94226efa6c98bdfd5b911363c5be3a566f63b80b8bc555c5e191`  
		Last Modified: Sat, 29 Dec 2018 12:02:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70102b104b8accff04fb215fb915de19942d5b335b229fc1badbeec0150094f7`  
		Last Modified: Sat, 29 Dec 2018 17:44:06 GMT  
		Size: 161.0 MB (161047141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2d0c7c630ead80cefae202881ceb221b88a320961a6a55b43f11a15c7123e3`  
		Last Modified: Sat, 29 Dec 2018 17:43:48 GMT  
		Size: 225.8 MB (225758271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:452dc324ac5a60461bdc337b4aacdd36685eefb146f327dcd3d2ecafe5122d60`  
		Last Modified: Sat, 29 Dec 2018 17:43:19 GMT  
		Size: 618.9 KB (618873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6770b37a19fbc8666d0b717018d8aa5ee98a304ca05a2931ae7cded1e24d870`  
		Last Modified: Sat, 29 Dec 2018 17:43:18 GMT  
		Size: 1.1 KB (1149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacd4f8b8eaf702eb59ac0e04fe7e9c281afb06ce53d20f40038f83783084d1c`  
		Last Modified: Sat, 29 Dec 2018 17:43:19 GMT  
		Size: 2.4 KB (2418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a9741f9b642a1090dcaa2ecb96a58917ec3bfcade9ab0f909aed5275f9a9c2`  
		Last Modified: Sat, 29 Dec 2018 17:43:18 GMT  
		Size: 3.6 KB (3606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:995b08568aab397adff100774ca5cf0f77ba1d6de3931aae84a4731a5d02e8ac`  
		Last Modified: Sat, 29 Dec 2018 17:43:18 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `xwiki:lts-postgres` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:48dbced6e71856a46da6501f011348f71ff2e3c5bdb9b6beda508011a05efae1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **562.0 MB (561974163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f83a030a77ce1bb66208ab80b9f4568bcbd1ce6f7258e3da513d208d7e65e266`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 16:57:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:14:07 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 17:14:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 17:14:11 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 17:14:12 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 17:14:13 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 17:14:13 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 17:19:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sun, 30 Dec 2018 04:20:54 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sun, 30 Dec 2018 04:20:55 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 30 Dec 2018 04:20:56 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sun, 30 Dec 2018 04:20:57 GMT
WORKDIR /usr/local/tomcat
# Sun, 30 Dec 2018 04:20:58 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sun, 30 Dec 2018 04:20:58 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sun, 30 Dec 2018 04:20:59 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Sun, 30 Dec 2018 04:21:01 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sun, 30 Dec 2018 04:21:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 04:21:14 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sun, 30 Dec 2018 04:33:33 GMT
ENV TOMCAT_MAJOR=8
# Sun, 30 Dec 2018 04:33:34 GMT
ENV TOMCAT_VERSION=8.5.37
# Sun, 30 Dec 2018 04:33:34 GMT
ENV TOMCAT_SHA512=be6d6df8b49a760b2e181d4a45d8e6dc7bba5ef2ec6a000f8562cf5f34db5b7fac300cba65bca782bfd25a9f9d8d4a48625f1ad046115c1d6629ea5f210a2718
# Sun, 30 Dec 2018 04:33:35 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz
# Sun, 30 Dec 2018 04:33:36 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc
# Sun, 30 Dec 2018 04:35:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sun, 30 Dec 2018 04:35:50 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sun, 30 Dec 2018 04:35:52 GMT
EXPOSE 8080
# Sun, 30 Dec 2018 04:35:53 GMT
CMD ["catalina.sh" "run"]
# Sun, 30 Dec 2018 08:29:06 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sun, 30 Dec 2018 08:31:44 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 08:31:45 GMT
ENV XWIKI_VERSION=9.11.8
# Sun, 30 Dec 2018 08:31:46 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.8
# Sun, 30 Dec 2018 08:31:46 GMT
ENV XWIKI_DOWNLOAD_SHA256=e7b6f563012349dad2051fa7bb2ba5a5c2e736d11fcc41363a6acde16a4c128c
# Sun, 30 Dec 2018 08:35:38 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Sun, 30 Dec 2018 08:35:40 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Sun, 30 Dec 2018 08:35:41 GMT
COPY file:1bfb464d9ffbc4b2641e16ea3462f548658d64a99d68b666c0a19a602f1c4763 in /usr/local/tomcat/bin/ 
# Sun, 30 Dec 2018 08:35:41 GMT
COPY file:10a8d8f8962c7c7c84d660323e8460f36a2abc6540ce2c2b5faa1f233a72cd39 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Sun, 30 Dec 2018 08:35:43 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Sun, 30 Dec 2018 08:35:44 GMT
COPY file:3cb02aae77950ec07a4b3d028f378c2172d0834d03df7525854fe5ff38ec942b in /usr/local/bin/docker-entrypoint.sh 
# Sun, 30 Dec 2018 08:35:44 GMT
VOLUME [/usr/local/xwiki]
# Sun, 30 Dec 2018 08:35:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 30 Dec 2018 08:35:46 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48571cc473b88fcffd22eb773861106e62ad3dea84834463ed7e9d150439057`  
		Last Modified: Sat, 29 Dec 2018 17:25:57 GMT  
		Size: 839.2 KB (839233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344869d13b124ac74cf306b58444652eed73f02dae6bcde459d7ec5e7129d8c3`  
		Last Modified: Sat, 29 Dec 2018 17:29:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176c87f6576e84823739aa84291c369e1903bc4632e8c92d57ec74946b93c0e4`  
		Last Modified: Sat, 29 Dec 2018 17:29:44 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31d5b5377617d8168a16e074e5d337d3afa5ca70b88f12abcb6c34f65695e0e5`  
		Last Modified: Sat, 29 Dec 2018 17:30:22 GMT  
		Size: 112.8 MB (112755781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc0aebc76f15ba9cc518de6e315ac669e5fe7251f6236333aab8b052cfcb0742`  
		Last Modified: Sun, 30 Dec 2018 05:23:09 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3372b72c945a6ee5780794f4ff106dad87f51dad895159424643ab45f8efa43`  
		Last Modified: Sun, 30 Dec 2018 05:23:10 GMT  
		Size: 513.1 KB (513096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4482b329bfecf1ee5459138710663b10bc47f2bbd3d8c580ee7e2e6efffeeece`  
		Last Modified: Sun, 30 Dec 2018 05:23:58 GMT  
		Size: 10.6 MB (10628402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb6a031a1860063674b852bcb6ae6d8a165d871e42c1a32629255d390479067`  
		Last Modified: Sun, 30 Dec 2018 05:23:55 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2808b38bd2d167e06276394cee69332e2bf838a09502558fb6e8cdefd7329816`  
		Last Modified: Sun, 30 Dec 2018 08:41:27 GMT  
		Size: 153.9 MB (153911949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf79c2f152b6c31ed59f3e849f0971ed081be5942caf822d7ed6e2c61c1de56`  
		Last Modified: Sun, 30 Dec 2018 08:41:10 GMT  
		Size: 225.8 MB (225758191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2856b76dfdc5d9f4081802c8719313d86f49466d18316a8559237311e34ea319`  
		Last Modified: Sun, 30 Dec 2018 08:40:32 GMT  
		Size: 618.9 KB (618882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0904cb3d77f9f1b949f14a3d21ffba80c15c1b702f7b8c349a5e7f7ce317dccf`  
		Last Modified: Sun, 30 Dec 2018 08:40:32 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049198cd006245ddaaf35a1ffdefaaa56a58f201c3e8f579e1632f4dcb458832`  
		Last Modified: Sun, 30 Dec 2018 08:40:32 GMT  
		Size: 2.4 KB (2424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678a400a5628b3647e2ee9a1b3a95668357bcae50793b105523dd2187f32101d`  
		Last Modified: Sun, 30 Dec 2018 08:40:32 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27cba007c81511ebbde63782f0e02352b88acc9ae549182c0175521ddbb52a2`  
		Last Modified: Sun, 30 Dec 2018 08:40:32 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:lts-postgres-tomcat`

```console
$ docker pull xwiki@sha256:39feb1b33a4932a28afc066befd397b4cf740c773c45fa9bd701e8b0bca0ac52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `xwiki:lts-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:e36dac324a505512c02904fa11a7a7fa3f4ef7501d4f54770985b854a56fc214
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **582.0 MB (582001328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:087bf724a2922985e12fd02ffa3ba424e3916028bf2e1bff06c54a2b06013653`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 02:55:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:58:33 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:58:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:59:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 11:44:25 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 29 Dec 2018 11:44:25 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 11:44:26 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 29 Dec 2018 11:44:27 GMT
WORKDIR /usr/local/tomcat
# Sat, 29 Dec 2018 11:44:27 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Sat, 29 Dec 2018 11:44:29 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 11:44:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:44:37 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 29 Dec 2018 11:48:11 GMT
ENV TOMCAT_MAJOR=8
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_VERSION=8.5.37
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_SHA512=be6d6df8b49a760b2e181d4a45d8e6dc7bba5ef2ec6a000f8562cf5f34db5b7fac300cba65bca782bfd25a9f9d8d4a48625f1ad046115c1d6629ea5f210a2718
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc
# Sat, 29 Dec 2018 11:49:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sat, 29 Dec 2018 11:49:11 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 29 Dec 2018 11:49:11 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 11:49:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 29 Dec 2018 17:35:20 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 29 Dec 2018 17:38:45 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:38:46 GMT
ENV XWIKI_VERSION=9.11.8
# Sat, 29 Dec 2018 17:38:46 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.8
# Sat, 29 Dec 2018 17:38:46 GMT
ENV XWIKI_DOWNLOAD_SHA256=e7b6f563012349dad2051fa7bb2ba5a5c2e736d11fcc41363a6acde16a4c128c
# Sat, 29 Dec 2018 17:39:27 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Sat, 29 Dec 2018 17:39:29 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Sat, 29 Dec 2018 17:39:29 GMT
COPY file:1bfb464d9ffbc4b2641e16ea3462f548658d64a99d68b666c0a19a602f1c4763 in /usr/local/tomcat/bin/ 
# Sat, 29 Dec 2018 17:39:30 GMT
COPY file:10a8d8f8962c7c7c84d660323e8460f36a2abc6540ce2c2b5faa1f233a72cd39 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Sat, 29 Dec 2018 17:39:31 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Sat, 29 Dec 2018 17:39:32 GMT
COPY file:3cb02aae77950ec07a4b3d028f378c2172d0834d03df7525854fe5ff38ec942b in /usr/local/bin/docker-entrypoint.sh 
# Sat, 29 Dec 2018 17:39:32 GMT
VOLUME [/usr/local/xwiki]
# Sat, 29 Dec 2018 17:39:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 17:39:33 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d7fcb5828abd01ec003887486f6054e939373f0b850db15529e9d877094896`  
		Last Modified: Sat, 29 Dec 2018 03:23:11 GMT  
		Size: 852.8 KB (852813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c860563d607821af1e6da364188f0fd7991176bb88b60b51f325ed8ed5d33b`  
		Last Modified: Sat, 29 Dec 2018 03:25:35 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f754145d12e37fa48f92002c88fbc77c762041b65288ad5c8e6214c032ea46`  
		Last Modified: Sat, 29 Dec 2018 03:25:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff15a87739e7b3027d0605252271d7db50944805518c366f933ce0cf070aa6e`  
		Last Modified: Sat, 29 Dec 2018 03:26:03 GMT  
		Size: 122.1 MB (122120750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5d3f0336b98d472fffeb06e1e4f951fe26086cb3146a55fa03518e6156d70c`  
		Last Modified: Sat, 29 Dec 2018 12:02:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d858972966ccbcf552f1d66ed1e14456bcdb2f666c3ad5dae7f0818f70b0847`  
		Last Modified: Sat, 29 Dec 2018 12:02:18 GMT  
		Size: 528.4 KB (528403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2dc2e148d0f877272f5165f608404540bd5370f495307ef00eedd2b95db33c`  
		Last Modified: Sat, 29 Dec 2018 12:02:38 GMT  
		Size: 10.6 MB (10620028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db18a2f7d48d94226efa6c98bdfd5b911363c5be3a566f63b80b8bc555c5e191`  
		Last Modified: Sat, 29 Dec 2018 12:02:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70102b104b8accff04fb215fb915de19942d5b335b229fc1badbeec0150094f7`  
		Last Modified: Sat, 29 Dec 2018 17:44:06 GMT  
		Size: 161.0 MB (161047141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2d0c7c630ead80cefae202881ceb221b88a320961a6a55b43f11a15c7123e3`  
		Last Modified: Sat, 29 Dec 2018 17:43:48 GMT  
		Size: 225.8 MB (225758271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:452dc324ac5a60461bdc337b4aacdd36685eefb146f327dcd3d2ecafe5122d60`  
		Last Modified: Sat, 29 Dec 2018 17:43:19 GMT  
		Size: 618.9 KB (618873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6770b37a19fbc8666d0b717018d8aa5ee98a304ca05a2931ae7cded1e24d870`  
		Last Modified: Sat, 29 Dec 2018 17:43:18 GMT  
		Size: 1.1 KB (1149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacd4f8b8eaf702eb59ac0e04fe7e9c281afb06ce53d20f40038f83783084d1c`  
		Last Modified: Sat, 29 Dec 2018 17:43:19 GMT  
		Size: 2.4 KB (2418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a9741f9b642a1090dcaa2ecb96a58917ec3bfcade9ab0f909aed5275f9a9c2`  
		Last Modified: Sat, 29 Dec 2018 17:43:18 GMT  
		Size: 3.6 KB (3606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:995b08568aab397adff100774ca5cf0f77ba1d6de3931aae84a4731a5d02e8ac`  
		Last Modified: Sat, 29 Dec 2018 17:43:18 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `xwiki:lts-postgres-tomcat` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:48dbced6e71856a46da6501f011348f71ff2e3c5bdb9b6beda508011a05efae1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **562.0 MB (561974163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f83a030a77ce1bb66208ab80b9f4568bcbd1ce6f7258e3da513d208d7e65e266`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 16:57:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:14:07 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 17:14:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 17:14:11 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 17:14:12 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 17:14:13 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 17:14:13 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 17:19:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sun, 30 Dec 2018 04:20:54 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sun, 30 Dec 2018 04:20:55 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 30 Dec 2018 04:20:56 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sun, 30 Dec 2018 04:20:57 GMT
WORKDIR /usr/local/tomcat
# Sun, 30 Dec 2018 04:20:58 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sun, 30 Dec 2018 04:20:58 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sun, 30 Dec 2018 04:20:59 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Sun, 30 Dec 2018 04:21:01 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sun, 30 Dec 2018 04:21:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 04:21:14 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sun, 30 Dec 2018 04:33:33 GMT
ENV TOMCAT_MAJOR=8
# Sun, 30 Dec 2018 04:33:34 GMT
ENV TOMCAT_VERSION=8.5.37
# Sun, 30 Dec 2018 04:33:34 GMT
ENV TOMCAT_SHA512=be6d6df8b49a760b2e181d4a45d8e6dc7bba5ef2ec6a000f8562cf5f34db5b7fac300cba65bca782bfd25a9f9d8d4a48625f1ad046115c1d6629ea5f210a2718
# Sun, 30 Dec 2018 04:33:35 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz
# Sun, 30 Dec 2018 04:33:36 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc
# Sun, 30 Dec 2018 04:35:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sun, 30 Dec 2018 04:35:50 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sun, 30 Dec 2018 04:35:52 GMT
EXPOSE 8080
# Sun, 30 Dec 2018 04:35:53 GMT
CMD ["catalina.sh" "run"]
# Sun, 30 Dec 2018 08:29:06 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sun, 30 Dec 2018 08:31:44 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 08:31:45 GMT
ENV XWIKI_VERSION=9.11.8
# Sun, 30 Dec 2018 08:31:46 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.8
# Sun, 30 Dec 2018 08:31:46 GMT
ENV XWIKI_DOWNLOAD_SHA256=e7b6f563012349dad2051fa7bb2ba5a5c2e736d11fcc41363a6acde16a4c128c
# Sun, 30 Dec 2018 08:35:38 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Sun, 30 Dec 2018 08:35:40 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Sun, 30 Dec 2018 08:35:41 GMT
COPY file:1bfb464d9ffbc4b2641e16ea3462f548658d64a99d68b666c0a19a602f1c4763 in /usr/local/tomcat/bin/ 
# Sun, 30 Dec 2018 08:35:41 GMT
COPY file:10a8d8f8962c7c7c84d660323e8460f36a2abc6540ce2c2b5faa1f233a72cd39 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Sun, 30 Dec 2018 08:35:43 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Sun, 30 Dec 2018 08:35:44 GMT
COPY file:3cb02aae77950ec07a4b3d028f378c2172d0834d03df7525854fe5ff38ec942b in /usr/local/bin/docker-entrypoint.sh 
# Sun, 30 Dec 2018 08:35:44 GMT
VOLUME [/usr/local/xwiki]
# Sun, 30 Dec 2018 08:35:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 30 Dec 2018 08:35:46 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48571cc473b88fcffd22eb773861106e62ad3dea84834463ed7e9d150439057`  
		Last Modified: Sat, 29 Dec 2018 17:25:57 GMT  
		Size: 839.2 KB (839233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344869d13b124ac74cf306b58444652eed73f02dae6bcde459d7ec5e7129d8c3`  
		Last Modified: Sat, 29 Dec 2018 17:29:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176c87f6576e84823739aa84291c369e1903bc4632e8c92d57ec74946b93c0e4`  
		Last Modified: Sat, 29 Dec 2018 17:29:44 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31d5b5377617d8168a16e074e5d337d3afa5ca70b88f12abcb6c34f65695e0e5`  
		Last Modified: Sat, 29 Dec 2018 17:30:22 GMT  
		Size: 112.8 MB (112755781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc0aebc76f15ba9cc518de6e315ac669e5fe7251f6236333aab8b052cfcb0742`  
		Last Modified: Sun, 30 Dec 2018 05:23:09 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3372b72c945a6ee5780794f4ff106dad87f51dad895159424643ab45f8efa43`  
		Last Modified: Sun, 30 Dec 2018 05:23:10 GMT  
		Size: 513.1 KB (513096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4482b329bfecf1ee5459138710663b10bc47f2bbd3d8c580ee7e2e6efffeeece`  
		Last Modified: Sun, 30 Dec 2018 05:23:58 GMT  
		Size: 10.6 MB (10628402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb6a031a1860063674b852bcb6ae6d8a165d871e42c1a32629255d390479067`  
		Last Modified: Sun, 30 Dec 2018 05:23:55 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2808b38bd2d167e06276394cee69332e2bf838a09502558fb6e8cdefd7329816`  
		Last Modified: Sun, 30 Dec 2018 08:41:27 GMT  
		Size: 153.9 MB (153911949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf79c2f152b6c31ed59f3e849f0971ed081be5942caf822d7ed6e2c61c1de56`  
		Last Modified: Sun, 30 Dec 2018 08:41:10 GMT  
		Size: 225.8 MB (225758191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2856b76dfdc5d9f4081802c8719313d86f49466d18316a8559237311e34ea319`  
		Last Modified: Sun, 30 Dec 2018 08:40:32 GMT  
		Size: 618.9 KB (618882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0904cb3d77f9f1b949f14a3d21ffba80c15c1b702f7b8c349a5e7f7ce317dccf`  
		Last Modified: Sun, 30 Dec 2018 08:40:32 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049198cd006245ddaaf35a1ffdefaaa56a58f201c3e8f579e1632f4dcb458832`  
		Last Modified: Sun, 30 Dec 2018 08:40:32 GMT  
		Size: 2.4 KB (2424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678a400a5628b3647e2ee9a1b3a95668357bcae50793b105523dd2187f32101d`  
		Last Modified: Sun, 30 Dec 2018 08:40:32 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27cba007c81511ebbde63782f0e02352b88acc9ae549182c0175521ddbb52a2`  
		Last Modified: Sun, 30 Dec 2018 08:40:32 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:mysql-tomcat`

```console
$ docker pull xwiki@sha256:69e5e560c686c044b49d280da90c44ff0faaae8d4d876a3d25892f80e47c0547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:mysql-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:8d868ff4c1897c68c8a42dcf46f1417b5fd9e292b901eddeb730db781ecac77c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **582.7 MB (582735094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d6d3809f1fcf90829bfc59e3d274bb5350b20d078d575e2f78a77603b94a7a2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 02:55:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:58:33 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:58:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:59:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 11:44:25 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 29 Dec 2018 11:44:25 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 11:44:26 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 29 Dec 2018 11:44:27 GMT
WORKDIR /usr/local/tomcat
# Sat, 29 Dec 2018 11:44:27 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Sat, 29 Dec 2018 11:44:29 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 11:44:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:44:37 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 29 Dec 2018 11:48:11 GMT
ENV TOMCAT_MAJOR=8
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_VERSION=8.5.37
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_SHA512=be6d6df8b49a760b2e181d4a45d8e6dc7bba5ef2ec6a000f8562cf5f34db5b7fac300cba65bca782bfd25a9f9d8d4a48625f1ad046115c1d6629ea5f210a2718
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc
# Sat, 29 Dec 2018 11:49:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sat, 29 Dec 2018 11:49:11 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 29 Dec 2018 11:49:11 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 11:49:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 29 Dec 2018 17:35:20 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 29 Dec 2018 17:36:43 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:36:44 GMT
ENV XWIKI_VERSION=9.11.8
# Sat, 29 Dec 2018 17:36:45 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.8
# Sat, 29 Dec 2018 17:36:45 GMT
ENV XWIKI_DOWNLOAD_SHA256=e7b6f563012349dad2051fa7bb2ba5a5c2e736d11fcc41363a6acde16a4c128c
# Sat, 29 Dec 2018 17:37:25 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Sat, 29 Dec 2018 17:37:26 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Sat, 29 Dec 2018 17:37:27 GMT
COPY file:1bfb464d9ffbc4b2641e16ea3462f548658d64a99d68b666c0a19a602f1c4763 in /usr/local/tomcat/bin/ 
# Sat, 29 Dec 2018 17:37:27 GMT
COPY file:7e19e395759915dc8d77ac24361f1583af28857beda83e2f7e6520cfc9c06461 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Sat, 29 Dec 2018 17:37:28 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Sat, 29 Dec 2018 17:37:28 GMT
COPY file:3cb02aae77950ec07a4b3d028f378c2172d0834d03df7525854fe5ff38ec942b in /usr/local/bin/docker-entrypoint.sh 
# Sat, 29 Dec 2018 17:37:29 GMT
VOLUME [/usr/local/xwiki]
# Sat, 29 Dec 2018 17:37:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 17:37:29 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d7fcb5828abd01ec003887486f6054e939373f0b850db15529e9d877094896`  
		Last Modified: Sat, 29 Dec 2018 03:23:11 GMT  
		Size: 852.8 KB (852813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c860563d607821af1e6da364188f0fd7991176bb88b60b51f325ed8ed5d33b`  
		Last Modified: Sat, 29 Dec 2018 03:25:35 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f754145d12e37fa48f92002c88fbc77c762041b65288ad5c8e6214c032ea46`  
		Last Modified: Sat, 29 Dec 2018 03:25:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff15a87739e7b3027d0605252271d7db50944805518c366f933ce0cf070aa6e`  
		Last Modified: Sat, 29 Dec 2018 03:26:03 GMT  
		Size: 122.1 MB (122120750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5d3f0336b98d472fffeb06e1e4f951fe26086cb3146a55fa03518e6156d70c`  
		Last Modified: Sat, 29 Dec 2018 12:02:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d858972966ccbcf552f1d66ed1e14456bcdb2f666c3ad5dae7f0818f70b0847`  
		Last Modified: Sat, 29 Dec 2018 12:02:18 GMT  
		Size: 528.4 KB (528403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2dc2e148d0f877272f5165f608404540bd5370f495307ef00eedd2b95db33c`  
		Last Modified: Sat, 29 Dec 2018 12:02:38 GMT  
		Size: 10.6 MB (10620028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db18a2f7d48d94226efa6c98bdfd5b911363c5be3a566f63b80b8bc555c5e191`  
		Last Modified: Sat, 29 Dec 2018 12:02:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5227cef1d9b357c7fbe2af1189015eebf8af4eb9c9366d3c5c9c003db66eb2c4`  
		Last Modified: Sat, 29 Dec 2018 17:42:56 GMT  
		Size: 161.4 MB (161447853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de56619530b01139c4391a7ba88731cb79bd18dec5ead72ca34cc4394cae287`  
		Last Modified: Sat, 29 Dec 2018 17:42:35 GMT  
		Size: 225.8 MB (225758188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d0a6d54f57ce4b731797f564d9bfc833ef4f7ddff1f8ef3e29232b6bf28942`  
		Last Modified: Sat, 29 Dec 2018 17:42:04 GMT  
		Size: 952.1 KB (952110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5badcbd8e200b3c0e5672a8bdce32392899cfc7a7f36822a4b595537bcd0d2e`  
		Last Modified: Sat, 29 Dec 2018 17:42:03 GMT  
		Size: 1.1 KB (1149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e8e2d4c20c60c23f6a50a6ce818ca231cc78b63c895d62ce569e46d496862b`  
		Last Modified: Sat, 29 Dec 2018 17:42:03 GMT  
		Size: 2.3 KB (2312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efad6f47c2a73cde1e9c64e189616051d2c716d04be36f9555927301c3ce0cf1`  
		Last Modified: Sat, 29 Dec 2018 17:42:04 GMT  
		Size: 3.6 KB (3613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f05038347e43131931a0af72ee28216335efe09acf16b7b551f1636a79faf443`  
		Last Modified: Sat, 29 Dec 2018 17:42:04 GMT  
		Size: 2.5 KB (2456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:postgres-tomcat`

```console
$ docker pull xwiki@sha256:39feb1b33a4932a28afc066befd397b4cf740c773c45fa9bd701e8b0bca0ac52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `xwiki:postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:e36dac324a505512c02904fa11a7a7fa3f4ef7501d4f54770985b854a56fc214
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **582.0 MB (582001328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:087bf724a2922985e12fd02ffa3ba424e3916028bf2e1bff06c54a2b06013653`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 02:55:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:58:33 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:58:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:59:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 11:44:25 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 29 Dec 2018 11:44:25 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 11:44:26 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 29 Dec 2018 11:44:27 GMT
WORKDIR /usr/local/tomcat
# Sat, 29 Dec 2018 11:44:27 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Sat, 29 Dec 2018 11:44:29 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 11:44:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:44:37 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 29 Dec 2018 11:48:11 GMT
ENV TOMCAT_MAJOR=8
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_VERSION=8.5.37
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_SHA512=be6d6df8b49a760b2e181d4a45d8e6dc7bba5ef2ec6a000f8562cf5f34db5b7fac300cba65bca782bfd25a9f9d8d4a48625f1ad046115c1d6629ea5f210a2718
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc
# Sat, 29 Dec 2018 11:49:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sat, 29 Dec 2018 11:49:11 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 29 Dec 2018 11:49:11 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 11:49:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 29 Dec 2018 17:35:20 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 29 Dec 2018 17:38:45 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:38:46 GMT
ENV XWIKI_VERSION=9.11.8
# Sat, 29 Dec 2018 17:38:46 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.8
# Sat, 29 Dec 2018 17:38:46 GMT
ENV XWIKI_DOWNLOAD_SHA256=e7b6f563012349dad2051fa7bb2ba5a5c2e736d11fcc41363a6acde16a4c128c
# Sat, 29 Dec 2018 17:39:27 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Sat, 29 Dec 2018 17:39:29 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Sat, 29 Dec 2018 17:39:29 GMT
COPY file:1bfb464d9ffbc4b2641e16ea3462f548658d64a99d68b666c0a19a602f1c4763 in /usr/local/tomcat/bin/ 
# Sat, 29 Dec 2018 17:39:30 GMT
COPY file:10a8d8f8962c7c7c84d660323e8460f36a2abc6540ce2c2b5faa1f233a72cd39 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Sat, 29 Dec 2018 17:39:31 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Sat, 29 Dec 2018 17:39:32 GMT
COPY file:3cb02aae77950ec07a4b3d028f378c2172d0834d03df7525854fe5ff38ec942b in /usr/local/bin/docker-entrypoint.sh 
# Sat, 29 Dec 2018 17:39:32 GMT
VOLUME [/usr/local/xwiki]
# Sat, 29 Dec 2018 17:39:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 17:39:33 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d7fcb5828abd01ec003887486f6054e939373f0b850db15529e9d877094896`  
		Last Modified: Sat, 29 Dec 2018 03:23:11 GMT  
		Size: 852.8 KB (852813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c860563d607821af1e6da364188f0fd7991176bb88b60b51f325ed8ed5d33b`  
		Last Modified: Sat, 29 Dec 2018 03:25:35 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f754145d12e37fa48f92002c88fbc77c762041b65288ad5c8e6214c032ea46`  
		Last Modified: Sat, 29 Dec 2018 03:25:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff15a87739e7b3027d0605252271d7db50944805518c366f933ce0cf070aa6e`  
		Last Modified: Sat, 29 Dec 2018 03:26:03 GMT  
		Size: 122.1 MB (122120750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5d3f0336b98d472fffeb06e1e4f951fe26086cb3146a55fa03518e6156d70c`  
		Last Modified: Sat, 29 Dec 2018 12:02:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d858972966ccbcf552f1d66ed1e14456bcdb2f666c3ad5dae7f0818f70b0847`  
		Last Modified: Sat, 29 Dec 2018 12:02:18 GMT  
		Size: 528.4 KB (528403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2dc2e148d0f877272f5165f608404540bd5370f495307ef00eedd2b95db33c`  
		Last Modified: Sat, 29 Dec 2018 12:02:38 GMT  
		Size: 10.6 MB (10620028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db18a2f7d48d94226efa6c98bdfd5b911363c5be3a566f63b80b8bc555c5e191`  
		Last Modified: Sat, 29 Dec 2018 12:02:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70102b104b8accff04fb215fb915de19942d5b335b229fc1badbeec0150094f7`  
		Last Modified: Sat, 29 Dec 2018 17:44:06 GMT  
		Size: 161.0 MB (161047141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2d0c7c630ead80cefae202881ceb221b88a320961a6a55b43f11a15c7123e3`  
		Last Modified: Sat, 29 Dec 2018 17:43:48 GMT  
		Size: 225.8 MB (225758271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:452dc324ac5a60461bdc337b4aacdd36685eefb146f327dcd3d2ecafe5122d60`  
		Last Modified: Sat, 29 Dec 2018 17:43:19 GMT  
		Size: 618.9 KB (618873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6770b37a19fbc8666d0b717018d8aa5ee98a304ca05a2931ae7cded1e24d870`  
		Last Modified: Sat, 29 Dec 2018 17:43:18 GMT  
		Size: 1.1 KB (1149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacd4f8b8eaf702eb59ac0e04fe7e9c281afb06ce53d20f40038f83783084d1c`  
		Last Modified: Sat, 29 Dec 2018 17:43:19 GMT  
		Size: 2.4 KB (2418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a9741f9b642a1090dcaa2ecb96a58917ec3bfcade9ab0f909aed5275f9a9c2`  
		Last Modified: Sat, 29 Dec 2018 17:43:18 GMT  
		Size: 3.6 KB (3606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:995b08568aab397adff100774ca5cf0f77ba1d6de3931aae84a4731a5d02e8ac`  
		Last Modified: Sat, 29 Dec 2018 17:43:18 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `xwiki:postgres-tomcat` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:48dbced6e71856a46da6501f011348f71ff2e3c5bdb9b6beda508011a05efae1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **562.0 MB (561974163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f83a030a77ce1bb66208ab80b9f4568bcbd1ce6f7258e3da513d208d7e65e266`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 16:57:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:14:07 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 17:14:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 17:14:11 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 17:14:12 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 17:14:13 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 17:14:13 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 17:19:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sun, 30 Dec 2018 04:20:54 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sun, 30 Dec 2018 04:20:55 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 30 Dec 2018 04:20:56 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sun, 30 Dec 2018 04:20:57 GMT
WORKDIR /usr/local/tomcat
# Sun, 30 Dec 2018 04:20:58 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sun, 30 Dec 2018 04:20:58 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sun, 30 Dec 2018 04:20:59 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Sun, 30 Dec 2018 04:21:01 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sun, 30 Dec 2018 04:21:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 04:21:14 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sun, 30 Dec 2018 04:33:33 GMT
ENV TOMCAT_MAJOR=8
# Sun, 30 Dec 2018 04:33:34 GMT
ENV TOMCAT_VERSION=8.5.37
# Sun, 30 Dec 2018 04:33:34 GMT
ENV TOMCAT_SHA512=be6d6df8b49a760b2e181d4a45d8e6dc7bba5ef2ec6a000f8562cf5f34db5b7fac300cba65bca782bfd25a9f9d8d4a48625f1ad046115c1d6629ea5f210a2718
# Sun, 30 Dec 2018 04:33:35 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz
# Sun, 30 Dec 2018 04:33:36 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc
# Sun, 30 Dec 2018 04:35:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sun, 30 Dec 2018 04:35:50 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sun, 30 Dec 2018 04:35:52 GMT
EXPOSE 8080
# Sun, 30 Dec 2018 04:35:53 GMT
CMD ["catalina.sh" "run"]
# Sun, 30 Dec 2018 08:29:06 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sun, 30 Dec 2018 08:31:44 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 08:31:45 GMT
ENV XWIKI_VERSION=9.11.8
# Sun, 30 Dec 2018 08:31:46 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.8
# Sun, 30 Dec 2018 08:31:46 GMT
ENV XWIKI_DOWNLOAD_SHA256=e7b6f563012349dad2051fa7bb2ba5a5c2e736d11fcc41363a6acde16a4c128c
# Sun, 30 Dec 2018 08:35:38 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Sun, 30 Dec 2018 08:35:40 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Sun, 30 Dec 2018 08:35:41 GMT
COPY file:1bfb464d9ffbc4b2641e16ea3462f548658d64a99d68b666c0a19a602f1c4763 in /usr/local/tomcat/bin/ 
# Sun, 30 Dec 2018 08:35:41 GMT
COPY file:10a8d8f8962c7c7c84d660323e8460f36a2abc6540ce2c2b5faa1f233a72cd39 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Sun, 30 Dec 2018 08:35:43 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Sun, 30 Dec 2018 08:35:44 GMT
COPY file:3cb02aae77950ec07a4b3d028f378c2172d0834d03df7525854fe5ff38ec942b in /usr/local/bin/docker-entrypoint.sh 
# Sun, 30 Dec 2018 08:35:44 GMT
VOLUME [/usr/local/xwiki]
# Sun, 30 Dec 2018 08:35:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 30 Dec 2018 08:35:46 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48571cc473b88fcffd22eb773861106e62ad3dea84834463ed7e9d150439057`  
		Last Modified: Sat, 29 Dec 2018 17:25:57 GMT  
		Size: 839.2 KB (839233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344869d13b124ac74cf306b58444652eed73f02dae6bcde459d7ec5e7129d8c3`  
		Last Modified: Sat, 29 Dec 2018 17:29:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176c87f6576e84823739aa84291c369e1903bc4632e8c92d57ec74946b93c0e4`  
		Last Modified: Sat, 29 Dec 2018 17:29:44 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31d5b5377617d8168a16e074e5d337d3afa5ca70b88f12abcb6c34f65695e0e5`  
		Last Modified: Sat, 29 Dec 2018 17:30:22 GMT  
		Size: 112.8 MB (112755781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc0aebc76f15ba9cc518de6e315ac669e5fe7251f6236333aab8b052cfcb0742`  
		Last Modified: Sun, 30 Dec 2018 05:23:09 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3372b72c945a6ee5780794f4ff106dad87f51dad895159424643ab45f8efa43`  
		Last Modified: Sun, 30 Dec 2018 05:23:10 GMT  
		Size: 513.1 KB (513096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4482b329bfecf1ee5459138710663b10bc47f2bbd3d8c580ee7e2e6efffeeece`  
		Last Modified: Sun, 30 Dec 2018 05:23:58 GMT  
		Size: 10.6 MB (10628402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb6a031a1860063674b852bcb6ae6d8a165d871e42c1a32629255d390479067`  
		Last Modified: Sun, 30 Dec 2018 05:23:55 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2808b38bd2d167e06276394cee69332e2bf838a09502558fb6e8cdefd7329816`  
		Last Modified: Sun, 30 Dec 2018 08:41:27 GMT  
		Size: 153.9 MB (153911949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf79c2f152b6c31ed59f3e849f0971ed081be5942caf822d7ed6e2c61c1de56`  
		Last Modified: Sun, 30 Dec 2018 08:41:10 GMT  
		Size: 225.8 MB (225758191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2856b76dfdc5d9f4081802c8719313d86f49466d18316a8559237311e34ea319`  
		Last Modified: Sun, 30 Dec 2018 08:40:32 GMT  
		Size: 618.9 KB (618882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0904cb3d77f9f1b949f14a3d21ffba80c15c1b702f7b8c349a5e7f7ce317dccf`  
		Last Modified: Sun, 30 Dec 2018 08:40:32 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049198cd006245ddaaf35a1ffdefaaa56a58f201c3e8f579e1632f4dcb458832`  
		Last Modified: Sun, 30 Dec 2018 08:40:32 GMT  
		Size: 2.4 KB (2424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678a400a5628b3647e2ee9a1b3a95668357bcae50793b105523dd2187f32101d`  
		Last Modified: Sun, 30 Dec 2018 08:40:32 GMT  
		Size: 3.6 KB (3611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27cba007c81511ebbde63782f0e02352b88acc9ae549182c0175521ddbb52a2`  
		Last Modified: Sun, 30 Dec 2018 08:40:32 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:stable`

```console
$ docker pull xwiki@sha256:c098bc23e240a8166631042b7e017d5d5c3bba079ae5d70b613116a8573f2f80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:stable` - linux; amd64

```console
$ docker pull xwiki@sha256:34a6cc90010ad08614305b7618907edebba224287df2c808977b8497abe77c61
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.9 MB (602863119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d24d6be9eb85de8148cd292427f352292b0654bd60a5c26d5bc75a163cb6184`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 02:55:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:58:33 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:58:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:59:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 11:44:25 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 29 Dec 2018 11:44:25 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 11:44:26 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 29 Dec 2018 11:44:27 GMT
WORKDIR /usr/local/tomcat
# Sat, 29 Dec 2018 11:44:27 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Sat, 29 Dec 2018 11:44:29 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 11:44:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:44:37 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 29 Dec 2018 11:48:11 GMT
ENV TOMCAT_MAJOR=8
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_VERSION=8.5.37
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_SHA512=be6d6df8b49a760b2e181d4a45d8e6dc7bba5ef2ec6a000f8562cf5f34db5b7fac300cba65bca782bfd25a9f9d8d4a48625f1ad046115c1d6629ea5f210a2718
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc
# Sat, 29 Dec 2018 11:49:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sat, 29 Dec 2018 11:49:11 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 29 Dec 2018 11:49:11 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 11:49:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 29 Dec 2018 17:35:20 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 29 Dec 2018 17:36:43 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:39:50 GMT
ENV XWIKI_VERSION=10.11
# Sat, 29 Dec 2018 17:39:50 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.11
# Sat, 29 Dec 2018 17:39:51 GMT
ENV XWIKI_DOWNLOAD_SHA256=e926bbb7c339d3308c6b11d2c2699a072fc535aeba5c18a30c6f9c10fe395ec7
# Sat, 29 Dec 2018 17:40:31 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Sat, 29 Dec 2018 17:40:33 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Sat, 29 Dec 2018 17:40:33 GMT
COPY file:1bfb464d9ffbc4b2641e16ea3462f548658d64a99d68b666c0a19a602f1c4763 in /usr/local/tomcat/bin/ 
# Sat, 29 Dec 2018 17:40:34 GMT
COPY file:5cb0f323ea59fe0a73f1b01b79d12680af026017edde31c1799a5f6dd37fb425 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Sat, 29 Dec 2018 17:40:35 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Sat, 29 Dec 2018 17:40:36 GMT
COPY file:68e7bd92c597bf38d36e9f48dd0c065817e3afacc4ecfe0615bd20c97da58ee5 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 29 Dec 2018 17:40:36 GMT
VOLUME [/usr/local/xwiki]
# Sat, 29 Dec 2018 17:40:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 17:40:37 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d7fcb5828abd01ec003887486f6054e939373f0b850db15529e9d877094896`  
		Last Modified: Sat, 29 Dec 2018 03:23:11 GMT  
		Size: 852.8 KB (852813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c860563d607821af1e6da364188f0fd7991176bb88b60b51f325ed8ed5d33b`  
		Last Modified: Sat, 29 Dec 2018 03:25:35 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f754145d12e37fa48f92002c88fbc77c762041b65288ad5c8e6214c032ea46`  
		Last Modified: Sat, 29 Dec 2018 03:25:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff15a87739e7b3027d0605252271d7db50944805518c366f933ce0cf070aa6e`  
		Last Modified: Sat, 29 Dec 2018 03:26:03 GMT  
		Size: 122.1 MB (122120750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5d3f0336b98d472fffeb06e1e4f951fe26086cb3146a55fa03518e6156d70c`  
		Last Modified: Sat, 29 Dec 2018 12:02:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d858972966ccbcf552f1d66ed1e14456bcdb2f666c3ad5dae7f0818f70b0847`  
		Last Modified: Sat, 29 Dec 2018 12:02:18 GMT  
		Size: 528.4 KB (528403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2dc2e148d0f877272f5165f608404540bd5370f495307ef00eedd2b95db33c`  
		Last Modified: Sat, 29 Dec 2018 12:02:38 GMT  
		Size: 10.6 MB (10620028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db18a2f7d48d94226efa6c98bdfd5b911363c5be3a566f63b80b8bc555c5e191`  
		Last Modified: Sat, 29 Dec 2018 12:02:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5227cef1d9b357c7fbe2af1189015eebf8af4eb9c9366d3c5c9c003db66eb2c4`  
		Last Modified: Sat, 29 Dec 2018 17:42:56 GMT  
		Size: 161.4 MB (161447853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9923c11ae7a9366fc4ab609d50d4e2c70ff4a87f0deebf2ccf963e91d3ab8e73`  
		Last Modified: Sat, 29 Dec 2018 17:44:51 GMT  
		Size: 245.9 MB (245886044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8317231ec1fe5dc5fd42d5218eda680d8137daa52df6ae1872a0a0114a935777`  
		Last Modified: Sat, 29 Dec 2018 17:44:22 GMT  
		Size: 952.1 KB (952104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04fa2c83fe1dca9daf2e8303d2c545324c2938874e774b3b53e8ffbdd2442df`  
		Last Modified: Sat, 29 Dec 2018 17:44:22 GMT  
		Size: 1.2 KB (1151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fb30cbb0074cc797889e2d6c848a8b893acaa1292b0d4bc7709b46776d221df`  
		Last Modified: Sat, 29 Dec 2018 17:44:22 GMT  
		Size: 2.3 KB (2329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe7496ebaf511684076056877731fa3a97faa02c79867e5af29eac2975d7579`  
		Last Modified: Sat, 29 Dec 2018 17:44:22 GMT  
		Size: 3.8 KB (3843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0e8aef00a32c3cb658bb2a092705a0b8483682a3c8dffc910fc3bef457e382`  
		Last Modified: Sat, 29 Dec 2018 17:44:22 GMT  
		Size: 2.4 KB (2382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:stable-mysql`

```console
$ docker pull xwiki@sha256:c098bc23e240a8166631042b7e017d5d5c3bba079ae5d70b613116a8573f2f80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:stable-mysql` - linux; amd64

```console
$ docker pull xwiki@sha256:34a6cc90010ad08614305b7618907edebba224287df2c808977b8497abe77c61
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.9 MB (602863119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d24d6be9eb85de8148cd292427f352292b0654bd60a5c26d5bc75a163cb6184`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 02:55:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:58:33 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:58:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:59:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 11:44:25 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 29 Dec 2018 11:44:25 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 11:44:26 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 29 Dec 2018 11:44:27 GMT
WORKDIR /usr/local/tomcat
# Sat, 29 Dec 2018 11:44:27 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Sat, 29 Dec 2018 11:44:29 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 11:44:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:44:37 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 29 Dec 2018 11:48:11 GMT
ENV TOMCAT_MAJOR=8
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_VERSION=8.5.37
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_SHA512=be6d6df8b49a760b2e181d4a45d8e6dc7bba5ef2ec6a000f8562cf5f34db5b7fac300cba65bca782bfd25a9f9d8d4a48625f1ad046115c1d6629ea5f210a2718
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc
# Sat, 29 Dec 2018 11:49:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sat, 29 Dec 2018 11:49:11 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 29 Dec 2018 11:49:11 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 11:49:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 29 Dec 2018 17:35:20 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 29 Dec 2018 17:36:43 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:39:50 GMT
ENV XWIKI_VERSION=10.11
# Sat, 29 Dec 2018 17:39:50 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.11
# Sat, 29 Dec 2018 17:39:51 GMT
ENV XWIKI_DOWNLOAD_SHA256=e926bbb7c339d3308c6b11d2c2699a072fc535aeba5c18a30c6f9c10fe395ec7
# Sat, 29 Dec 2018 17:40:31 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Sat, 29 Dec 2018 17:40:33 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Sat, 29 Dec 2018 17:40:33 GMT
COPY file:1bfb464d9ffbc4b2641e16ea3462f548658d64a99d68b666c0a19a602f1c4763 in /usr/local/tomcat/bin/ 
# Sat, 29 Dec 2018 17:40:34 GMT
COPY file:5cb0f323ea59fe0a73f1b01b79d12680af026017edde31c1799a5f6dd37fb425 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Sat, 29 Dec 2018 17:40:35 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Sat, 29 Dec 2018 17:40:36 GMT
COPY file:68e7bd92c597bf38d36e9f48dd0c065817e3afacc4ecfe0615bd20c97da58ee5 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 29 Dec 2018 17:40:36 GMT
VOLUME [/usr/local/xwiki]
# Sat, 29 Dec 2018 17:40:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 17:40:37 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d7fcb5828abd01ec003887486f6054e939373f0b850db15529e9d877094896`  
		Last Modified: Sat, 29 Dec 2018 03:23:11 GMT  
		Size: 852.8 KB (852813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c860563d607821af1e6da364188f0fd7991176bb88b60b51f325ed8ed5d33b`  
		Last Modified: Sat, 29 Dec 2018 03:25:35 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f754145d12e37fa48f92002c88fbc77c762041b65288ad5c8e6214c032ea46`  
		Last Modified: Sat, 29 Dec 2018 03:25:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff15a87739e7b3027d0605252271d7db50944805518c366f933ce0cf070aa6e`  
		Last Modified: Sat, 29 Dec 2018 03:26:03 GMT  
		Size: 122.1 MB (122120750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5d3f0336b98d472fffeb06e1e4f951fe26086cb3146a55fa03518e6156d70c`  
		Last Modified: Sat, 29 Dec 2018 12:02:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d858972966ccbcf552f1d66ed1e14456bcdb2f666c3ad5dae7f0818f70b0847`  
		Last Modified: Sat, 29 Dec 2018 12:02:18 GMT  
		Size: 528.4 KB (528403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2dc2e148d0f877272f5165f608404540bd5370f495307ef00eedd2b95db33c`  
		Last Modified: Sat, 29 Dec 2018 12:02:38 GMT  
		Size: 10.6 MB (10620028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db18a2f7d48d94226efa6c98bdfd5b911363c5be3a566f63b80b8bc555c5e191`  
		Last Modified: Sat, 29 Dec 2018 12:02:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5227cef1d9b357c7fbe2af1189015eebf8af4eb9c9366d3c5c9c003db66eb2c4`  
		Last Modified: Sat, 29 Dec 2018 17:42:56 GMT  
		Size: 161.4 MB (161447853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9923c11ae7a9366fc4ab609d50d4e2c70ff4a87f0deebf2ccf963e91d3ab8e73`  
		Last Modified: Sat, 29 Dec 2018 17:44:51 GMT  
		Size: 245.9 MB (245886044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8317231ec1fe5dc5fd42d5218eda680d8137daa52df6ae1872a0a0114a935777`  
		Last Modified: Sat, 29 Dec 2018 17:44:22 GMT  
		Size: 952.1 KB (952104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04fa2c83fe1dca9daf2e8303d2c545324c2938874e774b3b53e8ffbdd2442df`  
		Last Modified: Sat, 29 Dec 2018 17:44:22 GMT  
		Size: 1.2 KB (1151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fb30cbb0074cc797889e2d6c848a8b893acaa1292b0d4bc7709b46776d221df`  
		Last Modified: Sat, 29 Dec 2018 17:44:22 GMT  
		Size: 2.3 KB (2329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe7496ebaf511684076056877731fa3a97faa02c79867e5af29eac2975d7579`  
		Last Modified: Sat, 29 Dec 2018 17:44:22 GMT  
		Size: 3.8 KB (3843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0e8aef00a32c3cb658bb2a092705a0b8483682a3c8dffc910fc3bef457e382`  
		Last Modified: Sat, 29 Dec 2018 17:44:22 GMT  
		Size: 2.4 KB (2382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:stable-mysql-tomcat`

```console
$ docker pull xwiki@sha256:c098bc23e240a8166631042b7e017d5d5c3bba079ae5d70b613116a8573f2f80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:stable-mysql-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:34a6cc90010ad08614305b7618907edebba224287df2c808977b8497abe77c61
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.9 MB (602863119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d24d6be9eb85de8148cd292427f352292b0654bd60a5c26d5bc75a163cb6184`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 02:55:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:58:33 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:58:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:59:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 11:44:25 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 29 Dec 2018 11:44:25 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 11:44:26 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 29 Dec 2018 11:44:27 GMT
WORKDIR /usr/local/tomcat
# Sat, 29 Dec 2018 11:44:27 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Sat, 29 Dec 2018 11:44:29 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 11:44:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:44:37 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 29 Dec 2018 11:48:11 GMT
ENV TOMCAT_MAJOR=8
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_VERSION=8.5.37
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_SHA512=be6d6df8b49a760b2e181d4a45d8e6dc7bba5ef2ec6a000f8562cf5f34db5b7fac300cba65bca782bfd25a9f9d8d4a48625f1ad046115c1d6629ea5f210a2718
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc
# Sat, 29 Dec 2018 11:49:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sat, 29 Dec 2018 11:49:11 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 29 Dec 2018 11:49:11 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 11:49:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 29 Dec 2018 17:35:20 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 29 Dec 2018 17:36:43 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:39:50 GMT
ENV XWIKI_VERSION=10.11
# Sat, 29 Dec 2018 17:39:50 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.11
# Sat, 29 Dec 2018 17:39:51 GMT
ENV XWIKI_DOWNLOAD_SHA256=e926bbb7c339d3308c6b11d2c2699a072fc535aeba5c18a30c6f9c10fe395ec7
# Sat, 29 Dec 2018 17:40:31 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Sat, 29 Dec 2018 17:40:33 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Sat, 29 Dec 2018 17:40:33 GMT
COPY file:1bfb464d9ffbc4b2641e16ea3462f548658d64a99d68b666c0a19a602f1c4763 in /usr/local/tomcat/bin/ 
# Sat, 29 Dec 2018 17:40:34 GMT
COPY file:5cb0f323ea59fe0a73f1b01b79d12680af026017edde31c1799a5f6dd37fb425 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Sat, 29 Dec 2018 17:40:35 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Sat, 29 Dec 2018 17:40:36 GMT
COPY file:68e7bd92c597bf38d36e9f48dd0c065817e3afacc4ecfe0615bd20c97da58ee5 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 29 Dec 2018 17:40:36 GMT
VOLUME [/usr/local/xwiki]
# Sat, 29 Dec 2018 17:40:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 17:40:37 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d7fcb5828abd01ec003887486f6054e939373f0b850db15529e9d877094896`  
		Last Modified: Sat, 29 Dec 2018 03:23:11 GMT  
		Size: 852.8 KB (852813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c860563d607821af1e6da364188f0fd7991176bb88b60b51f325ed8ed5d33b`  
		Last Modified: Sat, 29 Dec 2018 03:25:35 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f754145d12e37fa48f92002c88fbc77c762041b65288ad5c8e6214c032ea46`  
		Last Modified: Sat, 29 Dec 2018 03:25:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff15a87739e7b3027d0605252271d7db50944805518c366f933ce0cf070aa6e`  
		Last Modified: Sat, 29 Dec 2018 03:26:03 GMT  
		Size: 122.1 MB (122120750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5d3f0336b98d472fffeb06e1e4f951fe26086cb3146a55fa03518e6156d70c`  
		Last Modified: Sat, 29 Dec 2018 12:02:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d858972966ccbcf552f1d66ed1e14456bcdb2f666c3ad5dae7f0818f70b0847`  
		Last Modified: Sat, 29 Dec 2018 12:02:18 GMT  
		Size: 528.4 KB (528403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2dc2e148d0f877272f5165f608404540bd5370f495307ef00eedd2b95db33c`  
		Last Modified: Sat, 29 Dec 2018 12:02:38 GMT  
		Size: 10.6 MB (10620028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db18a2f7d48d94226efa6c98bdfd5b911363c5be3a566f63b80b8bc555c5e191`  
		Last Modified: Sat, 29 Dec 2018 12:02:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5227cef1d9b357c7fbe2af1189015eebf8af4eb9c9366d3c5c9c003db66eb2c4`  
		Last Modified: Sat, 29 Dec 2018 17:42:56 GMT  
		Size: 161.4 MB (161447853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9923c11ae7a9366fc4ab609d50d4e2c70ff4a87f0deebf2ccf963e91d3ab8e73`  
		Last Modified: Sat, 29 Dec 2018 17:44:51 GMT  
		Size: 245.9 MB (245886044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8317231ec1fe5dc5fd42d5218eda680d8137daa52df6ae1872a0a0114a935777`  
		Last Modified: Sat, 29 Dec 2018 17:44:22 GMT  
		Size: 952.1 KB (952104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04fa2c83fe1dca9daf2e8303d2c545324c2938874e774b3b53e8ffbdd2442df`  
		Last Modified: Sat, 29 Dec 2018 17:44:22 GMT  
		Size: 1.2 KB (1151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fb30cbb0074cc797889e2d6c848a8b893acaa1292b0d4bc7709b46776d221df`  
		Last Modified: Sat, 29 Dec 2018 17:44:22 GMT  
		Size: 2.3 KB (2329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe7496ebaf511684076056877731fa3a97faa02c79867e5af29eac2975d7579`  
		Last Modified: Sat, 29 Dec 2018 17:44:22 GMT  
		Size: 3.8 KB (3843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0e8aef00a32c3cb658bb2a092705a0b8483682a3c8dffc910fc3bef457e382`  
		Last Modified: Sat, 29 Dec 2018 17:44:22 GMT  
		Size: 2.4 KB (2382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:stable-postgres`

```console
$ docker pull xwiki@sha256:5438698d4f8cfed44bff158e23d91cb4d5bed8cfdbd313baf9e617a45c32f8b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `xwiki:stable-postgres` - linux; amd64

```console
$ docker pull xwiki@sha256:1758f7a3283e7f234ff4198c579234861cc3c0c269616d2ba5a3c733c456940f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.1 MB (602129397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c5ce2bef6b2b90998c90c410a422d4bbf2f94d1db68a40338879346caf5cfe6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 02:55:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:58:33 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:58:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:59:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 11:44:25 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 29 Dec 2018 11:44:25 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 11:44:26 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 29 Dec 2018 11:44:27 GMT
WORKDIR /usr/local/tomcat
# Sat, 29 Dec 2018 11:44:27 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Sat, 29 Dec 2018 11:44:29 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 11:44:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:44:37 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 29 Dec 2018 11:48:11 GMT
ENV TOMCAT_MAJOR=8
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_VERSION=8.5.37
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_SHA512=be6d6df8b49a760b2e181d4a45d8e6dc7bba5ef2ec6a000f8562cf5f34db5b7fac300cba65bca782bfd25a9f9d8d4a48625f1ad046115c1d6629ea5f210a2718
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc
# Sat, 29 Dec 2018 11:49:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sat, 29 Dec 2018 11:49:11 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 29 Dec 2018 11:49:11 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 11:49:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 29 Dec 2018 17:35:20 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 29 Dec 2018 17:38:45 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:40:43 GMT
ENV XWIKI_VERSION=10.11
# Sat, 29 Dec 2018 17:40:44 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.11
# Sat, 29 Dec 2018 17:40:44 GMT
ENV XWIKI_DOWNLOAD_SHA256=e926bbb7c339d3308c6b11d2c2699a072fc535aeba5c18a30c6f9c10fe395ec7
# Sat, 29 Dec 2018 17:41:24 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Sat, 29 Dec 2018 17:41:25 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Sat, 29 Dec 2018 17:41:26 GMT
COPY file:1bfb464d9ffbc4b2641e16ea3462f548658d64a99d68b666c0a19a602f1c4763 in /usr/local/tomcat/bin/ 
# Sat, 29 Dec 2018 17:41:26 GMT
COPY file:dda012d0f6fc0098c2752af86314e191fc377279364c22a1ba9f690d7d0d6ca8 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Sat, 29 Dec 2018 17:41:27 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Sat, 29 Dec 2018 17:41:27 GMT
COPY file:68e7bd92c597bf38d36e9f48dd0c065817e3afacc4ecfe0615bd20c97da58ee5 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 29 Dec 2018 17:41:28 GMT
VOLUME [/usr/local/xwiki]
# Sat, 29 Dec 2018 17:41:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 17:41:28 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d7fcb5828abd01ec003887486f6054e939373f0b850db15529e9d877094896`  
		Last Modified: Sat, 29 Dec 2018 03:23:11 GMT  
		Size: 852.8 KB (852813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c860563d607821af1e6da364188f0fd7991176bb88b60b51f325ed8ed5d33b`  
		Last Modified: Sat, 29 Dec 2018 03:25:35 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f754145d12e37fa48f92002c88fbc77c762041b65288ad5c8e6214c032ea46`  
		Last Modified: Sat, 29 Dec 2018 03:25:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff15a87739e7b3027d0605252271d7db50944805518c366f933ce0cf070aa6e`  
		Last Modified: Sat, 29 Dec 2018 03:26:03 GMT  
		Size: 122.1 MB (122120750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5d3f0336b98d472fffeb06e1e4f951fe26086cb3146a55fa03518e6156d70c`  
		Last Modified: Sat, 29 Dec 2018 12:02:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d858972966ccbcf552f1d66ed1e14456bcdb2f666c3ad5dae7f0818f70b0847`  
		Last Modified: Sat, 29 Dec 2018 12:02:18 GMT  
		Size: 528.4 KB (528403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2dc2e148d0f877272f5165f608404540bd5370f495307ef00eedd2b95db33c`  
		Last Modified: Sat, 29 Dec 2018 12:02:38 GMT  
		Size: 10.6 MB (10620028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db18a2f7d48d94226efa6c98bdfd5b911363c5be3a566f63b80b8bc555c5e191`  
		Last Modified: Sat, 29 Dec 2018 12:02:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70102b104b8accff04fb215fb915de19942d5b335b229fc1badbeec0150094f7`  
		Last Modified: Sat, 29 Dec 2018 17:44:06 GMT  
		Size: 161.0 MB (161047141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceb73df3cce87e93fb33c3b0759484028c0df0b1bfdddc0be78f5393df8b3a5f`  
		Last Modified: Sat, 29 Dec 2018 17:46:09 GMT  
		Size: 245.9 MB (245886160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f9636b5c0187dd86b59c2f287955ef73ed6e4bd10ce60126ff66010a21d06e`  
		Last Modified: Sat, 29 Dec 2018 17:45:44 GMT  
		Size: 618.9 KB (618871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f30b28dd96c4e166f0ea8a3a7e53119198a79084151f4957b9e3f53081a69e40`  
		Last Modified: Sat, 29 Dec 2018 17:45:44 GMT  
		Size: 1.1 KB (1150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6d171c3c2d2670ce98e0de340d6a4a078b370c9d54828de931f8d9b319987f`  
		Last Modified: Sat, 29 Dec 2018 17:45:44 GMT  
		Size: 2.4 KB (2439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11d442db6f73d62767bea9f7eb67c33f1de3fe3be668ebb74ab03d1134d94516`  
		Last Modified: Sat, 29 Dec 2018 17:45:44 GMT  
		Size: 3.8 KB (3842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7cc0b10f9909ca2a70cb1ddeaf53b0c737f594b4c7f8b9ab6172543738a3b13`  
		Last Modified: Sat, 29 Dec 2018 17:45:44 GMT  
		Size: 2.4 KB (2381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `xwiki:stable-postgres` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:113d96f01de9a81d70a0c86a6242fd40274295f6ca300b8d8a7088e7dc1beb43
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **582.1 MB (582102237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a15c64012d0e8212f6980952009bd5d5af2a02f7924dc9cb3335731906f8fb32`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 16:57:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:14:07 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 17:14:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 17:14:11 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 17:14:12 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 17:14:13 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 17:14:13 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 17:19:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sun, 30 Dec 2018 04:20:54 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sun, 30 Dec 2018 04:20:55 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 30 Dec 2018 04:20:56 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sun, 30 Dec 2018 04:20:57 GMT
WORKDIR /usr/local/tomcat
# Sun, 30 Dec 2018 04:20:58 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sun, 30 Dec 2018 04:20:58 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sun, 30 Dec 2018 04:20:59 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Sun, 30 Dec 2018 04:21:01 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sun, 30 Dec 2018 04:21:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 04:21:14 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sun, 30 Dec 2018 04:33:33 GMT
ENV TOMCAT_MAJOR=8
# Sun, 30 Dec 2018 04:33:34 GMT
ENV TOMCAT_VERSION=8.5.37
# Sun, 30 Dec 2018 04:33:34 GMT
ENV TOMCAT_SHA512=be6d6df8b49a760b2e181d4a45d8e6dc7bba5ef2ec6a000f8562cf5f34db5b7fac300cba65bca782bfd25a9f9d8d4a48625f1ad046115c1d6629ea5f210a2718
# Sun, 30 Dec 2018 04:33:35 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz
# Sun, 30 Dec 2018 04:33:36 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc
# Sun, 30 Dec 2018 04:35:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sun, 30 Dec 2018 04:35:50 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sun, 30 Dec 2018 04:35:52 GMT
EXPOSE 8080
# Sun, 30 Dec 2018 04:35:53 GMT
CMD ["catalina.sh" "run"]
# Sun, 30 Dec 2018 08:29:06 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sun, 30 Dec 2018 08:31:44 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 08:35:52 GMT
ENV XWIKI_VERSION=10.11
# Sun, 30 Dec 2018 08:35:52 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.11
# Sun, 30 Dec 2018 08:35:53 GMT
ENV XWIKI_DOWNLOAD_SHA256=e926bbb7c339d3308c6b11d2c2699a072fc535aeba5c18a30c6f9c10fe395ec7
# Sun, 30 Dec 2018 08:40:09 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Sun, 30 Dec 2018 08:40:11 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Sun, 30 Dec 2018 08:40:12 GMT
COPY file:1bfb464d9ffbc4b2641e16ea3462f548658d64a99d68b666c0a19a602f1c4763 in /usr/local/tomcat/bin/ 
# Sun, 30 Dec 2018 08:40:12 GMT
COPY file:dda012d0f6fc0098c2752af86314e191fc377279364c22a1ba9f690d7d0d6ca8 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Sun, 30 Dec 2018 08:40:14 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Sun, 30 Dec 2018 08:40:15 GMT
COPY file:68e7bd92c597bf38d36e9f48dd0c065817e3afacc4ecfe0615bd20c97da58ee5 in /usr/local/bin/docker-entrypoint.sh 
# Sun, 30 Dec 2018 08:40:15 GMT
VOLUME [/usr/local/xwiki]
# Sun, 30 Dec 2018 08:40:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 30 Dec 2018 08:40:16 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48571cc473b88fcffd22eb773861106e62ad3dea84834463ed7e9d150439057`  
		Last Modified: Sat, 29 Dec 2018 17:25:57 GMT  
		Size: 839.2 KB (839233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344869d13b124ac74cf306b58444652eed73f02dae6bcde459d7ec5e7129d8c3`  
		Last Modified: Sat, 29 Dec 2018 17:29:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176c87f6576e84823739aa84291c369e1903bc4632e8c92d57ec74946b93c0e4`  
		Last Modified: Sat, 29 Dec 2018 17:29:44 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31d5b5377617d8168a16e074e5d337d3afa5ca70b88f12abcb6c34f65695e0e5`  
		Last Modified: Sat, 29 Dec 2018 17:30:22 GMT  
		Size: 112.8 MB (112755781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc0aebc76f15ba9cc518de6e315ac669e5fe7251f6236333aab8b052cfcb0742`  
		Last Modified: Sun, 30 Dec 2018 05:23:09 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3372b72c945a6ee5780794f4ff106dad87f51dad895159424643ab45f8efa43`  
		Last Modified: Sun, 30 Dec 2018 05:23:10 GMT  
		Size: 513.1 KB (513096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4482b329bfecf1ee5459138710663b10bc47f2bbd3d8c580ee7e2e6efffeeece`  
		Last Modified: Sun, 30 Dec 2018 05:23:58 GMT  
		Size: 10.6 MB (10628402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb6a031a1860063674b852bcb6ae6d8a165d871e42c1a32629255d390479067`  
		Last Modified: Sun, 30 Dec 2018 05:23:55 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2808b38bd2d167e06276394cee69332e2bf838a09502558fb6e8cdefd7329816`  
		Last Modified: Sun, 30 Dec 2018 08:41:27 GMT  
		Size: 153.9 MB (153911949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d490f5206df27891b772944d74e0e3b9231542864a56675bb34f7d1011f49cc0`  
		Last Modified: Sun, 30 Dec 2018 08:42:29 GMT  
		Size: 245.9 MB (245886093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ec505e1c191b0c3f25012f57a888b286d967b17a1eab952b6db776d61042015`  
		Last Modified: Sun, 30 Dec 2018 08:41:50 GMT  
		Size: 618.9 KB (618880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb7dababc2576a14001d83f98c256e912ff55bb792dddbf4b7e558fa71a6f1e7`  
		Last Modified: Sun, 30 Dec 2018 08:41:50 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365e43dfe0e997d3f79c0281f98c6e590eade4e806656c5586b9b2962656b246`  
		Last Modified: Sun, 30 Dec 2018 08:41:50 GMT  
		Size: 2.4 KB (2443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ab4c88a4f985cd69b4bc1205cec695a7273d2e0ac3416c16a69652c49863b1`  
		Last Modified: Sun, 30 Dec 2018 08:41:50 GMT  
		Size: 3.8 KB (3841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b93c3b6e2a5b5e69ff6c5a1e71519a26fc84145bb655a65b78365a203ff626b`  
		Last Modified: Sun, 30 Dec 2018 08:41:50 GMT  
		Size: 2.4 KB (2383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:stable-postgres-tomcat`

```console
$ docker pull xwiki@sha256:5438698d4f8cfed44bff158e23d91cb4d5bed8cfdbd313baf9e617a45c32f8b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `xwiki:stable-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:1758f7a3283e7f234ff4198c579234861cc3c0c269616d2ba5a3c733c456940f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.1 MB (602129397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c5ce2bef6b2b90998c90c410a422d4bbf2f94d1db68a40338879346caf5cfe6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 02:55:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:58:33 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:58:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:58:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:58:36 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:59:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 11:44:25 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 29 Dec 2018 11:44:25 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 11:44:26 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 29 Dec 2018 11:44:27 GMT
WORKDIR /usr/local/tomcat
# Sat, 29 Dec 2018 11:44:27 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 29 Dec 2018 11:44:27 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Sat, 29 Dec 2018 11:44:29 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 11:44:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:44:37 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 29 Dec 2018 11:48:11 GMT
ENV TOMCAT_MAJOR=8
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_VERSION=8.5.37
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_SHA512=be6d6df8b49a760b2e181d4a45d8e6dc7bba5ef2ec6a000f8562cf5f34db5b7fac300cba65bca782bfd25a9f9d8d4a48625f1ad046115c1d6629ea5f210a2718
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz
# Sat, 29 Dec 2018 11:48:12 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc
# Sat, 29 Dec 2018 11:49:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sat, 29 Dec 2018 11:49:11 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 29 Dec 2018 11:49:11 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 11:49:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 29 Dec 2018 17:35:20 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 29 Dec 2018 17:38:45 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:40:43 GMT
ENV XWIKI_VERSION=10.11
# Sat, 29 Dec 2018 17:40:44 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.11
# Sat, 29 Dec 2018 17:40:44 GMT
ENV XWIKI_DOWNLOAD_SHA256=e926bbb7c339d3308c6b11d2c2699a072fc535aeba5c18a30c6f9c10fe395ec7
# Sat, 29 Dec 2018 17:41:24 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Sat, 29 Dec 2018 17:41:25 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Sat, 29 Dec 2018 17:41:26 GMT
COPY file:1bfb464d9ffbc4b2641e16ea3462f548658d64a99d68b666c0a19a602f1c4763 in /usr/local/tomcat/bin/ 
# Sat, 29 Dec 2018 17:41:26 GMT
COPY file:dda012d0f6fc0098c2752af86314e191fc377279364c22a1ba9f690d7d0d6ca8 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Sat, 29 Dec 2018 17:41:27 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Sat, 29 Dec 2018 17:41:27 GMT
COPY file:68e7bd92c597bf38d36e9f48dd0c065817e3afacc4ecfe0615bd20c97da58ee5 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 29 Dec 2018 17:41:28 GMT
VOLUME [/usr/local/xwiki]
# Sat, 29 Dec 2018 17:41:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 17:41:28 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d7fcb5828abd01ec003887486f6054e939373f0b850db15529e9d877094896`  
		Last Modified: Sat, 29 Dec 2018 03:23:11 GMT  
		Size: 852.8 KB (852813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c860563d607821af1e6da364188f0fd7991176bb88b60b51f325ed8ed5d33b`  
		Last Modified: Sat, 29 Dec 2018 03:25:35 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f754145d12e37fa48f92002c88fbc77c762041b65288ad5c8e6214c032ea46`  
		Last Modified: Sat, 29 Dec 2018 03:25:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff15a87739e7b3027d0605252271d7db50944805518c366f933ce0cf070aa6e`  
		Last Modified: Sat, 29 Dec 2018 03:26:03 GMT  
		Size: 122.1 MB (122120750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5d3f0336b98d472fffeb06e1e4f951fe26086cb3146a55fa03518e6156d70c`  
		Last Modified: Sat, 29 Dec 2018 12:02:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d858972966ccbcf552f1d66ed1e14456bcdb2f666c3ad5dae7f0818f70b0847`  
		Last Modified: Sat, 29 Dec 2018 12:02:18 GMT  
		Size: 528.4 KB (528403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2dc2e148d0f877272f5165f608404540bd5370f495307ef00eedd2b95db33c`  
		Last Modified: Sat, 29 Dec 2018 12:02:38 GMT  
		Size: 10.6 MB (10620028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db18a2f7d48d94226efa6c98bdfd5b911363c5be3a566f63b80b8bc555c5e191`  
		Last Modified: Sat, 29 Dec 2018 12:02:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70102b104b8accff04fb215fb915de19942d5b335b229fc1badbeec0150094f7`  
		Last Modified: Sat, 29 Dec 2018 17:44:06 GMT  
		Size: 161.0 MB (161047141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceb73df3cce87e93fb33c3b0759484028c0df0b1bfdddc0be78f5393df8b3a5f`  
		Last Modified: Sat, 29 Dec 2018 17:46:09 GMT  
		Size: 245.9 MB (245886160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f9636b5c0187dd86b59c2f287955ef73ed6e4bd10ce60126ff66010a21d06e`  
		Last Modified: Sat, 29 Dec 2018 17:45:44 GMT  
		Size: 618.9 KB (618871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f30b28dd96c4e166f0ea8a3a7e53119198a79084151f4957b9e3f53081a69e40`  
		Last Modified: Sat, 29 Dec 2018 17:45:44 GMT  
		Size: 1.1 KB (1150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6d171c3c2d2670ce98e0de340d6a4a078b370c9d54828de931f8d9b319987f`  
		Last Modified: Sat, 29 Dec 2018 17:45:44 GMT  
		Size: 2.4 KB (2439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11d442db6f73d62767bea9f7eb67c33f1de3fe3be668ebb74ab03d1134d94516`  
		Last Modified: Sat, 29 Dec 2018 17:45:44 GMT  
		Size: 3.8 KB (3842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7cc0b10f9909ca2a70cb1ddeaf53b0c737f594b4c7f8b9ab6172543738a3b13`  
		Last Modified: Sat, 29 Dec 2018 17:45:44 GMT  
		Size: 2.4 KB (2381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `xwiki:stable-postgres-tomcat` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:113d96f01de9a81d70a0c86a6242fd40274295f6ca300b8d8a7088e7dc1beb43
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **582.1 MB (582102237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a15c64012d0e8212f6980952009bd5d5af2a02f7924dc9cb3335731906f8fb32`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 16:57:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:14:07 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 17:14:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 17:14:11 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 17:14:12 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 17:14:13 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 17:14:13 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 17:19:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sun, 30 Dec 2018 04:20:54 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sun, 30 Dec 2018 04:20:55 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 30 Dec 2018 04:20:56 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sun, 30 Dec 2018 04:20:57 GMT
WORKDIR /usr/local/tomcat
# Sun, 30 Dec 2018 04:20:58 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sun, 30 Dec 2018 04:20:58 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sun, 30 Dec 2018 04:20:59 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Sun, 30 Dec 2018 04:21:01 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sun, 30 Dec 2018 04:21:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 04:21:14 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sun, 30 Dec 2018 04:33:33 GMT
ENV TOMCAT_MAJOR=8
# Sun, 30 Dec 2018 04:33:34 GMT
ENV TOMCAT_VERSION=8.5.37
# Sun, 30 Dec 2018 04:33:34 GMT
ENV TOMCAT_SHA512=be6d6df8b49a760b2e181d4a45d8e6dc7bba5ef2ec6a000f8562cf5f34db5b7fac300cba65bca782bfd25a9f9d8d4a48625f1ad046115c1d6629ea5f210a2718
# Sun, 30 Dec 2018 04:33:35 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz
# Sun, 30 Dec 2018 04:33:36 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc
# Sun, 30 Dec 2018 04:35:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sun, 30 Dec 2018 04:35:50 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sun, 30 Dec 2018 04:35:52 GMT
EXPOSE 8080
# Sun, 30 Dec 2018 04:35:53 GMT
CMD ["catalina.sh" "run"]
# Sun, 30 Dec 2018 08:29:06 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sun, 30 Dec 2018 08:31:44 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 08:35:52 GMT
ENV XWIKI_VERSION=10.11
# Sun, 30 Dec 2018 08:35:52 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.11
# Sun, 30 Dec 2018 08:35:53 GMT
ENV XWIKI_DOWNLOAD_SHA256=e926bbb7c339d3308c6b11d2c2699a072fc535aeba5c18a30c6f9c10fe395ec7
# Sun, 30 Dec 2018 08:40:09 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Sun, 30 Dec 2018 08:40:11 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Sun, 30 Dec 2018 08:40:12 GMT
COPY file:1bfb464d9ffbc4b2641e16ea3462f548658d64a99d68b666c0a19a602f1c4763 in /usr/local/tomcat/bin/ 
# Sun, 30 Dec 2018 08:40:12 GMT
COPY file:dda012d0f6fc0098c2752af86314e191fc377279364c22a1ba9f690d7d0d6ca8 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Sun, 30 Dec 2018 08:40:14 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Sun, 30 Dec 2018 08:40:15 GMT
COPY file:68e7bd92c597bf38d36e9f48dd0c065817e3afacc4ecfe0615bd20c97da58ee5 in /usr/local/bin/docker-entrypoint.sh 
# Sun, 30 Dec 2018 08:40:15 GMT
VOLUME [/usr/local/xwiki]
# Sun, 30 Dec 2018 08:40:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 30 Dec 2018 08:40:16 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48571cc473b88fcffd22eb773861106e62ad3dea84834463ed7e9d150439057`  
		Last Modified: Sat, 29 Dec 2018 17:25:57 GMT  
		Size: 839.2 KB (839233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344869d13b124ac74cf306b58444652eed73f02dae6bcde459d7ec5e7129d8c3`  
		Last Modified: Sat, 29 Dec 2018 17:29:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176c87f6576e84823739aa84291c369e1903bc4632e8c92d57ec74946b93c0e4`  
		Last Modified: Sat, 29 Dec 2018 17:29:44 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31d5b5377617d8168a16e074e5d337d3afa5ca70b88f12abcb6c34f65695e0e5`  
		Last Modified: Sat, 29 Dec 2018 17:30:22 GMT  
		Size: 112.8 MB (112755781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc0aebc76f15ba9cc518de6e315ac669e5fe7251f6236333aab8b052cfcb0742`  
		Last Modified: Sun, 30 Dec 2018 05:23:09 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3372b72c945a6ee5780794f4ff106dad87f51dad895159424643ab45f8efa43`  
		Last Modified: Sun, 30 Dec 2018 05:23:10 GMT  
		Size: 513.1 KB (513096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4482b329bfecf1ee5459138710663b10bc47f2bbd3d8c580ee7e2e6efffeeece`  
		Last Modified: Sun, 30 Dec 2018 05:23:58 GMT  
		Size: 10.6 MB (10628402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb6a031a1860063674b852bcb6ae6d8a165d871e42c1a32629255d390479067`  
		Last Modified: Sun, 30 Dec 2018 05:23:55 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2808b38bd2d167e06276394cee69332e2bf838a09502558fb6e8cdefd7329816`  
		Last Modified: Sun, 30 Dec 2018 08:41:27 GMT  
		Size: 153.9 MB (153911949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d490f5206df27891b772944d74e0e3b9231542864a56675bb34f7d1011f49cc0`  
		Last Modified: Sun, 30 Dec 2018 08:42:29 GMT  
		Size: 245.9 MB (245886093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ec505e1c191b0c3f25012f57a888b286d967b17a1eab952b6db776d61042015`  
		Last Modified: Sun, 30 Dec 2018 08:41:50 GMT  
		Size: 618.9 KB (618880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb7dababc2576a14001d83f98c256e912ff55bb792dddbf4b7e558fa71a6f1e7`  
		Last Modified: Sun, 30 Dec 2018 08:41:50 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365e43dfe0e997d3f79c0281f98c6e590eade4e806656c5586b9b2962656b246`  
		Last Modified: Sun, 30 Dec 2018 08:41:50 GMT  
		Size: 2.4 KB (2443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ab4c88a4f985cd69b4bc1205cec695a7273d2e0ac3416c16a69652c49863b1`  
		Last Modified: Sun, 30 Dec 2018 08:41:50 GMT  
		Size: 3.8 KB (3841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b93c3b6e2a5b5e69ff6c5a1e71519a26fc84145bb655a65b78365a203ff626b`  
		Last Modified: Sun, 30 Dec 2018 08:41:50 GMT  
		Size: 2.4 KB (2383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
