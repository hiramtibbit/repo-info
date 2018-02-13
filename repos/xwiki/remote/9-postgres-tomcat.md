## `xwiki:9-postgres-tomcat`

```console
$ docker pull xwiki@sha256:b384b16e236c3d0e841194e515b30d2b21984f08cb870e4a0e1391d0e8144265
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:9-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:a8a1b90dae31205676e39e6b601a1b765fa5b63e4f79f44a70eb245b6e3c431f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **626.0 MB (626023651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fe75be752a27c5fe65abd6b893acc5c8855201496777e111c43bbe2c1510fc2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:54:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:54:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 15:16:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 15:16:23 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 15:16:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 15:16:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 15:16:25 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Dec 2017 15:16:26 GMT
ENV JAVA_VERSION=8u151
# Tue, 12 Dec 2017 15:16:26 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Tue, 12 Dec 2017 15:16:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Dec 2017 15:17:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Dec 2017 15:17:36 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 12 Dec 2017 18:35:51 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 12 Dec 2017 18:35:51 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 18:35:52 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 12 Dec 2017 18:35:58 GMT
WORKDIR /usr/local/tomcat
# Tue, 12 Dec 2017 18:35:58 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 12 Dec 2017 18:35:59 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 12 Dec 2017 18:35:59 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u1
# Thu, 11 Jan 2018 00:27:59 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 11 Jan 2018 00:28:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Jan 2018 00:28:09 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 18 Jan 2018 22:03:29 GMT
ENV TOMCAT_MAJOR=8
# Tue, 13 Feb 2018 00:15:20 GMT
ENV TOMCAT_VERSION=8.5.28
# Tue, 13 Feb 2018 00:15:20 GMT
ENV TOMCAT_SHA1=d1555c86ec84824da6785aa875fc6f28298c51cd
# Tue, 13 Feb 2018 00:15:21 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz
# Tue, 13 Feb 2018 00:15:21 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz.asc
# Tue, 13 Feb 2018 18:22:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA1 *tomcat.tar.gz" | sha1sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 13 Feb 2018 18:22:16 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 13 Feb 2018 18:22:16 GMT
EXPOSE 8080/tcp
# Tue, 13 Feb 2018 18:22:17 GMT
CMD ["catalina.sh" "run"]
# Tue, 13 Feb 2018 19:37:38 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Tue, 13 Feb 2018 19:54:51 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Tue, 13 Feb 2018 19:56:21 GMT
ENV XWIKI_VERSION=9.11.2
# Tue, 13 Feb 2018 19:56:22 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.2
# Tue, 13 Feb 2018 19:56:22 GMT
ENV XWIKI_DOWNLOAD_SHA256=7f389fb1b6db949de12fba7df4f9103d97999f3f456a410593946a1eaa66aed1
# Tue, 13 Feb 2018 19:56:58 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Tue, 13 Feb 2018 20:02:00 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Tue, 13 Feb 2018 20:02:01 GMT
COPY file:725119cd89de5ce41030b7f52a3c80dcbddb95f2e35da254ae1eb2bb48447b8d in /usr/local/tomcat/bin/ 
# Tue, 13 Feb 2018 20:02:01 GMT
COPY file:7a0ce36c7348308f7754e7d70a4cad74b1c6a11e342ab82fe6e57f1bef38e533 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Tue, 13 Feb 2018 20:02:02 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Tue, 13 Feb 2018 20:02:02 GMT
COPY file:e69971d04d40c2457dc1fb637a5d02a831cc36048118f93452640388e3e3c97d in /usr/local/bin/docker-entrypoint.sh 
# Tue, 13 Feb 2018 20:02:03 GMT
VOLUME [/usr/local/xwiki]
# Tue, 13 Feb 2018 20:02:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Feb 2018 20:02:03 GMT
CMD ["xwiki"]
```

