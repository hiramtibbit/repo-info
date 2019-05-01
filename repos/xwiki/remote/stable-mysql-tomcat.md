## `xwiki:stable-mysql-tomcat`

```console
$ docker pull xwiki@sha256:26a9f5d8d53d317767fa1bf8e248e1a34c30f1a70092ee10deea1bfc3e9b180d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:stable-mysql-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:ee008541a45476b9c54b8e4d20c9e63600ec02477e94ab030c28371d5cf0c8f3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **533.3 MB (533276530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba4131523c95b9abdc7790e4bed0f102dbab7508be6d6a19125673dfa1a909c7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:45:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:28 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:49:15 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Mar 2019 23:28:20 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:28:20 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:28:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 01:40:33 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 28 Mar 2019 01:40:34 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 01:40:34 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 28 Mar 2019 01:40:35 GMT
WORKDIR /usr/local/tomcat
# Thu, 28 Mar 2019 01:40:35 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 28 Mar 2019 01:40:35 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 28 Mar 2019 01:40:35 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Thu, 28 Mar 2019 01:40:36 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 28 Mar 2019 01:40:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 01:40:40 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 28 Mar 2019 01:43:17 GMT
ENV TOMCAT_MAJOR=8
# Sat, 13 Apr 2019 00:10:14 GMT
ENV TOMCAT_VERSION=8.5.40
# Sat, 13 Apr 2019 00:10:14 GMT
ENV TOMCAT_SHA512=5bdea5414713c9ba39e226f062701fa14998b1a798c9750f956a0f59b5edabb8d83af9ec9f81cf9f47fa92c21b560c9b2be1b543d0bd8f1b49579b69101d3a8f
# Sat, 13 Apr 2019 00:10:14 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.40/bin/apache-tomcat-8.5.40.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.40/bin/apache-tomcat-8.5.40.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.40/bin/apache-tomcat-8.5.40.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.40/bin/apache-tomcat-8.5.40.tar.gz
# Sat, 13 Apr 2019 00:10:14 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.40/bin/apache-tomcat-8.5.40.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.40/bin/apache-tomcat-8.5.40.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.40/bin/apache-tomcat-8.5.40.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.40/bin/apache-tomcat-8.5.40.tar.gz.asc
# Sat, 13 Apr 2019 00:11:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sat, 13 Apr 2019 00:11:14 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 13 Apr 2019 00:11:14 GMT
EXPOSE 8080
# Sat, 13 Apr 2019 00:11:14 GMT
CMD ["catalina.sh" "run"]
# Wed, 01 May 2019 05:32:46 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Wed, 01 May 2019 05:34:11 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libmysql-java &&   rm -rf /var/lib/apt/lists/*
# Wed, 01 May 2019 05:34:12 GMT
ENV XWIKI_VERSION=11.3
# Wed, 01 May 2019 05:34:12 GMT
ENV XWIKI_URL_PREFIX=https://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/11.3
# Wed, 01 May 2019 05:34:12 GMT
ENV XWIKI_DOWNLOAD_SHA256=86b68942a8f5c81ffbe8e574d824d570ec5e2992739271c7ec8862148b0e7973
# Wed, 01 May 2019 05:40:29 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Wed, 01 May 2019 05:40:30 GMT
RUN cp /usr/share/java/mysql-connector-java-*.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Wed, 01 May 2019 05:40:30 GMT
COPY file:0a1be11e2eb610a1dbcd415404e3a592641110b93090030cb831e3a19a163017 in /usr/local/tomcat/bin/ 
# Wed, 01 May 2019 05:40:31 GMT
COPY file:406eb381f87e0aed57baf469c64efee52199868e8fc75ff865a9661b47910460 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Wed, 01 May 2019 05:40:31 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Wed, 01 May 2019 05:40:31 GMT
COPY file:f901b2d7ac3d76cd8346f9aee81b40529183e81d8aa027bb390856ac01fa6cc0 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 01 May 2019 05:40:32 GMT
VOLUME [/usr/local/xwiki]
# Wed, 01 May 2019 05:40:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 May 2019 05:40:32 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d944e3d00df7bedd2f9a6aa678132a1fb785f7d56b16fdf24c22d5c7c3b7a1`  
		Last Modified: Wed, 27 Mar 2019 01:07:47 GMT  
		Size: 454.9 KB (454886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9019de9fce5f74bfb1abcbec71bbcb5c81916617cc4697889772607263281abc`  
		Last Modified: Wed, 27 Mar 2019 01:09:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b053055f644af725a07611b2e29b1d9aa52bf8bd04db344ca086794cbe523cb`  
		Last Modified: Wed, 27 Mar 2019 01:09:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110ab0e6e34de83f184b5a7929a9009e4523561eea7c090ec5727806fdef8fb2`  
		Last Modified: Wed, 27 Mar 2019 23:47:22 GMT  
		Size: 55.9 MB (55885973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54976ba7728927ee68c632b418282d219d76decb5d0067cf0b7f103a0916d437`  
		Last Modified: Thu, 28 Mar 2019 01:52:19 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0afe340b9ec5c80d18d6adabcd399d004e667089461c43a2787b9709a05b4cc6`  
		Last Modified: Thu, 28 Mar 2019 01:52:19 GMT  
		Size: 427.7 KB (427702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ddc5164be3976c85f6c58f1b393814823170dd46bbd5c3b922ba028d1c59a68`  
		Last Modified: Sat, 13 Apr 2019 00:15:28 GMT  
		Size: 10.6 MB (10594930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c622a1870b10cd2a12a8a775e1b02365176ac3c137f885504f21d73afcdee61f`  
		Last Modified: Sat, 13 Apr 2019 00:15:27 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9e373111ff7d5ee7ca903a6c76ca9a02fb05894761082864929767a3329c805`  
		Last Modified: Wed, 01 May 2019 05:44:37 GMT  
		Size: 189.1 MB (189134957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6b7837e4deeeaa8dc47a8b93559bb17a4ba3e44dc1d9e6179188acdff75ff35`  
		Last Modified: Wed, 01 May 2019 05:44:12 GMT  
		Size: 253.3 MB (253319134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81628b706e69b1fb98904b4f18364532be532a1292fd0c0258efe50d16139c1`  
		Last Modified: Wed, 01 May 2019 05:43:47 GMT  
		Size: 952.1 KB (952114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7896fdccf369c78879e764893b6a8cf865939370853337799b085b689e51182`  
		Last Modified: Wed, 01 May 2019 05:43:47 GMT  
		Size: 1.4 KB (1361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c4b7e42b646101c6335e4b1fac93f8c915a4bddc32401e8844b1cf2e5eb3bf3`  
		Last Modified: Wed, 01 May 2019 05:43:47 GMT  
		Size: 2.4 KB (2354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1fc3c73ecfc0bf22914fbae0be65b28e29795be76171c309578d120f48169f3`  
		Last Modified: Wed, 01 May 2019 05:43:46 GMT  
		Size: 4.0 KB (3964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f7781f47af82403496a626223405993c55432bb25bf0f691e1d27958128f9d`  
		Last Modified: Wed, 01 May 2019 05:43:47 GMT  
		Size: 2.4 KB (2416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
