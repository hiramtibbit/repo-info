<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `xwiki`

-	[`xwiki:10`](#xwiki10)
-	[`xwiki:10.5`](#xwiki105)
-	[`xwiki:10.5-mysql-tomcat`](#xwiki105-mysql-tomcat)
-	[`xwiki:10.5-postgres-tomcat`](#xwiki105-postgres-tomcat)
-	[`xwiki:10-mysql-tomcat`](#xwiki10-mysql-tomcat)
-	[`xwiki:10-postgres-tomcat`](#xwiki10-postgres-tomcat)
-	[`xwiki:9`](#xwiki9)
-	[`xwiki:9.11`](#xwiki911)
-	[`xwiki:9.11.6`](#xwiki9116)
-	[`xwiki:9.11.6-postgres-tomcat`](#xwiki9116-postgres-tomcat)
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
$ docker pull xwiki@sha256:e75147e04ed308e579964b7a97ecd530918b82178c59b903abcb92d4e17ca1b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:10` - linux; amd64

```console
$ docker pull xwiki@sha256:1b5a7114ed176884bca93f0c40c02a5b5efe7db18fc4ae47eeb0c305e30360bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.2 MB (596181745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa9be1ef05ae35d3a1702a0e2fc33f66deb9e66b25404f80e75dafad651f50b6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 18:44:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:44:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 18:44:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 18:44:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 18:45:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 18:45:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 09 Jun 2018 00:41:36 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 09 Jun 2018 00:41:37 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Jun 2018 00:41:38 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 09 Jun 2018 00:41:38 GMT
WORKDIR /usr/local/tomcat
# Sat, 09 Jun 2018 00:41:38 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:38 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:39 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Sat, 09 Jun 2018 00:41:39 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Jun 2018 00:41:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Jun 2018 00:41:46 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 09 Jun 2018 00:44:00 GMT
ENV TOMCAT_MAJOR=8
# Sat, 09 Jun 2018 00:44:42 GMT
ENV TOMCAT_VERSION=8.5.31
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_SHA512=a961eedc4b0c0729f1fb96dafb75eb48e000502233b849f47c84a6355873bc96d131b112400587e96391262e0659df9b991b4e66a78fda74168f939c4ab5af88
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc
# Sat, 09 Jun 2018 00:45:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sat, 09 Jun 2018 00:45:10 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 09 Jun 2018 00:45:11 GMT
EXPOSE 8080/tcp
# Sat, 09 Jun 2018 00:45:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 09 Jun 2018 01:18:05 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 09 Jun 2018 01:19:20 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 25 Jun 2018 23:31:30 GMT
ENV XWIKI_VERSION=10.5
# Mon, 25 Jun 2018 23:31:30 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.5
# Mon, 25 Jun 2018 23:31:30 GMT
ENV XWIKI_DOWNLOAD_SHA256=e49addc6ef33bfbb8ef6587418a5e122329fbb81bc3fd272b1bf0e4805071e96
# Mon, 25 Jun 2018 23:32:06 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 25 Jun 2018 23:32:07 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 25 Jun 2018 23:32:08 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Mon, 25 Jun 2018 23:32:08 GMT
COPY file:1d433c8d1a99df71172f6981bdb6f13380e4d62f4dab4246798f9a5203553ca6 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 25 Jun 2018 23:32:09 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 25 Jun 2018 23:32:09 GMT
COPY file:5f5be420889bdee3bc9520aa2af7c24fe855aaf5aafcc84e301666b86aa545eb in /usr/local/bin/docker-entrypoint.sh 
# Mon, 25 Jun 2018 23:32:10 GMT
VOLUME [/usr/local/xwiki]
# Mon, 25 Jun 2018 23:32:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 25 Jun 2018 23:32:10 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c05365ee2a2245bb9f6786bc88aa12bf64da676a52668424437826d0f0cb92`  
		Last Modified: Tue, 05 Jun 2018 23:41:58 GMT  
		Size: 10.8 MB (10774184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231cb0e216d30ea48044d44d37fba016eb67eca9b19b29a741d95775359d3533`  
		Last Modified: Tue, 05 Jun 2018 23:41:55 GMT  
		Size: 4.3 MB (4335886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8912f9d0ce2e4accc0eb655a24f8b5def2ed4d1caf9d9dc897a19a4d32faf9f`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 853.1 KB (853110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bafe362f99b9e9353c71496d5dd82907355aafab384360400be4d2715816383`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b0652112a637ad5505eee5907b395211776ed3bfd3a74743c428605975be78`  
		Last Modified: Wed, 06 Jun 2018 19:05:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da23e1e20eae995da970ffc93d5bd64980d6f6061a0f33bc08cc9d65475c670a`  
		Last Modified: Wed, 06 Jun 2018 19:05:53 GMT  
		Size: 122.1 MB (122141480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d809d99b239e4876578052705afd7653615e34b5155028d2206e5ec95e30c96`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 272.2 KB (272162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c61bb6d245c4be309a36276e49a16e59434ea6e221569a8fcb46fab39417b7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50578eb745b98f4702d648af2762b551baf8fc7c43aeeda3f58c23ec422663d7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 528.7 KB (528726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85082b9ab294dc28d36cb6cac743034c45e58523ea4265f90503703bf9937e8c`  
		Last Modified: Sat, 09 Jun 2018 00:59:01 GMT  
		Size: 13.4 MB (13396222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34391598837c178f8f62c96b6819cb67a03c43b31b88224ee805669a92f8ab9`  
		Last Modified: Sat, 09 Jun 2018 00:58:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c8bd2bfe1a43d3e4814a9157cecfaa87a4b2e9641e7dfc55e646215aaec7b7`  
		Last Modified: Sat, 09 Jun 2018 02:11:30 GMT  
		Size: 161.4 MB (161447376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9160f063730ac15439772e0ba3829970baa0e729fd30e0d097d4f87ee5f23eb`  
		Last Modified: Mon, 25 Jun 2018 23:37:06 GMT  
		Size: 236.2 MB (236152143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9438d426601933c5bbc101cb5b67206aa834c5b6681a515ba4688be82764dd07`  
		Last Modified: Mon, 25 Jun 2018 23:36:34 GMT  
		Size: 952.1 KB (952116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41830c7eca1d7ce9e36f2e0635608a0c8a9bffc56bf81c132070d2a1da55baae`  
		Last Modified: Mon, 25 Jun 2018 23:36:33 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152e7660ce8d33df936bc648bff8e601c7d814f75ea656c38a63e4d91fb8eba4`  
		Last Modified: Mon, 25 Jun 2018 23:36:34 GMT  
		Size: 2.3 KB (2312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4f1b4aa1b1cfa2ed704d266fed6dd6308a8841254d3cd0c2f57b86f77cb529`  
		Last Modified: Mon, 25 Jun 2018 23:36:33 GMT  
		Size: 3.7 KB (3677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457ce1a678249b083cb19a67b806014491bc032a8175694be62fa365537d6489`  
		Last Modified: Mon, 25 Jun 2018 23:36:34 GMT  
		Size: 2.4 KB (2379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:10.5`

```console
$ docker pull xwiki@sha256:e75147e04ed308e579964b7a97ecd530918b82178c59b903abcb92d4e17ca1b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:10.5` - linux; amd64

```console
$ docker pull xwiki@sha256:1b5a7114ed176884bca93f0c40c02a5b5efe7db18fc4ae47eeb0c305e30360bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.2 MB (596181745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa9be1ef05ae35d3a1702a0e2fc33f66deb9e66b25404f80e75dafad651f50b6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 18:44:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:44:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 18:44:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 18:44:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 18:45:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 18:45:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 09 Jun 2018 00:41:36 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 09 Jun 2018 00:41:37 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Jun 2018 00:41:38 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 09 Jun 2018 00:41:38 GMT
WORKDIR /usr/local/tomcat
# Sat, 09 Jun 2018 00:41:38 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:38 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:39 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Sat, 09 Jun 2018 00:41:39 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Jun 2018 00:41:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Jun 2018 00:41:46 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 09 Jun 2018 00:44:00 GMT
ENV TOMCAT_MAJOR=8
# Sat, 09 Jun 2018 00:44:42 GMT
ENV TOMCAT_VERSION=8.5.31
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_SHA512=a961eedc4b0c0729f1fb96dafb75eb48e000502233b849f47c84a6355873bc96d131b112400587e96391262e0659df9b991b4e66a78fda74168f939c4ab5af88
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc
# Sat, 09 Jun 2018 00:45:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sat, 09 Jun 2018 00:45:10 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 09 Jun 2018 00:45:11 GMT
EXPOSE 8080/tcp
# Sat, 09 Jun 2018 00:45:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 09 Jun 2018 01:18:05 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 09 Jun 2018 01:19:20 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 25 Jun 2018 23:31:30 GMT
ENV XWIKI_VERSION=10.5
# Mon, 25 Jun 2018 23:31:30 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.5
# Mon, 25 Jun 2018 23:31:30 GMT
ENV XWIKI_DOWNLOAD_SHA256=e49addc6ef33bfbb8ef6587418a5e122329fbb81bc3fd272b1bf0e4805071e96
# Mon, 25 Jun 2018 23:32:06 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 25 Jun 2018 23:32:07 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 25 Jun 2018 23:32:08 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Mon, 25 Jun 2018 23:32:08 GMT
COPY file:1d433c8d1a99df71172f6981bdb6f13380e4d62f4dab4246798f9a5203553ca6 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 25 Jun 2018 23:32:09 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 25 Jun 2018 23:32:09 GMT
COPY file:5f5be420889bdee3bc9520aa2af7c24fe855aaf5aafcc84e301666b86aa545eb in /usr/local/bin/docker-entrypoint.sh 
# Mon, 25 Jun 2018 23:32:10 GMT
VOLUME [/usr/local/xwiki]
# Mon, 25 Jun 2018 23:32:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 25 Jun 2018 23:32:10 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c05365ee2a2245bb9f6786bc88aa12bf64da676a52668424437826d0f0cb92`  
		Last Modified: Tue, 05 Jun 2018 23:41:58 GMT  
		Size: 10.8 MB (10774184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231cb0e216d30ea48044d44d37fba016eb67eca9b19b29a741d95775359d3533`  
		Last Modified: Tue, 05 Jun 2018 23:41:55 GMT  
		Size: 4.3 MB (4335886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8912f9d0ce2e4accc0eb655a24f8b5def2ed4d1caf9d9dc897a19a4d32faf9f`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 853.1 KB (853110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bafe362f99b9e9353c71496d5dd82907355aafab384360400be4d2715816383`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b0652112a637ad5505eee5907b395211776ed3bfd3a74743c428605975be78`  
		Last Modified: Wed, 06 Jun 2018 19:05:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da23e1e20eae995da970ffc93d5bd64980d6f6061a0f33bc08cc9d65475c670a`  
		Last Modified: Wed, 06 Jun 2018 19:05:53 GMT  
		Size: 122.1 MB (122141480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d809d99b239e4876578052705afd7653615e34b5155028d2206e5ec95e30c96`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 272.2 KB (272162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c61bb6d245c4be309a36276e49a16e59434ea6e221569a8fcb46fab39417b7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50578eb745b98f4702d648af2762b551baf8fc7c43aeeda3f58c23ec422663d7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 528.7 KB (528726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85082b9ab294dc28d36cb6cac743034c45e58523ea4265f90503703bf9937e8c`  
		Last Modified: Sat, 09 Jun 2018 00:59:01 GMT  
		Size: 13.4 MB (13396222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34391598837c178f8f62c96b6819cb67a03c43b31b88224ee805669a92f8ab9`  
		Last Modified: Sat, 09 Jun 2018 00:58:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c8bd2bfe1a43d3e4814a9157cecfaa87a4b2e9641e7dfc55e646215aaec7b7`  
		Last Modified: Sat, 09 Jun 2018 02:11:30 GMT  
		Size: 161.4 MB (161447376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9160f063730ac15439772e0ba3829970baa0e729fd30e0d097d4f87ee5f23eb`  
		Last Modified: Mon, 25 Jun 2018 23:37:06 GMT  
		Size: 236.2 MB (236152143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9438d426601933c5bbc101cb5b67206aa834c5b6681a515ba4688be82764dd07`  
		Last Modified: Mon, 25 Jun 2018 23:36:34 GMT  
		Size: 952.1 KB (952116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41830c7eca1d7ce9e36f2e0635608a0c8a9bffc56bf81c132070d2a1da55baae`  
		Last Modified: Mon, 25 Jun 2018 23:36:33 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152e7660ce8d33df936bc648bff8e601c7d814f75ea656c38a63e4d91fb8eba4`  
		Last Modified: Mon, 25 Jun 2018 23:36:34 GMT  
		Size: 2.3 KB (2312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4f1b4aa1b1cfa2ed704d266fed6dd6308a8841254d3cd0c2f57b86f77cb529`  
		Last Modified: Mon, 25 Jun 2018 23:36:33 GMT  
		Size: 3.7 KB (3677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457ce1a678249b083cb19a67b806014491bc032a8175694be62fa365537d6489`  
		Last Modified: Mon, 25 Jun 2018 23:36:34 GMT  
		Size: 2.4 KB (2379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:10.5-mysql-tomcat`

```console
$ docker pull xwiki@sha256:e75147e04ed308e579964b7a97ecd530918b82178c59b903abcb92d4e17ca1b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:10.5-mysql-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:1b5a7114ed176884bca93f0c40c02a5b5efe7db18fc4ae47eeb0c305e30360bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.2 MB (596181745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa9be1ef05ae35d3a1702a0e2fc33f66deb9e66b25404f80e75dafad651f50b6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 18:44:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:44:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 18:44:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 18:44:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 18:45:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 18:45:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 09 Jun 2018 00:41:36 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 09 Jun 2018 00:41:37 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Jun 2018 00:41:38 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 09 Jun 2018 00:41:38 GMT
WORKDIR /usr/local/tomcat
# Sat, 09 Jun 2018 00:41:38 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:38 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:39 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Sat, 09 Jun 2018 00:41:39 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Jun 2018 00:41:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Jun 2018 00:41:46 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 09 Jun 2018 00:44:00 GMT
ENV TOMCAT_MAJOR=8
# Sat, 09 Jun 2018 00:44:42 GMT
ENV TOMCAT_VERSION=8.5.31
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_SHA512=a961eedc4b0c0729f1fb96dafb75eb48e000502233b849f47c84a6355873bc96d131b112400587e96391262e0659df9b991b4e66a78fda74168f939c4ab5af88
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc
# Sat, 09 Jun 2018 00:45:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sat, 09 Jun 2018 00:45:10 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 09 Jun 2018 00:45:11 GMT
EXPOSE 8080/tcp
# Sat, 09 Jun 2018 00:45:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 09 Jun 2018 01:18:05 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 09 Jun 2018 01:19:20 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 25 Jun 2018 23:31:30 GMT
ENV XWIKI_VERSION=10.5
# Mon, 25 Jun 2018 23:31:30 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.5
# Mon, 25 Jun 2018 23:31:30 GMT
ENV XWIKI_DOWNLOAD_SHA256=e49addc6ef33bfbb8ef6587418a5e122329fbb81bc3fd272b1bf0e4805071e96
# Mon, 25 Jun 2018 23:32:06 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 25 Jun 2018 23:32:07 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 25 Jun 2018 23:32:08 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Mon, 25 Jun 2018 23:32:08 GMT
COPY file:1d433c8d1a99df71172f6981bdb6f13380e4d62f4dab4246798f9a5203553ca6 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 25 Jun 2018 23:32:09 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 25 Jun 2018 23:32:09 GMT
COPY file:5f5be420889bdee3bc9520aa2af7c24fe855aaf5aafcc84e301666b86aa545eb in /usr/local/bin/docker-entrypoint.sh 
# Mon, 25 Jun 2018 23:32:10 GMT
VOLUME [/usr/local/xwiki]
# Mon, 25 Jun 2018 23:32:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 25 Jun 2018 23:32:10 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c05365ee2a2245bb9f6786bc88aa12bf64da676a52668424437826d0f0cb92`  
		Last Modified: Tue, 05 Jun 2018 23:41:58 GMT  
		Size: 10.8 MB (10774184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231cb0e216d30ea48044d44d37fba016eb67eca9b19b29a741d95775359d3533`  
		Last Modified: Tue, 05 Jun 2018 23:41:55 GMT  
		Size: 4.3 MB (4335886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8912f9d0ce2e4accc0eb655a24f8b5def2ed4d1caf9d9dc897a19a4d32faf9f`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 853.1 KB (853110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bafe362f99b9e9353c71496d5dd82907355aafab384360400be4d2715816383`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b0652112a637ad5505eee5907b395211776ed3bfd3a74743c428605975be78`  
		Last Modified: Wed, 06 Jun 2018 19:05:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da23e1e20eae995da970ffc93d5bd64980d6f6061a0f33bc08cc9d65475c670a`  
		Last Modified: Wed, 06 Jun 2018 19:05:53 GMT  
		Size: 122.1 MB (122141480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d809d99b239e4876578052705afd7653615e34b5155028d2206e5ec95e30c96`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 272.2 KB (272162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c61bb6d245c4be309a36276e49a16e59434ea6e221569a8fcb46fab39417b7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50578eb745b98f4702d648af2762b551baf8fc7c43aeeda3f58c23ec422663d7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 528.7 KB (528726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85082b9ab294dc28d36cb6cac743034c45e58523ea4265f90503703bf9937e8c`  
		Last Modified: Sat, 09 Jun 2018 00:59:01 GMT  
		Size: 13.4 MB (13396222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34391598837c178f8f62c96b6819cb67a03c43b31b88224ee805669a92f8ab9`  
		Last Modified: Sat, 09 Jun 2018 00:58:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c8bd2bfe1a43d3e4814a9157cecfaa87a4b2e9641e7dfc55e646215aaec7b7`  
		Last Modified: Sat, 09 Jun 2018 02:11:30 GMT  
		Size: 161.4 MB (161447376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9160f063730ac15439772e0ba3829970baa0e729fd30e0d097d4f87ee5f23eb`  
		Last Modified: Mon, 25 Jun 2018 23:37:06 GMT  
		Size: 236.2 MB (236152143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9438d426601933c5bbc101cb5b67206aa834c5b6681a515ba4688be82764dd07`  
		Last Modified: Mon, 25 Jun 2018 23:36:34 GMT  
		Size: 952.1 KB (952116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41830c7eca1d7ce9e36f2e0635608a0c8a9bffc56bf81c132070d2a1da55baae`  
		Last Modified: Mon, 25 Jun 2018 23:36:33 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152e7660ce8d33df936bc648bff8e601c7d814f75ea656c38a63e4d91fb8eba4`  
		Last Modified: Mon, 25 Jun 2018 23:36:34 GMT  
		Size: 2.3 KB (2312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4f1b4aa1b1cfa2ed704d266fed6dd6308a8841254d3cd0c2f57b86f77cb529`  
		Last Modified: Mon, 25 Jun 2018 23:36:33 GMT  
		Size: 3.7 KB (3677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457ce1a678249b083cb19a67b806014491bc032a8175694be62fa365537d6489`  
		Last Modified: Mon, 25 Jun 2018 23:36:34 GMT  
		Size: 2.4 KB (2379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:10.5-postgres-tomcat`

```console
$ docker pull xwiki@sha256:818ca534ec7d4fd328c36e500c521b27a07ca688f9326ff44b331b4f5ffce439
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:10.5-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:b5df1ed42cec757ed0dcc30a26f157192fca958a0bf5cfdb3ff56d75b036fc40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **595.4 MB (595431657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a8b3599ea3f1d3b00c4cb98aeb99eddbcea9509d48dc5c2ec26a9c24a5b51ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 18:44:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:44:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 18:44:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 18:44:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 18:45:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 18:45:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 09 Jun 2018 00:41:36 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 09 Jun 2018 00:41:37 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Jun 2018 00:41:38 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 09 Jun 2018 00:41:38 GMT
WORKDIR /usr/local/tomcat
# Sat, 09 Jun 2018 00:41:38 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:38 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:39 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Sat, 09 Jun 2018 00:41:39 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Jun 2018 00:41:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Jun 2018 00:41:46 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 09 Jun 2018 00:44:00 GMT
ENV TOMCAT_MAJOR=8
# Sat, 09 Jun 2018 00:44:42 GMT
ENV TOMCAT_VERSION=8.5.31
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_SHA512=a961eedc4b0c0729f1fb96dafb75eb48e000502233b849f47c84a6355873bc96d131b112400587e96391262e0659df9b991b4e66a78fda74168f939c4ab5af88
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc
# Sat, 09 Jun 2018 00:45:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sat, 09 Jun 2018 00:45:10 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 09 Jun 2018 00:45:11 GMT
EXPOSE 8080/tcp
# Sat, 09 Jun 2018 00:45:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 09 Jun 2018 01:18:05 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 09 Jun 2018 01:33:20 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 25 Jun 2018 23:32:22 GMT
ENV XWIKI_VERSION=10.5
# Mon, 25 Jun 2018 23:32:22 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.5
# Mon, 25 Jun 2018 23:32:22 GMT
ENV XWIKI_DOWNLOAD_SHA256=e49addc6ef33bfbb8ef6587418a5e122329fbb81bc3fd272b1bf0e4805071e96
# Mon, 25 Jun 2018 23:32:55 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 25 Jun 2018 23:32:56 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 25 Jun 2018 23:32:57 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Mon, 25 Jun 2018 23:32:57 GMT
COPY file:7a0ce36c7348308f7754e7d70a4cad74b1c6a11e342ab82fe6e57f1bef38e533 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 25 Jun 2018 23:32:58 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 25 Jun 2018 23:32:58 GMT
COPY file:5f5be420889bdee3bc9520aa2af7c24fe855aaf5aafcc84e301666b86aa545eb in /usr/local/bin/docker-entrypoint.sh 
# Mon, 25 Jun 2018 23:32:58 GMT
VOLUME [/usr/local/xwiki]
# Mon, 25 Jun 2018 23:32:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 25 Jun 2018 23:32:59 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c05365ee2a2245bb9f6786bc88aa12bf64da676a52668424437826d0f0cb92`  
		Last Modified: Tue, 05 Jun 2018 23:41:58 GMT  
		Size: 10.8 MB (10774184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231cb0e216d30ea48044d44d37fba016eb67eca9b19b29a741d95775359d3533`  
		Last Modified: Tue, 05 Jun 2018 23:41:55 GMT  
		Size: 4.3 MB (4335886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8912f9d0ce2e4accc0eb655a24f8b5def2ed4d1caf9d9dc897a19a4d32faf9f`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 853.1 KB (853110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bafe362f99b9e9353c71496d5dd82907355aafab384360400be4d2715816383`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b0652112a637ad5505eee5907b395211776ed3bfd3a74743c428605975be78`  
		Last Modified: Wed, 06 Jun 2018 19:05:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da23e1e20eae995da970ffc93d5bd64980d6f6061a0f33bc08cc9d65475c670a`  
		Last Modified: Wed, 06 Jun 2018 19:05:53 GMT  
		Size: 122.1 MB (122141480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d809d99b239e4876578052705afd7653615e34b5155028d2206e5ec95e30c96`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 272.2 KB (272162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c61bb6d245c4be309a36276e49a16e59434ea6e221569a8fcb46fab39417b7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50578eb745b98f4702d648af2762b551baf8fc7c43aeeda3f58c23ec422663d7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 528.7 KB (528726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85082b9ab294dc28d36cb6cac743034c45e58523ea4265f90503703bf9937e8c`  
		Last Modified: Sat, 09 Jun 2018 00:59:01 GMT  
		Size: 13.4 MB (13396222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34391598837c178f8f62c96b6819cb67a03c43b31b88224ee805669a92f8ab9`  
		Last Modified: Sat, 09 Jun 2018 00:58:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f57a01a5db7f60c09cdc0357b44a27e1a87920c3b5766839d0ab01abfa83a17`  
		Last Modified: Sat, 09 Jun 2018 02:13:33 GMT  
		Size: 161.0 MB (161030393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e2b5aa7fa85d715016e4e5291d15a7360e24312c9e9cee444e4b04d5b7f2c5`  
		Last Modified: Mon, 25 Jun 2018 23:38:52 GMT  
		Size: 236.2 MB (236152146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d380080ae1f47553781530c5ee023e0dcb0128da0c79f92201553ffdeec3e7`  
		Last Modified: Mon, 25 Jun 2018 23:38:31 GMT  
		Size: 618.9 KB (618888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5278c724cff5ca56f923fc319ecb522822665d2b985e72c263d5127ab68270c4`  
		Last Modified: Mon, 25 Jun 2018 23:38:31 GMT  
		Size: 1.2 KB (1153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fd8148dd10c9dc8e99f7cb1c5130786b1efe13b07d922281c9827b9f21854c`  
		Last Modified: Mon, 25 Jun 2018 23:38:31 GMT  
		Size: 2.4 KB (2428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31690f1644708b4fd597b5313c50dd63f52db253923fddeb1b91506e374908b`  
		Last Modified: Mon, 25 Jun 2018 23:38:31 GMT  
		Size: 3.7 KB (3678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096e7ce0729cda1aa22649bb4d3d85081a15b6b279216a625025503eb8580eea`  
		Last Modified: Mon, 25 Jun 2018 23:38:31 GMT  
		Size: 2.4 KB (2381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:10-mysql-tomcat`

```console
$ docker pull xwiki@sha256:e75147e04ed308e579964b7a97ecd530918b82178c59b903abcb92d4e17ca1b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:10-mysql-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:1b5a7114ed176884bca93f0c40c02a5b5efe7db18fc4ae47eeb0c305e30360bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.2 MB (596181745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa9be1ef05ae35d3a1702a0e2fc33f66deb9e66b25404f80e75dafad651f50b6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 18:44:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:44:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 18:44:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 18:44:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 18:45:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 18:45:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 09 Jun 2018 00:41:36 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 09 Jun 2018 00:41:37 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Jun 2018 00:41:38 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 09 Jun 2018 00:41:38 GMT
WORKDIR /usr/local/tomcat
# Sat, 09 Jun 2018 00:41:38 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:38 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:39 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Sat, 09 Jun 2018 00:41:39 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Jun 2018 00:41:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Jun 2018 00:41:46 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 09 Jun 2018 00:44:00 GMT
ENV TOMCAT_MAJOR=8
# Sat, 09 Jun 2018 00:44:42 GMT
ENV TOMCAT_VERSION=8.5.31
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_SHA512=a961eedc4b0c0729f1fb96dafb75eb48e000502233b849f47c84a6355873bc96d131b112400587e96391262e0659df9b991b4e66a78fda74168f939c4ab5af88
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc
# Sat, 09 Jun 2018 00:45:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sat, 09 Jun 2018 00:45:10 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 09 Jun 2018 00:45:11 GMT
EXPOSE 8080/tcp
# Sat, 09 Jun 2018 00:45:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 09 Jun 2018 01:18:05 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 09 Jun 2018 01:19:20 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 25 Jun 2018 23:31:30 GMT
ENV XWIKI_VERSION=10.5
# Mon, 25 Jun 2018 23:31:30 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.5
# Mon, 25 Jun 2018 23:31:30 GMT
ENV XWIKI_DOWNLOAD_SHA256=e49addc6ef33bfbb8ef6587418a5e122329fbb81bc3fd272b1bf0e4805071e96
# Mon, 25 Jun 2018 23:32:06 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 25 Jun 2018 23:32:07 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 25 Jun 2018 23:32:08 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Mon, 25 Jun 2018 23:32:08 GMT
COPY file:1d433c8d1a99df71172f6981bdb6f13380e4d62f4dab4246798f9a5203553ca6 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 25 Jun 2018 23:32:09 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 25 Jun 2018 23:32:09 GMT
COPY file:5f5be420889bdee3bc9520aa2af7c24fe855aaf5aafcc84e301666b86aa545eb in /usr/local/bin/docker-entrypoint.sh 
# Mon, 25 Jun 2018 23:32:10 GMT
VOLUME [/usr/local/xwiki]
# Mon, 25 Jun 2018 23:32:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 25 Jun 2018 23:32:10 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c05365ee2a2245bb9f6786bc88aa12bf64da676a52668424437826d0f0cb92`  
		Last Modified: Tue, 05 Jun 2018 23:41:58 GMT  
		Size: 10.8 MB (10774184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231cb0e216d30ea48044d44d37fba016eb67eca9b19b29a741d95775359d3533`  
		Last Modified: Tue, 05 Jun 2018 23:41:55 GMT  
		Size: 4.3 MB (4335886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8912f9d0ce2e4accc0eb655a24f8b5def2ed4d1caf9d9dc897a19a4d32faf9f`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 853.1 KB (853110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bafe362f99b9e9353c71496d5dd82907355aafab384360400be4d2715816383`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b0652112a637ad5505eee5907b395211776ed3bfd3a74743c428605975be78`  
		Last Modified: Wed, 06 Jun 2018 19:05:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da23e1e20eae995da970ffc93d5bd64980d6f6061a0f33bc08cc9d65475c670a`  
		Last Modified: Wed, 06 Jun 2018 19:05:53 GMT  
		Size: 122.1 MB (122141480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d809d99b239e4876578052705afd7653615e34b5155028d2206e5ec95e30c96`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 272.2 KB (272162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c61bb6d245c4be309a36276e49a16e59434ea6e221569a8fcb46fab39417b7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50578eb745b98f4702d648af2762b551baf8fc7c43aeeda3f58c23ec422663d7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 528.7 KB (528726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85082b9ab294dc28d36cb6cac743034c45e58523ea4265f90503703bf9937e8c`  
		Last Modified: Sat, 09 Jun 2018 00:59:01 GMT  
		Size: 13.4 MB (13396222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34391598837c178f8f62c96b6819cb67a03c43b31b88224ee805669a92f8ab9`  
		Last Modified: Sat, 09 Jun 2018 00:58:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c8bd2bfe1a43d3e4814a9157cecfaa87a4b2e9641e7dfc55e646215aaec7b7`  
		Last Modified: Sat, 09 Jun 2018 02:11:30 GMT  
		Size: 161.4 MB (161447376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9160f063730ac15439772e0ba3829970baa0e729fd30e0d097d4f87ee5f23eb`  
		Last Modified: Mon, 25 Jun 2018 23:37:06 GMT  
		Size: 236.2 MB (236152143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9438d426601933c5bbc101cb5b67206aa834c5b6681a515ba4688be82764dd07`  
		Last Modified: Mon, 25 Jun 2018 23:36:34 GMT  
		Size: 952.1 KB (952116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41830c7eca1d7ce9e36f2e0635608a0c8a9bffc56bf81c132070d2a1da55baae`  
		Last Modified: Mon, 25 Jun 2018 23:36:33 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152e7660ce8d33df936bc648bff8e601c7d814f75ea656c38a63e4d91fb8eba4`  
		Last Modified: Mon, 25 Jun 2018 23:36:34 GMT  
		Size: 2.3 KB (2312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4f1b4aa1b1cfa2ed704d266fed6dd6308a8841254d3cd0c2f57b86f77cb529`  
		Last Modified: Mon, 25 Jun 2018 23:36:33 GMT  
		Size: 3.7 KB (3677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457ce1a678249b083cb19a67b806014491bc032a8175694be62fa365537d6489`  
		Last Modified: Mon, 25 Jun 2018 23:36:34 GMT  
		Size: 2.4 KB (2379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:10-postgres-tomcat`

```console
$ docker pull xwiki@sha256:818ca534ec7d4fd328c36e500c521b27a07ca688f9326ff44b331b4f5ffce439
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:10-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:b5df1ed42cec757ed0dcc30a26f157192fca958a0bf5cfdb3ff56d75b036fc40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **595.4 MB (595431657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a8b3599ea3f1d3b00c4cb98aeb99eddbcea9509d48dc5c2ec26a9c24a5b51ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 18:44:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:44:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 18:44:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 18:44:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 18:45:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 18:45:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 09 Jun 2018 00:41:36 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 09 Jun 2018 00:41:37 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Jun 2018 00:41:38 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 09 Jun 2018 00:41:38 GMT
WORKDIR /usr/local/tomcat
# Sat, 09 Jun 2018 00:41:38 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:38 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:39 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Sat, 09 Jun 2018 00:41:39 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Jun 2018 00:41:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Jun 2018 00:41:46 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 09 Jun 2018 00:44:00 GMT
ENV TOMCAT_MAJOR=8
# Sat, 09 Jun 2018 00:44:42 GMT
ENV TOMCAT_VERSION=8.5.31
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_SHA512=a961eedc4b0c0729f1fb96dafb75eb48e000502233b849f47c84a6355873bc96d131b112400587e96391262e0659df9b991b4e66a78fda74168f939c4ab5af88
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc
# Sat, 09 Jun 2018 00:45:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sat, 09 Jun 2018 00:45:10 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 09 Jun 2018 00:45:11 GMT
EXPOSE 8080/tcp
# Sat, 09 Jun 2018 00:45:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 09 Jun 2018 01:18:05 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 09 Jun 2018 01:33:20 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 25 Jun 2018 23:32:22 GMT
ENV XWIKI_VERSION=10.5
# Mon, 25 Jun 2018 23:32:22 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.5
# Mon, 25 Jun 2018 23:32:22 GMT
ENV XWIKI_DOWNLOAD_SHA256=e49addc6ef33bfbb8ef6587418a5e122329fbb81bc3fd272b1bf0e4805071e96
# Mon, 25 Jun 2018 23:32:55 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 25 Jun 2018 23:32:56 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 25 Jun 2018 23:32:57 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Mon, 25 Jun 2018 23:32:57 GMT
COPY file:7a0ce36c7348308f7754e7d70a4cad74b1c6a11e342ab82fe6e57f1bef38e533 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 25 Jun 2018 23:32:58 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 25 Jun 2018 23:32:58 GMT
COPY file:5f5be420889bdee3bc9520aa2af7c24fe855aaf5aafcc84e301666b86aa545eb in /usr/local/bin/docker-entrypoint.sh 
# Mon, 25 Jun 2018 23:32:58 GMT
VOLUME [/usr/local/xwiki]
# Mon, 25 Jun 2018 23:32:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 25 Jun 2018 23:32:59 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c05365ee2a2245bb9f6786bc88aa12bf64da676a52668424437826d0f0cb92`  
		Last Modified: Tue, 05 Jun 2018 23:41:58 GMT  
		Size: 10.8 MB (10774184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231cb0e216d30ea48044d44d37fba016eb67eca9b19b29a741d95775359d3533`  
		Last Modified: Tue, 05 Jun 2018 23:41:55 GMT  
		Size: 4.3 MB (4335886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8912f9d0ce2e4accc0eb655a24f8b5def2ed4d1caf9d9dc897a19a4d32faf9f`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 853.1 KB (853110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bafe362f99b9e9353c71496d5dd82907355aafab384360400be4d2715816383`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b0652112a637ad5505eee5907b395211776ed3bfd3a74743c428605975be78`  
		Last Modified: Wed, 06 Jun 2018 19:05:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da23e1e20eae995da970ffc93d5bd64980d6f6061a0f33bc08cc9d65475c670a`  
		Last Modified: Wed, 06 Jun 2018 19:05:53 GMT  
		Size: 122.1 MB (122141480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d809d99b239e4876578052705afd7653615e34b5155028d2206e5ec95e30c96`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 272.2 KB (272162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c61bb6d245c4be309a36276e49a16e59434ea6e221569a8fcb46fab39417b7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50578eb745b98f4702d648af2762b551baf8fc7c43aeeda3f58c23ec422663d7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 528.7 KB (528726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85082b9ab294dc28d36cb6cac743034c45e58523ea4265f90503703bf9937e8c`  
		Last Modified: Sat, 09 Jun 2018 00:59:01 GMT  
		Size: 13.4 MB (13396222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34391598837c178f8f62c96b6819cb67a03c43b31b88224ee805669a92f8ab9`  
		Last Modified: Sat, 09 Jun 2018 00:58:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f57a01a5db7f60c09cdc0357b44a27e1a87920c3b5766839d0ab01abfa83a17`  
		Last Modified: Sat, 09 Jun 2018 02:13:33 GMT  
		Size: 161.0 MB (161030393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e2b5aa7fa85d715016e4e5291d15a7360e24312c9e9cee444e4b04d5b7f2c5`  
		Last Modified: Mon, 25 Jun 2018 23:38:52 GMT  
		Size: 236.2 MB (236152146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d380080ae1f47553781530c5ee023e0dcb0128da0c79f92201553ffdeec3e7`  
		Last Modified: Mon, 25 Jun 2018 23:38:31 GMT  
		Size: 618.9 KB (618888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5278c724cff5ca56f923fc319ecb522822665d2b985e72c263d5127ab68270c4`  
		Last Modified: Mon, 25 Jun 2018 23:38:31 GMT  
		Size: 1.2 KB (1153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fd8148dd10c9dc8e99f7cb1c5130786b1efe13b07d922281c9827b9f21854c`  
		Last Modified: Mon, 25 Jun 2018 23:38:31 GMT  
		Size: 2.4 KB (2428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31690f1644708b4fd597b5313c50dd63f52db253923fddeb1b91506e374908b`  
		Last Modified: Mon, 25 Jun 2018 23:38:31 GMT  
		Size: 3.7 KB (3678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096e7ce0729cda1aa22649bb4d3d85081a15b6b279216a625025503eb8580eea`  
		Last Modified: Mon, 25 Jun 2018 23:38:31 GMT  
		Size: 2.4 KB (2381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:9`

```console
$ docker pull xwiki@sha256:2eaac67a082e7e5665f456a0dd604fe88454d4e82de3f32967710b5290682f3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:9` - linux; amd64

```console
$ docker pull xwiki@sha256:9fa619978ad9ed094dbca8c321675bcbeb5c976af2b6b36a3af68f0cca90a59c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **585.7 MB (585735267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd16e112a8c2008b8749e539c5bc8a1cba35fdd9d44efbc73630636a63398dc0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 18:44:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:44:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 18:44:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 18:44:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 18:45:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 18:45:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 09 Jun 2018 00:41:36 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 09 Jun 2018 00:41:37 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Jun 2018 00:41:38 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 09 Jun 2018 00:41:38 GMT
WORKDIR /usr/local/tomcat
# Sat, 09 Jun 2018 00:41:38 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:38 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:39 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Sat, 09 Jun 2018 00:41:39 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Jun 2018 00:41:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Jun 2018 00:41:46 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 09 Jun 2018 00:44:00 GMT
ENV TOMCAT_MAJOR=8
# Sat, 09 Jun 2018 00:44:42 GMT
ENV TOMCAT_VERSION=8.5.31
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_SHA512=a961eedc4b0c0729f1fb96dafb75eb48e000502233b849f47c84a6355873bc96d131b112400587e96391262e0659df9b991b4e66a78fda74168f939c4ab5af88
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc
# Sat, 09 Jun 2018 00:45:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sat, 09 Jun 2018 00:45:10 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 09 Jun 2018 00:45:11 GMT
EXPOSE 8080/tcp
# Sat, 09 Jun 2018 00:45:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 09 Jun 2018 01:18:05 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 09 Jun 2018 01:19:20 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 25 Jun 2018 23:29:35 GMT
ENV XWIKI_VERSION=9.11.6
# Mon, 25 Jun 2018 23:29:35 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.6
# Mon, 25 Jun 2018 23:29:35 GMT
ENV XWIKI_DOWNLOAD_SHA256=56e61b53d75bdac6dfb4460033746cbbadb8af4be5c6789921a7221c55e031a1
# Mon, 25 Jun 2018 23:30:15 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 25 Jun 2018 23:30:16 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 25 Jun 2018 23:30:17 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Mon, 25 Jun 2018 23:30:17 GMT
COPY file:1d433c8d1a99df71172f6981bdb6f13380e4d62f4dab4246798f9a5203553ca6 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 25 Jun 2018 23:30:18 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 25 Jun 2018 23:30:18 GMT
COPY file:86f4388d222242a09aa5d0770f4d43e6e97716e20d4bb52e229e6044ca70acaa in /usr/local/bin/docker-entrypoint.sh 
# Mon, 25 Jun 2018 23:30:18 GMT
VOLUME [/usr/local/xwiki]
# Mon, 25 Jun 2018 23:30:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 25 Jun 2018 23:30:19 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c05365ee2a2245bb9f6786bc88aa12bf64da676a52668424437826d0f0cb92`  
		Last Modified: Tue, 05 Jun 2018 23:41:58 GMT  
		Size: 10.8 MB (10774184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231cb0e216d30ea48044d44d37fba016eb67eca9b19b29a741d95775359d3533`  
		Last Modified: Tue, 05 Jun 2018 23:41:55 GMT  
		Size: 4.3 MB (4335886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8912f9d0ce2e4accc0eb655a24f8b5def2ed4d1caf9d9dc897a19a4d32faf9f`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 853.1 KB (853110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bafe362f99b9e9353c71496d5dd82907355aafab384360400be4d2715816383`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b0652112a637ad5505eee5907b395211776ed3bfd3a74743c428605975be78`  
		Last Modified: Wed, 06 Jun 2018 19:05:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da23e1e20eae995da970ffc93d5bd64980d6f6061a0f33bc08cc9d65475c670a`  
		Last Modified: Wed, 06 Jun 2018 19:05:53 GMT  
		Size: 122.1 MB (122141480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d809d99b239e4876578052705afd7653615e34b5155028d2206e5ec95e30c96`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 272.2 KB (272162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c61bb6d245c4be309a36276e49a16e59434ea6e221569a8fcb46fab39417b7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50578eb745b98f4702d648af2762b551baf8fc7c43aeeda3f58c23ec422663d7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 528.7 KB (528726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85082b9ab294dc28d36cb6cac743034c45e58523ea4265f90503703bf9937e8c`  
		Last Modified: Sat, 09 Jun 2018 00:59:01 GMT  
		Size: 13.4 MB (13396222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34391598837c178f8f62c96b6819cb67a03c43b31b88224ee805669a92f8ab9`  
		Last Modified: Sat, 09 Jun 2018 00:58:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c8bd2bfe1a43d3e4814a9157cecfaa87a4b2e9641e7dfc55e646215aaec7b7`  
		Last Modified: Sat, 09 Jun 2018 02:11:30 GMT  
		Size: 161.4 MB (161447376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3477caf24d0de6244512205dbe7c4876a95a9d88128ff9410324112324d22020`  
		Last Modified: Mon, 25 Jun 2018 23:33:44 GMT  
		Size: 225.7 MB (225705631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43b47dc2f45d37dcd530e2daa271f522f4dc437716eed4f4b9704a8076eb8a34`  
		Last Modified: Mon, 25 Jun 2018 23:33:19 GMT  
		Size: 952.1 KB (952115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f2e32e7c4a63f293d6ee225e390097806539e2ad185b869d0d3326425a2fac1`  
		Last Modified: Mon, 25 Jun 2018 23:33:18 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f1233c839def78f93fa0c9fb362dc4eb83e1a666ea0be3b681fa7208909ebfd`  
		Last Modified: Mon, 25 Jun 2018 23:33:18 GMT  
		Size: 2.3 KB (2319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b3ceba3f9af9567efab2a750c3cb476a3141f58e6103d54459a872fcb8181f`  
		Last Modified: Mon, 25 Jun 2018 23:33:18 GMT  
		Size: 3.6 KB (3623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f50ee103161387f60cf8400908834226247adc32018e2f792bc98561ad7cdcc`  
		Last Modified: Mon, 25 Jun 2018 23:33:18 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:9.11`

```console
$ docker pull xwiki@sha256:2eaac67a082e7e5665f456a0dd604fe88454d4e82de3f32967710b5290682f3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:9.11` - linux; amd64

```console
$ docker pull xwiki@sha256:9fa619978ad9ed094dbca8c321675bcbeb5c976af2b6b36a3af68f0cca90a59c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **585.7 MB (585735267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd16e112a8c2008b8749e539c5bc8a1cba35fdd9d44efbc73630636a63398dc0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 18:44:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:44:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 18:44:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 18:44:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 18:45:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 18:45:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 09 Jun 2018 00:41:36 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 09 Jun 2018 00:41:37 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Jun 2018 00:41:38 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 09 Jun 2018 00:41:38 GMT
WORKDIR /usr/local/tomcat
# Sat, 09 Jun 2018 00:41:38 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:38 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:39 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Sat, 09 Jun 2018 00:41:39 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Jun 2018 00:41:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Jun 2018 00:41:46 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 09 Jun 2018 00:44:00 GMT
ENV TOMCAT_MAJOR=8
# Sat, 09 Jun 2018 00:44:42 GMT
ENV TOMCAT_VERSION=8.5.31
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_SHA512=a961eedc4b0c0729f1fb96dafb75eb48e000502233b849f47c84a6355873bc96d131b112400587e96391262e0659df9b991b4e66a78fda74168f939c4ab5af88
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc
# Sat, 09 Jun 2018 00:45:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sat, 09 Jun 2018 00:45:10 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 09 Jun 2018 00:45:11 GMT
EXPOSE 8080/tcp
# Sat, 09 Jun 2018 00:45:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 09 Jun 2018 01:18:05 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 09 Jun 2018 01:19:20 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 25 Jun 2018 23:29:35 GMT
ENV XWIKI_VERSION=9.11.6
# Mon, 25 Jun 2018 23:29:35 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.6
# Mon, 25 Jun 2018 23:29:35 GMT
ENV XWIKI_DOWNLOAD_SHA256=56e61b53d75bdac6dfb4460033746cbbadb8af4be5c6789921a7221c55e031a1
# Mon, 25 Jun 2018 23:30:15 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 25 Jun 2018 23:30:16 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 25 Jun 2018 23:30:17 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Mon, 25 Jun 2018 23:30:17 GMT
COPY file:1d433c8d1a99df71172f6981bdb6f13380e4d62f4dab4246798f9a5203553ca6 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 25 Jun 2018 23:30:18 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 25 Jun 2018 23:30:18 GMT
COPY file:86f4388d222242a09aa5d0770f4d43e6e97716e20d4bb52e229e6044ca70acaa in /usr/local/bin/docker-entrypoint.sh 
# Mon, 25 Jun 2018 23:30:18 GMT
VOLUME [/usr/local/xwiki]
# Mon, 25 Jun 2018 23:30:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 25 Jun 2018 23:30:19 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c05365ee2a2245bb9f6786bc88aa12bf64da676a52668424437826d0f0cb92`  
		Last Modified: Tue, 05 Jun 2018 23:41:58 GMT  
		Size: 10.8 MB (10774184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231cb0e216d30ea48044d44d37fba016eb67eca9b19b29a741d95775359d3533`  
		Last Modified: Tue, 05 Jun 2018 23:41:55 GMT  
		Size: 4.3 MB (4335886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8912f9d0ce2e4accc0eb655a24f8b5def2ed4d1caf9d9dc897a19a4d32faf9f`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 853.1 KB (853110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bafe362f99b9e9353c71496d5dd82907355aafab384360400be4d2715816383`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b0652112a637ad5505eee5907b395211776ed3bfd3a74743c428605975be78`  
		Last Modified: Wed, 06 Jun 2018 19:05:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da23e1e20eae995da970ffc93d5bd64980d6f6061a0f33bc08cc9d65475c670a`  
		Last Modified: Wed, 06 Jun 2018 19:05:53 GMT  
		Size: 122.1 MB (122141480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d809d99b239e4876578052705afd7653615e34b5155028d2206e5ec95e30c96`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 272.2 KB (272162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c61bb6d245c4be309a36276e49a16e59434ea6e221569a8fcb46fab39417b7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50578eb745b98f4702d648af2762b551baf8fc7c43aeeda3f58c23ec422663d7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 528.7 KB (528726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85082b9ab294dc28d36cb6cac743034c45e58523ea4265f90503703bf9937e8c`  
		Last Modified: Sat, 09 Jun 2018 00:59:01 GMT  
		Size: 13.4 MB (13396222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34391598837c178f8f62c96b6819cb67a03c43b31b88224ee805669a92f8ab9`  
		Last Modified: Sat, 09 Jun 2018 00:58:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c8bd2bfe1a43d3e4814a9157cecfaa87a4b2e9641e7dfc55e646215aaec7b7`  
		Last Modified: Sat, 09 Jun 2018 02:11:30 GMT  
		Size: 161.4 MB (161447376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3477caf24d0de6244512205dbe7c4876a95a9d88128ff9410324112324d22020`  
		Last Modified: Mon, 25 Jun 2018 23:33:44 GMT  
		Size: 225.7 MB (225705631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43b47dc2f45d37dcd530e2daa271f522f4dc437716eed4f4b9704a8076eb8a34`  
		Last Modified: Mon, 25 Jun 2018 23:33:19 GMT  
		Size: 952.1 KB (952115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f2e32e7c4a63f293d6ee225e390097806539e2ad185b869d0d3326425a2fac1`  
		Last Modified: Mon, 25 Jun 2018 23:33:18 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f1233c839def78f93fa0c9fb362dc4eb83e1a666ea0be3b681fa7208909ebfd`  
		Last Modified: Mon, 25 Jun 2018 23:33:18 GMT  
		Size: 2.3 KB (2319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b3ceba3f9af9567efab2a750c3cb476a3141f58e6103d54459a872fcb8181f`  
		Last Modified: Mon, 25 Jun 2018 23:33:18 GMT  
		Size: 3.6 KB (3623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f50ee103161387f60cf8400908834226247adc32018e2f792bc98561ad7cdcc`  
		Last Modified: Mon, 25 Jun 2018 23:33:18 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:9.11.6`

```console
$ docker pull xwiki@sha256:2eaac67a082e7e5665f456a0dd604fe88454d4e82de3f32967710b5290682f3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:9.11.6` - linux; amd64

```console
$ docker pull xwiki@sha256:9fa619978ad9ed094dbca8c321675bcbeb5c976af2b6b36a3af68f0cca90a59c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **585.7 MB (585735267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd16e112a8c2008b8749e539c5bc8a1cba35fdd9d44efbc73630636a63398dc0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 18:44:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:44:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 18:44:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 18:44:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 18:45:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 18:45:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 09 Jun 2018 00:41:36 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 09 Jun 2018 00:41:37 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Jun 2018 00:41:38 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 09 Jun 2018 00:41:38 GMT
WORKDIR /usr/local/tomcat
# Sat, 09 Jun 2018 00:41:38 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:38 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:39 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Sat, 09 Jun 2018 00:41:39 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Jun 2018 00:41:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Jun 2018 00:41:46 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 09 Jun 2018 00:44:00 GMT
ENV TOMCAT_MAJOR=8
# Sat, 09 Jun 2018 00:44:42 GMT
ENV TOMCAT_VERSION=8.5.31
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_SHA512=a961eedc4b0c0729f1fb96dafb75eb48e000502233b849f47c84a6355873bc96d131b112400587e96391262e0659df9b991b4e66a78fda74168f939c4ab5af88
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc
# Sat, 09 Jun 2018 00:45:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sat, 09 Jun 2018 00:45:10 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 09 Jun 2018 00:45:11 GMT
EXPOSE 8080/tcp
# Sat, 09 Jun 2018 00:45:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 09 Jun 2018 01:18:05 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 09 Jun 2018 01:19:20 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 25 Jun 2018 23:29:35 GMT
ENV XWIKI_VERSION=9.11.6
# Mon, 25 Jun 2018 23:29:35 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.6
# Mon, 25 Jun 2018 23:29:35 GMT
ENV XWIKI_DOWNLOAD_SHA256=56e61b53d75bdac6dfb4460033746cbbadb8af4be5c6789921a7221c55e031a1
# Mon, 25 Jun 2018 23:30:15 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 25 Jun 2018 23:30:16 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 25 Jun 2018 23:30:17 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Mon, 25 Jun 2018 23:30:17 GMT
COPY file:1d433c8d1a99df71172f6981bdb6f13380e4d62f4dab4246798f9a5203553ca6 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 25 Jun 2018 23:30:18 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 25 Jun 2018 23:30:18 GMT
COPY file:86f4388d222242a09aa5d0770f4d43e6e97716e20d4bb52e229e6044ca70acaa in /usr/local/bin/docker-entrypoint.sh 
# Mon, 25 Jun 2018 23:30:18 GMT
VOLUME [/usr/local/xwiki]
# Mon, 25 Jun 2018 23:30:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 25 Jun 2018 23:30:19 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c05365ee2a2245bb9f6786bc88aa12bf64da676a52668424437826d0f0cb92`  
		Last Modified: Tue, 05 Jun 2018 23:41:58 GMT  
		Size: 10.8 MB (10774184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231cb0e216d30ea48044d44d37fba016eb67eca9b19b29a741d95775359d3533`  
		Last Modified: Tue, 05 Jun 2018 23:41:55 GMT  
		Size: 4.3 MB (4335886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8912f9d0ce2e4accc0eb655a24f8b5def2ed4d1caf9d9dc897a19a4d32faf9f`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 853.1 KB (853110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bafe362f99b9e9353c71496d5dd82907355aafab384360400be4d2715816383`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b0652112a637ad5505eee5907b395211776ed3bfd3a74743c428605975be78`  
		Last Modified: Wed, 06 Jun 2018 19:05:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da23e1e20eae995da970ffc93d5bd64980d6f6061a0f33bc08cc9d65475c670a`  
		Last Modified: Wed, 06 Jun 2018 19:05:53 GMT  
		Size: 122.1 MB (122141480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d809d99b239e4876578052705afd7653615e34b5155028d2206e5ec95e30c96`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 272.2 KB (272162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c61bb6d245c4be309a36276e49a16e59434ea6e221569a8fcb46fab39417b7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50578eb745b98f4702d648af2762b551baf8fc7c43aeeda3f58c23ec422663d7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 528.7 KB (528726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85082b9ab294dc28d36cb6cac743034c45e58523ea4265f90503703bf9937e8c`  
		Last Modified: Sat, 09 Jun 2018 00:59:01 GMT  
		Size: 13.4 MB (13396222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34391598837c178f8f62c96b6819cb67a03c43b31b88224ee805669a92f8ab9`  
		Last Modified: Sat, 09 Jun 2018 00:58:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c8bd2bfe1a43d3e4814a9157cecfaa87a4b2e9641e7dfc55e646215aaec7b7`  
		Last Modified: Sat, 09 Jun 2018 02:11:30 GMT  
		Size: 161.4 MB (161447376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3477caf24d0de6244512205dbe7c4876a95a9d88128ff9410324112324d22020`  
		Last Modified: Mon, 25 Jun 2018 23:33:44 GMT  
		Size: 225.7 MB (225705631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43b47dc2f45d37dcd530e2daa271f522f4dc437716eed4f4b9704a8076eb8a34`  
		Last Modified: Mon, 25 Jun 2018 23:33:19 GMT  
		Size: 952.1 KB (952115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f2e32e7c4a63f293d6ee225e390097806539e2ad185b869d0d3326425a2fac1`  
		Last Modified: Mon, 25 Jun 2018 23:33:18 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f1233c839def78f93fa0c9fb362dc4eb83e1a666ea0be3b681fa7208909ebfd`  
		Last Modified: Mon, 25 Jun 2018 23:33:18 GMT  
		Size: 2.3 KB (2319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b3ceba3f9af9567efab2a750c3cb476a3141f58e6103d54459a872fcb8181f`  
		Last Modified: Mon, 25 Jun 2018 23:33:18 GMT  
		Size: 3.6 KB (3623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f50ee103161387f60cf8400908834226247adc32018e2f792bc98561ad7cdcc`  
		Last Modified: Mon, 25 Jun 2018 23:33:18 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:9.11.6-postgres-tomcat`

```console
$ docker pull xwiki@sha256:c2f532efcc2b0930ef24af6ed0a8d8f1a049e7033656b17cb69e6868a8627a10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:9.11.6-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:b01a06a63f30f7331cefcd760e7cc45ff3947b44fb4066bbca83e64b6d537ca2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **585.0 MB (584985150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caa370789cc3704fac00827725ea3299b82e41ab50e4eb0c7bdbec4aaf5c85bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 18:44:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:44:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 18:44:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 18:44:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 18:45:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 18:45:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 09 Jun 2018 00:41:36 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 09 Jun 2018 00:41:37 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Jun 2018 00:41:38 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 09 Jun 2018 00:41:38 GMT
WORKDIR /usr/local/tomcat
# Sat, 09 Jun 2018 00:41:38 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:38 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:39 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Sat, 09 Jun 2018 00:41:39 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Jun 2018 00:41:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Jun 2018 00:41:46 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 09 Jun 2018 00:44:00 GMT
ENV TOMCAT_MAJOR=8
# Sat, 09 Jun 2018 00:44:42 GMT
ENV TOMCAT_VERSION=8.5.31
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_SHA512=a961eedc4b0c0729f1fb96dafb75eb48e000502233b849f47c84a6355873bc96d131b112400587e96391262e0659df9b991b4e66a78fda74168f939c4ab5af88
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc
# Sat, 09 Jun 2018 00:45:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sat, 09 Jun 2018 00:45:10 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 09 Jun 2018 00:45:11 GMT
EXPOSE 8080/tcp
# Sat, 09 Jun 2018 00:45:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 09 Jun 2018 01:18:05 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 09 Jun 2018 01:33:20 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 25 Jun 2018 23:30:34 GMT
ENV XWIKI_VERSION=9.11.6
# Mon, 25 Jun 2018 23:30:34 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.6
# Mon, 25 Jun 2018 23:30:34 GMT
ENV XWIKI_DOWNLOAD_SHA256=56e61b53d75bdac6dfb4460033746cbbadb8af4be5c6789921a7221c55e031a1
# Mon, 25 Jun 2018 23:31:14 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 25 Jun 2018 23:31:15 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 25 Jun 2018 23:31:16 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Mon, 25 Jun 2018 23:31:16 GMT
COPY file:7a0ce36c7348308f7754e7d70a4cad74b1c6a11e342ab82fe6e57f1bef38e533 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 25 Jun 2018 23:31:17 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 25 Jun 2018 23:31:17 GMT
COPY file:86f4388d222242a09aa5d0770f4d43e6e97716e20d4bb52e229e6044ca70acaa in /usr/local/bin/docker-entrypoint.sh 
# Mon, 25 Jun 2018 23:31:17 GMT
VOLUME [/usr/local/xwiki]
# Mon, 25 Jun 2018 23:31:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 25 Jun 2018 23:31:18 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c05365ee2a2245bb9f6786bc88aa12bf64da676a52668424437826d0f0cb92`  
		Last Modified: Tue, 05 Jun 2018 23:41:58 GMT  
		Size: 10.8 MB (10774184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231cb0e216d30ea48044d44d37fba016eb67eca9b19b29a741d95775359d3533`  
		Last Modified: Tue, 05 Jun 2018 23:41:55 GMT  
		Size: 4.3 MB (4335886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8912f9d0ce2e4accc0eb655a24f8b5def2ed4d1caf9d9dc897a19a4d32faf9f`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 853.1 KB (853110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bafe362f99b9e9353c71496d5dd82907355aafab384360400be4d2715816383`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b0652112a637ad5505eee5907b395211776ed3bfd3a74743c428605975be78`  
		Last Modified: Wed, 06 Jun 2018 19:05:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da23e1e20eae995da970ffc93d5bd64980d6f6061a0f33bc08cc9d65475c670a`  
		Last Modified: Wed, 06 Jun 2018 19:05:53 GMT  
		Size: 122.1 MB (122141480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d809d99b239e4876578052705afd7653615e34b5155028d2206e5ec95e30c96`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 272.2 KB (272162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c61bb6d245c4be309a36276e49a16e59434ea6e221569a8fcb46fab39417b7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50578eb745b98f4702d648af2762b551baf8fc7c43aeeda3f58c23ec422663d7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 528.7 KB (528726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85082b9ab294dc28d36cb6cac743034c45e58523ea4265f90503703bf9937e8c`  
		Last Modified: Sat, 09 Jun 2018 00:59:01 GMT  
		Size: 13.4 MB (13396222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34391598837c178f8f62c96b6819cb67a03c43b31b88224ee805669a92f8ab9`  
		Last Modified: Sat, 09 Jun 2018 00:58:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f57a01a5db7f60c09cdc0357b44a27e1a87920c3b5766839d0ab01abfa83a17`  
		Last Modified: Sat, 09 Jun 2018 02:13:33 GMT  
		Size: 161.0 MB (161030393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d27c1f50cb00410f4c7a884257beec7771befbab38b90a1d5fa289db96f586b1`  
		Last Modified: Mon, 25 Jun 2018 23:35:27 GMT  
		Size: 225.7 MB (225705605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b822cfc6709ebdd658eb639499b2fbce8ac01a2d086690a07586cc72a9e4b923`  
		Last Modified: Mon, 25 Jun 2018 23:35:01 GMT  
		Size: 618.9 KB (618893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba331ae10c801077f7498610747e24af0c2a5dfa8d94d45358895d8b55f1f61`  
		Last Modified: Mon, 25 Jun 2018 23:35:01 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d822b06b9eca5ddd3a616bf3840b6297abdbfff7b5eb3cab45b161ee5a76d21`  
		Last Modified: Mon, 25 Jun 2018 23:35:00 GMT  
		Size: 2.4 KB (2431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868f0b4bec6d37f9d9f11853a43637473b47eb52b11cbdb80874f3647cf79a79`  
		Last Modified: Mon, 25 Jun 2018 23:35:01 GMT  
		Size: 3.6 KB (3625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b74a579dc3416d18904a6a6685840e70f563da5ef2dc03e048e83bc286601945`  
		Last Modified: Mon, 25 Jun 2018 23:35:01 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:9.11-postgres-tomcat`

```console
$ docker pull xwiki@sha256:c2f532efcc2b0930ef24af6ed0a8d8f1a049e7033656b17cb69e6868a8627a10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:9.11-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:b01a06a63f30f7331cefcd760e7cc45ff3947b44fb4066bbca83e64b6d537ca2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **585.0 MB (584985150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caa370789cc3704fac00827725ea3299b82e41ab50e4eb0c7bdbec4aaf5c85bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 18:44:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:44:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 18:44:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 18:44:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 18:45:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 18:45:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 09 Jun 2018 00:41:36 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 09 Jun 2018 00:41:37 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Jun 2018 00:41:38 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 09 Jun 2018 00:41:38 GMT
WORKDIR /usr/local/tomcat
# Sat, 09 Jun 2018 00:41:38 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:38 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:39 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Sat, 09 Jun 2018 00:41:39 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Jun 2018 00:41:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Jun 2018 00:41:46 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 09 Jun 2018 00:44:00 GMT
ENV TOMCAT_MAJOR=8
# Sat, 09 Jun 2018 00:44:42 GMT
ENV TOMCAT_VERSION=8.5.31
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_SHA512=a961eedc4b0c0729f1fb96dafb75eb48e000502233b849f47c84a6355873bc96d131b112400587e96391262e0659df9b991b4e66a78fda74168f939c4ab5af88
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc
# Sat, 09 Jun 2018 00:45:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sat, 09 Jun 2018 00:45:10 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 09 Jun 2018 00:45:11 GMT
EXPOSE 8080/tcp
# Sat, 09 Jun 2018 00:45:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 09 Jun 2018 01:18:05 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 09 Jun 2018 01:33:20 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 25 Jun 2018 23:30:34 GMT
ENV XWIKI_VERSION=9.11.6
# Mon, 25 Jun 2018 23:30:34 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.6
# Mon, 25 Jun 2018 23:30:34 GMT
ENV XWIKI_DOWNLOAD_SHA256=56e61b53d75bdac6dfb4460033746cbbadb8af4be5c6789921a7221c55e031a1
# Mon, 25 Jun 2018 23:31:14 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 25 Jun 2018 23:31:15 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 25 Jun 2018 23:31:16 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Mon, 25 Jun 2018 23:31:16 GMT
COPY file:7a0ce36c7348308f7754e7d70a4cad74b1c6a11e342ab82fe6e57f1bef38e533 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 25 Jun 2018 23:31:17 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 25 Jun 2018 23:31:17 GMT
COPY file:86f4388d222242a09aa5d0770f4d43e6e97716e20d4bb52e229e6044ca70acaa in /usr/local/bin/docker-entrypoint.sh 
# Mon, 25 Jun 2018 23:31:17 GMT
VOLUME [/usr/local/xwiki]
# Mon, 25 Jun 2018 23:31:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 25 Jun 2018 23:31:18 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c05365ee2a2245bb9f6786bc88aa12bf64da676a52668424437826d0f0cb92`  
		Last Modified: Tue, 05 Jun 2018 23:41:58 GMT  
		Size: 10.8 MB (10774184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231cb0e216d30ea48044d44d37fba016eb67eca9b19b29a741d95775359d3533`  
		Last Modified: Tue, 05 Jun 2018 23:41:55 GMT  
		Size: 4.3 MB (4335886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8912f9d0ce2e4accc0eb655a24f8b5def2ed4d1caf9d9dc897a19a4d32faf9f`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 853.1 KB (853110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bafe362f99b9e9353c71496d5dd82907355aafab384360400be4d2715816383`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b0652112a637ad5505eee5907b395211776ed3bfd3a74743c428605975be78`  
		Last Modified: Wed, 06 Jun 2018 19:05:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da23e1e20eae995da970ffc93d5bd64980d6f6061a0f33bc08cc9d65475c670a`  
		Last Modified: Wed, 06 Jun 2018 19:05:53 GMT  
		Size: 122.1 MB (122141480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d809d99b239e4876578052705afd7653615e34b5155028d2206e5ec95e30c96`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 272.2 KB (272162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c61bb6d245c4be309a36276e49a16e59434ea6e221569a8fcb46fab39417b7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50578eb745b98f4702d648af2762b551baf8fc7c43aeeda3f58c23ec422663d7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 528.7 KB (528726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85082b9ab294dc28d36cb6cac743034c45e58523ea4265f90503703bf9937e8c`  
		Last Modified: Sat, 09 Jun 2018 00:59:01 GMT  
		Size: 13.4 MB (13396222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34391598837c178f8f62c96b6819cb67a03c43b31b88224ee805669a92f8ab9`  
		Last Modified: Sat, 09 Jun 2018 00:58:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f57a01a5db7f60c09cdc0357b44a27e1a87920c3b5766839d0ab01abfa83a17`  
		Last Modified: Sat, 09 Jun 2018 02:13:33 GMT  
		Size: 161.0 MB (161030393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d27c1f50cb00410f4c7a884257beec7771befbab38b90a1d5fa289db96f586b1`  
		Last Modified: Mon, 25 Jun 2018 23:35:27 GMT  
		Size: 225.7 MB (225705605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b822cfc6709ebdd658eb639499b2fbce8ac01a2d086690a07586cc72a9e4b923`  
		Last Modified: Mon, 25 Jun 2018 23:35:01 GMT  
		Size: 618.9 KB (618893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba331ae10c801077f7498610747e24af0c2a5dfa8d94d45358895d8b55f1f61`  
		Last Modified: Mon, 25 Jun 2018 23:35:01 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d822b06b9eca5ddd3a616bf3840b6297abdbfff7b5eb3cab45b161ee5a76d21`  
		Last Modified: Mon, 25 Jun 2018 23:35:00 GMT  
		Size: 2.4 KB (2431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868f0b4bec6d37f9d9f11853a43637473b47eb52b11cbdb80874f3647cf79a79`  
		Last Modified: Mon, 25 Jun 2018 23:35:01 GMT  
		Size: 3.6 KB (3625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b74a579dc3416d18904a6a6685840e70f563da5ef2dc03e048e83bc286601945`  
		Last Modified: Mon, 25 Jun 2018 23:35:01 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:9-mysql-tomcat`

```console
$ docker pull xwiki@sha256:2eaac67a082e7e5665f456a0dd604fe88454d4e82de3f32967710b5290682f3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:9-mysql-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:9fa619978ad9ed094dbca8c321675bcbeb5c976af2b6b36a3af68f0cca90a59c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **585.7 MB (585735267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd16e112a8c2008b8749e539c5bc8a1cba35fdd9d44efbc73630636a63398dc0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 18:44:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:44:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 18:44:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 18:44:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 18:45:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 18:45:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 09 Jun 2018 00:41:36 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 09 Jun 2018 00:41:37 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Jun 2018 00:41:38 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 09 Jun 2018 00:41:38 GMT
WORKDIR /usr/local/tomcat
# Sat, 09 Jun 2018 00:41:38 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:38 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:39 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Sat, 09 Jun 2018 00:41:39 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Jun 2018 00:41:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Jun 2018 00:41:46 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 09 Jun 2018 00:44:00 GMT
ENV TOMCAT_MAJOR=8
# Sat, 09 Jun 2018 00:44:42 GMT
ENV TOMCAT_VERSION=8.5.31
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_SHA512=a961eedc4b0c0729f1fb96dafb75eb48e000502233b849f47c84a6355873bc96d131b112400587e96391262e0659df9b991b4e66a78fda74168f939c4ab5af88
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc
# Sat, 09 Jun 2018 00:45:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sat, 09 Jun 2018 00:45:10 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 09 Jun 2018 00:45:11 GMT
EXPOSE 8080/tcp
# Sat, 09 Jun 2018 00:45:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 09 Jun 2018 01:18:05 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 09 Jun 2018 01:19:20 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 25 Jun 2018 23:29:35 GMT
ENV XWIKI_VERSION=9.11.6
# Mon, 25 Jun 2018 23:29:35 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.6
# Mon, 25 Jun 2018 23:29:35 GMT
ENV XWIKI_DOWNLOAD_SHA256=56e61b53d75bdac6dfb4460033746cbbadb8af4be5c6789921a7221c55e031a1
# Mon, 25 Jun 2018 23:30:15 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 25 Jun 2018 23:30:16 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 25 Jun 2018 23:30:17 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Mon, 25 Jun 2018 23:30:17 GMT
COPY file:1d433c8d1a99df71172f6981bdb6f13380e4d62f4dab4246798f9a5203553ca6 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 25 Jun 2018 23:30:18 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 25 Jun 2018 23:30:18 GMT
COPY file:86f4388d222242a09aa5d0770f4d43e6e97716e20d4bb52e229e6044ca70acaa in /usr/local/bin/docker-entrypoint.sh 
# Mon, 25 Jun 2018 23:30:18 GMT
VOLUME [/usr/local/xwiki]
# Mon, 25 Jun 2018 23:30:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 25 Jun 2018 23:30:19 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c05365ee2a2245bb9f6786bc88aa12bf64da676a52668424437826d0f0cb92`  
		Last Modified: Tue, 05 Jun 2018 23:41:58 GMT  
		Size: 10.8 MB (10774184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231cb0e216d30ea48044d44d37fba016eb67eca9b19b29a741d95775359d3533`  
		Last Modified: Tue, 05 Jun 2018 23:41:55 GMT  
		Size: 4.3 MB (4335886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8912f9d0ce2e4accc0eb655a24f8b5def2ed4d1caf9d9dc897a19a4d32faf9f`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 853.1 KB (853110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bafe362f99b9e9353c71496d5dd82907355aafab384360400be4d2715816383`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b0652112a637ad5505eee5907b395211776ed3bfd3a74743c428605975be78`  
		Last Modified: Wed, 06 Jun 2018 19:05:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da23e1e20eae995da970ffc93d5bd64980d6f6061a0f33bc08cc9d65475c670a`  
		Last Modified: Wed, 06 Jun 2018 19:05:53 GMT  
		Size: 122.1 MB (122141480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d809d99b239e4876578052705afd7653615e34b5155028d2206e5ec95e30c96`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 272.2 KB (272162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c61bb6d245c4be309a36276e49a16e59434ea6e221569a8fcb46fab39417b7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50578eb745b98f4702d648af2762b551baf8fc7c43aeeda3f58c23ec422663d7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 528.7 KB (528726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85082b9ab294dc28d36cb6cac743034c45e58523ea4265f90503703bf9937e8c`  
		Last Modified: Sat, 09 Jun 2018 00:59:01 GMT  
		Size: 13.4 MB (13396222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34391598837c178f8f62c96b6819cb67a03c43b31b88224ee805669a92f8ab9`  
		Last Modified: Sat, 09 Jun 2018 00:58:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c8bd2bfe1a43d3e4814a9157cecfaa87a4b2e9641e7dfc55e646215aaec7b7`  
		Last Modified: Sat, 09 Jun 2018 02:11:30 GMT  
		Size: 161.4 MB (161447376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3477caf24d0de6244512205dbe7c4876a95a9d88128ff9410324112324d22020`  
		Last Modified: Mon, 25 Jun 2018 23:33:44 GMT  
		Size: 225.7 MB (225705631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43b47dc2f45d37dcd530e2daa271f522f4dc437716eed4f4b9704a8076eb8a34`  
		Last Modified: Mon, 25 Jun 2018 23:33:19 GMT  
		Size: 952.1 KB (952115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f2e32e7c4a63f293d6ee225e390097806539e2ad185b869d0d3326425a2fac1`  
		Last Modified: Mon, 25 Jun 2018 23:33:18 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f1233c839def78f93fa0c9fb362dc4eb83e1a666ea0be3b681fa7208909ebfd`  
		Last Modified: Mon, 25 Jun 2018 23:33:18 GMT  
		Size: 2.3 KB (2319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b3ceba3f9af9567efab2a750c3cb476a3141f58e6103d54459a872fcb8181f`  
		Last Modified: Mon, 25 Jun 2018 23:33:18 GMT  
		Size: 3.6 KB (3623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f50ee103161387f60cf8400908834226247adc32018e2f792bc98561ad7cdcc`  
		Last Modified: Mon, 25 Jun 2018 23:33:18 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:9-postgres-tomcat`

```console
$ docker pull xwiki@sha256:c2f532efcc2b0930ef24af6ed0a8d8f1a049e7033656b17cb69e6868a8627a10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:9-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:b01a06a63f30f7331cefcd760e7cc45ff3947b44fb4066bbca83e64b6d537ca2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **585.0 MB (584985150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caa370789cc3704fac00827725ea3299b82e41ab50e4eb0c7bdbec4aaf5c85bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 18:44:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:44:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 18:44:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 18:44:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 18:45:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 18:45:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 09 Jun 2018 00:41:36 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 09 Jun 2018 00:41:37 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Jun 2018 00:41:38 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 09 Jun 2018 00:41:38 GMT
WORKDIR /usr/local/tomcat
# Sat, 09 Jun 2018 00:41:38 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:38 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:39 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Sat, 09 Jun 2018 00:41:39 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Jun 2018 00:41:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Jun 2018 00:41:46 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 09 Jun 2018 00:44:00 GMT
ENV TOMCAT_MAJOR=8
# Sat, 09 Jun 2018 00:44:42 GMT
ENV TOMCAT_VERSION=8.5.31
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_SHA512=a961eedc4b0c0729f1fb96dafb75eb48e000502233b849f47c84a6355873bc96d131b112400587e96391262e0659df9b991b4e66a78fda74168f939c4ab5af88
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc
# Sat, 09 Jun 2018 00:45:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sat, 09 Jun 2018 00:45:10 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 09 Jun 2018 00:45:11 GMT
EXPOSE 8080/tcp
# Sat, 09 Jun 2018 00:45:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 09 Jun 2018 01:18:05 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 09 Jun 2018 01:33:20 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 25 Jun 2018 23:30:34 GMT
ENV XWIKI_VERSION=9.11.6
# Mon, 25 Jun 2018 23:30:34 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.6
# Mon, 25 Jun 2018 23:30:34 GMT
ENV XWIKI_DOWNLOAD_SHA256=56e61b53d75bdac6dfb4460033746cbbadb8af4be5c6789921a7221c55e031a1
# Mon, 25 Jun 2018 23:31:14 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 25 Jun 2018 23:31:15 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 25 Jun 2018 23:31:16 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Mon, 25 Jun 2018 23:31:16 GMT
COPY file:7a0ce36c7348308f7754e7d70a4cad74b1c6a11e342ab82fe6e57f1bef38e533 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 25 Jun 2018 23:31:17 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 25 Jun 2018 23:31:17 GMT
COPY file:86f4388d222242a09aa5d0770f4d43e6e97716e20d4bb52e229e6044ca70acaa in /usr/local/bin/docker-entrypoint.sh 
# Mon, 25 Jun 2018 23:31:17 GMT
VOLUME [/usr/local/xwiki]
# Mon, 25 Jun 2018 23:31:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 25 Jun 2018 23:31:18 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c05365ee2a2245bb9f6786bc88aa12bf64da676a52668424437826d0f0cb92`  
		Last Modified: Tue, 05 Jun 2018 23:41:58 GMT  
		Size: 10.8 MB (10774184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231cb0e216d30ea48044d44d37fba016eb67eca9b19b29a741d95775359d3533`  
		Last Modified: Tue, 05 Jun 2018 23:41:55 GMT  
		Size: 4.3 MB (4335886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8912f9d0ce2e4accc0eb655a24f8b5def2ed4d1caf9d9dc897a19a4d32faf9f`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 853.1 KB (853110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bafe362f99b9e9353c71496d5dd82907355aafab384360400be4d2715816383`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b0652112a637ad5505eee5907b395211776ed3bfd3a74743c428605975be78`  
		Last Modified: Wed, 06 Jun 2018 19:05:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da23e1e20eae995da970ffc93d5bd64980d6f6061a0f33bc08cc9d65475c670a`  
		Last Modified: Wed, 06 Jun 2018 19:05:53 GMT  
		Size: 122.1 MB (122141480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d809d99b239e4876578052705afd7653615e34b5155028d2206e5ec95e30c96`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 272.2 KB (272162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c61bb6d245c4be309a36276e49a16e59434ea6e221569a8fcb46fab39417b7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50578eb745b98f4702d648af2762b551baf8fc7c43aeeda3f58c23ec422663d7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 528.7 KB (528726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85082b9ab294dc28d36cb6cac743034c45e58523ea4265f90503703bf9937e8c`  
		Last Modified: Sat, 09 Jun 2018 00:59:01 GMT  
		Size: 13.4 MB (13396222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34391598837c178f8f62c96b6819cb67a03c43b31b88224ee805669a92f8ab9`  
		Last Modified: Sat, 09 Jun 2018 00:58:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f57a01a5db7f60c09cdc0357b44a27e1a87920c3b5766839d0ab01abfa83a17`  
		Last Modified: Sat, 09 Jun 2018 02:13:33 GMT  
		Size: 161.0 MB (161030393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d27c1f50cb00410f4c7a884257beec7771befbab38b90a1d5fa289db96f586b1`  
		Last Modified: Mon, 25 Jun 2018 23:35:27 GMT  
		Size: 225.7 MB (225705605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b822cfc6709ebdd658eb639499b2fbce8ac01a2d086690a07586cc72a9e4b923`  
		Last Modified: Mon, 25 Jun 2018 23:35:01 GMT  
		Size: 618.9 KB (618893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba331ae10c801077f7498610747e24af0c2a5dfa8d94d45358895d8b55f1f61`  
		Last Modified: Mon, 25 Jun 2018 23:35:01 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d822b06b9eca5ddd3a616bf3840b6297abdbfff7b5eb3cab45b161ee5a76d21`  
		Last Modified: Mon, 25 Jun 2018 23:35:00 GMT  
		Size: 2.4 KB (2431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868f0b4bec6d37f9d9f11853a43637473b47eb52b11cbdb80874f3647cf79a79`  
		Last Modified: Mon, 25 Jun 2018 23:35:01 GMT  
		Size: 3.6 KB (3625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b74a579dc3416d18904a6a6685840e70f563da5ef2dc03e048e83bc286601945`  
		Last Modified: Mon, 25 Jun 2018 23:35:01 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:latest`

```console
$ docker pull xwiki@sha256:e3af61e148323685ab3ffd0ef5fbbedf1e3518a0af9d0e9743eb447a5b4b7873
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:latest` - linux; amd64

```console
$ docker pull xwiki@sha256:e92a5ccf89b4441c0021551c9fa01430c551454e09a3d60316d9c0164b1cc2ae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.2 MB (596181615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f1d85088033b4448b8117296928f3e722dd6a16b26358ada61a46353189486d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 18:44:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:44:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 18:44:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 18:44:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 18:45:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 18:45:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 09 Jun 2018 00:41:36 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 09 Jun 2018 00:41:37 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Jun 2018 00:41:38 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 09 Jun 2018 00:41:38 GMT
WORKDIR /usr/local/tomcat
# Sat, 09 Jun 2018 00:41:38 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:38 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:39 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Sat, 09 Jun 2018 00:41:39 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Jun 2018 00:41:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Jun 2018 00:41:46 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 09 Jun 2018 00:44:00 GMT
ENV TOMCAT_MAJOR=8
# Sat, 09 Jun 2018 00:44:42 GMT
ENV TOMCAT_VERSION=8.5.31
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_SHA512=a961eedc4b0c0729f1fb96dafb75eb48e000502233b849f47c84a6355873bc96d131b112400587e96391262e0659df9b991b4e66a78fda74168f939c4ab5af88
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc
# Sat, 09 Jun 2018 00:45:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sat, 09 Jun 2018 00:45:10 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 09 Jun 2018 00:45:11 GMT
EXPOSE 8080/tcp
# Sat, 09 Jun 2018 00:45:11 GMT
CMD ["catalina.sh" "run"]
# Tue, 12 Jun 2018 02:50:33 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Tue, 12 Jun 2018 02:51:17 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Thu, 21 Jun 2018 19:24:57 GMT
ENV XWIKI_VERSION=10.5
# Thu, 21 Jun 2018 19:24:57 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.5
# Thu, 21 Jun 2018 19:24:57 GMT
ENV XWIKI_DOWNLOAD_SHA256=e49addc6ef33bfbb8ef6587418a5e122329fbb81bc3fd272b1bf0e4805071e96
# Thu, 21 Jun 2018 19:25:34 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Thu, 21 Jun 2018 19:25:35 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Thu, 21 Jun 2018 19:25:35 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Thu, 21 Jun 2018 19:25:36 GMT
COPY file:1d433c8d1a99df71172f6981bdb6f13380e4d62f4dab4246798f9a5203553ca6 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Thu, 21 Jun 2018 19:25:36 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Thu, 21 Jun 2018 19:25:37 GMT
COPY file:5f5be420889bdee3bc9520aa2af7c24fe855aaf5aafcc84e301666b86aa545eb in /usr/local/bin/docker-entrypoint.sh 
# Thu, 21 Jun 2018 19:25:37 GMT
VOLUME [/usr/local/xwiki]
# Thu, 21 Jun 2018 19:25:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Jun 2018 19:25:38 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c05365ee2a2245bb9f6786bc88aa12bf64da676a52668424437826d0f0cb92`  
		Last Modified: Tue, 05 Jun 2018 23:41:58 GMT  
		Size: 10.8 MB (10774184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231cb0e216d30ea48044d44d37fba016eb67eca9b19b29a741d95775359d3533`  
		Last Modified: Tue, 05 Jun 2018 23:41:55 GMT  
		Size: 4.3 MB (4335886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8912f9d0ce2e4accc0eb655a24f8b5def2ed4d1caf9d9dc897a19a4d32faf9f`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 853.1 KB (853110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bafe362f99b9e9353c71496d5dd82907355aafab384360400be4d2715816383`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b0652112a637ad5505eee5907b395211776ed3bfd3a74743c428605975be78`  
		Last Modified: Wed, 06 Jun 2018 19:05:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da23e1e20eae995da970ffc93d5bd64980d6f6061a0f33bc08cc9d65475c670a`  
		Last Modified: Wed, 06 Jun 2018 19:05:53 GMT  
		Size: 122.1 MB (122141480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d809d99b239e4876578052705afd7653615e34b5155028d2206e5ec95e30c96`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 272.2 KB (272162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c61bb6d245c4be309a36276e49a16e59434ea6e221569a8fcb46fab39417b7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50578eb745b98f4702d648af2762b551baf8fc7c43aeeda3f58c23ec422663d7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 528.7 KB (528726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85082b9ab294dc28d36cb6cac743034c45e58523ea4265f90503703bf9937e8c`  
		Last Modified: Sat, 09 Jun 2018 00:59:01 GMT  
		Size: 13.4 MB (13396222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34391598837c178f8f62c96b6819cb67a03c43b31b88224ee805669a92f8ab9`  
		Last Modified: Sat, 09 Jun 2018 00:58:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15067c794820233c5fe28ca7e25079e9015774ac4d8c4e18eeeca988b274f80`  
		Last Modified: Tue, 12 Jun 2018 02:58:47 GMT  
		Size: 161.4 MB (161447248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46269157a74b5dc955405f8e135dbf9a325485ff2e641e26027a7f201b3c14b0`  
		Last Modified: Thu, 21 Jun 2018 19:28:31 GMT  
		Size: 236.2 MB (236152143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1f7bb3891ff8fd7ca5a7e82b93d7ad00d33ea6507c8a5b0e04491e0dfc7a047`  
		Last Modified: Thu, 21 Jun 2018 19:28:11 GMT  
		Size: 952.1 KB (952114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab91d73eb5aa218be6b4e3d07ec41dc26481ac68e232f85579a1b056abc6435d`  
		Last Modified: Thu, 21 Jun 2018 19:28:10 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b0966b8caaff96a553e1296ec75ad947555b8c558994fa599a03a3b5001ffa`  
		Last Modified: Thu, 21 Jun 2018 19:28:11 GMT  
		Size: 2.3 KB (2314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0adb1c01baf76f238a4db25446d39f0b30f686bcac8dbcccd39190b99747eda5`  
		Last Modified: Thu, 21 Jun 2018 19:28:10 GMT  
		Size: 3.7 KB (3676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c3cf6213d56aacf7def059864663769f0970e18a4d45f035cdc31ae7c9d009`  
		Last Modified: Thu, 21 Jun 2018 19:28:10 GMT  
		Size: 2.4 KB (2378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:lts`

```console
$ docker pull xwiki@sha256:2eaac67a082e7e5665f456a0dd604fe88454d4e82de3f32967710b5290682f3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:lts` - linux; amd64

```console
$ docker pull xwiki@sha256:9fa619978ad9ed094dbca8c321675bcbeb5c976af2b6b36a3af68f0cca90a59c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **585.7 MB (585735267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd16e112a8c2008b8749e539c5bc8a1cba35fdd9d44efbc73630636a63398dc0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 18:44:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:44:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 18:44:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 18:44:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 18:45:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 18:45:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 09 Jun 2018 00:41:36 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 09 Jun 2018 00:41:37 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Jun 2018 00:41:38 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 09 Jun 2018 00:41:38 GMT
WORKDIR /usr/local/tomcat
# Sat, 09 Jun 2018 00:41:38 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:38 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:39 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Sat, 09 Jun 2018 00:41:39 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Jun 2018 00:41:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Jun 2018 00:41:46 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 09 Jun 2018 00:44:00 GMT
ENV TOMCAT_MAJOR=8
# Sat, 09 Jun 2018 00:44:42 GMT
ENV TOMCAT_VERSION=8.5.31
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_SHA512=a961eedc4b0c0729f1fb96dafb75eb48e000502233b849f47c84a6355873bc96d131b112400587e96391262e0659df9b991b4e66a78fda74168f939c4ab5af88
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc
# Sat, 09 Jun 2018 00:45:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sat, 09 Jun 2018 00:45:10 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 09 Jun 2018 00:45:11 GMT
EXPOSE 8080/tcp
# Sat, 09 Jun 2018 00:45:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 09 Jun 2018 01:18:05 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 09 Jun 2018 01:19:20 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 25 Jun 2018 23:29:35 GMT
ENV XWIKI_VERSION=9.11.6
# Mon, 25 Jun 2018 23:29:35 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.6
# Mon, 25 Jun 2018 23:29:35 GMT
ENV XWIKI_DOWNLOAD_SHA256=56e61b53d75bdac6dfb4460033746cbbadb8af4be5c6789921a7221c55e031a1
# Mon, 25 Jun 2018 23:30:15 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 25 Jun 2018 23:30:16 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 25 Jun 2018 23:30:17 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Mon, 25 Jun 2018 23:30:17 GMT
COPY file:1d433c8d1a99df71172f6981bdb6f13380e4d62f4dab4246798f9a5203553ca6 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 25 Jun 2018 23:30:18 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 25 Jun 2018 23:30:18 GMT
COPY file:86f4388d222242a09aa5d0770f4d43e6e97716e20d4bb52e229e6044ca70acaa in /usr/local/bin/docker-entrypoint.sh 
# Mon, 25 Jun 2018 23:30:18 GMT
VOLUME [/usr/local/xwiki]
# Mon, 25 Jun 2018 23:30:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 25 Jun 2018 23:30:19 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c05365ee2a2245bb9f6786bc88aa12bf64da676a52668424437826d0f0cb92`  
		Last Modified: Tue, 05 Jun 2018 23:41:58 GMT  
		Size: 10.8 MB (10774184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231cb0e216d30ea48044d44d37fba016eb67eca9b19b29a741d95775359d3533`  
		Last Modified: Tue, 05 Jun 2018 23:41:55 GMT  
		Size: 4.3 MB (4335886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8912f9d0ce2e4accc0eb655a24f8b5def2ed4d1caf9d9dc897a19a4d32faf9f`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 853.1 KB (853110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bafe362f99b9e9353c71496d5dd82907355aafab384360400be4d2715816383`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b0652112a637ad5505eee5907b395211776ed3bfd3a74743c428605975be78`  
		Last Modified: Wed, 06 Jun 2018 19:05:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da23e1e20eae995da970ffc93d5bd64980d6f6061a0f33bc08cc9d65475c670a`  
		Last Modified: Wed, 06 Jun 2018 19:05:53 GMT  
		Size: 122.1 MB (122141480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d809d99b239e4876578052705afd7653615e34b5155028d2206e5ec95e30c96`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 272.2 KB (272162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c61bb6d245c4be309a36276e49a16e59434ea6e221569a8fcb46fab39417b7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50578eb745b98f4702d648af2762b551baf8fc7c43aeeda3f58c23ec422663d7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 528.7 KB (528726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85082b9ab294dc28d36cb6cac743034c45e58523ea4265f90503703bf9937e8c`  
		Last Modified: Sat, 09 Jun 2018 00:59:01 GMT  
		Size: 13.4 MB (13396222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34391598837c178f8f62c96b6819cb67a03c43b31b88224ee805669a92f8ab9`  
		Last Modified: Sat, 09 Jun 2018 00:58:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c8bd2bfe1a43d3e4814a9157cecfaa87a4b2e9641e7dfc55e646215aaec7b7`  
		Last Modified: Sat, 09 Jun 2018 02:11:30 GMT  
		Size: 161.4 MB (161447376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3477caf24d0de6244512205dbe7c4876a95a9d88128ff9410324112324d22020`  
		Last Modified: Mon, 25 Jun 2018 23:33:44 GMT  
		Size: 225.7 MB (225705631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43b47dc2f45d37dcd530e2daa271f522f4dc437716eed4f4b9704a8076eb8a34`  
		Last Modified: Mon, 25 Jun 2018 23:33:19 GMT  
		Size: 952.1 KB (952115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f2e32e7c4a63f293d6ee225e390097806539e2ad185b869d0d3326425a2fac1`  
		Last Modified: Mon, 25 Jun 2018 23:33:18 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f1233c839def78f93fa0c9fb362dc4eb83e1a666ea0be3b681fa7208909ebfd`  
		Last Modified: Mon, 25 Jun 2018 23:33:18 GMT  
		Size: 2.3 KB (2319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b3ceba3f9af9567efab2a750c3cb476a3141f58e6103d54459a872fcb8181f`  
		Last Modified: Mon, 25 Jun 2018 23:33:18 GMT  
		Size: 3.6 KB (3623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f50ee103161387f60cf8400908834226247adc32018e2f792bc98561ad7cdcc`  
		Last Modified: Mon, 25 Jun 2018 23:33:18 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:lts-mysql`

```console
$ docker pull xwiki@sha256:2eaac67a082e7e5665f456a0dd604fe88454d4e82de3f32967710b5290682f3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:lts-mysql` - linux; amd64

```console
$ docker pull xwiki@sha256:9fa619978ad9ed094dbca8c321675bcbeb5c976af2b6b36a3af68f0cca90a59c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **585.7 MB (585735267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd16e112a8c2008b8749e539c5bc8a1cba35fdd9d44efbc73630636a63398dc0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 18:44:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:44:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 18:44:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 18:44:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 18:45:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 18:45:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 09 Jun 2018 00:41:36 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 09 Jun 2018 00:41:37 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Jun 2018 00:41:38 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 09 Jun 2018 00:41:38 GMT
WORKDIR /usr/local/tomcat
# Sat, 09 Jun 2018 00:41:38 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:38 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:39 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Sat, 09 Jun 2018 00:41:39 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Jun 2018 00:41:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Jun 2018 00:41:46 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 09 Jun 2018 00:44:00 GMT
ENV TOMCAT_MAJOR=8
# Sat, 09 Jun 2018 00:44:42 GMT
ENV TOMCAT_VERSION=8.5.31
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_SHA512=a961eedc4b0c0729f1fb96dafb75eb48e000502233b849f47c84a6355873bc96d131b112400587e96391262e0659df9b991b4e66a78fda74168f939c4ab5af88
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc
# Sat, 09 Jun 2018 00:45:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sat, 09 Jun 2018 00:45:10 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 09 Jun 2018 00:45:11 GMT
EXPOSE 8080/tcp
# Sat, 09 Jun 2018 00:45:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 09 Jun 2018 01:18:05 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 09 Jun 2018 01:19:20 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 25 Jun 2018 23:29:35 GMT
ENV XWIKI_VERSION=9.11.6
# Mon, 25 Jun 2018 23:29:35 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.6
# Mon, 25 Jun 2018 23:29:35 GMT
ENV XWIKI_DOWNLOAD_SHA256=56e61b53d75bdac6dfb4460033746cbbadb8af4be5c6789921a7221c55e031a1
# Mon, 25 Jun 2018 23:30:15 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 25 Jun 2018 23:30:16 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 25 Jun 2018 23:30:17 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Mon, 25 Jun 2018 23:30:17 GMT
COPY file:1d433c8d1a99df71172f6981bdb6f13380e4d62f4dab4246798f9a5203553ca6 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 25 Jun 2018 23:30:18 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 25 Jun 2018 23:30:18 GMT
COPY file:86f4388d222242a09aa5d0770f4d43e6e97716e20d4bb52e229e6044ca70acaa in /usr/local/bin/docker-entrypoint.sh 
# Mon, 25 Jun 2018 23:30:18 GMT
VOLUME [/usr/local/xwiki]
# Mon, 25 Jun 2018 23:30:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 25 Jun 2018 23:30:19 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c05365ee2a2245bb9f6786bc88aa12bf64da676a52668424437826d0f0cb92`  
		Last Modified: Tue, 05 Jun 2018 23:41:58 GMT  
		Size: 10.8 MB (10774184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231cb0e216d30ea48044d44d37fba016eb67eca9b19b29a741d95775359d3533`  
		Last Modified: Tue, 05 Jun 2018 23:41:55 GMT  
		Size: 4.3 MB (4335886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8912f9d0ce2e4accc0eb655a24f8b5def2ed4d1caf9d9dc897a19a4d32faf9f`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 853.1 KB (853110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bafe362f99b9e9353c71496d5dd82907355aafab384360400be4d2715816383`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b0652112a637ad5505eee5907b395211776ed3bfd3a74743c428605975be78`  
		Last Modified: Wed, 06 Jun 2018 19:05:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da23e1e20eae995da970ffc93d5bd64980d6f6061a0f33bc08cc9d65475c670a`  
		Last Modified: Wed, 06 Jun 2018 19:05:53 GMT  
		Size: 122.1 MB (122141480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d809d99b239e4876578052705afd7653615e34b5155028d2206e5ec95e30c96`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 272.2 KB (272162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c61bb6d245c4be309a36276e49a16e59434ea6e221569a8fcb46fab39417b7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50578eb745b98f4702d648af2762b551baf8fc7c43aeeda3f58c23ec422663d7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 528.7 KB (528726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85082b9ab294dc28d36cb6cac743034c45e58523ea4265f90503703bf9937e8c`  
		Last Modified: Sat, 09 Jun 2018 00:59:01 GMT  
		Size: 13.4 MB (13396222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34391598837c178f8f62c96b6819cb67a03c43b31b88224ee805669a92f8ab9`  
		Last Modified: Sat, 09 Jun 2018 00:58:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c8bd2bfe1a43d3e4814a9157cecfaa87a4b2e9641e7dfc55e646215aaec7b7`  
		Last Modified: Sat, 09 Jun 2018 02:11:30 GMT  
		Size: 161.4 MB (161447376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3477caf24d0de6244512205dbe7c4876a95a9d88128ff9410324112324d22020`  
		Last Modified: Mon, 25 Jun 2018 23:33:44 GMT  
		Size: 225.7 MB (225705631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43b47dc2f45d37dcd530e2daa271f522f4dc437716eed4f4b9704a8076eb8a34`  
		Last Modified: Mon, 25 Jun 2018 23:33:19 GMT  
		Size: 952.1 KB (952115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f2e32e7c4a63f293d6ee225e390097806539e2ad185b869d0d3326425a2fac1`  
		Last Modified: Mon, 25 Jun 2018 23:33:18 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f1233c839def78f93fa0c9fb362dc4eb83e1a666ea0be3b681fa7208909ebfd`  
		Last Modified: Mon, 25 Jun 2018 23:33:18 GMT  
		Size: 2.3 KB (2319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b3ceba3f9af9567efab2a750c3cb476a3141f58e6103d54459a872fcb8181f`  
		Last Modified: Mon, 25 Jun 2018 23:33:18 GMT  
		Size: 3.6 KB (3623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f50ee103161387f60cf8400908834226247adc32018e2f792bc98561ad7cdcc`  
		Last Modified: Mon, 25 Jun 2018 23:33:18 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:lts-mysql-tomcat`

```console
$ docker pull xwiki@sha256:2eaac67a082e7e5665f456a0dd604fe88454d4e82de3f32967710b5290682f3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:lts-mysql-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:9fa619978ad9ed094dbca8c321675bcbeb5c976af2b6b36a3af68f0cca90a59c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **585.7 MB (585735267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd16e112a8c2008b8749e539c5bc8a1cba35fdd9d44efbc73630636a63398dc0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 18:44:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:44:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 18:44:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 18:44:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 18:45:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 18:45:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 09 Jun 2018 00:41:36 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 09 Jun 2018 00:41:37 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Jun 2018 00:41:38 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 09 Jun 2018 00:41:38 GMT
WORKDIR /usr/local/tomcat
# Sat, 09 Jun 2018 00:41:38 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:38 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:39 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Sat, 09 Jun 2018 00:41:39 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Jun 2018 00:41:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Jun 2018 00:41:46 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 09 Jun 2018 00:44:00 GMT
ENV TOMCAT_MAJOR=8
# Sat, 09 Jun 2018 00:44:42 GMT
ENV TOMCAT_VERSION=8.5.31
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_SHA512=a961eedc4b0c0729f1fb96dafb75eb48e000502233b849f47c84a6355873bc96d131b112400587e96391262e0659df9b991b4e66a78fda74168f939c4ab5af88
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc
# Sat, 09 Jun 2018 00:45:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sat, 09 Jun 2018 00:45:10 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 09 Jun 2018 00:45:11 GMT
EXPOSE 8080/tcp
# Sat, 09 Jun 2018 00:45:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 09 Jun 2018 01:18:05 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 09 Jun 2018 01:19:20 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 25 Jun 2018 23:29:35 GMT
ENV XWIKI_VERSION=9.11.6
# Mon, 25 Jun 2018 23:29:35 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.6
# Mon, 25 Jun 2018 23:29:35 GMT
ENV XWIKI_DOWNLOAD_SHA256=56e61b53d75bdac6dfb4460033746cbbadb8af4be5c6789921a7221c55e031a1
# Mon, 25 Jun 2018 23:30:15 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 25 Jun 2018 23:30:16 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 25 Jun 2018 23:30:17 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Mon, 25 Jun 2018 23:30:17 GMT
COPY file:1d433c8d1a99df71172f6981bdb6f13380e4d62f4dab4246798f9a5203553ca6 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 25 Jun 2018 23:30:18 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 25 Jun 2018 23:30:18 GMT
COPY file:86f4388d222242a09aa5d0770f4d43e6e97716e20d4bb52e229e6044ca70acaa in /usr/local/bin/docker-entrypoint.sh 
# Mon, 25 Jun 2018 23:30:18 GMT
VOLUME [/usr/local/xwiki]
# Mon, 25 Jun 2018 23:30:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 25 Jun 2018 23:30:19 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c05365ee2a2245bb9f6786bc88aa12bf64da676a52668424437826d0f0cb92`  
		Last Modified: Tue, 05 Jun 2018 23:41:58 GMT  
		Size: 10.8 MB (10774184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231cb0e216d30ea48044d44d37fba016eb67eca9b19b29a741d95775359d3533`  
		Last Modified: Tue, 05 Jun 2018 23:41:55 GMT  
		Size: 4.3 MB (4335886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8912f9d0ce2e4accc0eb655a24f8b5def2ed4d1caf9d9dc897a19a4d32faf9f`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 853.1 KB (853110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bafe362f99b9e9353c71496d5dd82907355aafab384360400be4d2715816383`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b0652112a637ad5505eee5907b395211776ed3bfd3a74743c428605975be78`  
		Last Modified: Wed, 06 Jun 2018 19:05:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da23e1e20eae995da970ffc93d5bd64980d6f6061a0f33bc08cc9d65475c670a`  
		Last Modified: Wed, 06 Jun 2018 19:05:53 GMT  
		Size: 122.1 MB (122141480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d809d99b239e4876578052705afd7653615e34b5155028d2206e5ec95e30c96`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 272.2 KB (272162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c61bb6d245c4be309a36276e49a16e59434ea6e221569a8fcb46fab39417b7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50578eb745b98f4702d648af2762b551baf8fc7c43aeeda3f58c23ec422663d7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 528.7 KB (528726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85082b9ab294dc28d36cb6cac743034c45e58523ea4265f90503703bf9937e8c`  
		Last Modified: Sat, 09 Jun 2018 00:59:01 GMT  
		Size: 13.4 MB (13396222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34391598837c178f8f62c96b6819cb67a03c43b31b88224ee805669a92f8ab9`  
		Last Modified: Sat, 09 Jun 2018 00:58:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c8bd2bfe1a43d3e4814a9157cecfaa87a4b2e9641e7dfc55e646215aaec7b7`  
		Last Modified: Sat, 09 Jun 2018 02:11:30 GMT  
		Size: 161.4 MB (161447376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3477caf24d0de6244512205dbe7c4876a95a9d88128ff9410324112324d22020`  
		Last Modified: Mon, 25 Jun 2018 23:33:44 GMT  
		Size: 225.7 MB (225705631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43b47dc2f45d37dcd530e2daa271f522f4dc437716eed4f4b9704a8076eb8a34`  
		Last Modified: Mon, 25 Jun 2018 23:33:19 GMT  
		Size: 952.1 KB (952115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f2e32e7c4a63f293d6ee225e390097806539e2ad185b869d0d3326425a2fac1`  
		Last Modified: Mon, 25 Jun 2018 23:33:18 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f1233c839def78f93fa0c9fb362dc4eb83e1a666ea0be3b681fa7208909ebfd`  
		Last Modified: Mon, 25 Jun 2018 23:33:18 GMT  
		Size: 2.3 KB (2319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b3ceba3f9af9567efab2a750c3cb476a3141f58e6103d54459a872fcb8181f`  
		Last Modified: Mon, 25 Jun 2018 23:33:18 GMT  
		Size: 3.6 KB (3623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f50ee103161387f60cf8400908834226247adc32018e2f792bc98561ad7cdcc`  
		Last Modified: Mon, 25 Jun 2018 23:33:18 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:lts-postgres`

```console
$ docker pull xwiki@sha256:c2f532efcc2b0930ef24af6ed0a8d8f1a049e7033656b17cb69e6868a8627a10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:lts-postgres` - linux; amd64

```console
$ docker pull xwiki@sha256:b01a06a63f30f7331cefcd760e7cc45ff3947b44fb4066bbca83e64b6d537ca2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **585.0 MB (584985150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caa370789cc3704fac00827725ea3299b82e41ab50e4eb0c7bdbec4aaf5c85bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 18:44:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:44:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 18:44:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 18:44:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 18:45:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 18:45:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 09 Jun 2018 00:41:36 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 09 Jun 2018 00:41:37 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Jun 2018 00:41:38 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 09 Jun 2018 00:41:38 GMT
WORKDIR /usr/local/tomcat
# Sat, 09 Jun 2018 00:41:38 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:38 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:39 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Sat, 09 Jun 2018 00:41:39 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Jun 2018 00:41:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Jun 2018 00:41:46 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 09 Jun 2018 00:44:00 GMT
ENV TOMCAT_MAJOR=8
# Sat, 09 Jun 2018 00:44:42 GMT
ENV TOMCAT_VERSION=8.5.31
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_SHA512=a961eedc4b0c0729f1fb96dafb75eb48e000502233b849f47c84a6355873bc96d131b112400587e96391262e0659df9b991b4e66a78fda74168f939c4ab5af88
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc
# Sat, 09 Jun 2018 00:45:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sat, 09 Jun 2018 00:45:10 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 09 Jun 2018 00:45:11 GMT
EXPOSE 8080/tcp
# Sat, 09 Jun 2018 00:45:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 09 Jun 2018 01:18:05 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 09 Jun 2018 01:33:20 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 25 Jun 2018 23:30:34 GMT
ENV XWIKI_VERSION=9.11.6
# Mon, 25 Jun 2018 23:30:34 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.6
# Mon, 25 Jun 2018 23:30:34 GMT
ENV XWIKI_DOWNLOAD_SHA256=56e61b53d75bdac6dfb4460033746cbbadb8af4be5c6789921a7221c55e031a1
# Mon, 25 Jun 2018 23:31:14 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 25 Jun 2018 23:31:15 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 25 Jun 2018 23:31:16 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Mon, 25 Jun 2018 23:31:16 GMT
COPY file:7a0ce36c7348308f7754e7d70a4cad74b1c6a11e342ab82fe6e57f1bef38e533 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 25 Jun 2018 23:31:17 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 25 Jun 2018 23:31:17 GMT
COPY file:86f4388d222242a09aa5d0770f4d43e6e97716e20d4bb52e229e6044ca70acaa in /usr/local/bin/docker-entrypoint.sh 
# Mon, 25 Jun 2018 23:31:17 GMT
VOLUME [/usr/local/xwiki]
# Mon, 25 Jun 2018 23:31:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 25 Jun 2018 23:31:18 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c05365ee2a2245bb9f6786bc88aa12bf64da676a52668424437826d0f0cb92`  
		Last Modified: Tue, 05 Jun 2018 23:41:58 GMT  
		Size: 10.8 MB (10774184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231cb0e216d30ea48044d44d37fba016eb67eca9b19b29a741d95775359d3533`  
		Last Modified: Tue, 05 Jun 2018 23:41:55 GMT  
		Size: 4.3 MB (4335886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8912f9d0ce2e4accc0eb655a24f8b5def2ed4d1caf9d9dc897a19a4d32faf9f`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 853.1 KB (853110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bafe362f99b9e9353c71496d5dd82907355aafab384360400be4d2715816383`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b0652112a637ad5505eee5907b395211776ed3bfd3a74743c428605975be78`  
		Last Modified: Wed, 06 Jun 2018 19:05:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da23e1e20eae995da970ffc93d5bd64980d6f6061a0f33bc08cc9d65475c670a`  
		Last Modified: Wed, 06 Jun 2018 19:05:53 GMT  
		Size: 122.1 MB (122141480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d809d99b239e4876578052705afd7653615e34b5155028d2206e5ec95e30c96`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 272.2 KB (272162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c61bb6d245c4be309a36276e49a16e59434ea6e221569a8fcb46fab39417b7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50578eb745b98f4702d648af2762b551baf8fc7c43aeeda3f58c23ec422663d7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 528.7 KB (528726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85082b9ab294dc28d36cb6cac743034c45e58523ea4265f90503703bf9937e8c`  
		Last Modified: Sat, 09 Jun 2018 00:59:01 GMT  
		Size: 13.4 MB (13396222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34391598837c178f8f62c96b6819cb67a03c43b31b88224ee805669a92f8ab9`  
		Last Modified: Sat, 09 Jun 2018 00:58:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f57a01a5db7f60c09cdc0357b44a27e1a87920c3b5766839d0ab01abfa83a17`  
		Last Modified: Sat, 09 Jun 2018 02:13:33 GMT  
		Size: 161.0 MB (161030393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d27c1f50cb00410f4c7a884257beec7771befbab38b90a1d5fa289db96f586b1`  
		Last Modified: Mon, 25 Jun 2018 23:35:27 GMT  
		Size: 225.7 MB (225705605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b822cfc6709ebdd658eb639499b2fbce8ac01a2d086690a07586cc72a9e4b923`  
		Last Modified: Mon, 25 Jun 2018 23:35:01 GMT  
		Size: 618.9 KB (618893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba331ae10c801077f7498610747e24af0c2a5dfa8d94d45358895d8b55f1f61`  
		Last Modified: Mon, 25 Jun 2018 23:35:01 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d822b06b9eca5ddd3a616bf3840b6297abdbfff7b5eb3cab45b161ee5a76d21`  
		Last Modified: Mon, 25 Jun 2018 23:35:00 GMT  
		Size: 2.4 KB (2431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868f0b4bec6d37f9d9f11853a43637473b47eb52b11cbdb80874f3647cf79a79`  
		Last Modified: Mon, 25 Jun 2018 23:35:01 GMT  
		Size: 3.6 KB (3625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b74a579dc3416d18904a6a6685840e70f563da5ef2dc03e048e83bc286601945`  
		Last Modified: Mon, 25 Jun 2018 23:35:01 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:lts-postgres-tomcat`

```console
$ docker pull xwiki@sha256:c2f532efcc2b0930ef24af6ed0a8d8f1a049e7033656b17cb69e6868a8627a10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:lts-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:b01a06a63f30f7331cefcd760e7cc45ff3947b44fb4066bbca83e64b6d537ca2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **585.0 MB (584985150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caa370789cc3704fac00827725ea3299b82e41ab50e4eb0c7bdbec4aaf5c85bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 18:44:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:44:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 18:44:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 18:44:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 18:45:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 18:45:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 09 Jun 2018 00:41:36 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 09 Jun 2018 00:41:37 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Jun 2018 00:41:38 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 09 Jun 2018 00:41:38 GMT
WORKDIR /usr/local/tomcat
# Sat, 09 Jun 2018 00:41:38 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:38 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:39 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Sat, 09 Jun 2018 00:41:39 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Jun 2018 00:41:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Jun 2018 00:41:46 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 09 Jun 2018 00:44:00 GMT
ENV TOMCAT_MAJOR=8
# Sat, 09 Jun 2018 00:44:42 GMT
ENV TOMCAT_VERSION=8.5.31
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_SHA512=a961eedc4b0c0729f1fb96dafb75eb48e000502233b849f47c84a6355873bc96d131b112400587e96391262e0659df9b991b4e66a78fda74168f939c4ab5af88
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc
# Sat, 09 Jun 2018 00:45:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sat, 09 Jun 2018 00:45:10 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 09 Jun 2018 00:45:11 GMT
EXPOSE 8080/tcp
# Sat, 09 Jun 2018 00:45:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 09 Jun 2018 01:18:05 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 09 Jun 2018 01:33:20 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 25 Jun 2018 23:30:34 GMT
ENV XWIKI_VERSION=9.11.6
# Mon, 25 Jun 2018 23:30:34 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.6
# Mon, 25 Jun 2018 23:30:34 GMT
ENV XWIKI_DOWNLOAD_SHA256=56e61b53d75bdac6dfb4460033746cbbadb8af4be5c6789921a7221c55e031a1
# Mon, 25 Jun 2018 23:31:14 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 25 Jun 2018 23:31:15 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 25 Jun 2018 23:31:16 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Mon, 25 Jun 2018 23:31:16 GMT
COPY file:7a0ce36c7348308f7754e7d70a4cad74b1c6a11e342ab82fe6e57f1bef38e533 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 25 Jun 2018 23:31:17 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 25 Jun 2018 23:31:17 GMT
COPY file:86f4388d222242a09aa5d0770f4d43e6e97716e20d4bb52e229e6044ca70acaa in /usr/local/bin/docker-entrypoint.sh 
# Mon, 25 Jun 2018 23:31:17 GMT
VOLUME [/usr/local/xwiki]
# Mon, 25 Jun 2018 23:31:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 25 Jun 2018 23:31:18 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c05365ee2a2245bb9f6786bc88aa12bf64da676a52668424437826d0f0cb92`  
		Last Modified: Tue, 05 Jun 2018 23:41:58 GMT  
		Size: 10.8 MB (10774184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231cb0e216d30ea48044d44d37fba016eb67eca9b19b29a741d95775359d3533`  
		Last Modified: Tue, 05 Jun 2018 23:41:55 GMT  
		Size: 4.3 MB (4335886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8912f9d0ce2e4accc0eb655a24f8b5def2ed4d1caf9d9dc897a19a4d32faf9f`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 853.1 KB (853110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bafe362f99b9e9353c71496d5dd82907355aafab384360400be4d2715816383`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b0652112a637ad5505eee5907b395211776ed3bfd3a74743c428605975be78`  
		Last Modified: Wed, 06 Jun 2018 19:05:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da23e1e20eae995da970ffc93d5bd64980d6f6061a0f33bc08cc9d65475c670a`  
		Last Modified: Wed, 06 Jun 2018 19:05:53 GMT  
		Size: 122.1 MB (122141480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d809d99b239e4876578052705afd7653615e34b5155028d2206e5ec95e30c96`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 272.2 KB (272162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c61bb6d245c4be309a36276e49a16e59434ea6e221569a8fcb46fab39417b7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50578eb745b98f4702d648af2762b551baf8fc7c43aeeda3f58c23ec422663d7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 528.7 KB (528726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85082b9ab294dc28d36cb6cac743034c45e58523ea4265f90503703bf9937e8c`  
		Last Modified: Sat, 09 Jun 2018 00:59:01 GMT  
		Size: 13.4 MB (13396222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34391598837c178f8f62c96b6819cb67a03c43b31b88224ee805669a92f8ab9`  
		Last Modified: Sat, 09 Jun 2018 00:58:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f57a01a5db7f60c09cdc0357b44a27e1a87920c3b5766839d0ab01abfa83a17`  
		Last Modified: Sat, 09 Jun 2018 02:13:33 GMT  
		Size: 161.0 MB (161030393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d27c1f50cb00410f4c7a884257beec7771befbab38b90a1d5fa289db96f586b1`  
		Last Modified: Mon, 25 Jun 2018 23:35:27 GMT  
		Size: 225.7 MB (225705605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b822cfc6709ebdd658eb639499b2fbce8ac01a2d086690a07586cc72a9e4b923`  
		Last Modified: Mon, 25 Jun 2018 23:35:01 GMT  
		Size: 618.9 KB (618893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba331ae10c801077f7498610747e24af0c2a5dfa8d94d45358895d8b55f1f61`  
		Last Modified: Mon, 25 Jun 2018 23:35:01 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d822b06b9eca5ddd3a616bf3840b6297abdbfff7b5eb3cab45b161ee5a76d21`  
		Last Modified: Mon, 25 Jun 2018 23:35:00 GMT  
		Size: 2.4 KB (2431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868f0b4bec6d37f9d9f11853a43637473b47eb52b11cbdb80874f3647cf79a79`  
		Last Modified: Mon, 25 Jun 2018 23:35:01 GMT  
		Size: 3.6 KB (3625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b74a579dc3416d18904a6a6685840e70f563da5ef2dc03e048e83bc286601945`  
		Last Modified: Mon, 25 Jun 2018 23:35:01 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:mysql-tomcat`

```console
$ docker pull xwiki@sha256:2eaac67a082e7e5665f456a0dd604fe88454d4e82de3f32967710b5290682f3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:mysql-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:9fa619978ad9ed094dbca8c321675bcbeb5c976af2b6b36a3af68f0cca90a59c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **585.7 MB (585735267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd16e112a8c2008b8749e539c5bc8a1cba35fdd9d44efbc73630636a63398dc0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 18:44:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:44:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 18:44:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 18:44:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 18:45:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 18:45:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 09 Jun 2018 00:41:36 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 09 Jun 2018 00:41:37 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Jun 2018 00:41:38 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 09 Jun 2018 00:41:38 GMT
WORKDIR /usr/local/tomcat
# Sat, 09 Jun 2018 00:41:38 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:38 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:39 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Sat, 09 Jun 2018 00:41:39 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Jun 2018 00:41:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Jun 2018 00:41:46 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 09 Jun 2018 00:44:00 GMT
ENV TOMCAT_MAJOR=8
# Sat, 09 Jun 2018 00:44:42 GMT
ENV TOMCAT_VERSION=8.5.31
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_SHA512=a961eedc4b0c0729f1fb96dafb75eb48e000502233b849f47c84a6355873bc96d131b112400587e96391262e0659df9b991b4e66a78fda74168f939c4ab5af88
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc
# Sat, 09 Jun 2018 00:45:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sat, 09 Jun 2018 00:45:10 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 09 Jun 2018 00:45:11 GMT
EXPOSE 8080/tcp
# Sat, 09 Jun 2018 00:45:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 09 Jun 2018 01:18:05 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 09 Jun 2018 01:19:20 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 25 Jun 2018 23:29:35 GMT
ENV XWIKI_VERSION=9.11.6
# Mon, 25 Jun 2018 23:29:35 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.6
# Mon, 25 Jun 2018 23:29:35 GMT
ENV XWIKI_DOWNLOAD_SHA256=56e61b53d75bdac6dfb4460033746cbbadb8af4be5c6789921a7221c55e031a1
# Mon, 25 Jun 2018 23:30:15 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 25 Jun 2018 23:30:16 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 25 Jun 2018 23:30:17 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Mon, 25 Jun 2018 23:30:17 GMT
COPY file:1d433c8d1a99df71172f6981bdb6f13380e4d62f4dab4246798f9a5203553ca6 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 25 Jun 2018 23:30:18 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 25 Jun 2018 23:30:18 GMT
COPY file:86f4388d222242a09aa5d0770f4d43e6e97716e20d4bb52e229e6044ca70acaa in /usr/local/bin/docker-entrypoint.sh 
# Mon, 25 Jun 2018 23:30:18 GMT
VOLUME [/usr/local/xwiki]
# Mon, 25 Jun 2018 23:30:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 25 Jun 2018 23:30:19 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c05365ee2a2245bb9f6786bc88aa12bf64da676a52668424437826d0f0cb92`  
		Last Modified: Tue, 05 Jun 2018 23:41:58 GMT  
		Size: 10.8 MB (10774184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231cb0e216d30ea48044d44d37fba016eb67eca9b19b29a741d95775359d3533`  
		Last Modified: Tue, 05 Jun 2018 23:41:55 GMT  
		Size: 4.3 MB (4335886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8912f9d0ce2e4accc0eb655a24f8b5def2ed4d1caf9d9dc897a19a4d32faf9f`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 853.1 KB (853110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bafe362f99b9e9353c71496d5dd82907355aafab384360400be4d2715816383`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b0652112a637ad5505eee5907b395211776ed3bfd3a74743c428605975be78`  
		Last Modified: Wed, 06 Jun 2018 19:05:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da23e1e20eae995da970ffc93d5bd64980d6f6061a0f33bc08cc9d65475c670a`  
		Last Modified: Wed, 06 Jun 2018 19:05:53 GMT  
		Size: 122.1 MB (122141480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d809d99b239e4876578052705afd7653615e34b5155028d2206e5ec95e30c96`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 272.2 KB (272162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c61bb6d245c4be309a36276e49a16e59434ea6e221569a8fcb46fab39417b7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50578eb745b98f4702d648af2762b551baf8fc7c43aeeda3f58c23ec422663d7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 528.7 KB (528726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85082b9ab294dc28d36cb6cac743034c45e58523ea4265f90503703bf9937e8c`  
		Last Modified: Sat, 09 Jun 2018 00:59:01 GMT  
		Size: 13.4 MB (13396222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34391598837c178f8f62c96b6819cb67a03c43b31b88224ee805669a92f8ab9`  
		Last Modified: Sat, 09 Jun 2018 00:58:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c8bd2bfe1a43d3e4814a9157cecfaa87a4b2e9641e7dfc55e646215aaec7b7`  
		Last Modified: Sat, 09 Jun 2018 02:11:30 GMT  
		Size: 161.4 MB (161447376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3477caf24d0de6244512205dbe7c4876a95a9d88128ff9410324112324d22020`  
		Last Modified: Mon, 25 Jun 2018 23:33:44 GMT  
		Size: 225.7 MB (225705631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43b47dc2f45d37dcd530e2daa271f522f4dc437716eed4f4b9704a8076eb8a34`  
		Last Modified: Mon, 25 Jun 2018 23:33:19 GMT  
		Size: 952.1 KB (952115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f2e32e7c4a63f293d6ee225e390097806539e2ad185b869d0d3326425a2fac1`  
		Last Modified: Mon, 25 Jun 2018 23:33:18 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f1233c839def78f93fa0c9fb362dc4eb83e1a666ea0be3b681fa7208909ebfd`  
		Last Modified: Mon, 25 Jun 2018 23:33:18 GMT  
		Size: 2.3 KB (2319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b3ceba3f9af9567efab2a750c3cb476a3141f58e6103d54459a872fcb8181f`  
		Last Modified: Mon, 25 Jun 2018 23:33:18 GMT  
		Size: 3.6 KB (3623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f50ee103161387f60cf8400908834226247adc32018e2f792bc98561ad7cdcc`  
		Last Modified: Mon, 25 Jun 2018 23:33:18 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:postgres-tomcat`

```console
$ docker pull xwiki@sha256:c2f532efcc2b0930ef24af6ed0a8d8f1a049e7033656b17cb69e6868a8627a10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:b01a06a63f30f7331cefcd760e7cc45ff3947b44fb4066bbca83e64b6d537ca2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **585.0 MB (584985150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caa370789cc3704fac00827725ea3299b82e41ab50e4eb0c7bdbec4aaf5c85bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 18:44:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:44:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 18:44:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 18:44:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 18:45:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 18:45:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 09 Jun 2018 00:41:36 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 09 Jun 2018 00:41:37 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Jun 2018 00:41:38 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 09 Jun 2018 00:41:38 GMT
WORKDIR /usr/local/tomcat
# Sat, 09 Jun 2018 00:41:38 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:38 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:39 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Sat, 09 Jun 2018 00:41:39 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Jun 2018 00:41:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Jun 2018 00:41:46 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 09 Jun 2018 00:44:00 GMT
ENV TOMCAT_MAJOR=8
# Sat, 09 Jun 2018 00:44:42 GMT
ENV TOMCAT_VERSION=8.5.31
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_SHA512=a961eedc4b0c0729f1fb96dafb75eb48e000502233b849f47c84a6355873bc96d131b112400587e96391262e0659df9b991b4e66a78fda74168f939c4ab5af88
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc
# Sat, 09 Jun 2018 00:45:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sat, 09 Jun 2018 00:45:10 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 09 Jun 2018 00:45:11 GMT
EXPOSE 8080/tcp
# Sat, 09 Jun 2018 00:45:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 09 Jun 2018 01:18:05 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 09 Jun 2018 01:33:20 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 25 Jun 2018 23:30:34 GMT
ENV XWIKI_VERSION=9.11.6
# Mon, 25 Jun 2018 23:30:34 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.6
# Mon, 25 Jun 2018 23:30:34 GMT
ENV XWIKI_DOWNLOAD_SHA256=56e61b53d75bdac6dfb4460033746cbbadb8af4be5c6789921a7221c55e031a1
# Mon, 25 Jun 2018 23:31:14 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 25 Jun 2018 23:31:15 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 25 Jun 2018 23:31:16 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Mon, 25 Jun 2018 23:31:16 GMT
COPY file:7a0ce36c7348308f7754e7d70a4cad74b1c6a11e342ab82fe6e57f1bef38e533 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 25 Jun 2018 23:31:17 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 25 Jun 2018 23:31:17 GMT
COPY file:86f4388d222242a09aa5d0770f4d43e6e97716e20d4bb52e229e6044ca70acaa in /usr/local/bin/docker-entrypoint.sh 
# Mon, 25 Jun 2018 23:31:17 GMT
VOLUME [/usr/local/xwiki]
# Mon, 25 Jun 2018 23:31:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 25 Jun 2018 23:31:18 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c05365ee2a2245bb9f6786bc88aa12bf64da676a52668424437826d0f0cb92`  
		Last Modified: Tue, 05 Jun 2018 23:41:58 GMT  
		Size: 10.8 MB (10774184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231cb0e216d30ea48044d44d37fba016eb67eca9b19b29a741d95775359d3533`  
		Last Modified: Tue, 05 Jun 2018 23:41:55 GMT  
		Size: 4.3 MB (4335886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8912f9d0ce2e4accc0eb655a24f8b5def2ed4d1caf9d9dc897a19a4d32faf9f`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 853.1 KB (853110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bafe362f99b9e9353c71496d5dd82907355aafab384360400be4d2715816383`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b0652112a637ad5505eee5907b395211776ed3bfd3a74743c428605975be78`  
		Last Modified: Wed, 06 Jun 2018 19:05:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da23e1e20eae995da970ffc93d5bd64980d6f6061a0f33bc08cc9d65475c670a`  
		Last Modified: Wed, 06 Jun 2018 19:05:53 GMT  
		Size: 122.1 MB (122141480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d809d99b239e4876578052705afd7653615e34b5155028d2206e5ec95e30c96`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 272.2 KB (272162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c61bb6d245c4be309a36276e49a16e59434ea6e221569a8fcb46fab39417b7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50578eb745b98f4702d648af2762b551baf8fc7c43aeeda3f58c23ec422663d7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 528.7 KB (528726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85082b9ab294dc28d36cb6cac743034c45e58523ea4265f90503703bf9937e8c`  
		Last Modified: Sat, 09 Jun 2018 00:59:01 GMT  
		Size: 13.4 MB (13396222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34391598837c178f8f62c96b6819cb67a03c43b31b88224ee805669a92f8ab9`  
		Last Modified: Sat, 09 Jun 2018 00:58:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f57a01a5db7f60c09cdc0357b44a27e1a87920c3b5766839d0ab01abfa83a17`  
		Last Modified: Sat, 09 Jun 2018 02:13:33 GMT  
		Size: 161.0 MB (161030393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d27c1f50cb00410f4c7a884257beec7771befbab38b90a1d5fa289db96f586b1`  
		Last Modified: Mon, 25 Jun 2018 23:35:27 GMT  
		Size: 225.7 MB (225705605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b822cfc6709ebdd658eb639499b2fbce8ac01a2d086690a07586cc72a9e4b923`  
		Last Modified: Mon, 25 Jun 2018 23:35:01 GMT  
		Size: 618.9 KB (618893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba331ae10c801077f7498610747e24af0c2a5dfa8d94d45358895d8b55f1f61`  
		Last Modified: Mon, 25 Jun 2018 23:35:01 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d822b06b9eca5ddd3a616bf3840b6297abdbfff7b5eb3cab45b161ee5a76d21`  
		Last Modified: Mon, 25 Jun 2018 23:35:00 GMT  
		Size: 2.4 KB (2431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868f0b4bec6d37f9d9f11853a43637473b47eb52b11cbdb80874f3647cf79a79`  
		Last Modified: Mon, 25 Jun 2018 23:35:01 GMT  
		Size: 3.6 KB (3625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b74a579dc3416d18904a6a6685840e70f563da5ef2dc03e048e83bc286601945`  
		Last Modified: Mon, 25 Jun 2018 23:35:01 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:stable`

```console
$ docker pull xwiki@sha256:e75147e04ed308e579964b7a97ecd530918b82178c59b903abcb92d4e17ca1b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:stable` - linux; amd64

```console
$ docker pull xwiki@sha256:1b5a7114ed176884bca93f0c40c02a5b5efe7db18fc4ae47eeb0c305e30360bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.2 MB (596181745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa9be1ef05ae35d3a1702a0e2fc33f66deb9e66b25404f80e75dafad651f50b6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 18:44:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:44:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 18:44:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 18:44:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 18:45:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 18:45:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 09 Jun 2018 00:41:36 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 09 Jun 2018 00:41:37 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Jun 2018 00:41:38 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 09 Jun 2018 00:41:38 GMT
WORKDIR /usr/local/tomcat
# Sat, 09 Jun 2018 00:41:38 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:38 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:39 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Sat, 09 Jun 2018 00:41:39 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Jun 2018 00:41:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Jun 2018 00:41:46 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 09 Jun 2018 00:44:00 GMT
ENV TOMCAT_MAJOR=8
# Sat, 09 Jun 2018 00:44:42 GMT
ENV TOMCAT_VERSION=8.5.31
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_SHA512=a961eedc4b0c0729f1fb96dafb75eb48e000502233b849f47c84a6355873bc96d131b112400587e96391262e0659df9b991b4e66a78fda74168f939c4ab5af88
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc
# Sat, 09 Jun 2018 00:45:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sat, 09 Jun 2018 00:45:10 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 09 Jun 2018 00:45:11 GMT
EXPOSE 8080/tcp
# Sat, 09 Jun 2018 00:45:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 09 Jun 2018 01:18:05 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 09 Jun 2018 01:19:20 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 25 Jun 2018 23:31:30 GMT
ENV XWIKI_VERSION=10.5
# Mon, 25 Jun 2018 23:31:30 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.5
# Mon, 25 Jun 2018 23:31:30 GMT
ENV XWIKI_DOWNLOAD_SHA256=e49addc6ef33bfbb8ef6587418a5e122329fbb81bc3fd272b1bf0e4805071e96
# Mon, 25 Jun 2018 23:32:06 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 25 Jun 2018 23:32:07 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 25 Jun 2018 23:32:08 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Mon, 25 Jun 2018 23:32:08 GMT
COPY file:1d433c8d1a99df71172f6981bdb6f13380e4d62f4dab4246798f9a5203553ca6 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 25 Jun 2018 23:32:09 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 25 Jun 2018 23:32:09 GMT
COPY file:5f5be420889bdee3bc9520aa2af7c24fe855aaf5aafcc84e301666b86aa545eb in /usr/local/bin/docker-entrypoint.sh 
# Mon, 25 Jun 2018 23:32:10 GMT
VOLUME [/usr/local/xwiki]
# Mon, 25 Jun 2018 23:32:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 25 Jun 2018 23:32:10 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c05365ee2a2245bb9f6786bc88aa12bf64da676a52668424437826d0f0cb92`  
		Last Modified: Tue, 05 Jun 2018 23:41:58 GMT  
		Size: 10.8 MB (10774184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231cb0e216d30ea48044d44d37fba016eb67eca9b19b29a741d95775359d3533`  
		Last Modified: Tue, 05 Jun 2018 23:41:55 GMT  
		Size: 4.3 MB (4335886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8912f9d0ce2e4accc0eb655a24f8b5def2ed4d1caf9d9dc897a19a4d32faf9f`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 853.1 KB (853110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bafe362f99b9e9353c71496d5dd82907355aafab384360400be4d2715816383`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b0652112a637ad5505eee5907b395211776ed3bfd3a74743c428605975be78`  
		Last Modified: Wed, 06 Jun 2018 19:05:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da23e1e20eae995da970ffc93d5bd64980d6f6061a0f33bc08cc9d65475c670a`  
		Last Modified: Wed, 06 Jun 2018 19:05:53 GMT  
		Size: 122.1 MB (122141480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d809d99b239e4876578052705afd7653615e34b5155028d2206e5ec95e30c96`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 272.2 KB (272162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c61bb6d245c4be309a36276e49a16e59434ea6e221569a8fcb46fab39417b7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50578eb745b98f4702d648af2762b551baf8fc7c43aeeda3f58c23ec422663d7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 528.7 KB (528726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85082b9ab294dc28d36cb6cac743034c45e58523ea4265f90503703bf9937e8c`  
		Last Modified: Sat, 09 Jun 2018 00:59:01 GMT  
		Size: 13.4 MB (13396222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34391598837c178f8f62c96b6819cb67a03c43b31b88224ee805669a92f8ab9`  
		Last Modified: Sat, 09 Jun 2018 00:58:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c8bd2bfe1a43d3e4814a9157cecfaa87a4b2e9641e7dfc55e646215aaec7b7`  
		Last Modified: Sat, 09 Jun 2018 02:11:30 GMT  
		Size: 161.4 MB (161447376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9160f063730ac15439772e0ba3829970baa0e729fd30e0d097d4f87ee5f23eb`  
		Last Modified: Mon, 25 Jun 2018 23:37:06 GMT  
		Size: 236.2 MB (236152143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9438d426601933c5bbc101cb5b67206aa834c5b6681a515ba4688be82764dd07`  
		Last Modified: Mon, 25 Jun 2018 23:36:34 GMT  
		Size: 952.1 KB (952116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41830c7eca1d7ce9e36f2e0635608a0c8a9bffc56bf81c132070d2a1da55baae`  
		Last Modified: Mon, 25 Jun 2018 23:36:33 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152e7660ce8d33df936bc648bff8e601c7d814f75ea656c38a63e4d91fb8eba4`  
		Last Modified: Mon, 25 Jun 2018 23:36:34 GMT  
		Size: 2.3 KB (2312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4f1b4aa1b1cfa2ed704d266fed6dd6308a8841254d3cd0c2f57b86f77cb529`  
		Last Modified: Mon, 25 Jun 2018 23:36:33 GMT  
		Size: 3.7 KB (3677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457ce1a678249b083cb19a67b806014491bc032a8175694be62fa365537d6489`  
		Last Modified: Mon, 25 Jun 2018 23:36:34 GMT  
		Size: 2.4 KB (2379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:stable-mysql`

```console
$ docker pull xwiki@sha256:e75147e04ed308e579964b7a97ecd530918b82178c59b903abcb92d4e17ca1b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:stable-mysql` - linux; amd64

```console
$ docker pull xwiki@sha256:1b5a7114ed176884bca93f0c40c02a5b5efe7db18fc4ae47eeb0c305e30360bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.2 MB (596181745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa9be1ef05ae35d3a1702a0e2fc33f66deb9e66b25404f80e75dafad651f50b6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 18:44:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:44:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 18:44:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 18:44:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 18:45:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 18:45:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 09 Jun 2018 00:41:36 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 09 Jun 2018 00:41:37 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Jun 2018 00:41:38 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 09 Jun 2018 00:41:38 GMT
WORKDIR /usr/local/tomcat
# Sat, 09 Jun 2018 00:41:38 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:38 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:39 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Sat, 09 Jun 2018 00:41:39 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Jun 2018 00:41:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Jun 2018 00:41:46 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 09 Jun 2018 00:44:00 GMT
ENV TOMCAT_MAJOR=8
# Sat, 09 Jun 2018 00:44:42 GMT
ENV TOMCAT_VERSION=8.5.31
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_SHA512=a961eedc4b0c0729f1fb96dafb75eb48e000502233b849f47c84a6355873bc96d131b112400587e96391262e0659df9b991b4e66a78fda74168f939c4ab5af88
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc
# Sat, 09 Jun 2018 00:45:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sat, 09 Jun 2018 00:45:10 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 09 Jun 2018 00:45:11 GMT
EXPOSE 8080/tcp
# Sat, 09 Jun 2018 00:45:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 09 Jun 2018 01:18:05 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 09 Jun 2018 01:19:20 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 25 Jun 2018 23:31:30 GMT
ENV XWIKI_VERSION=10.5
# Mon, 25 Jun 2018 23:31:30 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.5
# Mon, 25 Jun 2018 23:31:30 GMT
ENV XWIKI_DOWNLOAD_SHA256=e49addc6ef33bfbb8ef6587418a5e122329fbb81bc3fd272b1bf0e4805071e96
# Mon, 25 Jun 2018 23:32:06 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 25 Jun 2018 23:32:07 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 25 Jun 2018 23:32:08 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Mon, 25 Jun 2018 23:32:08 GMT
COPY file:1d433c8d1a99df71172f6981bdb6f13380e4d62f4dab4246798f9a5203553ca6 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 25 Jun 2018 23:32:09 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 25 Jun 2018 23:32:09 GMT
COPY file:5f5be420889bdee3bc9520aa2af7c24fe855aaf5aafcc84e301666b86aa545eb in /usr/local/bin/docker-entrypoint.sh 
# Mon, 25 Jun 2018 23:32:10 GMT
VOLUME [/usr/local/xwiki]
# Mon, 25 Jun 2018 23:32:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 25 Jun 2018 23:32:10 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c05365ee2a2245bb9f6786bc88aa12bf64da676a52668424437826d0f0cb92`  
		Last Modified: Tue, 05 Jun 2018 23:41:58 GMT  
		Size: 10.8 MB (10774184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231cb0e216d30ea48044d44d37fba016eb67eca9b19b29a741d95775359d3533`  
		Last Modified: Tue, 05 Jun 2018 23:41:55 GMT  
		Size: 4.3 MB (4335886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8912f9d0ce2e4accc0eb655a24f8b5def2ed4d1caf9d9dc897a19a4d32faf9f`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 853.1 KB (853110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bafe362f99b9e9353c71496d5dd82907355aafab384360400be4d2715816383`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b0652112a637ad5505eee5907b395211776ed3bfd3a74743c428605975be78`  
		Last Modified: Wed, 06 Jun 2018 19:05:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da23e1e20eae995da970ffc93d5bd64980d6f6061a0f33bc08cc9d65475c670a`  
		Last Modified: Wed, 06 Jun 2018 19:05:53 GMT  
		Size: 122.1 MB (122141480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d809d99b239e4876578052705afd7653615e34b5155028d2206e5ec95e30c96`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 272.2 KB (272162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c61bb6d245c4be309a36276e49a16e59434ea6e221569a8fcb46fab39417b7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50578eb745b98f4702d648af2762b551baf8fc7c43aeeda3f58c23ec422663d7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 528.7 KB (528726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85082b9ab294dc28d36cb6cac743034c45e58523ea4265f90503703bf9937e8c`  
		Last Modified: Sat, 09 Jun 2018 00:59:01 GMT  
		Size: 13.4 MB (13396222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34391598837c178f8f62c96b6819cb67a03c43b31b88224ee805669a92f8ab9`  
		Last Modified: Sat, 09 Jun 2018 00:58:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c8bd2bfe1a43d3e4814a9157cecfaa87a4b2e9641e7dfc55e646215aaec7b7`  
		Last Modified: Sat, 09 Jun 2018 02:11:30 GMT  
		Size: 161.4 MB (161447376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9160f063730ac15439772e0ba3829970baa0e729fd30e0d097d4f87ee5f23eb`  
		Last Modified: Mon, 25 Jun 2018 23:37:06 GMT  
		Size: 236.2 MB (236152143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9438d426601933c5bbc101cb5b67206aa834c5b6681a515ba4688be82764dd07`  
		Last Modified: Mon, 25 Jun 2018 23:36:34 GMT  
		Size: 952.1 KB (952116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41830c7eca1d7ce9e36f2e0635608a0c8a9bffc56bf81c132070d2a1da55baae`  
		Last Modified: Mon, 25 Jun 2018 23:36:33 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152e7660ce8d33df936bc648bff8e601c7d814f75ea656c38a63e4d91fb8eba4`  
		Last Modified: Mon, 25 Jun 2018 23:36:34 GMT  
		Size: 2.3 KB (2312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4f1b4aa1b1cfa2ed704d266fed6dd6308a8841254d3cd0c2f57b86f77cb529`  
		Last Modified: Mon, 25 Jun 2018 23:36:33 GMT  
		Size: 3.7 KB (3677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457ce1a678249b083cb19a67b806014491bc032a8175694be62fa365537d6489`  
		Last Modified: Mon, 25 Jun 2018 23:36:34 GMT  
		Size: 2.4 KB (2379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:stable-mysql-tomcat`

```console
$ docker pull xwiki@sha256:e75147e04ed308e579964b7a97ecd530918b82178c59b903abcb92d4e17ca1b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:stable-mysql-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:1b5a7114ed176884bca93f0c40c02a5b5efe7db18fc4ae47eeb0c305e30360bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.2 MB (596181745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa9be1ef05ae35d3a1702a0e2fc33f66deb9e66b25404f80e75dafad651f50b6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 18:44:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:44:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 18:44:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 18:44:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 18:45:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 18:45:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 09 Jun 2018 00:41:36 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 09 Jun 2018 00:41:37 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Jun 2018 00:41:38 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 09 Jun 2018 00:41:38 GMT
WORKDIR /usr/local/tomcat
# Sat, 09 Jun 2018 00:41:38 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:38 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:39 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Sat, 09 Jun 2018 00:41:39 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Jun 2018 00:41:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Jun 2018 00:41:46 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 09 Jun 2018 00:44:00 GMT
ENV TOMCAT_MAJOR=8
# Sat, 09 Jun 2018 00:44:42 GMT
ENV TOMCAT_VERSION=8.5.31
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_SHA512=a961eedc4b0c0729f1fb96dafb75eb48e000502233b849f47c84a6355873bc96d131b112400587e96391262e0659df9b991b4e66a78fda74168f939c4ab5af88
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc
# Sat, 09 Jun 2018 00:45:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sat, 09 Jun 2018 00:45:10 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 09 Jun 2018 00:45:11 GMT
EXPOSE 8080/tcp
# Sat, 09 Jun 2018 00:45:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 09 Jun 2018 01:18:05 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 09 Jun 2018 01:19:20 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 25 Jun 2018 23:31:30 GMT
ENV XWIKI_VERSION=10.5
# Mon, 25 Jun 2018 23:31:30 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.5
# Mon, 25 Jun 2018 23:31:30 GMT
ENV XWIKI_DOWNLOAD_SHA256=e49addc6ef33bfbb8ef6587418a5e122329fbb81bc3fd272b1bf0e4805071e96
# Mon, 25 Jun 2018 23:32:06 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 25 Jun 2018 23:32:07 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 25 Jun 2018 23:32:08 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Mon, 25 Jun 2018 23:32:08 GMT
COPY file:1d433c8d1a99df71172f6981bdb6f13380e4d62f4dab4246798f9a5203553ca6 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 25 Jun 2018 23:32:09 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 25 Jun 2018 23:32:09 GMT
COPY file:5f5be420889bdee3bc9520aa2af7c24fe855aaf5aafcc84e301666b86aa545eb in /usr/local/bin/docker-entrypoint.sh 
# Mon, 25 Jun 2018 23:32:10 GMT
VOLUME [/usr/local/xwiki]
# Mon, 25 Jun 2018 23:32:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 25 Jun 2018 23:32:10 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c05365ee2a2245bb9f6786bc88aa12bf64da676a52668424437826d0f0cb92`  
		Last Modified: Tue, 05 Jun 2018 23:41:58 GMT  
		Size: 10.8 MB (10774184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231cb0e216d30ea48044d44d37fba016eb67eca9b19b29a741d95775359d3533`  
		Last Modified: Tue, 05 Jun 2018 23:41:55 GMT  
		Size: 4.3 MB (4335886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8912f9d0ce2e4accc0eb655a24f8b5def2ed4d1caf9d9dc897a19a4d32faf9f`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 853.1 KB (853110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bafe362f99b9e9353c71496d5dd82907355aafab384360400be4d2715816383`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b0652112a637ad5505eee5907b395211776ed3bfd3a74743c428605975be78`  
		Last Modified: Wed, 06 Jun 2018 19:05:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da23e1e20eae995da970ffc93d5bd64980d6f6061a0f33bc08cc9d65475c670a`  
		Last Modified: Wed, 06 Jun 2018 19:05:53 GMT  
		Size: 122.1 MB (122141480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d809d99b239e4876578052705afd7653615e34b5155028d2206e5ec95e30c96`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 272.2 KB (272162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c61bb6d245c4be309a36276e49a16e59434ea6e221569a8fcb46fab39417b7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50578eb745b98f4702d648af2762b551baf8fc7c43aeeda3f58c23ec422663d7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 528.7 KB (528726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85082b9ab294dc28d36cb6cac743034c45e58523ea4265f90503703bf9937e8c`  
		Last Modified: Sat, 09 Jun 2018 00:59:01 GMT  
		Size: 13.4 MB (13396222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34391598837c178f8f62c96b6819cb67a03c43b31b88224ee805669a92f8ab9`  
		Last Modified: Sat, 09 Jun 2018 00:58:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c8bd2bfe1a43d3e4814a9157cecfaa87a4b2e9641e7dfc55e646215aaec7b7`  
		Last Modified: Sat, 09 Jun 2018 02:11:30 GMT  
		Size: 161.4 MB (161447376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9160f063730ac15439772e0ba3829970baa0e729fd30e0d097d4f87ee5f23eb`  
		Last Modified: Mon, 25 Jun 2018 23:37:06 GMT  
		Size: 236.2 MB (236152143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9438d426601933c5bbc101cb5b67206aa834c5b6681a515ba4688be82764dd07`  
		Last Modified: Mon, 25 Jun 2018 23:36:34 GMT  
		Size: 952.1 KB (952116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41830c7eca1d7ce9e36f2e0635608a0c8a9bffc56bf81c132070d2a1da55baae`  
		Last Modified: Mon, 25 Jun 2018 23:36:33 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152e7660ce8d33df936bc648bff8e601c7d814f75ea656c38a63e4d91fb8eba4`  
		Last Modified: Mon, 25 Jun 2018 23:36:34 GMT  
		Size: 2.3 KB (2312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4f1b4aa1b1cfa2ed704d266fed6dd6308a8841254d3cd0c2f57b86f77cb529`  
		Last Modified: Mon, 25 Jun 2018 23:36:33 GMT  
		Size: 3.7 KB (3677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457ce1a678249b083cb19a67b806014491bc032a8175694be62fa365537d6489`  
		Last Modified: Mon, 25 Jun 2018 23:36:34 GMT  
		Size: 2.4 KB (2379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:stable-postgres`

```console
$ docker pull xwiki@sha256:818ca534ec7d4fd328c36e500c521b27a07ca688f9326ff44b331b4f5ffce439
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:stable-postgres` - linux; amd64

```console
$ docker pull xwiki@sha256:b5df1ed42cec757ed0dcc30a26f157192fca958a0bf5cfdb3ff56d75b036fc40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **595.4 MB (595431657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a8b3599ea3f1d3b00c4cb98aeb99eddbcea9509d48dc5c2ec26a9c24a5b51ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 18:44:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:44:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 18:44:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 18:44:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 18:45:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 18:45:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 09 Jun 2018 00:41:36 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 09 Jun 2018 00:41:37 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Jun 2018 00:41:38 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 09 Jun 2018 00:41:38 GMT
WORKDIR /usr/local/tomcat
# Sat, 09 Jun 2018 00:41:38 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:38 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:39 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Sat, 09 Jun 2018 00:41:39 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Jun 2018 00:41:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Jun 2018 00:41:46 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 09 Jun 2018 00:44:00 GMT
ENV TOMCAT_MAJOR=8
# Sat, 09 Jun 2018 00:44:42 GMT
ENV TOMCAT_VERSION=8.5.31
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_SHA512=a961eedc4b0c0729f1fb96dafb75eb48e000502233b849f47c84a6355873bc96d131b112400587e96391262e0659df9b991b4e66a78fda74168f939c4ab5af88
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc
# Sat, 09 Jun 2018 00:45:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sat, 09 Jun 2018 00:45:10 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 09 Jun 2018 00:45:11 GMT
EXPOSE 8080/tcp
# Sat, 09 Jun 2018 00:45:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 09 Jun 2018 01:18:05 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 09 Jun 2018 01:33:20 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 25 Jun 2018 23:32:22 GMT
ENV XWIKI_VERSION=10.5
# Mon, 25 Jun 2018 23:32:22 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.5
# Mon, 25 Jun 2018 23:32:22 GMT
ENV XWIKI_DOWNLOAD_SHA256=e49addc6ef33bfbb8ef6587418a5e122329fbb81bc3fd272b1bf0e4805071e96
# Mon, 25 Jun 2018 23:32:55 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 25 Jun 2018 23:32:56 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 25 Jun 2018 23:32:57 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Mon, 25 Jun 2018 23:32:57 GMT
COPY file:7a0ce36c7348308f7754e7d70a4cad74b1c6a11e342ab82fe6e57f1bef38e533 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 25 Jun 2018 23:32:58 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 25 Jun 2018 23:32:58 GMT
COPY file:5f5be420889bdee3bc9520aa2af7c24fe855aaf5aafcc84e301666b86aa545eb in /usr/local/bin/docker-entrypoint.sh 
# Mon, 25 Jun 2018 23:32:58 GMT
VOLUME [/usr/local/xwiki]
# Mon, 25 Jun 2018 23:32:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 25 Jun 2018 23:32:59 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c05365ee2a2245bb9f6786bc88aa12bf64da676a52668424437826d0f0cb92`  
		Last Modified: Tue, 05 Jun 2018 23:41:58 GMT  
		Size: 10.8 MB (10774184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231cb0e216d30ea48044d44d37fba016eb67eca9b19b29a741d95775359d3533`  
		Last Modified: Tue, 05 Jun 2018 23:41:55 GMT  
		Size: 4.3 MB (4335886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8912f9d0ce2e4accc0eb655a24f8b5def2ed4d1caf9d9dc897a19a4d32faf9f`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 853.1 KB (853110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bafe362f99b9e9353c71496d5dd82907355aafab384360400be4d2715816383`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b0652112a637ad5505eee5907b395211776ed3bfd3a74743c428605975be78`  
		Last Modified: Wed, 06 Jun 2018 19:05:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da23e1e20eae995da970ffc93d5bd64980d6f6061a0f33bc08cc9d65475c670a`  
		Last Modified: Wed, 06 Jun 2018 19:05:53 GMT  
		Size: 122.1 MB (122141480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d809d99b239e4876578052705afd7653615e34b5155028d2206e5ec95e30c96`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 272.2 KB (272162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c61bb6d245c4be309a36276e49a16e59434ea6e221569a8fcb46fab39417b7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50578eb745b98f4702d648af2762b551baf8fc7c43aeeda3f58c23ec422663d7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 528.7 KB (528726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85082b9ab294dc28d36cb6cac743034c45e58523ea4265f90503703bf9937e8c`  
		Last Modified: Sat, 09 Jun 2018 00:59:01 GMT  
		Size: 13.4 MB (13396222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34391598837c178f8f62c96b6819cb67a03c43b31b88224ee805669a92f8ab9`  
		Last Modified: Sat, 09 Jun 2018 00:58:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f57a01a5db7f60c09cdc0357b44a27e1a87920c3b5766839d0ab01abfa83a17`  
		Last Modified: Sat, 09 Jun 2018 02:13:33 GMT  
		Size: 161.0 MB (161030393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e2b5aa7fa85d715016e4e5291d15a7360e24312c9e9cee444e4b04d5b7f2c5`  
		Last Modified: Mon, 25 Jun 2018 23:38:52 GMT  
		Size: 236.2 MB (236152146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d380080ae1f47553781530c5ee023e0dcb0128da0c79f92201553ffdeec3e7`  
		Last Modified: Mon, 25 Jun 2018 23:38:31 GMT  
		Size: 618.9 KB (618888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5278c724cff5ca56f923fc319ecb522822665d2b985e72c263d5127ab68270c4`  
		Last Modified: Mon, 25 Jun 2018 23:38:31 GMT  
		Size: 1.2 KB (1153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fd8148dd10c9dc8e99f7cb1c5130786b1efe13b07d922281c9827b9f21854c`  
		Last Modified: Mon, 25 Jun 2018 23:38:31 GMT  
		Size: 2.4 KB (2428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31690f1644708b4fd597b5313c50dd63f52db253923fddeb1b91506e374908b`  
		Last Modified: Mon, 25 Jun 2018 23:38:31 GMT  
		Size: 3.7 KB (3678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096e7ce0729cda1aa22649bb4d3d85081a15b6b279216a625025503eb8580eea`  
		Last Modified: Mon, 25 Jun 2018 23:38:31 GMT  
		Size: 2.4 KB (2381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:stable-postgres-tomcat`

```console
$ docker pull xwiki@sha256:818ca534ec7d4fd328c36e500c521b27a07ca688f9326ff44b331b4f5ffce439
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:stable-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:b5df1ed42cec757ed0dcc30a26f157192fca958a0bf5cfdb3ff56d75b036fc40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **595.4 MB (595431657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a8b3599ea3f1d3b00c4cb98aeb99eddbcea9509d48dc5c2ec26a9c24a5b51ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 18:44:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:44:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 18:44:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 18:44:46 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 18:44:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 18:45:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 18:45:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 09 Jun 2018 00:41:36 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Sat, 09 Jun 2018 00:41:37 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Jun 2018 00:41:38 GMT
RUN mkdir -p "$CATALINA_HOME"
# Sat, 09 Jun 2018 00:41:38 GMT
WORKDIR /usr/local/tomcat
# Sat, 09 Jun 2018 00:41:38 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:38 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Sat, 09 Jun 2018 00:41:39 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Sat, 09 Jun 2018 00:41:39 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Jun 2018 00:41:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Jun 2018 00:41:46 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Sat, 09 Jun 2018 00:44:00 GMT
ENV TOMCAT_MAJOR=8
# Sat, 09 Jun 2018 00:44:42 GMT
ENV TOMCAT_VERSION=8.5.31
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_SHA512=a961eedc4b0c0729f1fb96dafb75eb48e000502233b849f47c84a6355873bc96d131b112400587e96391262e0659df9b991b4e66a78fda74168f939c4ab5af88
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz
# Sat, 09 Jun 2018 00:44:43 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc
# Sat, 09 Jun 2018 00:45:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Sat, 09 Jun 2018 00:45:10 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 09 Jun 2018 00:45:11 GMT
EXPOSE 8080/tcp
# Sat, 09 Jun 2018 00:45:11 GMT
CMD ["catalina.sh" "run"]
# Sat, 09 Jun 2018 01:18:05 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Sat, 09 Jun 2018 01:33:20 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 25 Jun 2018 23:32:22 GMT
ENV XWIKI_VERSION=10.5
# Mon, 25 Jun 2018 23:32:22 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.5
# Mon, 25 Jun 2018 23:32:22 GMT
ENV XWIKI_DOWNLOAD_SHA256=e49addc6ef33bfbb8ef6587418a5e122329fbb81bc3fd272b1bf0e4805071e96
# Mon, 25 Jun 2018 23:32:55 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 25 Jun 2018 23:32:56 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 25 Jun 2018 23:32:57 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Mon, 25 Jun 2018 23:32:57 GMT
COPY file:7a0ce36c7348308f7754e7d70a4cad74b1c6a11e342ab82fe6e57f1bef38e533 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 25 Jun 2018 23:32:58 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 25 Jun 2018 23:32:58 GMT
COPY file:5f5be420889bdee3bc9520aa2af7c24fe855aaf5aafcc84e301666b86aa545eb in /usr/local/bin/docker-entrypoint.sh 
# Mon, 25 Jun 2018 23:32:58 GMT
VOLUME [/usr/local/xwiki]
# Mon, 25 Jun 2018 23:32:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 25 Jun 2018 23:32:59 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c05365ee2a2245bb9f6786bc88aa12bf64da676a52668424437826d0f0cb92`  
		Last Modified: Tue, 05 Jun 2018 23:41:58 GMT  
		Size: 10.8 MB (10774184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231cb0e216d30ea48044d44d37fba016eb67eca9b19b29a741d95775359d3533`  
		Last Modified: Tue, 05 Jun 2018 23:41:55 GMT  
		Size: 4.3 MB (4335886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8912f9d0ce2e4accc0eb655a24f8b5def2ed4d1caf9d9dc897a19a4d32faf9f`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 853.1 KB (853110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bafe362f99b9e9353c71496d5dd82907355aafab384360400be4d2715816383`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b0652112a637ad5505eee5907b395211776ed3bfd3a74743c428605975be78`  
		Last Modified: Wed, 06 Jun 2018 19:05:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da23e1e20eae995da970ffc93d5bd64980d6f6061a0f33bc08cc9d65475c670a`  
		Last Modified: Wed, 06 Jun 2018 19:05:53 GMT  
		Size: 122.1 MB (122141480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d809d99b239e4876578052705afd7653615e34b5155028d2206e5ec95e30c96`  
		Last Modified: Wed, 06 Jun 2018 19:05:26 GMT  
		Size: 272.2 KB (272162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c61bb6d245c4be309a36276e49a16e59434ea6e221569a8fcb46fab39417b7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50578eb745b98f4702d648af2762b551baf8fc7c43aeeda3f58c23ec422663d7`  
		Last Modified: Sat, 09 Jun 2018 00:57:08 GMT  
		Size: 528.7 KB (528726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85082b9ab294dc28d36cb6cac743034c45e58523ea4265f90503703bf9937e8c`  
		Last Modified: Sat, 09 Jun 2018 00:59:01 GMT  
		Size: 13.4 MB (13396222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34391598837c178f8f62c96b6819cb67a03c43b31b88224ee805669a92f8ab9`  
		Last Modified: Sat, 09 Jun 2018 00:58:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f57a01a5db7f60c09cdc0357b44a27e1a87920c3b5766839d0ab01abfa83a17`  
		Last Modified: Sat, 09 Jun 2018 02:13:33 GMT  
		Size: 161.0 MB (161030393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e2b5aa7fa85d715016e4e5291d15a7360e24312c9e9cee444e4b04d5b7f2c5`  
		Last Modified: Mon, 25 Jun 2018 23:38:52 GMT  
		Size: 236.2 MB (236152146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d380080ae1f47553781530c5ee023e0dcb0128da0c79f92201553ffdeec3e7`  
		Last Modified: Mon, 25 Jun 2018 23:38:31 GMT  
		Size: 618.9 KB (618888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5278c724cff5ca56f923fc319ecb522822665d2b985e72c263d5127ab68270c4`  
		Last Modified: Mon, 25 Jun 2018 23:38:31 GMT  
		Size: 1.2 KB (1153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fd8148dd10c9dc8e99f7cb1c5130786b1efe13b07d922281c9827b9f21854c`  
		Last Modified: Mon, 25 Jun 2018 23:38:31 GMT  
		Size: 2.4 KB (2428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31690f1644708b4fd597b5313c50dd63f52db253923fddeb1b91506e374908b`  
		Last Modified: Mon, 25 Jun 2018 23:38:31 GMT  
		Size: 3.7 KB (3678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096e7ce0729cda1aa22649bb4d3d85081a15b6b279216a625025503eb8580eea`  
		Last Modified: Mon, 25 Jun 2018 23:38:31 GMT  
		Size: 2.4 KB (2381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
