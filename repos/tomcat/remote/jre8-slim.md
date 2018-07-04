## `tomcat:jre8-slim`

```console
$ docker pull tomcat@sha256:0ed4cadd7fe7498efbb367e3816e1a400218eefee128bf5fe41f9c8ab2865831
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `tomcat:jre8-slim` - linux; amd64

```console
$ docker pull tomcat@sha256:ddb11f55bcf187f83beffb4b2b0f65f5239dc1ad4d68f37dd1c457194199b6f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.0 MB (89991571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:440274600fb8edcf6e3fb4a1ccc7677cd8541dc8d32260cca5371fb7cd80fd3c`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 23:29:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:29:08 GMT
ENV LANG=C.UTF-8
# Tue, 26 Jun 2018 23:29:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 26 Jun 2018 23:29:10 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 26 Jun 2018 23:31:15 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 26 Jun 2018 23:31:15 GMT
ENV JAVA_VERSION=8u171
# Tue, 26 Jun 2018 23:31:15 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 26 Jun 2018 23:31:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 26 Jun 2018 23:31:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 26 Jun 2018 23:31:42 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 06:59:19 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 27 Jun 2018 06:59:19 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 06:59:20 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 27 Jun 2018 06:59:20 GMT
WORKDIR /usr/local/tomcat
# Wed, 27 Jun 2018 06:59:20 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 27 Jun 2018 06:59:20 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 27 Jun 2018 06:59:21 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Wed, 27 Jun 2018 06:59:21 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 06:59:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 06:59:28 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 27 Jun 2018 07:09:06 GMT
ENV TOMCAT_MAJOR=8
# Wed, 04 Jul 2018 02:25:18 GMT
ENV TOMCAT_VERSION=8.5.32
# Wed, 04 Jul 2018 02:25:18 GMT
ENV TOMCAT_SHA512=fc010f4643cb9996cad3812594190564d0a30be717f659110211414faf8063c61fad1f18134154084ad3ddfbbbdb352fa6686a28fbb6402d3207d4e0a88fa9ce
# Wed, 04 Jul 2018 02:25:18 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz
# Wed, 04 Jul 2018 02:25:19 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz.asc
# Wed, 04 Jul 2018 02:26:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Wed, 04 Jul 2018 02:26:47 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 04 Jul 2018 02:26:47 GMT
EXPOSE 8080/tcp
# Wed, 04 Jul 2018 02:26:47 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e70619f8ac7d8d30832d1ec95e08fb6d5d17d1d86d39dd8f018764e63c3f588`  
		Last Modified: Tue, 26 Jun 2018 23:50:42 GMT  
		Size: 454.8 KB (454842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959035743ee62348be1a940c042038c0304d1652d7c4d807fe7e6df899b700e0`  
		Last Modified: Tue, 26 Jun 2018 23:50:41 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db98f43f72929d9b60fa58b30adfefc8ddb6fc691e06283e0b9ba0769c72d17`  
		Last Modified: Tue, 26 Jun 2018 23:50:41 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0124f74f14dbf57ba0d374b11bf3bb4ba95e52967ed4ffc3f387b34873514204`  
		Last Modified: Tue, 26 Jun 2018 23:54:16 GMT  
		Size: 55.9 MB (55850720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68a4b8607731c1f83c05d5e32e78e447fa543a141d01bd707f3f08bf3ff7ddda`  
		Last Modified: Tue, 26 Jun 2018 23:53:59 GMT  
		Size: 272.1 KB (272100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197626ae0ad33bfedc9b7af6b7ad8f2dc30942c5a89577b0047e8a08da633ecd`  
		Last Modified: Wed, 27 Jun 2018 07:33:52 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee04781e7dca6c2b36807044feb81552995b36291df71afae668ab453668e0d`  
		Last Modified: Wed, 27 Jun 2018 07:33:52 GMT  
		Size: 427.9 KB (427925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d926fa9267c954ae3c2f0d240e2f01c195fec938c81cd147fe3d4da1b7c860b`  
		Last Modified: Wed, 04 Jul 2018 02:40:28 GMT  
		Size: 10.5 MB (10488351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac078e732ff52ae9cba7f089163f6f9e13ff0032016b4b20c84f2fbf0df512ae`  
		Last Modified: Wed, 04 Jul 2018 02:40:26 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
