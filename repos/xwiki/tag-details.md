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
-	[`xwiki:9.11.5`](#xwiki9115)
-	[`xwiki:9.11.5-postgres-tomcat`](#xwiki9115-postgres-tomcat)
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
$ docker pull xwiki@sha256:e3af61e148323685ab3ffd0ef5fbbedf1e3518a0af9d0e9743eb447a5b4b7873
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:10` - linux; amd64

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

## `xwiki:10.5`

```console
$ docker pull xwiki@sha256:e3af61e148323685ab3ffd0ef5fbbedf1e3518a0af9d0e9743eb447a5b4b7873
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:10.5` - linux; amd64

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

## `xwiki:10.5-mysql-tomcat`

```console
$ docker pull xwiki@sha256:e3af61e148323685ab3ffd0ef5fbbedf1e3518a0af9d0e9743eb447a5b4b7873
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:10.5-mysql-tomcat` - linux; amd64

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

## `xwiki:10.5-postgres-tomcat`

```console
$ docker pull xwiki@sha256:543c90efce5bd31d7fa17eeaf8a0777737f0b04d1601746680b4e71fd9327561
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:10.5-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:7388b9539e820bdff6ac88fd005664cc4b3487e738662ec7438f02c07f3dfb3b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **595.4 MB (595431755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:144234de5230c9e635b58d5316498722ac2654fe780d5af217ba757f82a891a1`
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
# Tue, 12 Jun 2018 02:55:09 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Thu, 21 Jun 2018 19:26:54 GMT
ENV XWIKI_VERSION=10.5
# Thu, 21 Jun 2018 19:26:54 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.5
# Thu, 21 Jun 2018 19:26:54 GMT
ENV XWIKI_DOWNLOAD_SHA256=e49addc6ef33bfbb8ef6587418a5e122329fbb81bc3fd272b1bf0e4805071e96
# Thu, 21 Jun 2018 19:27:44 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Thu, 21 Jun 2018 19:27:45 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Thu, 21 Jun 2018 19:27:45 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Thu, 21 Jun 2018 19:27:45 GMT
COPY file:7a0ce36c7348308f7754e7d70a4cad74b1c6a11e342ab82fe6e57f1bef38e533 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Thu, 21 Jun 2018 19:27:46 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Thu, 21 Jun 2018 19:27:46 GMT
COPY file:5f5be420889bdee3bc9520aa2af7c24fe855aaf5aafcc84e301666b86aa545eb in /usr/local/bin/docker-entrypoint.sh 
# Thu, 21 Jun 2018 19:27:47 GMT
VOLUME [/usr/local/xwiki]
# Thu, 21 Jun 2018 19:27:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Jun 2018 19:27:48 GMT
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
	-	`sha256:c14224c8f2748c30f884b9c384652f83159358086f850e892b1e53936c47b074`  
		Last Modified: Tue, 12 Jun 2018 03:00:52 GMT  
		Size: 161.0 MB (161030489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c920c6ce4e160decf35fe40f66932c76c9aee6b9d3e6068759153cdd8d3159`  
		Last Modified: Thu, 21 Jun 2018 19:30:26 GMT  
		Size: 236.2 MB (236152151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb5405a49ef04c42b8df4288288e0fe1e0d32f0a871cccb5b95337998545797d`  
		Last Modified: Thu, 21 Jun 2018 19:30:08 GMT  
		Size: 618.9 KB (618886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beb0b054e6ea3c2bbee9998773d33385b25f2e8c8b96d7a04ab68e2fbd2ff3d8`  
		Last Modified: Thu, 21 Jun 2018 19:30:08 GMT  
		Size: 1.2 KB (1153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8565ce62e89740267bfe095143e82b9b97eb8e003ae4f7e554ae79e53d245ee`  
		Last Modified: Thu, 21 Jun 2018 19:30:08 GMT  
		Size: 2.4 KB (2428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a09400f3018ed4177eb1a70cbe38da7abb8c5b257c9d17e190d7e3d4ea673d`  
		Last Modified: Thu, 21 Jun 2018 19:30:08 GMT  
		Size: 3.7 KB (3677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286c434f0ce3d6ba03a81c3ed869bb40880379acf78be7896ad90acafcc93be4`  
		Last Modified: Thu, 21 Jun 2018 19:30:08 GMT  
		Size: 2.4 KB (2381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:10-mysql-tomcat`

```console
$ docker pull xwiki@sha256:e3af61e148323685ab3ffd0ef5fbbedf1e3518a0af9d0e9743eb447a5b4b7873
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:10-mysql-tomcat` - linux; amd64

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

## `xwiki:10-postgres-tomcat`

```console
$ docker pull xwiki@sha256:543c90efce5bd31d7fa17eeaf8a0777737f0b04d1601746680b4e71fd9327561
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:10-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:7388b9539e820bdff6ac88fd005664cc4b3487e738662ec7438f02c07f3dfb3b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **595.4 MB (595431755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:144234de5230c9e635b58d5316498722ac2654fe780d5af217ba757f82a891a1`
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
# Tue, 12 Jun 2018 02:55:09 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Thu, 21 Jun 2018 19:26:54 GMT
ENV XWIKI_VERSION=10.5
# Thu, 21 Jun 2018 19:26:54 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.5
# Thu, 21 Jun 2018 19:26:54 GMT
ENV XWIKI_DOWNLOAD_SHA256=e49addc6ef33bfbb8ef6587418a5e122329fbb81bc3fd272b1bf0e4805071e96
# Thu, 21 Jun 2018 19:27:44 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Thu, 21 Jun 2018 19:27:45 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Thu, 21 Jun 2018 19:27:45 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Thu, 21 Jun 2018 19:27:45 GMT
COPY file:7a0ce36c7348308f7754e7d70a4cad74b1c6a11e342ab82fe6e57f1bef38e533 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Thu, 21 Jun 2018 19:27:46 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Thu, 21 Jun 2018 19:27:46 GMT
COPY file:5f5be420889bdee3bc9520aa2af7c24fe855aaf5aafcc84e301666b86aa545eb in /usr/local/bin/docker-entrypoint.sh 
# Thu, 21 Jun 2018 19:27:47 GMT
VOLUME [/usr/local/xwiki]
# Thu, 21 Jun 2018 19:27:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Jun 2018 19:27:48 GMT
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
	-	`sha256:c14224c8f2748c30f884b9c384652f83159358086f850e892b1e53936c47b074`  
		Last Modified: Tue, 12 Jun 2018 03:00:52 GMT  
		Size: 161.0 MB (161030489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c920c6ce4e160decf35fe40f66932c76c9aee6b9d3e6068759153cdd8d3159`  
		Last Modified: Thu, 21 Jun 2018 19:30:26 GMT  
		Size: 236.2 MB (236152151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb5405a49ef04c42b8df4288288e0fe1e0d32f0a871cccb5b95337998545797d`  
		Last Modified: Thu, 21 Jun 2018 19:30:08 GMT  
		Size: 618.9 KB (618886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beb0b054e6ea3c2bbee9998773d33385b25f2e8c8b96d7a04ab68e2fbd2ff3d8`  
		Last Modified: Thu, 21 Jun 2018 19:30:08 GMT  
		Size: 1.2 KB (1153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8565ce62e89740267bfe095143e82b9b97eb8e003ae4f7e554ae79e53d245ee`  
		Last Modified: Thu, 21 Jun 2018 19:30:08 GMT  
		Size: 2.4 KB (2428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a09400f3018ed4177eb1a70cbe38da7abb8c5b257c9d17e190d7e3d4ea673d`  
		Last Modified: Thu, 21 Jun 2018 19:30:08 GMT  
		Size: 3.7 KB (3677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286c434f0ce3d6ba03a81c3ed869bb40880379acf78be7896ad90acafcc93be4`  
		Last Modified: Thu, 21 Jun 2018 19:30:08 GMT  
		Size: 2.4 KB (2381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:9`

```console
$ docker pull xwiki@sha256:8c3322aaf9e46e55a564d16a8e085698dc41c056f9896354665cec4774ee12ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:9` - linux; amd64

```console
$ docker pull xwiki@sha256:2705f38e6acaf39d06672104ece2ed80fd58990574491bdc3f51927e27b7b93a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **585.7 MB (585704758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:605fa2e701e9026394e39c40a28957f3c2773a642f7d98d72e1762a4fa916eaf`
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
# Tue, 12 Jun 2018 02:51:18 GMT
ENV XWIKI_VERSION=9.11.5
# Tue, 12 Jun 2018 02:51:18 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.5
# Tue, 12 Jun 2018 02:51:18 GMT
ENV XWIKI_DOWNLOAD_SHA256=177fd372acf0006e3899fb6d116b885f01fc0fb71f7426d139435f6d07872192
# Tue, 12 Jun 2018 02:51:54 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Tue, 12 Jun 2018 02:51:54 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Tue, 12 Jun 2018 02:51:55 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Tue, 12 Jun 2018 02:51:55 GMT
COPY file:1d433c8d1a99df71172f6981bdb6f13380e4d62f4dab4246798f9a5203553ca6 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Tue, 12 Jun 2018 02:51:56 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Tue, 12 Jun 2018 02:51:56 GMT
COPY file:86f4388d222242a09aa5d0770f4d43e6e97716e20d4bb52e229e6044ca70acaa in /usr/local/bin/docker-entrypoint.sh 
# Tue, 12 Jun 2018 02:51:57 GMT
VOLUME [/usr/local/xwiki]
# Tue, 12 Jun 2018 02:51:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Jun 2018 02:51:57 GMT
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
	-	`sha256:7de1ab0de0ca7c209848394d61686a724f229646050eedd40fe5d0e77e7e68ec`  
		Last Modified: Tue, 12 Jun 2018 02:58:35 GMT  
		Size: 225.7 MB (225675259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90704401f7f601c818c8e6238238baadf7fbad1d8bbf13d4488053b1148ffafe`  
		Last Modified: Tue, 12 Jun 2018 02:58:12 GMT  
		Size: 952.1 KB (952116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be7aa4639b0281127b524150d0951940af35e217a7f466ba06ccaa669902504d`  
		Last Modified: Tue, 12 Jun 2018 02:58:11 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2728b9f0c199e3d4be1b249bd97f137bc399bf740f02caf53ac5f4ec02d4dc71`  
		Last Modified: Tue, 12 Jun 2018 02:58:11 GMT  
		Size: 2.3 KB (2316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0449d2f6e6a09141fb960f64c169cf039471048a0fc7db0e3ced3bd445a4d5a`  
		Last Modified: Tue, 12 Jun 2018 02:58:11 GMT  
		Size: 3.6 KB (3615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f22e06e6c0bf5659a8fef41a424fd74191ef354e0e412a9d91d4a2bf3fcaf7`  
		Last Modified: Tue, 12 Jun 2018 02:58:11 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:9.11`

```console
$ docker pull xwiki@sha256:8c3322aaf9e46e55a564d16a8e085698dc41c056f9896354665cec4774ee12ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:9.11` - linux; amd64

```console
$ docker pull xwiki@sha256:2705f38e6acaf39d06672104ece2ed80fd58990574491bdc3f51927e27b7b93a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **585.7 MB (585704758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:605fa2e701e9026394e39c40a28957f3c2773a642f7d98d72e1762a4fa916eaf`
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
# Tue, 12 Jun 2018 02:51:18 GMT
ENV XWIKI_VERSION=9.11.5
# Tue, 12 Jun 2018 02:51:18 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.5
# Tue, 12 Jun 2018 02:51:18 GMT
ENV XWIKI_DOWNLOAD_SHA256=177fd372acf0006e3899fb6d116b885f01fc0fb71f7426d139435f6d07872192
# Tue, 12 Jun 2018 02:51:54 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Tue, 12 Jun 2018 02:51:54 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Tue, 12 Jun 2018 02:51:55 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Tue, 12 Jun 2018 02:51:55 GMT
COPY file:1d433c8d1a99df71172f6981bdb6f13380e4d62f4dab4246798f9a5203553ca6 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Tue, 12 Jun 2018 02:51:56 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Tue, 12 Jun 2018 02:51:56 GMT
COPY file:86f4388d222242a09aa5d0770f4d43e6e97716e20d4bb52e229e6044ca70acaa in /usr/local/bin/docker-entrypoint.sh 
# Tue, 12 Jun 2018 02:51:57 GMT
VOLUME [/usr/local/xwiki]
# Tue, 12 Jun 2018 02:51:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Jun 2018 02:51:57 GMT
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
	-	`sha256:7de1ab0de0ca7c209848394d61686a724f229646050eedd40fe5d0e77e7e68ec`  
		Last Modified: Tue, 12 Jun 2018 02:58:35 GMT  
		Size: 225.7 MB (225675259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90704401f7f601c818c8e6238238baadf7fbad1d8bbf13d4488053b1148ffafe`  
		Last Modified: Tue, 12 Jun 2018 02:58:12 GMT  
		Size: 952.1 KB (952116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be7aa4639b0281127b524150d0951940af35e217a7f466ba06ccaa669902504d`  
		Last Modified: Tue, 12 Jun 2018 02:58:11 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2728b9f0c199e3d4be1b249bd97f137bc399bf740f02caf53ac5f4ec02d4dc71`  
		Last Modified: Tue, 12 Jun 2018 02:58:11 GMT  
		Size: 2.3 KB (2316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0449d2f6e6a09141fb960f64c169cf039471048a0fc7db0e3ced3bd445a4d5a`  
		Last Modified: Tue, 12 Jun 2018 02:58:11 GMT  
		Size: 3.6 KB (3615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f22e06e6c0bf5659a8fef41a424fd74191ef354e0e412a9d91d4a2bf3fcaf7`  
		Last Modified: Tue, 12 Jun 2018 02:58:11 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:9.11.5`

```console
$ docker pull xwiki@sha256:8c3322aaf9e46e55a564d16a8e085698dc41c056f9896354665cec4774ee12ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:9.11.5` - linux; amd64

```console
$ docker pull xwiki@sha256:2705f38e6acaf39d06672104ece2ed80fd58990574491bdc3f51927e27b7b93a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **585.7 MB (585704758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:605fa2e701e9026394e39c40a28957f3c2773a642f7d98d72e1762a4fa916eaf`
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
# Tue, 12 Jun 2018 02:51:18 GMT
ENV XWIKI_VERSION=9.11.5
# Tue, 12 Jun 2018 02:51:18 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.5
# Tue, 12 Jun 2018 02:51:18 GMT
ENV XWIKI_DOWNLOAD_SHA256=177fd372acf0006e3899fb6d116b885f01fc0fb71f7426d139435f6d07872192
# Tue, 12 Jun 2018 02:51:54 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Tue, 12 Jun 2018 02:51:54 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Tue, 12 Jun 2018 02:51:55 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Tue, 12 Jun 2018 02:51:55 GMT
COPY file:1d433c8d1a99df71172f6981bdb6f13380e4d62f4dab4246798f9a5203553ca6 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Tue, 12 Jun 2018 02:51:56 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Tue, 12 Jun 2018 02:51:56 GMT
COPY file:86f4388d222242a09aa5d0770f4d43e6e97716e20d4bb52e229e6044ca70acaa in /usr/local/bin/docker-entrypoint.sh 
# Tue, 12 Jun 2018 02:51:57 GMT
VOLUME [/usr/local/xwiki]
# Tue, 12 Jun 2018 02:51:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Jun 2018 02:51:57 GMT
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
	-	`sha256:7de1ab0de0ca7c209848394d61686a724f229646050eedd40fe5d0e77e7e68ec`  
		Last Modified: Tue, 12 Jun 2018 02:58:35 GMT  
		Size: 225.7 MB (225675259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90704401f7f601c818c8e6238238baadf7fbad1d8bbf13d4488053b1148ffafe`  
		Last Modified: Tue, 12 Jun 2018 02:58:12 GMT  
		Size: 952.1 KB (952116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be7aa4639b0281127b524150d0951940af35e217a7f466ba06ccaa669902504d`  
		Last Modified: Tue, 12 Jun 2018 02:58:11 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2728b9f0c199e3d4be1b249bd97f137bc399bf740f02caf53ac5f4ec02d4dc71`  
		Last Modified: Tue, 12 Jun 2018 02:58:11 GMT  
		Size: 2.3 KB (2316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0449d2f6e6a09141fb960f64c169cf039471048a0fc7db0e3ced3bd445a4d5a`  
		Last Modified: Tue, 12 Jun 2018 02:58:11 GMT  
		Size: 3.6 KB (3615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f22e06e6c0bf5659a8fef41a424fd74191ef354e0e412a9d91d4a2bf3fcaf7`  
		Last Modified: Tue, 12 Jun 2018 02:58:11 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:9.11.5-postgres-tomcat`

```console
$ docker pull xwiki@sha256:2536708001632a7f3e96f1d40285a5d99d5f5ab377c5ba6888721e7d6faed572
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:9.11.5-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:8217bd1955c68b796bc98c1ed1f858fbc92099cf277b6403852f669ea3cfe1e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **585.0 MB (584954918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a84ac440de16f593a3411143a2cd6e3eeb8335b1ffa488d78c408f17f345dca`
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
# Tue, 12 Jun 2018 02:55:09 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 02:55:10 GMT
ENV XWIKI_VERSION=9.11.5
# Tue, 12 Jun 2018 02:55:10 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.5
# Tue, 12 Jun 2018 02:55:10 GMT
ENV XWIKI_DOWNLOAD_SHA256=177fd372acf0006e3899fb6d116b885f01fc0fb71f7426d139435f6d07872192
# Tue, 12 Jun 2018 02:55:46 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Tue, 12 Jun 2018 02:55:47 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Tue, 12 Jun 2018 02:55:47 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Tue, 12 Jun 2018 02:55:48 GMT
COPY file:7a0ce36c7348308f7754e7d70a4cad74b1c6a11e342ab82fe6e57f1bef38e533 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Tue, 12 Jun 2018 02:55:48 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Tue, 12 Jun 2018 02:55:49 GMT
COPY file:86f4388d222242a09aa5d0770f4d43e6e97716e20d4bb52e229e6044ca70acaa in /usr/local/bin/docker-entrypoint.sh 
# Tue, 12 Jun 2018 02:55:49 GMT
VOLUME [/usr/local/xwiki]
# Tue, 12 Jun 2018 02:55:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Jun 2018 02:55:50 GMT
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
	-	`sha256:c14224c8f2748c30f884b9c384652f83159358086f850e892b1e53936c47b074`  
		Last Modified: Tue, 12 Jun 2018 03:00:52 GMT  
		Size: 161.0 MB (161030489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a895ceb58a9906ae24d09c9faad76adc5c8841cd1122e8b658ef30a6015a1a9`  
		Last Modified: Tue, 12 Jun 2018 03:00:39 GMT  
		Size: 225.7 MB (225675299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5761c5f4d79383d52536f79721eed75695c0c81338a1228f39d60adfe79765f1`  
		Last Modified: Tue, 12 Jun 2018 03:00:16 GMT  
		Size: 618.9 KB (618888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602290d28d7985b33aaf530c535054bf01c2dfedc7d7ad558e5f8e511e7307e8`  
		Last Modified: Tue, 12 Jun 2018 03:00:15 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34efd7e546f520a180860137be085394862cb510fc0ca2faa4933b2af9f13b88`  
		Last Modified: Tue, 12 Jun 2018 03:00:15 GMT  
		Size: 2.4 KB (2427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7534dcd28fa3e0bdfddb596b2c5d800848c426131da99b3a591c3fd92289ac`  
		Last Modified: Tue, 12 Jun 2018 03:00:15 GMT  
		Size: 3.6 KB (3612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1de0b86c6763c1aab8f333483952f8832bbd83dec4f71e5d741009ee14203d`  
		Last Modified: Tue, 12 Jun 2018 03:00:15 GMT  
		Size: 2.5 KB (2459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:9.11-postgres-tomcat`

```console
$ docker pull xwiki@sha256:2536708001632a7f3e96f1d40285a5d99d5f5ab377c5ba6888721e7d6faed572
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:9.11-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:8217bd1955c68b796bc98c1ed1f858fbc92099cf277b6403852f669ea3cfe1e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **585.0 MB (584954918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a84ac440de16f593a3411143a2cd6e3eeb8335b1ffa488d78c408f17f345dca`
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
# Tue, 12 Jun 2018 02:55:09 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 02:55:10 GMT
ENV XWIKI_VERSION=9.11.5
# Tue, 12 Jun 2018 02:55:10 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.5
# Tue, 12 Jun 2018 02:55:10 GMT
ENV XWIKI_DOWNLOAD_SHA256=177fd372acf0006e3899fb6d116b885f01fc0fb71f7426d139435f6d07872192
# Tue, 12 Jun 2018 02:55:46 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Tue, 12 Jun 2018 02:55:47 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Tue, 12 Jun 2018 02:55:47 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Tue, 12 Jun 2018 02:55:48 GMT
COPY file:7a0ce36c7348308f7754e7d70a4cad74b1c6a11e342ab82fe6e57f1bef38e533 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Tue, 12 Jun 2018 02:55:48 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Tue, 12 Jun 2018 02:55:49 GMT
COPY file:86f4388d222242a09aa5d0770f4d43e6e97716e20d4bb52e229e6044ca70acaa in /usr/local/bin/docker-entrypoint.sh 
# Tue, 12 Jun 2018 02:55:49 GMT
VOLUME [/usr/local/xwiki]
# Tue, 12 Jun 2018 02:55:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Jun 2018 02:55:50 GMT
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
	-	`sha256:c14224c8f2748c30f884b9c384652f83159358086f850e892b1e53936c47b074`  
		Last Modified: Tue, 12 Jun 2018 03:00:52 GMT  
		Size: 161.0 MB (161030489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a895ceb58a9906ae24d09c9faad76adc5c8841cd1122e8b658ef30a6015a1a9`  
		Last Modified: Tue, 12 Jun 2018 03:00:39 GMT  
		Size: 225.7 MB (225675299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5761c5f4d79383d52536f79721eed75695c0c81338a1228f39d60adfe79765f1`  
		Last Modified: Tue, 12 Jun 2018 03:00:16 GMT  
		Size: 618.9 KB (618888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602290d28d7985b33aaf530c535054bf01c2dfedc7d7ad558e5f8e511e7307e8`  
		Last Modified: Tue, 12 Jun 2018 03:00:15 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34efd7e546f520a180860137be085394862cb510fc0ca2faa4933b2af9f13b88`  
		Last Modified: Tue, 12 Jun 2018 03:00:15 GMT  
		Size: 2.4 KB (2427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7534dcd28fa3e0bdfddb596b2c5d800848c426131da99b3a591c3fd92289ac`  
		Last Modified: Tue, 12 Jun 2018 03:00:15 GMT  
		Size: 3.6 KB (3612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1de0b86c6763c1aab8f333483952f8832bbd83dec4f71e5d741009ee14203d`  
		Last Modified: Tue, 12 Jun 2018 03:00:15 GMT  
		Size: 2.5 KB (2459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:9-mysql-tomcat`

```console
$ docker pull xwiki@sha256:8c3322aaf9e46e55a564d16a8e085698dc41c056f9896354665cec4774ee12ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:9-mysql-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:2705f38e6acaf39d06672104ece2ed80fd58990574491bdc3f51927e27b7b93a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **585.7 MB (585704758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:605fa2e701e9026394e39c40a28957f3c2773a642f7d98d72e1762a4fa916eaf`
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
# Tue, 12 Jun 2018 02:51:18 GMT
ENV XWIKI_VERSION=9.11.5
# Tue, 12 Jun 2018 02:51:18 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.5
# Tue, 12 Jun 2018 02:51:18 GMT
ENV XWIKI_DOWNLOAD_SHA256=177fd372acf0006e3899fb6d116b885f01fc0fb71f7426d139435f6d07872192
# Tue, 12 Jun 2018 02:51:54 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Tue, 12 Jun 2018 02:51:54 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Tue, 12 Jun 2018 02:51:55 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Tue, 12 Jun 2018 02:51:55 GMT
COPY file:1d433c8d1a99df71172f6981bdb6f13380e4d62f4dab4246798f9a5203553ca6 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Tue, 12 Jun 2018 02:51:56 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Tue, 12 Jun 2018 02:51:56 GMT
COPY file:86f4388d222242a09aa5d0770f4d43e6e97716e20d4bb52e229e6044ca70acaa in /usr/local/bin/docker-entrypoint.sh 
# Tue, 12 Jun 2018 02:51:57 GMT
VOLUME [/usr/local/xwiki]
# Tue, 12 Jun 2018 02:51:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Jun 2018 02:51:57 GMT
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
	-	`sha256:7de1ab0de0ca7c209848394d61686a724f229646050eedd40fe5d0e77e7e68ec`  
		Last Modified: Tue, 12 Jun 2018 02:58:35 GMT  
		Size: 225.7 MB (225675259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90704401f7f601c818c8e6238238baadf7fbad1d8bbf13d4488053b1148ffafe`  
		Last Modified: Tue, 12 Jun 2018 02:58:12 GMT  
		Size: 952.1 KB (952116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be7aa4639b0281127b524150d0951940af35e217a7f466ba06ccaa669902504d`  
		Last Modified: Tue, 12 Jun 2018 02:58:11 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2728b9f0c199e3d4be1b249bd97f137bc399bf740f02caf53ac5f4ec02d4dc71`  
		Last Modified: Tue, 12 Jun 2018 02:58:11 GMT  
		Size: 2.3 KB (2316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0449d2f6e6a09141fb960f64c169cf039471048a0fc7db0e3ced3bd445a4d5a`  
		Last Modified: Tue, 12 Jun 2018 02:58:11 GMT  
		Size: 3.6 KB (3615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f22e06e6c0bf5659a8fef41a424fd74191ef354e0e412a9d91d4a2bf3fcaf7`  
		Last Modified: Tue, 12 Jun 2018 02:58:11 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:9-postgres-tomcat`

```console
$ docker pull xwiki@sha256:2536708001632a7f3e96f1d40285a5d99d5f5ab377c5ba6888721e7d6faed572
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:9-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:8217bd1955c68b796bc98c1ed1f858fbc92099cf277b6403852f669ea3cfe1e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **585.0 MB (584954918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a84ac440de16f593a3411143a2cd6e3eeb8335b1ffa488d78c408f17f345dca`
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
# Tue, 12 Jun 2018 02:55:09 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 02:55:10 GMT
ENV XWIKI_VERSION=9.11.5
# Tue, 12 Jun 2018 02:55:10 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.5
# Tue, 12 Jun 2018 02:55:10 GMT
ENV XWIKI_DOWNLOAD_SHA256=177fd372acf0006e3899fb6d116b885f01fc0fb71f7426d139435f6d07872192
# Tue, 12 Jun 2018 02:55:46 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Tue, 12 Jun 2018 02:55:47 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Tue, 12 Jun 2018 02:55:47 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Tue, 12 Jun 2018 02:55:48 GMT
COPY file:7a0ce36c7348308f7754e7d70a4cad74b1c6a11e342ab82fe6e57f1bef38e533 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Tue, 12 Jun 2018 02:55:48 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Tue, 12 Jun 2018 02:55:49 GMT
COPY file:86f4388d222242a09aa5d0770f4d43e6e97716e20d4bb52e229e6044ca70acaa in /usr/local/bin/docker-entrypoint.sh 
# Tue, 12 Jun 2018 02:55:49 GMT
VOLUME [/usr/local/xwiki]
# Tue, 12 Jun 2018 02:55:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Jun 2018 02:55:50 GMT
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
	-	`sha256:c14224c8f2748c30f884b9c384652f83159358086f850e892b1e53936c47b074`  
		Last Modified: Tue, 12 Jun 2018 03:00:52 GMT  
		Size: 161.0 MB (161030489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a895ceb58a9906ae24d09c9faad76adc5c8841cd1122e8b658ef30a6015a1a9`  
		Last Modified: Tue, 12 Jun 2018 03:00:39 GMT  
		Size: 225.7 MB (225675299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5761c5f4d79383d52536f79721eed75695c0c81338a1228f39d60adfe79765f1`  
		Last Modified: Tue, 12 Jun 2018 03:00:16 GMT  
		Size: 618.9 KB (618888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602290d28d7985b33aaf530c535054bf01c2dfedc7d7ad558e5f8e511e7307e8`  
		Last Modified: Tue, 12 Jun 2018 03:00:15 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34efd7e546f520a180860137be085394862cb510fc0ca2faa4933b2af9f13b88`  
		Last Modified: Tue, 12 Jun 2018 03:00:15 GMT  
		Size: 2.4 KB (2427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7534dcd28fa3e0bdfddb596b2c5d800848c426131da99b3a591c3fd92289ac`  
		Last Modified: Tue, 12 Jun 2018 03:00:15 GMT  
		Size: 3.6 KB (3612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1de0b86c6763c1aab8f333483952f8832bbd83dec4f71e5d741009ee14203d`  
		Last Modified: Tue, 12 Jun 2018 03:00:15 GMT  
		Size: 2.5 KB (2459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:latest`

```console
$ docker pull xwiki@sha256:5932370bcaa47467afef21fa3fe10d2582d9adf813d6d16f38dd0ac6b3139210
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:latest` - linux; amd64

```console
$ docker pull xwiki@sha256:eb224c036dc3ec1d02763ea3b78be99b28d551fbf85be0900deafbe4fef25bd3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **594.9 MB (594876277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ef4b633ee8294bca6008b10066f8d5863eae4049e02c13de1ec6ae7ef47081a`
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
# Tue, 12 Jun 2018 02:56:04 GMT
ENV XWIKI_VERSION=10.4
# Tue, 12 Jun 2018 02:56:04 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.4
# Tue, 12 Jun 2018 02:56:04 GMT
ENV XWIKI_DOWNLOAD_SHA256=4e9575813cb8e3c5c6fcb76f7a2df8bb6d0ec36b188235b37612184cb7b56a1a
# Tue, 12 Jun 2018 02:56:42 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Tue, 12 Jun 2018 02:56:43 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Tue, 12 Jun 2018 02:56:43 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Tue, 12 Jun 2018 02:56:43 GMT
COPY file:1d433c8d1a99df71172f6981bdb6f13380e4d62f4dab4246798f9a5203553ca6 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Tue, 12 Jun 2018 02:56:44 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Tue, 12 Jun 2018 02:56:45 GMT
COPY file:5f5be420889bdee3bc9520aa2af7c24fe855aaf5aafcc84e301666b86aa545eb in /usr/local/bin/docker-entrypoint.sh 
# Tue, 12 Jun 2018 02:56:45 GMT
VOLUME [/usr/local/xwiki]
# Tue, 12 Jun 2018 02:56:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Jun 2018 02:56:46 GMT
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
	-	`sha256:5fc8b078ed6eed24fa6deb89e8ff91acba2bee1d360251e1a3e64b772f8051d0`  
		Last Modified: Tue, 12 Jun 2018 03:02:29 GMT  
		Size: 234.8 MB (234846847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c09a854b704e55ee6a6301e631a854d945e467995a6b7c2d3cc0b5bb589f477`  
		Last Modified: Tue, 12 Jun 2018 03:02:08 GMT  
		Size: 952.1 KB (952112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9912b01c0e5fc067bf06a03529affbf74d6ce727e3076ac8b6dac4ec0e50ed72`  
		Last Modified: Tue, 12 Jun 2018 03:02:07 GMT  
		Size: 1.2 KB (1153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da13a309accdd1ad741368d00a7a6a25aa19f33acb2d55293161f7a21c31b378`  
		Last Modified: Tue, 12 Jun 2018 03:02:08 GMT  
		Size: 2.3 KB (2314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e21402c4e4dc28a7f97d6a30130e91a1fcfa17058551935641a553df8aac74`  
		Last Modified: Tue, 12 Jun 2018 03:02:07 GMT  
		Size: 3.6 KB (3632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04e646a496360edf2cdce93f2ca1e1d0b44684cf6cfaf96c2bcf1459c95eaecb`  
		Last Modified: Tue, 12 Jun 2018 03:02:08 GMT  
		Size: 2.4 KB (2381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:lts`

```console
$ docker pull xwiki@sha256:8c3322aaf9e46e55a564d16a8e085698dc41c056f9896354665cec4774ee12ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:lts` - linux; amd64

```console
$ docker pull xwiki@sha256:2705f38e6acaf39d06672104ece2ed80fd58990574491bdc3f51927e27b7b93a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **585.7 MB (585704758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:605fa2e701e9026394e39c40a28957f3c2773a642f7d98d72e1762a4fa916eaf`
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
# Tue, 12 Jun 2018 02:51:18 GMT
ENV XWIKI_VERSION=9.11.5
# Tue, 12 Jun 2018 02:51:18 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.5
# Tue, 12 Jun 2018 02:51:18 GMT
ENV XWIKI_DOWNLOAD_SHA256=177fd372acf0006e3899fb6d116b885f01fc0fb71f7426d139435f6d07872192
# Tue, 12 Jun 2018 02:51:54 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Tue, 12 Jun 2018 02:51:54 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Tue, 12 Jun 2018 02:51:55 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Tue, 12 Jun 2018 02:51:55 GMT
COPY file:1d433c8d1a99df71172f6981bdb6f13380e4d62f4dab4246798f9a5203553ca6 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Tue, 12 Jun 2018 02:51:56 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Tue, 12 Jun 2018 02:51:56 GMT
COPY file:86f4388d222242a09aa5d0770f4d43e6e97716e20d4bb52e229e6044ca70acaa in /usr/local/bin/docker-entrypoint.sh 
# Tue, 12 Jun 2018 02:51:57 GMT
VOLUME [/usr/local/xwiki]
# Tue, 12 Jun 2018 02:51:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Jun 2018 02:51:57 GMT
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
	-	`sha256:7de1ab0de0ca7c209848394d61686a724f229646050eedd40fe5d0e77e7e68ec`  
		Last Modified: Tue, 12 Jun 2018 02:58:35 GMT  
		Size: 225.7 MB (225675259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90704401f7f601c818c8e6238238baadf7fbad1d8bbf13d4488053b1148ffafe`  
		Last Modified: Tue, 12 Jun 2018 02:58:12 GMT  
		Size: 952.1 KB (952116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be7aa4639b0281127b524150d0951940af35e217a7f466ba06ccaa669902504d`  
		Last Modified: Tue, 12 Jun 2018 02:58:11 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2728b9f0c199e3d4be1b249bd97f137bc399bf740f02caf53ac5f4ec02d4dc71`  
		Last Modified: Tue, 12 Jun 2018 02:58:11 GMT  
		Size: 2.3 KB (2316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0449d2f6e6a09141fb960f64c169cf039471048a0fc7db0e3ced3bd445a4d5a`  
		Last Modified: Tue, 12 Jun 2018 02:58:11 GMT  
		Size: 3.6 KB (3615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f22e06e6c0bf5659a8fef41a424fd74191ef354e0e412a9d91d4a2bf3fcaf7`  
		Last Modified: Tue, 12 Jun 2018 02:58:11 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:lts-mysql`

```console
$ docker pull xwiki@sha256:8c3322aaf9e46e55a564d16a8e085698dc41c056f9896354665cec4774ee12ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:lts-mysql` - linux; amd64

```console
$ docker pull xwiki@sha256:2705f38e6acaf39d06672104ece2ed80fd58990574491bdc3f51927e27b7b93a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **585.7 MB (585704758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:605fa2e701e9026394e39c40a28957f3c2773a642f7d98d72e1762a4fa916eaf`
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
# Tue, 12 Jun 2018 02:51:18 GMT
ENV XWIKI_VERSION=9.11.5
# Tue, 12 Jun 2018 02:51:18 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.5
# Tue, 12 Jun 2018 02:51:18 GMT
ENV XWIKI_DOWNLOAD_SHA256=177fd372acf0006e3899fb6d116b885f01fc0fb71f7426d139435f6d07872192
# Tue, 12 Jun 2018 02:51:54 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Tue, 12 Jun 2018 02:51:54 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Tue, 12 Jun 2018 02:51:55 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Tue, 12 Jun 2018 02:51:55 GMT
COPY file:1d433c8d1a99df71172f6981bdb6f13380e4d62f4dab4246798f9a5203553ca6 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Tue, 12 Jun 2018 02:51:56 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Tue, 12 Jun 2018 02:51:56 GMT
COPY file:86f4388d222242a09aa5d0770f4d43e6e97716e20d4bb52e229e6044ca70acaa in /usr/local/bin/docker-entrypoint.sh 
# Tue, 12 Jun 2018 02:51:57 GMT
VOLUME [/usr/local/xwiki]
# Tue, 12 Jun 2018 02:51:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Jun 2018 02:51:57 GMT
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
	-	`sha256:7de1ab0de0ca7c209848394d61686a724f229646050eedd40fe5d0e77e7e68ec`  
		Last Modified: Tue, 12 Jun 2018 02:58:35 GMT  
		Size: 225.7 MB (225675259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90704401f7f601c818c8e6238238baadf7fbad1d8bbf13d4488053b1148ffafe`  
		Last Modified: Tue, 12 Jun 2018 02:58:12 GMT  
		Size: 952.1 KB (952116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be7aa4639b0281127b524150d0951940af35e217a7f466ba06ccaa669902504d`  
		Last Modified: Tue, 12 Jun 2018 02:58:11 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2728b9f0c199e3d4be1b249bd97f137bc399bf740f02caf53ac5f4ec02d4dc71`  
		Last Modified: Tue, 12 Jun 2018 02:58:11 GMT  
		Size: 2.3 KB (2316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0449d2f6e6a09141fb960f64c169cf039471048a0fc7db0e3ced3bd445a4d5a`  
		Last Modified: Tue, 12 Jun 2018 02:58:11 GMT  
		Size: 3.6 KB (3615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f22e06e6c0bf5659a8fef41a424fd74191ef354e0e412a9d91d4a2bf3fcaf7`  
		Last Modified: Tue, 12 Jun 2018 02:58:11 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:lts-mysql-tomcat`

```console
$ docker pull xwiki@sha256:8c3322aaf9e46e55a564d16a8e085698dc41c056f9896354665cec4774ee12ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:lts-mysql-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:2705f38e6acaf39d06672104ece2ed80fd58990574491bdc3f51927e27b7b93a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **585.7 MB (585704758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:605fa2e701e9026394e39c40a28957f3c2773a642f7d98d72e1762a4fa916eaf`
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
# Tue, 12 Jun 2018 02:51:18 GMT
ENV XWIKI_VERSION=9.11.5
# Tue, 12 Jun 2018 02:51:18 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.5
# Tue, 12 Jun 2018 02:51:18 GMT
ENV XWIKI_DOWNLOAD_SHA256=177fd372acf0006e3899fb6d116b885f01fc0fb71f7426d139435f6d07872192
# Tue, 12 Jun 2018 02:51:54 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Tue, 12 Jun 2018 02:51:54 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Tue, 12 Jun 2018 02:51:55 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Tue, 12 Jun 2018 02:51:55 GMT
COPY file:1d433c8d1a99df71172f6981bdb6f13380e4d62f4dab4246798f9a5203553ca6 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Tue, 12 Jun 2018 02:51:56 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Tue, 12 Jun 2018 02:51:56 GMT
COPY file:86f4388d222242a09aa5d0770f4d43e6e97716e20d4bb52e229e6044ca70acaa in /usr/local/bin/docker-entrypoint.sh 
# Tue, 12 Jun 2018 02:51:57 GMT
VOLUME [/usr/local/xwiki]
# Tue, 12 Jun 2018 02:51:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Jun 2018 02:51:57 GMT
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
	-	`sha256:7de1ab0de0ca7c209848394d61686a724f229646050eedd40fe5d0e77e7e68ec`  
		Last Modified: Tue, 12 Jun 2018 02:58:35 GMT  
		Size: 225.7 MB (225675259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90704401f7f601c818c8e6238238baadf7fbad1d8bbf13d4488053b1148ffafe`  
		Last Modified: Tue, 12 Jun 2018 02:58:12 GMT  
		Size: 952.1 KB (952116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be7aa4639b0281127b524150d0951940af35e217a7f466ba06ccaa669902504d`  
		Last Modified: Tue, 12 Jun 2018 02:58:11 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2728b9f0c199e3d4be1b249bd97f137bc399bf740f02caf53ac5f4ec02d4dc71`  
		Last Modified: Tue, 12 Jun 2018 02:58:11 GMT  
		Size: 2.3 KB (2316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0449d2f6e6a09141fb960f64c169cf039471048a0fc7db0e3ced3bd445a4d5a`  
		Last Modified: Tue, 12 Jun 2018 02:58:11 GMT  
		Size: 3.6 KB (3615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f22e06e6c0bf5659a8fef41a424fd74191ef354e0e412a9d91d4a2bf3fcaf7`  
		Last Modified: Tue, 12 Jun 2018 02:58:11 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:lts-postgres`

```console
$ docker pull xwiki@sha256:2536708001632a7f3e96f1d40285a5d99d5f5ab377c5ba6888721e7d6faed572
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:lts-postgres` - linux; amd64

```console
$ docker pull xwiki@sha256:8217bd1955c68b796bc98c1ed1f858fbc92099cf277b6403852f669ea3cfe1e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **585.0 MB (584954918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a84ac440de16f593a3411143a2cd6e3eeb8335b1ffa488d78c408f17f345dca`
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
# Tue, 12 Jun 2018 02:55:09 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 02:55:10 GMT
ENV XWIKI_VERSION=9.11.5
# Tue, 12 Jun 2018 02:55:10 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.5
# Tue, 12 Jun 2018 02:55:10 GMT
ENV XWIKI_DOWNLOAD_SHA256=177fd372acf0006e3899fb6d116b885f01fc0fb71f7426d139435f6d07872192
# Tue, 12 Jun 2018 02:55:46 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Tue, 12 Jun 2018 02:55:47 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Tue, 12 Jun 2018 02:55:47 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Tue, 12 Jun 2018 02:55:48 GMT
COPY file:7a0ce36c7348308f7754e7d70a4cad74b1c6a11e342ab82fe6e57f1bef38e533 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Tue, 12 Jun 2018 02:55:48 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Tue, 12 Jun 2018 02:55:49 GMT
COPY file:86f4388d222242a09aa5d0770f4d43e6e97716e20d4bb52e229e6044ca70acaa in /usr/local/bin/docker-entrypoint.sh 
# Tue, 12 Jun 2018 02:55:49 GMT
VOLUME [/usr/local/xwiki]
# Tue, 12 Jun 2018 02:55:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Jun 2018 02:55:50 GMT
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
	-	`sha256:c14224c8f2748c30f884b9c384652f83159358086f850e892b1e53936c47b074`  
		Last Modified: Tue, 12 Jun 2018 03:00:52 GMT  
		Size: 161.0 MB (161030489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a895ceb58a9906ae24d09c9faad76adc5c8841cd1122e8b658ef30a6015a1a9`  
		Last Modified: Tue, 12 Jun 2018 03:00:39 GMT  
		Size: 225.7 MB (225675299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5761c5f4d79383d52536f79721eed75695c0c81338a1228f39d60adfe79765f1`  
		Last Modified: Tue, 12 Jun 2018 03:00:16 GMT  
		Size: 618.9 KB (618888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602290d28d7985b33aaf530c535054bf01c2dfedc7d7ad558e5f8e511e7307e8`  
		Last Modified: Tue, 12 Jun 2018 03:00:15 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34efd7e546f520a180860137be085394862cb510fc0ca2faa4933b2af9f13b88`  
		Last Modified: Tue, 12 Jun 2018 03:00:15 GMT  
		Size: 2.4 KB (2427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7534dcd28fa3e0bdfddb596b2c5d800848c426131da99b3a591c3fd92289ac`  
		Last Modified: Tue, 12 Jun 2018 03:00:15 GMT  
		Size: 3.6 KB (3612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1de0b86c6763c1aab8f333483952f8832bbd83dec4f71e5d741009ee14203d`  
		Last Modified: Tue, 12 Jun 2018 03:00:15 GMT  
		Size: 2.5 KB (2459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:lts-postgres-tomcat`

```console
$ docker pull xwiki@sha256:2536708001632a7f3e96f1d40285a5d99d5f5ab377c5ba6888721e7d6faed572
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:lts-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:8217bd1955c68b796bc98c1ed1f858fbc92099cf277b6403852f669ea3cfe1e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **585.0 MB (584954918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a84ac440de16f593a3411143a2cd6e3eeb8335b1ffa488d78c408f17f345dca`
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
# Tue, 12 Jun 2018 02:55:09 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 02:55:10 GMT
ENV XWIKI_VERSION=9.11.5
# Tue, 12 Jun 2018 02:55:10 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.5
# Tue, 12 Jun 2018 02:55:10 GMT
ENV XWIKI_DOWNLOAD_SHA256=177fd372acf0006e3899fb6d116b885f01fc0fb71f7426d139435f6d07872192
# Tue, 12 Jun 2018 02:55:46 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Tue, 12 Jun 2018 02:55:47 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Tue, 12 Jun 2018 02:55:47 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Tue, 12 Jun 2018 02:55:48 GMT
COPY file:7a0ce36c7348308f7754e7d70a4cad74b1c6a11e342ab82fe6e57f1bef38e533 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Tue, 12 Jun 2018 02:55:48 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Tue, 12 Jun 2018 02:55:49 GMT
COPY file:86f4388d222242a09aa5d0770f4d43e6e97716e20d4bb52e229e6044ca70acaa in /usr/local/bin/docker-entrypoint.sh 
# Tue, 12 Jun 2018 02:55:49 GMT
VOLUME [/usr/local/xwiki]
# Tue, 12 Jun 2018 02:55:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Jun 2018 02:55:50 GMT
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
	-	`sha256:c14224c8f2748c30f884b9c384652f83159358086f850e892b1e53936c47b074`  
		Last Modified: Tue, 12 Jun 2018 03:00:52 GMT  
		Size: 161.0 MB (161030489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a895ceb58a9906ae24d09c9faad76adc5c8841cd1122e8b658ef30a6015a1a9`  
		Last Modified: Tue, 12 Jun 2018 03:00:39 GMT  
		Size: 225.7 MB (225675299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5761c5f4d79383d52536f79721eed75695c0c81338a1228f39d60adfe79765f1`  
		Last Modified: Tue, 12 Jun 2018 03:00:16 GMT  
		Size: 618.9 KB (618888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602290d28d7985b33aaf530c535054bf01c2dfedc7d7ad558e5f8e511e7307e8`  
		Last Modified: Tue, 12 Jun 2018 03:00:15 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34efd7e546f520a180860137be085394862cb510fc0ca2faa4933b2af9f13b88`  
		Last Modified: Tue, 12 Jun 2018 03:00:15 GMT  
		Size: 2.4 KB (2427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7534dcd28fa3e0bdfddb596b2c5d800848c426131da99b3a591c3fd92289ac`  
		Last Modified: Tue, 12 Jun 2018 03:00:15 GMT  
		Size: 3.6 KB (3612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1de0b86c6763c1aab8f333483952f8832bbd83dec4f71e5d741009ee14203d`  
		Last Modified: Tue, 12 Jun 2018 03:00:15 GMT  
		Size: 2.5 KB (2459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:mysql-tomcat`

```console
$ docker pull xwiki@sha256:8c3322aaf9e46e55a564d16a8e085698dc41c056f9896354665cec4774ee12ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:mysql-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:2705f38e6acaf39d06672104ece2ed80fd58990574491bdc3f51927e27b7b93a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **585.7 MB (585704758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:605fa2e701e9026394e39c40a28957f3c2773a642f7d98d72e1762a4fa916eaf`
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
# Tue, 12 Jun 2018 02:51:18 GMT
ENV XWIKI_VERSION=9.11.5
# Tue, 12 Jun 2018 02:51:18 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.5
# Tue, 12 Jun 2018 02:51:18 GMT
ENV XWIKI_DOWNLOAD_SHA256=177fd372acf0006e3899fb6d116b885f01fc0fb71f7426d139435f6d07872192
# Tue, 12 Jun 2018 02:51:54 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Tue, 12 Jun 2018 02:51:54 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Tue, 12 Jun 2018 02:51:55 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Tue, 12 Jun 2018 02:51:55 GMT
COPY file:1d433c8d1a99df71172f6981bdb6f13380e4d62f4dab4246798f9a5203553ca6 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Tue, 12 Jun 2018 02:51:56 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Tue, 12 Jun 2018 02:51:56 GMT
COPY file:86f4388d222242a09aa5d0770f4d43e6e97716e20d4bb52e229e6044ca70acaa in /usr/local/bin/docker-entrypoint.sh 
# Tue, 12 Jun 2018 02:51:57 GMT
VOLUME [/usr/local/xwiki]
# Tue, 12 Jun 2018 02:51:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Jun 2018 02:51:57 GMT
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
	-	`sha256:7de1ab0de0ca7c209848394d61686a724f229646050eedd40fe5d0e77e7e68ec`  
		Last Modified: Tue, 12 Jun 2018 02:58:35 GMT  
		Size: 225.7 MB (225675259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90704401f7f601c818c8e6238238baadf7fbad1d8bbf13d4488053b1148ffafe`  
		Last Modified: Tue, 12 Jun 2018 02:58:12 GMT  
		Size: 952.1 KB (952116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be7aa4639b0281127b524150d0951940af35e217a7f466ba06ccaa669902504d`  
		Last Modified: Tue, 12 Jun 2018 02:58:11 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2728b9f0c199e3d4be1b249bd97f137bc399bf740f02caf53ac5f4ec02d4dc71`  
		Last Modified: Tue, 12 Jun 2018 02:58:11 GMT  
		Size: 2.3 KB (2316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0449d2f6e6a09141fb960f64c169cf039471048a0fc7db0e3ced3bd445a4d5a`  
		Last Modified: Tue, 12 Jun 2018 02:58:11 GMT  
		Size: 3.6 KB (3615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f22e06e6c0bf5659a8fef41a424fd74191ef354e0e412a9d91d4a2bf3fcaf7`  
		Last Modified: Tue, 12 Jun 2018 02:58:11 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:postgres-tomcat`

```console
$ docker pull xwiki@sha256:2536708001632a7f3e96f1d40285a5d99d5f5ab377c5ba6888721e7d6faed572
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:8217bd1955c68b796bc98c1ed1f858fbc92099cf277b6403852f669ea3cfe1e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **585.0 MB (584954918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a84ac440de16f593a3411143a2cd6e3eeb8335b1ffa488d78c408f17f345dca`
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
# Tue, 12 Jun 2018 02:55:09 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 02:55:10 GMT
ENV XWIKI_VERSION=9.11.5
# Tue, 12 Jun 2018 02:55:10 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.5
# Tue, 12 Jun 2018 02:55:10 GMT
ENV XWIKI_DOWNLOAD_SHA256=177fd372acf0006e3899fb6d116b885f01fc0fb71f7426d139435f6d07872192
# Tue, 12 Jun 2018 02:55:46 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Tue, 12 Jun 2018 02:55:47 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Tue, 12 Jun 2018 02:55:47 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Tue, 12 Jun 2018 02:55:48 GMT
COPY file:7a0ce36c7348308f7754e7d70a4cad74b1c6a11e342ab82fe6e57f1bef38e533 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Tue, 12 Jun 2018 02:55:48 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Tue, 12 Jun 2018 02:55:49 GMT
COPY file:86f4388d222242a09aa5d0770f4d43e6e97716e20d4bb52e229e6044ca70acaa in /usr/local/bin/docker-entrypoint.sh 
# Tue, 12 Jun 2018 02:55:49 GMT
VOLUME [/usr/local/xwiki]
# Tue, 12 Jun 2018 02:55:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Jun 2018 02:55:50 GMT
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
	-	`sha256:c14224c8f2748c30f884b9c384652f83159358086f850e892b1e53936c47b074`  
		Last Modified: Tue, 12 Jun 2018 03:00:52 GMT  
		Size: 161.0 MB (161030489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a895ceb58a9906ae24d09c9faad76adc5c8841cd1122e8b658ef30a6015a1a9`  
		Last Modified: Tue, 12 Jun 2018 03:00:39 GMT  
		Size: 225.7 MB (225675299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5761c5f4d79383d52536f79721eed75695c0c81338a1228f39d60adfe79765f1`  
		Last Modified: Tue, 12 Jun 2018 03:00:16 GMT  
		Size: 618.9 KB (618888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602290d28d7985b33aaf530c535054bf01c2dfedc7d7ad558e5f8e511e7307e8`  
		Last Modified: Tue, 12 Jun 2018 03:00:15 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34efd7e546f520a180860137be085394862cb510fc0ca2faa4933b2af9f13b88`  
		Last Modified: Tue, 12 Jun 2018 03:00:15 GMT  
		Size: 2.4 KB (2427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7534dcd28fa3e0bdfddb596b2c5d800848c426131da99b3a591c3fd92289ac`  
		Last Modified: Tue, 12 Jun 2018 03:00:15 GMT  
		Size: 3.6 KB (3612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1de0b86c6763c1aab8f333483952f8832bbd83dec4f71e5d741009ee14203d`  
		Last Modified: Tue, 12 Jun 2018 03:00:15 GMT  
		Size: 2.5 KB (2459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:stable`

```console
$ docker pull xwiki@sha256:e3af61e148323685ab3ffd0ef5fbbedf1e3518a0af9d0e9743eb447a5b4b7873
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:stable` - linux; amd64

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

## `xwiki:stable-mysql`

```console
$ docker pull xwiki@sha256:e3af61e148323685ab3ffd0ef5fbbedf1e3518a0af9d0e9743eb447a5b4b7873
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:stable-mysql` - linux; amd64

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

## `xwiki:stable-mysql-tomcat`

```console
$ docker pull xwiki@sha256:e3af61e148323685ab3ffd0ef5fbbedf1e3518a0af9d0e9743eb447a5b4b7873
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:stable-mysql-tomcat` - linux; amd64

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

## `xwiki:stable-postgres`

```console
$ docker pull xwiki@sha256:543c90efce5bd31d7fa17eeaf8a0777737f0b04d1601746680b4e71fd9327561
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:stable-postgres` - linux; amd64

```console
$ docker pull xwiki@sha256:7388b9539e820bdff6ac88fd005664cc4b3487e738662ec7438f02c07f3dfb3b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **595.4 MB (595431755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:144234de5230c9e635b58d5316498722ac2654fe780d5af217ba757f82a891a1`
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
# Tue, 12 Jun 2018 02:55:09 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Thu, 21 Jun 2018 19:26:54 GMT
ENV XWIKI_VERSION=10.5
# Thu, 21 Jun 2018 19:26:54 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.5
# Thu, 21 Jun 2018 19:26:54 GMT
ENV XWIKI_DOWNLOAD_SHA256=e49addc6ef33bfbb8ef6587418a5e122329fbb81bc3fd272b1bf0e4805071e96
# Thu, 21 Jun 2018 19:27:44 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Thu, 21 Jun 2018 19:27:45 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Thu, 21 Jun 2018 19:27:45 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Thu, 21 Jun 2018 19:27:45 GMT
COPY file:7a0ce36c7348308f7754e7d70a4cad74b1c6a11e342ab82fe6e57f1bef38e533 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Thu, 21 Jun 2018 19:27:46 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Thu, 21 Jun 2018 19:27:46 GMT
COPY file:5f5be420889bdee3bc9520aa2af7c24fe855aaf5aafcc84e301666b86aa545eb in /usr/local/bin/docker-entrypoint.sh 
# Thu, 21 Jun 2018 19:27:47 GMT
VOLUME [/usr/local/xwiki]
# Thu, 21 Jun 2018 19:27:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Jun 2018 19:27:48 GMT
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
	-	`sha256:c14224c8f2748c30f884b9c384652f83159358086f850e892b1e53936c47b074`  
		Last Modified: Tue, 12 Jun 2018 03:00:52 GMT  
		Size: 161.0 MB (161030489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c920c6ce4e160decf35fe40f66932c76c9aee6b9d3e6068759153cdd8d3159`  
		Last Modified: Thu, 21 Jun 2018 19:30:26 GMT  
		Size: 236.2 MB (236152151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb5405a49ef04c42b8df4288288e0fe1e0d32f0a871cccb5b95337998545797d`  
		Last Modified: Thu, 21 Jun 2018 19:30:08 GMT  
		Size: 618.9 KB (618886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beb0b054e6ea3c2bbee9998773d33385b25f2e8c8b96d7a04ab68e2fbd2ff3d8`  
		Last Modified: Thu, 21 Jun 2018 19:30:08 GMT  
		Size: 1.2 KB (1153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8565ce62e89740267bfe095143e82b9b97eb8e003ae4f7e554ae79e53d245ee`  
		Last Modified: Thu, 21 Jun 2018 19:30:08 GMT  
		Size: 2.4 KB (2428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a09400f3018ed4177eb1a70cbe38da7abb8c5b257c9d17e190d7e3d4ea673d`  
		Last Modified: Thu, 21 Jun 2018 19:30:08 GMT  
		Size: 3.7 KB (3677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286c434f0ce3d6ba03a81c3ed869bb40880379acf78be7896ad90acafcc93be4`  
		Last Modified: Thu, 21 Jun 2018 19:30:08 GMT  
		Size: 2.4 KB (2381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `xwiki:stable-postgres-tomcat`

```console
$ docker pull xwiki@sha256:543c90efce5bd31d7fa17eeaf8a0777737f0b04d1601746680b4e71fd9327561
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:stable-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:7388b9539e820bdff6ac88fd005664cc4b3487e738662ec7438f02c07f3dfb3b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **595.4 MB (595431755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:144234de5230c9e635b58d5316498722ac2654fe780d5af217ba757f82a891a1`
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
# Tue, 12 Jun 2018 02:55:09 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Thu, 21 Jun 2018 19:26:54 GMT
ENV XWIKI_VERSION=10.5
# Thu, 21 Jun 2018 19:26:54 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.5
# Thu, 21 Jun 2018 19:26:54 GMT
ENV XWIKI_DOWNLOAD_SHA256=e49addc6ef33bfbb8ef6587418a5e122329fbb81bc3fd272b1bf0e4805071e96
# Thu, 21 Jun 2018 19:27:44 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Thu, 21 Jun 2018 19:27:45 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Thu, 21 Jun 2018 19:27:45 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Thu, 21 Jun 2018 19:27:45 GMT
COPY file:7a0ce36c7348308f7754e7d70a4cad74b1c6a11e342ab82fe6e57f1bef38e533 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Thu, 21 Jun 2018 19:27:46 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Thu, 21 Jun 2018 19:27:46 GMT
COPY file:5f5be420889bdee3bc9520aa2af7c24fe855aaf5aafcc84e301666b86aa545eb in /usr/local/bin/docker-entrypoint.sh 
# Thu, 21 Jun 2018 19:27:47 GMT
VOLUME [/usr/local/xwiki]
# Thu, 21 Jun 2018 19:27:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Jun 2018 19:27:48 GMT
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
	-	`sha256:c14224c8f2748c30f884b9c384652f83159358086f850e892b1e53936c47b074`  
		Last Modified: Tue, 12 Jun 2018 03:00:52 GMT  
		Size: 161.0 MB (161030489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c920c6ce4e160decf35fe40f66932c76c9aee6b9d3e6068759153cdd8d3159`  
		Last Modified: Thu, 21 Jun 2018 19:30:26 GMT  
		Size: 236.2 MB (236152151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb5405a49ef04c42b8df4288288e0fe1e0d32f0a871cccb5b95337998545797d`  
		Last Modified: Thu, 21 Jun 2018 19:30:08 GMT  
		Size: 618.9 KB (618886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beb0b054e6ea3c2bbee9998773d33385b25f2e8c8b96d7a04ab68e2fbd2ff3d8`  
		Last Modified: Thu, 21 Jun 2018 19:30:08 GMT  
		Size: 1.2 KB (1153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8565ce62e89740267bfe095143e82b9b97eb8e003ae4f7e554ae79e53d245ee`  
		Last Modified: Thu, 21 Jun 2018 19:30:08 GMT  
		Size: 2.4 KB (2428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a09400f3018ed4177eb1a70cbe38da7abb8c5b257c9d17e190d7e3d4ea673d`  
		Last Modified: Thu, 21 Jun 2018 19:30:08 GMT  
		Size: 3.7 KB (3677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286c434f0ce3d6ba03a81c3ed869bb40880379acf78be7896ad90acafcc93be4`  
		Last Modified: Thu, 21 Jun 2018 19:30:08 GMT  
		Size: 2.4 KB (2381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
