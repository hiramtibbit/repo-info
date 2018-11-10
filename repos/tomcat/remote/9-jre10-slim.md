## `tomcat:9-jre10-slim`

```console
$ docker pull tomcat@sha256:a5719f704ca8adfde230a0667967e662354993ce8c2839e5f036c51b0a47ad3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `tomcat:9-jre10-slim` - linux; amd64

```console
$ docker pull tomcat@sha256:2578544397a97735a39bb54ddbb7eb4a6b2fac0d11aa38c010cd235c099dc97d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.9 MB (126901979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86a604f74a412c1cddc2d4accf9a07b625db38cb3d9e4cc0d5b032946c9c0978`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 15 Oct 2018 23:23:12 GMT
ADD file:8934168eda55976e44a0e80932dc79e1433f1c2ee5a90ed28ba2b8b55b60b7db in / 
# Mon, 15 Oct 2018 23:23:12 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 05:17:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:17:31 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:17:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:22:01 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:22:01 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:22:01 GMT
ENV JAVA_VERSION=10.0.2
# Wed, 24 Oct 2018 22:29:00 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-2
# Wed, 24 Oct 2018 22:31:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 24 Oct 2018 23:15:35 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 24 Oct 2018 23:15:35 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Oct 2018 23:15:36 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 24 Oct 2018 23:15:36 GMT
WORKDIR /usr/local/tomcat
# Wed, 24 Oct 2018 23:15:36 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 24 Oct 2018 23:15:36 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 24 Oct 2018 23:15:37 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Wed, 24 Oct 2018 23:15:37 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 24 Oct 2018 23:15:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Oct 2018 23:18:45 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 24 Oct 2018 23:18:45 GMT
ENV TOMCAT_MAJOR=9
# Sat, 10 Nov 2018 01:10:17 GMT
ENV TOMCAT_VERSION=9.0.13
# Sat, 10 Nov 2018 01:10:17 GMT
ENV TOMCAT_SHA512=526ee4dea8e149bf4423860e1a74e47bc0b3c1b97dff35a25ce8e811d26a5c3f12de527bd05eec99d684e4d149304f08c09ce41a6ee71e8ea19c798202d478a4
# Sat, 10 Nov 2018 01:10:17 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.13/bin/apache-tomcat-9.0.13.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.13/bin/apache-tomcat-9.0.13.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.13/bin/apache-tomcat-9.0.13.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.13/bin/apache-tomcat-9.0.13.tar.gz
# Sat, 10 Nov 2018 01:10:18 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.13/bin/apache-tomcat-9.0.13.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.13/bin/apache-tomcat-9.0.13.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.13/bin/apache-tomcat-9.0.13.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.13/bin/apache-tomcat-9.0.13.tar.gz.asc
# Sat, 10 Nov 2018 01:11:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Sat, 10 Nov 2018 01:11:55 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Sat, 10 Nov 2018 01:11:55 GMT
EXPOSE 8080/tcp
# Sat, 10 Nov 2018 01:11:56 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:cca8b8cf2f157d13678401181406e5baf05ab424a04fb8190f9e3816c5db1e29`  
		Last Modified: Mon, 15 Oct 2018 23:32:22 GMT  
		Size: 26.3 MB (26284346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13cf705e89452ccf724ae251641ad26bc6e8162141b3a88b688c959d8872f905`  
		Last Modified: Tue, 16 Oct 2018 05:38:56 GMT  
		Size: 460.6 KB (460644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f6961c9eb5dddcc3a449439adc5c4a03e716794daec2a41900f7fda4fb492a`  
		Last Modified: Tue, 16 Oct 2018 05:38:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2912756b153bdfcb7ccda1fdf8e8c02a686e003c30f8180ce70d6163d136f5a1`  
		Last Modified: Tue, 16 Oct 2018 05:46:51 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd5b7180f46623c170a061f562ebdf7eff11c7c2b5e0db5993c7d85d501a50ca`  
		Last Modified: Wed, 24 Oct 2018 22:42:32 GMT  
		Size: 78.4 MB (78393489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150af11465ed5fcfe7a8ef1e683a3323ec833cce039e2f9ef4fdf5b1f4643f6a`  
		Last Modified: Wed, 24 Oct 2018 23:24:02 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:595d1f2bb1880d81e69f8d87cbe46d460efd1177eac051b7f2b7c10223e21a8c`  
		Last Modified: Wed, 24 Oct 2018 23:24:02 GMT  
		Size: 435.4 KB (435407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baedc1b43febf80d35c3313722505d14291af9e6fa43efa7741f2b2b227e9e0f`  
		Last Modified: Sat, 10 Nov 2018 01:33:33 GMT  
		Size: 21.3 MB (21327419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f9e9248a6bc77105dbb9fd0e4dd7c6974316ba4b5ca03feb0eb179e9a15bb6`  
		Last Modified: Sat, 10 Nov 2018 01:33:30 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
