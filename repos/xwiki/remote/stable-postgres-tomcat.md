## `xwiki:stable-postgres-tomcat`

```console
$ docker pull xwiki@sha256:6c4c682f96a802d992a766a2ff2357048db734f92afbb04716145a3abcfbc51f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `xwiki:stable-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:0d3fb831376354f4959523aa206b15286b82fed2a5ce737808f9332c64bf142f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **603.2 MB (603175451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b407fc47b9bb28eefcde3bb910c5924c5683dc456e0d11d7298e4c1110a463d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 05:28:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:28:06 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:28:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:28:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:28:08 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 05:28:08 GMT
ENV JAVA_VERSION=8u181
# Mon, 29 Oct 2018 23:30:29 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Mon, 29 Oct 2018 23:30:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 29 Oct 2018 23:31:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 29 Oct 2018 23:31:25 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 05:08:41 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 30 Oct 2018 05:08:41 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 05:08:42 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 30 Oct 2018 05:08:43 GMT
WORKDIR /usr/local/tomcat
# Tue, 30 Oct 2018 05:08:43 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 30 Oct 2018 05:08:43 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 30 Oct 2018 05:08:44 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Tue, 30 Oct 2018 05:08:45 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 30 Oct 2018 05:08:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Oct 2018 05:08:53 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 30 Oct 2018 05:13:36 GMT
ENV TOMCAT_MAJOR=8
# Tue, 30 Oct 2018 05:13:36 GMT
ENV TOMCAT_VERSION=8.5.34
# Tue, 30 Oct 2018 05:13:37 GMT
ENV TOMCAT_SHA512=131dfe23918f33fb24cefa7a03286c786304151f95f7bc0b6e34dfb6b0d1e65fe606e48b85c60c8a522938d1a01a36b540e69c94f36973321858e229731cda82
# Tue, 30 Oct 2018 05:13:37 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.34/bin/apache-tomcat-8.5.34.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.34/bin/apache-tomcat-8.5.34.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.34/bin/apache-tomcat-8.5.34.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.34/bin/apache-tomcat-8.5.34.tar.gz
# Tue, 30 Oct 2018 05:13:37 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.34/bin/apache-tomcat-8.5.34.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.34/bin/apache-tomcat-8.5.34.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.34/bin/apache-tomcat-8.5.34.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.34/bin/apache-tomcat-8.5.34.tar.gz.asc
# Tue, 30 Oct 2018 05:14:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Tue, 30 Oct 2018 05:14:26 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 30 Oct 2018 05:14:26 GMT
EXPOSE 8080/tcp
# Tue, 30 Oct 2018 05:14:27 GMT
CMD ["catalina.sh" "run"]
# Tue, 30 Oct 2018 06:25:13 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Tue, 30 Oct 2018 06:29:15 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Tue, 30 Oct 2018 06:32:12 GMT
ENV XWIKI_VERSION=10.8.1
# Tue, 30 Oct 2018 06:32:12 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.8.1
# Tue, 30 Oct 2018 06:32:12 GMT
ENV XWIKI_DOWNLOAD_SHA256=ed9436b5704e8cd4bc399c017f2ef7cf32e8f18f4e75a4fcc52782d933e9893c
# Tue, 30 Oct 2018 06:32:58 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Tue, 30 Oct 2018 06:32:59 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Tue, 30 Oct 2018 06:32:59 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Tue, 30 Oct 2018 06:32:59 GMT
COPY file:380072ecbcb80c239aa6ef9cc20379ed1abc8cfee60748e696828f8a89551b42 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Tue, 30 Oct 2018 06:33:00 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Tue, 30 Oct 2018 06:33:01 GMT
COPY file:5f5be420889bdee3bc9520aa2af7c24fe855aaf5aafcc84e301666b86aa545eb in /usr/local/bin/docker-entrypoint.sh 
# Tue, 30 Oct 2018 06:33:01 GMT
VOLUME [/usr/local/xwiki]
# Tue, 30 Oct 2018 06:33:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Oct 2018 06:33:02 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d21441932c53a4078f379c7c6d299370a6eaee79c862a29db2e25fec39106779`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 852.9 KB (852895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa76b0d2509232e863931fc1743f1ca2dba3bebdf5f72b4280fae59536303ce7`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346fd8610875e8ba7753030b5c197ad56fe76aa4e45d1e70e4b58366e93177c3`  
		Last Modified: Tue, 16 Oct 2018 05:58:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca5d6af9022c9c3b436792a01c58dd29490430d28b04f70385f308e3bdae8a6`  
		Last Modified: Mon, 29 Oct 2018 23:40:07 GMT  
		Size: 122.1 MB (122121999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06cfa2cea32b36c8f5dcc8605166d1f8b72cf02e44163dbf7d14e0379286b55`  
		Last Modified: Mon, 29 Oct 2018 23:39:44 GMT  
		Size: 246.7 KB (246728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:205950a5a11415cd905adee7b28468a5751aca7cd7ca99bad0743246a866dd4f`  
		Last Modified: Tue, 30 Oct 2018 05:21:17 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6332a55c669effec4bc7bed0853e5aa5e2a991a6454c19f49e2dfb8470875211`  
		Last Modified: Tue, 30 Oct 2018 05:21:15 GMT  
		Size: 528.4 KB (528380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5efe96df0e8c10a6151477d99f6c594c7c9f50a43df6f0bd5d52b17e331313f`  
		Last Modified: Tue, 30 Oct 2018 05:23:24 GMT  
		Size: 10.6 MB (10597509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4e0e542b56a6c4b05a6d2bf8b9a762ad9189f8355c1e63bca4a4bb221a4d0a3`  
		Last Modified: Tue, 30 Oct 2018 05:23:21 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c8d7fe76dd6c7e9d47cf2665d011ba1516b1e03875391e941d75c1688baafc0`  
		Last Modified: Tue, 30 Oct 2018 06:36:30 GMT  
		Size: 161.0 MB (161047684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df824427ed4629a777dfcbf5dcee868e9bfa4166c309818ec10c3b114a96330`  
		Last Modified: Tue, 30 Oct 2018 06:41:12 GMT  
		Size: 246.8 MB (246764991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404e3388396f75bfde44717d69fd4f4864b92b7810a1a75b300f9385e909a9e9`  
		Last Modified: Tue, 30 Oct 2018 06:40:52 GMT  
		Size: 618.9 KB (618879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1efecb72874da7d3eebee7a06e266429135fe83820ea2697b588bf61f474b734`  
		Last Modified: Tue, 30 Oct 2018 06:40:52 GMT  
		Size: 1.2 KB (1151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f49f87bc5c4eba47cce998ba82a92eb95c9f7212527e9cb8545b8fe6bbc1e9d`  
		Last Modified: Tue, 30 Oct 2018 06:40:52 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a847f1cd8c1c8df2eaac9e289bb6bc111f0a9472d2bb7dc8e5fcde46c973a4ce`  
		Last Modified: Tue, 30 Oct 2018 06:40:52 GMT  
		Size: 3.7 KB (3741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e6a250a501310f9eb0bebee3aabf91a5fccf18a51c4628fe9fcc07c5b03df5`  
		Last Modified: Tue, 30 Oct 2018 06:40:52 GMT  
		Size: 2.4 KB (2383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `xwiki:stable-postgres-tomcat` - linux; arm64 variant v8

```console
$ docker pull xwiki@sha256:846689b9a484d50872c50eded5d34aadafb017753e8b5011034b608a3cd2e29d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **583.2 MB (583165459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f8620a775d06b319312036df542a0a75657331f238dbc7d6a4b186e807eeaa3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:01:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:01:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 22:09:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:09:34 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 22:09:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 22:09:42 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 22:09:43 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 16 Oct 2018 22:09:44 GMT
ENV JAVA_VERSION=8u181
# Tue, 16 Oct 2018 22:09:45 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 16 Oct 2018 22:09:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 16 Oct 2018 22:14:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 22:14:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 Oct 2018 23:38:57 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 16 Oct 2018 23:38:58 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 23:39:00 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 16 Oct 2018 23:39:01 GMT
WORKDIR /usr/local/tomcat
# Tue, 16 Oct 2018 23:39:02 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 16 Oct 2018 23:39:03 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 16 Oct 2018 23:39:03 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Tue, 16 Oct 2018 23:39:06 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 23:39:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 23:39:24 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 16 Oct 2018 23:52:33 GMT
ENV TOMCAT_MAJOR=8
# Tue, 16 Oct 2018 23:52:34 GMT
ENV TOMCAT_VERSION=8.5.34
# Tue, 16 Oct 2018 23:52:34 GMT
ENV TOMCAT_SHA512=131dfe23918f33fb24cefa7a03286c786304151f95f7bc0b6e34dfb6b0d1e65fe606e48b85c60c8a522938d1a01a36b540e69c94f36973321858e229731cda82
# Tue, 16 Oct 2018 23:52:35 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.34/bin/apache-tomcat-8.5.34.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.34/bin/apache-tomcat-8.5.34.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.34/bin/apache-tomcat-8.5.34.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.34/bin/apache-tomcat-8.5.34.tar.gz
# Tue, 16 Oct 2018 23:52:36 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.34/bin/apache-tomcat-8.5.34.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.34/bin/apache-tomcat-8.5.34.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.34/bin/apache-tomcat-8.5.34.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.34/bin/apache-tomcat-8.5.34.tar.gz.asc
# Tue, 16 Oct 2018 23:54:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Tue, 16 Oct 2018 23:54:36 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 16 Oct 2018 23:54:37 GMT
EXPOSE 8080/tcp
# Tue, 16 Oct 2018 23:54:44 GMT
CMD ["catalina.sh" "run"]
# Wed, 17 Oct 2018 08:50:34 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Wed, 17 Oct 2018 08:53:50 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 08:56:56 GMT
ENV XWIKI_VERSION=10.8.1
# Wed, 17 Oct 2018 08:56:57 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.8.1
# Wed, 17 Oct 2018 08:56:58 GMT
ENV XWIKI_DOWNLOAD_SHA256=ed9436b5704e8cd4bc399c017f2ef7cf32e8f18f4e75a4fcc52782d933e9893c
# Wed, 17 Oct 2018 09:01:00 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Wed, 17 Oct 2018 09:01:08 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Wed, 17 Oct 2018 09:01:09 GMT
COPY file:d8e7562dd4a94d06d6d74beeabe967320ea6ad96741a14a4dbf93f7e6e89e47c in /usr/local/tomcat/bin/ 
# Thu, 18 Oct 2018 09:07:47 GMT
COPY file:380072ecbcb80c239aa6ef9cc20379ed1abc8cfee60748e696828f8a89551b42 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Thu, 18 Oct 2018 09:07:49 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Thu, 18 Oct 2018 09:07:50 GMT
COPY file:5f5be420889bdee3bc9520aa2af7c24fe855aaf5aafcc84e301666b86aa545eb in /usr/local/bin/docker-entrypoint.sh 
# Thu, 18 Oct 2018 09:07:50 GMT
VOLUME [/usr/local/xwiki]
# Thu, 18 Oct 2018 09:07:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 18 Oct 2018 09:07:52 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742d3549b4ad9fe47f3e3bf2ee373b97068548f65584a6d259dfa601721e2f51`  
		Last Modified: Tue, 16 Oct 2018 12:26:08 GMT  
		Size: 9.7 MB (9690405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c71b9867c5efaf04365448a7b025ba50a926e7c1daae8ee9e73b149b322ae8`  
		Last Modified: Tue, 16 Oct 2018 12:26:05 GMT  
		Size: 4.1 MB (4088398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec37afe1ce9c80cab1c8fdc0d193c9f92f61adf7c60d6bdbc2b01735eac25b6`  
		Last Modified: Tue, 16 Oct 2018 22:27:18 GMT  
		Size: 839.2 KB (839157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776d8d23f1b98b1595b31f6da89774c22c62b8aaebfd909efc61ceb1ed261422`  
		Last Modified: Tue, 16 Oct 2018 22:27:15 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0423ae79bd292339ac64d511157cd27daa8549a458b0458dc17973fbee24f728`  
		Last Modified: Tue, 16 Oct 2018 22:27:16 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da59a4d6de8a9133c1d6d9c0d1283e1b6682911896bc48cffaf18801fd8c68d`  
		Last Modified: Tue, 16 Oct 2018 22:27:50 GMT  
		Size: 112.8 MB (112750420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c91b7c05050703e9d49121afe5ddebf91c012d50ab889a63fe7c7794757223`  
		Last Modified: Tue, 16 Oct 2018 22:27:15 GMT  
		Size: 246.7 KB (246651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:090fe6b7a2ae9425d7fb257e64eb39e918ad90fbc64d6726c2a115775088f911`  
		Last Modified: Wed, 17 Oct 2018 01:18:53 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900124a49ca5ec2320b6b8cfe224ddd11a06d6a5232f7707fa5e5b9cb5a5bdd4`  
		Last Modified: Wed, 17 Oct 2018 01:18:54 GMT  
		Size: 513.0 KB (513019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4065ecd2e4ec9ef1eb1224a14212fb19f739ebac4c6f3169de64182a4f800463`  
		Last Modified: Wed, 17 Oct 2018 01:20:39 GMT  
		Size: 10.6 MB (10606606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21c5efef09a0b5a42f6e299fd23baa373804f45970efb0b898c5ce963f3a71ca`  
		Last Modified: Wed, 17 Oct 2018 01:20:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5887e7f00759a980a60558b56a5d298a00d17aa39ba67e9149aca23c7e662545`  
		Last Modified: Wed, 17 Oct 2018 09:02:41 GMT  
		Size: 153.9 MB (153912967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:183cc502c15cec26ba8649521075597288185812bd3fe528e57e40716af4752f`  
		Last Modified: Wed, 17 Oct 2018 09:05:12 GMT  
		Size: 246.8 MB (246764963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a2775de217da08208eb5bc971d37da1475f6ec500de602a14f587aca00c633`  
		Last Modified: Wed, 17 Oct 2018 09:04:23 GMT  
		Size: 618.9 KB (618885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20d38f5886b220fb4afe0b49fb584c0e14099d45ced153557baf87b2d865c69`  
		Last Modified: Wed, 17 Oct 2018 09:04:22 GMT  
		Size: 1.2 KB (1153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46614fbee17d41f0365fc1fba4b453f38bdebc63ca3fc9e9ed826f7e49f70ca2`  
		Last Modified: Thu, 18 Oct 2018 09:11:06 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab5cb87de64c6d04682773a48829e78e3fd0c535bbce4a3962bcd8e0d5867c4b`  
		Last Modified: Thu, 18 Oct 2018 09:11:06 GMT  
		Size: 3.7 KB (3746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f74c0f585163c54277dfb3e896970e64fa810f40585d18eff2888f5746f4d8f3`  
		Last Modified: Thu, 18 Oct 2018 09:11:06 GMT  
		Size: 2.4 KB (2383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