-	Layers:
	-	`sha256:723254a2c089166d4bcfa917be0181ddbecd94971ebfe85792d96e7e29be9c68`  
		Last Modified: Tue, 12 Dec 2017 01:53:22 GMT  
		Size: 45.1 MB (45121631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe15a44e12f84b4aac20d4f2b450ec8638cc0b176c9130d1802cb4fed17d953`  
		Last Modified: Tue, 12 Dec 2017 08:03:48 GMT  
		Size: 11.1 MB (11107352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409a28e3cc3de08700c9d37c809a6d3aa43dc076402943919f4a78c286c60a0b`  
		Last Modified: Tue, 12 Dec 2017 08:03:48 GMT  
		Size: 4.3 MB (4335420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9511c68044accc89061e19e40356126f629c1e3ace2ef524b0e3f02e64e6b10`  
		Last Modified: Tue, 12 Dec 2017 16:19:57 GMT  
		Size: 852.3 KB (852274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d1b16e30bc84a10c110be2c4f0a35dce542c7d55869cf2f99b7753763aabdb1`  
		Last Modified: Tue, 12 Dec 2017 16:19:57 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fc5a09c924277c26642af87cc8a057633582a6fb462141245d46a638d0f8cf5`  
		Last Modified: Tue, 12 Dec 2017 16:19:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34976006493631a54114beee079e51dd165df33f8f5ebfc04b0eeb12613bedb`  
		Last Modified: Tue, 12 Dec 2017 16:20:31 GMT  
		Size: 165.4 MB (165393574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b70003f0c1097e6b4f30f66e223ce759edec1331f5c1a4569e24ce8f4d41632`  
		Last Modified: Tue, 12 Dec 2017 16:19:57 GMT  
		Size: 272.2 KB (272151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7887582e2e99620eb88831728398dd1877f5a16deaf40db4d6f7f5bfb8b5a0`  
		Last Modified: Tue, 12 Dec 2017 18:43:08 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2ab4f16586596fc8f2512509f62ac407c8be9d2688a4bc8b80395b0ed811635`  
		Last Modified: Thu, 11 Jan 2018 01:02:44 GMT  
		Size: 545.4 KB (545375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825a6e29f2562d7b59866c261d19bf04706527ebc2d065cd12de7bedd38abf90`  
		Last Modified: Tue, 13 Feb 2018 18:30:25 GMT  
		Size: 10.5 MB (10542216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902364d46f24adddaf89ea54d16362d22c83f126f6e44715e9a2cbe9dd76ec9f`  
		Last Modified: Tue, 13 Feb 2018 18:30:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a86488005d8a07c979ee417f4731122a9e25ffd808670b81611d409b1988109`  
		Last Modified: Tue, 13 Feb 2018 20:23:14 GMT  
		Size: 161.6 MB (161642805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f617c5f9a35d7f54a3293c459094b312772cee74778af3705a490de093f1d9ff`  
		Last Modified: Tue, 13 Feb 2018 20:23:39 GMT  
		Size: 225.6 MB (225582546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:727d88e3bbf95e2d56261f89f000f4d26f5d026f13e8e3765598d4aa2b7f0481`  
		Last Modified: Tue, 13 Feb 2018 20:22:34 GMT  
		Size: 618.9 KB (618885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:043e86c1ddcb15141ffa0abef861b7f128fe7c365c9c6db8daec77d41c1873e4`  
		Last Modified: Tue, 13 Feb 2018 20:22:33 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d540873ec386e87bc1f62d19fc1d62bd07c5f6baf225692f421202081f1fe0`  
		Last Modified: Tue, 13 Feb 2018 20:22:33 GMT  
		Size: 2.4 KB (2432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d97210dc20f7ee0c9bd263a0b54a09fdde1a496314acee94d2eb0427bd9f7482`  
		Last Modified: Tue, 13 Feb 2018 20:22:32 GMT  
		Size: 3.6 KB (3620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad528c32e438a016703629b01a0503fc758aac6c411a98ef186e9ea0034f3fa7`  
		Last Modified: Tue, 13 Feb 2018 20:22:33 GMT  
		Size: 2.0 KB (2036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
