## `xwiki:10-postgres-tomcat`

```console
$ docker pull xwiki@sha256:fdb83be85a408d799c54223250bd768c817d4bf30ced89298a5545e61ce13c75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:10-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:8f3259c1d718ebfe0f708fa320ea7db9ff23f4344b322cb5ba00e676a85bfc26
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **626.4 MB (626379206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7b259219ba85d8f10b69c93e277d53b7ebc9d5da70931becc28cf9bde9e9dae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:55:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:55:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 11:08:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:08:13 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:08:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 11:08:15 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 11:08:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 11:09:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 11:17:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 18:48:35 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 15 Feb 2018 18:48:35 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 18:48:36 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 15 Feb 2018 18:48:36 GMT
WORKDIR /usr/local/tomcat
# Thu, 15 Feb 2018 18:48:37 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 15 Feb 2018 18:48:37 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 15 Feb 2018 18:48:37 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Thu, 15 Feb 2018 18:48:38 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 18:48:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 18:48:53 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 15 Feb 2018 18:52:47 GMT
ENV TOMCAT_MAJOR=8
# Thu, 15 Feb 2018 18:54:17 GMT
ENV TOMCAT_VERSION=8.5.28
# Thu, 15 Feb 2018 18:54:17 GMT
ENV TOMCAT_SHA1=d1555c86ec84824da6785aa875fc6f28298c51cd
# Thu, 15 Feb 2018 18:54:18 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz
# Thu, 15 Feb 2018 18:54:18 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz.asc
# Thu, 15 Feb 2018 18:55:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 15 Feb 2018 18:55:47 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 15 Feb 2018 18:55:47 GMT
EXPOSE 8080/tcp
# Thu, 15 Feb 2018 18:55:47 GMT
CMD ["catalina.sh" "run"]
# Thu, 15 Feb 2018 22:47:31 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Thu, 15 Feb 2018 22:50:30 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Mon, 26 Feb 2018 20:49:33 GMT
ENV XWIKI_VERSION=10.1
# Mon, 26 Feb 2018 20:49:33 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/10.1
# Mon, 26 Feb 2018 20:49:33 GMT
ENV XWIKI_DOWNLOAD_SHA256=744d5ac88f1976fe5ac2a6a0d1dd9e2e0916d6657e7feb24063b6b657697167a
# Mon, 26 Feb 2018 20:50:11 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Mon, 26 Feb 2018 20:50:11 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Mon, 26 Feb 2018 20:50:12 GMT
COPY file:725119cd89de5ce41030b7f52a3c80dcbddb95f2e35da254ae1eb2bb48447b8d in /usr/local/tomcat/bin/ 
# Mon, 26 Feb 2018 20:50:12 GMT
COPY file:7a0ce36c7348308f7754e7d70a4cad74b1c6a11e342ab82fe6e57f1bef38e533 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Mon, 26 Feb 2018 20:50:13 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Mon, 26 Feb 2018 20:50:13 GMT
COPY file:e69971d04d40c2457dc1fb637a5d02a831cc36048118f93452640388e3e3c97d in /usr/local/bin/docker-entrypoint.sh 
# Mon, 26 Feb 2018 20:50:14 GMT
VOLUME [/usr/local/xwiki]
# Mon, 26 Feb 2018 20:50:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Feb 2018 20:50:15 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cafa6a79d0be5bd8a64fe52bfc4178072e067e8f5ed5c224d5330107424335`  
		Last Modified: Thu, 15 Feb 2018 04:40:22 GMT  
		Size: 11.1 MB (11107850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fcf5a213c7dfb0aa4eeed5922f9c2b6261cf60bb27f2dd9d761d6030689b39`  
		Last Modified: Thu, 15 Feb 2018 04:40:19 GMT  
		Size: 4.3 MB (4335400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd532571c5d31f61347a950a0d58ec1282046fc8bdda6791f8c34a56a1c792c6`  
		Last Modified: Thu, 15 Feb 2018 13:39:14 GMT  
		Size: 852.3 KB (852290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31600c9f9b48dc3cd9fa7c14415fb9251cd3582028fadbb3d5f1bcb57512ecd0`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e8e9b5d10eec5baacf8bfb0d61d868b1ba263863b08d5346fbb73fcff6bb85`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0710e619e88357033e362f6a8c18d93a0dbf14d31629082877ae8c7f51072113`  
		Last Modified: Thu, 15 Feb 2018 13:39:52 GMT  
		Size: 165.4 MB (165392618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e511da65ffabe622bcb6fa89b699e80f94ec7185a95076cd3b4cabc101bd2d11`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 272.1 KB (272124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfcd79b5752d99c10b7a29d19bbd7c78fda3c82e7e2476250fb76b19bdedeb27`  
		Last Modified: Thu, 15 Feb 2018 19:49:36 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d4311e9998b432748663f250f13af84a06f849472d89e9dc8c755d0fa1212d`  
		Last Modified: Thu, 15 Feb 2018 19:49:37 GMT  
		Size: 545.3 KB (545302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa08dc0fba1ce44f52dcd36e971798b0e63b0a5e47e52ef4b7bee15f86cca336`  
		Last Modified: Thu, 15 Feb 2018 19:53:50 GMT  
		Size: 10.5 MB (10542099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47ffc8d9d1f8f1ed1b11ecab6fec75d29a3d81159e2570263b17a53b29510c86`  
		Last Modified: Thu, 15 Feb 2018 19:53:48 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5aae63b7b1057d3a49647da50796099a27cbaf2470c859f8166cada0dd0ebca`  
		Last Modified: Thu, 15 Feb 2018 23:36:37 GMT  
		Size: 161.1 MB (161053614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d3a5a9996146079ddb477dbe9c62450957f3a15ac7f8b7bd3596fe130866e0`  
		Last Modified: Mon, 26 Feb 2018 20:53:19 GMT  
		Size: 226.5 MB (226516972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efdd03701ce924e03b160118361dbed85f5a2f6a1caf13663980399b6a96245`  
		Last Modified: Mon, 26 Feb 2018 20:53:04 GMT  
		Size: 618.9 KB (618883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac86085a3ec58e46d940a8fd183863719116984c6b3852568fd2ff82d3a29fd`  
		Last Modified: Mon, 26 Feb 2018 20:53:04 GMT  
		Size: 670.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ae71bed75d8477751f015fa465b8c8822cfd684e47792c1c37776dd7df8248`  
		Last Modified: Mon, 26 Feb 2018 20:53:04 GMT  
		Size: 2.4 KB (2428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f936dc52db08a0d24bc16141d5b6855a81627b42e63c6398f3733e23357de56`  
		Last Modified: Mon, 26 Feb 2018 20:53:03 GMT  
		Size: 3.6 KB (3639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ce83387919cedbd2d7f84f59112b062be4ab0ebf5b4c88d12bb2a4de00bb170`  
		Last Modified: Mon, 26 Feb 2018 20:53:04 GMT  
		Size: 2.0 KB (2033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
