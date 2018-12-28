## `xwiki:stable-postgres-tomcat`

```console
$ docker pull xwiki@sha256:dc8d27675d5f6e0c72b6e730a9722dd0297b32e703093dde0cc4eae2e2989688
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `xwiki:stable-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:215b0c5d81be87ecb7a398d0e23e0eb2dfe2cbbbd63767bcca6685789fb063bf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **607.1 MB (607086998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36925cd0d98be1aa74e32fcc920664d58707a6999d5b902cc3d6ab0851873806`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 15:01:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 15:01:54 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 15:01:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 15:01:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 15:01:57 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 16 Nov 2018 15:01:58 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 15:01:58 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 26 Dec 2018 08:35:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 09:34:45 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 26 Dec 2018 09:34:45 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 09:34:46 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 26 Dec 2018 09:34:46 GMT
WORKDIR /usr/local/tomcat
# Wed, 26 Dec 2018 09:34:46 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 26 Dec 2018 09:34:46 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 26 Dec 2018 09:34:46 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 26 Dec 2018 09:34:51 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Dec 2018 09:34:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 09:34:56 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 26 Dec 2018 09:37:40 GMT
ENV TOMCAT_MAJOR=8
# Wed, 26 Dec 2018 09:37:40 GMT
ENV TOMCAT_VERSION=8.5.37
# Wed, 26 Dec 2018 09:37:40 GMT
ENV TOMCAT_SHA512=be6d6df8b49a760b2e181d4a45d8e6dc7bba5ef2ec6a000f8562cf5f34db5b7fac300cba65bca782bfd25a9f9d8d4a48625f1ad046115c1d6629ea5f210a2718
# Wed, 26 Dec 2018 09:37:41 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz
# Wed, 26 Dec 2018 09:37:41 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc
# Wed, 26 Dec 2018 09:38:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Wed, 26 Dec 2018 09:38:21 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 26 Dec 2018 09:38:21 GMT
EXPOSE 8080
# Wed, 26 Dec 2018 09:38:22 GMT
CMD ["catalina.sh" "run"]
# Wed, 26 Dec 2018 10:36:31 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Wed, 26 Dec 2018 10:38:22 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Thu, 27 Dec 2018 22:20:51 GMT
ENV XWIKI_VERSION=10.11
# Thu, 27 Dec 2018 22:20:52 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.11
# Thu, 27 Dec 2018 22:20:52 GMT
ENV XWIKI_DOWNLOAD_SHA256=e926bbb7c339d3308c6b11d2c2699a072fc535aeba5c18a30c6f9c10fe395ec7
# Thu, 27 Dec 2018 22:21:25 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Thu, 27 Dec 2018 22:21:26 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Thu, 27 Dec 2018 22:21:26 GMT
COPY file:1bfb464d9ffbc4b2641e16ea3462f548658d64a99d68b666c0a19a602f1c4763 in /usr/local/tomcat/bin/ 
# Thu, 27 Dec 2018 22:21:27 GMT
COPY file:dda012d0f6fc0098c2752af86314e191fc377279364c22a1ba9f690d7d0d6ca8 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Thu, 27 Dec 2018 22:21:27 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Thu, 27 Dec 2018 22:21:28 GMT
COPY file:68e7bd92c597bf38d36e9f48dd0c065817e3afacc4ecfe0615bd20c97da58ee5 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 27 Dec 2018 22:21:28 GMT
VOLUME [/usr/local/xwiki]
# Thu, 27 Dec 2018 22:21:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Dec 2018 22:21:28 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95065f2209613c11cdaf4499a2dba0c6cb9c53fc05732dc76c4c6f4b47453717`  
		Last Modified: Fri, 16 Nov 2018 16:03:38 GMT  
		Size: 852.9 KB (852875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0887630ce5768a45764e3bf0ed5382223216df24ba08ce3e4c952a88398647ba`  
		Last Modified: Fri, 16 Nov 2018 16:03:38 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c375d1959fab484c9c7450d5ee70b2cfc05ff12fb04bcd3bed888cc8a84bb2de`  
		Last Modified: Fri, 16 Nov 2018 16:03:38 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4be5be9c02ec72bd7fa5c7f1893d41ae309772fb64a5c030de73511f37c5e7d`  
		Last Modified: Wed, 26 Dec 2018 08:41:14 GMT  
		Size: 122.1 MB (122120655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e7a206fe00487b4654924085b4ad26d2a5c128ddeecb38530cf17e389d08fc`  
		Last Modified: Wed, 26 Dec 2018 09:47:32 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60026c5542412969caa136bf956a9d0fde4a714c55624b0e71c8443dc12fbd21`  
		Last Modified: Wed, 26 Dec 2018 09:47:33 GMT  
		Size: 1.2 MB (1209655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269656a36ba96b002fb201d3603d9c5117124b2555f2f8c2dac081e803b89e6f`  
		Last Modified: Wed, 26 Dec 2018 09:47:32 GMT  
		Size: 528.7 KB (528669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf89847e20d479b72b00a7323c2a011e03ec3933090628cc811106cf578bed2`  
		Last Modified: Wed, 26 Dec 2018 09:47:49 GMT  
		Size: 14.4 MB (14411515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b495b9eeb4e477d60de9ddddcb5b80022a19dd07ce25e13b0c1e7539a91eb1`  
		Last Modified: Wed, 26 Dec 2018 09:47:47 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c677d5242f0b3e41f3d9198bbc1726221cffe70f15319fed23f105856a68a069`  
		Last Modified: Wed, 26 Dec 2018 10:42:17 GMT  
		Size: 161.0 MB (161047557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a97cdbae13a222556120ad5e0c28adcf929819419c0b71b0b6fdbd22a70b0ca`  
		Last Modified: Thu, 27 Dec 2018 22:23:03 GMT  
		Size: 245.9 MB (245886044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e85c4095df4739936f0b1be1a6185592dcd23c18940e5786561ac2182c7f2b7`  
		Last Modified: Thu, 27 Dec 2018 22:22:38 GMT  
		Size: 618.9 KB (618889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e48a9911034ac34ec055fbe16cf2e7e5776b4788d4cd7f802a5ee7a6f254de`  
		Last Modified: Thu, 27 Dec 2018 22:22:38 GMT  
		Size: 1.2 KB (1153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e4776de1d089c60dc623ebdda9c3f05ef2e32044e970c59b175eaa9ca47ce32`  
		Last Modified: Thu, 27 Dec 2018 22:22:38 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45dbcbbcbb2756d60590455689820fa4fa04e1cbc927497fc7bbdafd356c6b4`  
		Last Modified: Thu, 27 Dec 2018 22:22:38 GMT  
		Size: 3.8 KB (3846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:389c3ca4934262b5f9a9cf9b6b5ec4caf7bbc9dd1eb65468dd9113ce058c98fc`  
		Last Modified: Thu, 27 Dec 2018 22:22:38 GMT  
		Size: 2.4 KB (2382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `xwiki:stable-postgres-tomcat` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:3de2cb9bede428dbdf2f89cbbbd021b5bd49bc5beca40737955b321cd76c0983
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **586.7 MB (586661635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63bb0deb69e9b7f1ba3023c712368fca2998b5f0d1a18816949a6742450fd25d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:30:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:30:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 05:03:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 05:03:28 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 05:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 05:03:32 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 05:03:32 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 17 Nov 2018 05:03:33 GMT
ENV JAVA_VERSION=8u181
# Sat, 17 Nov 2018 05:03:34 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 26 Dec 2018 10:19:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 12:07:31 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 26 Dec 2018 12:07:32 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 12:07:35 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 26 Dec 2018 12:07:36 GMT
WORKDIR /usr/local/tomcat
# Wed, 26 Dec 2018 12:07:37 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 26 Dec 2018 12:07:38 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 26 Dec 2018 12:07:39 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 26 Dec 2018 12:07:57 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Dec 2018 12:08:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 12:08:10 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 26 Dec 2018 12:22:24 GMT
ENV TOMCAT_MAJOR=8
# Wed, 26 Dec 2018 12:22:25 GMT
ENV TOMCAT_VERSION=8.5.37
# Wed, 26 Dec 2018 12:22:27 GMT
ENV TOMCAT_SHA512=be6d6df8b49a760b2e181d4a45d8e6dc7bba5ef2ec6a000f8562cf5f34db5b7fac300cba65bca782bfd25a9f9d8d4a48625f1ad046115c1d6629ea5f210a2718
# Wed, 26 Dec 2018 12:22:28 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz
# Wed, 26 Dec 2018 12:22:30 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz.asc
# Wed, 26 Dec 2018 12:26:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Wed, 26 Dec 2018 12:26:43 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 26 Dec 2018 12:26:45 GMT
EXPOSE 8080
# Wed, 26 Dec 2018 12:26:48 GMT
CMD ["catalina.sh" "run"]
# Wed, 26 Dec 2018 14:10:02 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Wed, 26 Dec 2018 14:15:18 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 10:10:49 GMT
ENV XWIKI_VERSION=10.11
# Fri, 28 Dec 2018 10:10:50 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.11
# Fri, 28 Dec 2018 10:10:51 GMT
ENV XWIKI_DOWNLOAD_SHA256=e926bbb7c339d3308c6b11d2c2699a072fc535aeba5c18a30c6f9c10fe395ec7
# Fri, 28 Dec 2018 10:14:01 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Fri, 28 Dec 2018 10:14:06 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Fri, 28 Dec 2018 10:14:07 GMT
COPY file:1bfb464d9ffbc4b2641e16ea3462f548658d64a99d68b666c0a19a602f1c4763 in /usr/local/tomcat/bin/ 
# Fri, 28 Dec 2018 10:14:08 GMT
COPY file:dda012d0f6fc0098c2752af86314e191fc377279364c22a1ba9f690d7d0d6ca8 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Fri, 28 Dec 2018 10:14:12 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Fri, 28 Dec 2018 10:14:14 GMT
COPY file:68e7bd92c597bf38d36e9f48dd0c065817e3afacc4ecfe0615bd20c97da58ee5 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 28 Dec 2018 10:14:15 GMT
VOLUME [/usr/local/xwiki]
# Fri, 28 Dec 2018 10:14:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 28 Dec 2018 10:14:17 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d136331294ced7de67c8e4bea8c807c347632c0aa25c4ec2ae6a7a3e346d6c1`  
		Last Modified: Sat, 17 Nov 2018 02:50:40 GMT  
		Size: 9.7 MB (9690286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c15aa4d980e5d3689a8a8099f7d79fb667611239aab1dfa5447b52f0a24934`  
		Last Modified: Sat, 17 Nov 2018 02:50:38 GMT  
		Size: 4.1 MB (4093102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8050ba47b282917e868af6eab2ca0f22a9fbb40ba6452b38af97d53ba97c6248`  
		Last Modified: Sat, 17 Nov 2018 05:52:27 GMT  
		Size: 839.1 KB (839146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032f795239efef8545d838438d4209bd38dc66778df9a09b73278274bc1768b5`  
		Last Modified: Sat, 17 Nov 2018 05:52:27 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4e4c7cd5a44f16ca5ee171f6fd3d991c115f02b94c885e76cb35b40a2a6d04a`  
		Last Modified: Sat, 17 Nov 2018 05:52:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39770b9edc0b2cd789e1bb83a5f8f044c0be18c5c73bb1ca5d322ba0513aad11`  
		Last Modified: Wed, 26 Dec 2018 10:29:59 GMT  
		Size: 112.8 MB (112755723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d320f9c8d81568fcb7517e15d5e5769c084f6fbe94cf2d06e0032ea6235c199`  
		Last Modified: Wed, 26 Dec 2018 13:36:13 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:324e398396e6f1eb9dce9bd6f8da3481c145decfa9108538b39ec5882b3d0951`  
		Last Modified: Wed, 26 Dec 2018 13:36:13 GMT  
		Size: 1.2 MB (1186193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf9d4cd92fdb168d1bce6ce94a00b0bffaf3f105d176e5651cc1d2af0827924`  
		Last Modified: Wed, 26 Dec 2018 13:36:13 GMT  
		Size: 513.3 KB (513283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa0ddb19bf4d07c42e0b2558b07bf891a994ba8d597becc5c5f2d8655d657ea`  
		Last Modified: Wed, 26 Dec 2018 13:36:48 GMT  
		Size: 14.0 MB (14039247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36a0c30042efca498bff6338d5213dff8b349b00c111671f59a18a96edb8dfbe`  
		Last Modified: Wed, 26 Dec 2018 13:36:44 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4ab640d45d64536a02e08a5caaa3bd20ff3b20f49abf636b94de13b309ac69`  
		Last Modified: Wed, 26 Dec 2018 14:25:26 GMT  
		Size: 153.9 MB (153912433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddbc8ec079756cbcc49f6fbfd96a67051694c6a10aba7e85212deac48e01f756`  
		Last Modified: Fri, 28 Dec 2018 10:15:37 GMT  
		Size: 245.9 MB (245886152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5305778cee515af6dd0f94d8dba6f405ecdf812703bd504e18e7916432aac5f`  
		Last Modified: Fri, 28 Dec 2018 10:14:46 GMT  
		Size: 618.9 KB (618887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24d88e4224450e3f2e7764982fc697f50421df0885281c8c18b1db8856411801`  
		Last Modified: Fri, 28 Dec 2018 10:14:45 GMT  
		Size: 1.1 KB (1150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04542960822b357297b271de6db26727abe889e3be65e0b687ef4f7ba7f71589`  
		Last Modified: Fri, 28 Dec 2018 10:14:46 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5490255dd22f298c018dd7e7d32249aea1599fda0599b113c6d1d91f5abf15`  
		Last Modified: Fri, 28 Dec 2018 10:14:45 GMT  
		Size: 3.8 KB (3845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a7423d68b7ffae53c5ad4464c49522e391ec0f7fd15bb61f08a849039f51be1`  
		Last Modified: Fri, 28 Dec 2018 10:14:46 GMT  
		Size: 2.4 KB (2382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
