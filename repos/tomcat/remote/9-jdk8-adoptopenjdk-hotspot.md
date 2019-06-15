## `tomcat:9-jdk8-adoptopenjdk-hotspot`

```console
$ docker pull tomcat@sha256:33b6e67dcf2e372168b4b7475df7c988af934d66cf15def9063dd08e4185e62b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; s390x

### `tomcat:9-jdk8-adoptopenjdk-hotspot` - linux; amd64

```console
$ docker pull tomcat@sha256:17eb15baa0a978a2a968117791ae5fe169166e54680c1a2edb42e84daebef915
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.6 MB (158610175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83e68a282180c5246d871317324cc344accda025a4a660026c02f84813288d2d`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Fri, 24 May 2019 23:43:48 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 24 May 2019 23:44:14 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends curl ca-certificates locales     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 23:44:14 GMT
ENV JAVA_VERSION=jdk8u212-b03
# Fri, 24 May 2019 23:44:22 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='c9f354430dc83cabfc58a229dddac507e36b475c872c157f91ab3ae50fa21bc5';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b03/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u212b03.tar.gz';          ;;        s390x)          ESUM='abb653ec70050a38d8f1e18c23bef64edc825240a7e4620e3b6003005c6b4a51';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b03/OpenJDK8U-jdk_s390x_linux_hotspot_8u212b03.tar.gz';          ;;        amd64|x86_64)          ESUM='dd28d6d2cde2b931caf94ac2422a2ad082ea62f0beee3bf7057317c53093de93';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b03/OpenJDK8U-jdk_x64_linux_hotspot_8u212b03.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Fri, 24 May 2019 23:44:22 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Jun 2019 22:45:42 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 14 Jun 2019 22:45:42 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Jun 2019 22:45:43 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 14 Jun 2019 22:45:43 GMT
WORKDIR /usr/local/tomcat
# Fri, 14 Jun 2019 22:45:43 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 14 Jun 2019 22:45:44 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 14 Jun 2019 22:45:44 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 14 Jun 2019 22:45:44 GMT
ENV TOMCAT_MAJOR=9
# Fri, 14 Jun 2019 22:45:44 GMT
ENV TOMCAT_VERSION=9.0.21
# Fri, 14 Jun 2019 22:45:45 GMT
ENV TOMCAT_SHA512=a8788ba8187f940b55d3db6cb0108943b8b48aecc2d9a3307409d3cbf72fac9b19fa434baa97aa0d4ac552f7c13967932b8a36dbae5d582bc14ed13bb058ea9b
# Fri, 14 Jun 2019 22:45:45 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.21/bin/apache-tomcat-9.0.21.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.21/bin/apache-tomcat-9.0.21.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.21/bin/apache-tomcat-9.0.21.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.21/bin/apache-tomcat-9.0.21.tar.gz
# Fri, 14 Jun 2019 22:45:45 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.21/bin/apache-tomcat-9.0.21.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.21/bin/apache-tomcat-9.0.21.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.21/bin/apache-tomcat-9.0.21.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.21/bin/apache-tomcat-9.0.21.tar.gz.asc
# Fri, 14 Jun 2019 22:46:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(which apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Fri, 14 Jun 2019 22:47:01 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 14 Jun 2019 22:47:01 GMT
EXPOSE 8080
# Fri, 14 Jun 2019 22:47:02 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9f9dc0e62752cdf7d28e2e0619b0c97acecb2e5a66b3752e1f5282fe5d0b0b`  
		Last Modified: Fri, 24 May 2019 23:47:02 GMT  
		Size: 10.6 MB (10595375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e02d936d7a404d5eacdb72b022417e29c9e6a967f7f853013a612310d91d34cb`  
		Last Modified: Fri, 24 May 2019 23:47:11 GMT  
		Size: 104.9 MB (104889612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0081ab1271ad2e1989293e23868bfdc62222783922d56267428b074ca6805a2d`  
		Last Modified: Fri, 14 Jun 2019 23:06:48 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0426840e076fd38d0d5b1aa2b6af1e8578940c6b3113c7858c84791e219c896e`  
		Last Modified: Fri, 14 Jun 2019 23:06:51 GMT  
		Size: 14.3 MB (14268841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7746228048fdf9d9372754a839d515d891488d3627a66efe8c9a009f5da5b99`  
		Last Modified: Fri, 14 Jun 2019 23:06:48 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:9-jdk8-adoptopenjdk-hotspot` - linux; s390x

```console
$ docker pull tomcat@sha256:86a1823214625115a2b1d80e916ac06767d96314690d46427bb64f151c065264
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.4 MB (152418841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6d1a881d8bd8e401e4e0af829d6e0ec7951970d1be675cd6a36d0e1b146fcf4`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 15 May 2019 21:42:57 GMT
ADD file:099f81542cb8e3e3e4fc2556d8067214392b39f0958e3452312495c98ae25e76 in / 
# Wed, 15 May 2019 21:43:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:43:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:43:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:43:14 GMT
CMD ["/bin/bash"]
# Fri, 24 May 2019 23:39:58 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 24 May 2019 23:40:10 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends curl ca-certificates locales     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 23:40:10 GMT
ENV JAVA_VERSION=jdk8u212-b03
# Fri, 24 May 2019 23:40:15 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='c9f354430dc83cabfc58a229dddac507e36b475c872c157f91ab3ae50fa21bc5';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b03/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u212b03.tar.gz';          ;;        s390x)          ESUM='abb653ec70050a38d8f1e18c23bef64edc825240a7e4620e3b6003005c6b4a51';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b03/OpenJDK8U-jdk_s390x_linux_hotspot_8u212b03.tar.gz';          ;;        amd64|x86_64)          ESUM='dd28d6d2cde2b931caf94ac2422a2ad082ea62f0beee3bf7057317c53093de93';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b03/OpenJDK8U-jdk_x64_linux_hotspot_8u212b03.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Fri, 24 May 2019 23:40:15 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Jun 2019 23:43:53 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 14 Jun 2019 23:43:53 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Jun 2019 23:43:54 GMT
RUN mkdir -p "$CATALINA_HOME"
# Fri, 14 Jun 2019 23:43:54 GMT
WORKDIR /usr/local/tomcat
# Fri, 14 Jun 2019 23:43:54 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 14 Jun 2019 23:43:54 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 14 Jun 2019 23:43:55 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Fri, 14 Jun 2019 23:43:55 GMT
ENV TOMCAT_MAJOR=9
# Fri, 14 Jun 2019 23:43:55 GMT
ENV TOMCAT_VERSION=9.0.21
# Fri, 14 Jun 2019 23:43:55 GMT
ENV TOMCAT_SHA512=a8788ba8187f940b55d3db6cb0108943b8b48aecc2d9a3307409d3cbf72fac9b19fa434baa97aa0d4ac552f7c13967932b8a36dbae5d582bc14ed13bb058ea9b
# Fri, 14 Jun 2019 23:43:56 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.21/bin/apache-tomcat-9.0.21.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.21/bin/apache-tomcat-9.0.21.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.21/bin/apache-tomcat-9.0.21.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.21/bin/apache-tomcat-9.0.21.tar.gz
# Fri, 14 Jun 2019 23:43:56 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-9/v9.0.21/bin/apache-tomcat-9.0.21.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.21/bin/apache-tomcat-9.0.21.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-9/v9.0.21/bin/apache-tomcat-9.0.21.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.21/bin/apache-tomcat-9.0.21.tar.gz.asc
# Fri, 14 Jun 2019 23:44:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(which apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Fri, 14 Jun 2019 23:44:40 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Fri, 14 Jun 2019 23:44:41 GMT
EXPOSE 8080
# Fri, 14 Jun 2019 23:44:41 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:a3ef07dd1fb74710cbd05c9bed2158fa7e005b766ac22ee052c37bc04215d25d`  
		Last Modified: Wed, 15 May 2019 21:46:43 GMT  
		Size: 27.5 MB (27532637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3f8f7d030578ebc1c4656ad55d61c81d712b0b43add1862837acf9d7365d67`  
		Last Modified: Wed, 15 May 2019 21:46:29 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad4fa8d15db8edc923fd948fd13c76765471952cf1ac5df39c26f98250ab7944`  
		Last Modified: Wed, 15 May 2019 21:46:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edcfd4adbaabfd40280ed77016d1deae2607c55653ef1611185d350ac5a09042`  
		Last Modified: Fri, 24 May 2019 23:42:19 GMT  
		Size: 10.3 MB (10296273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f13aac73374d3f172e7b6d2d823640a167012d8479fa8d2a3de8f6266be0ad4`  
		Last Modified: Fri, 24 May 2019 23:42:27 GMT  
		Size: 100.6 MB (100573333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27476c9d6ae84d9114902e1ec8d5dfebf3f3ae0553444629a9c0cdca7b27b324`  
		Last Modified: Fri, 14 Jun 2019 23:51:37 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c164e02be6ada8bf9f7c9a8d514a0ada66e518adea6f28653a4f36aabb147341`  
		Last Modified: Fri, 14 Jun 2019 23:51:40 GMT  
		Size: 14.0 MB (14015317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6be01535c2a628a09139a1a4e42eb5eea3b49c5879c5928a5eeb2b00b24e3c2a`  
		Last Modified: Fri, 14 Jun 2019 23:51:37 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
