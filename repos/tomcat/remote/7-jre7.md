## `tomcat:7-jre7`

```console
$ docker pull tomcat@sha256:b367d43de7df56cd5697b0d1cc21a0c9f3a170a5035648e3dcf39ac83cb4299c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `tomcat:7-jre7` - linux; amd64

```console
$ docker pull tomcat@sha256:fbc246e0194557ad859bb2aead13b8d6d1df971111e6be926aef842bdb7120ee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.3 MB (168264748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0953c6de87efe5e70f5bd1ea9e2a0361fa99f098da54da3b81c4c153ad6bf8f3`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 06 Feb 2019 03:27:30 GMT
ADD file:3a1c24c30fbdad1dd44e5f38c66b10a2ddbeb517b2e441dbcf82c221b45b143b in / 
# Wed, 06 Feb 2019 03:27:31 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:43:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:43:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 08:42:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:42:43 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 08:42:44 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 08:42:45 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 08:42:45 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 08:42:45 GMT
ENV JAVA_VERSION=7u181
# Wed, 06 Feb 2019 08:42:46 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Wed, 06 Feb 2019 08:45:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 16:30:59 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 06 Feb 2019 16:30:59 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 16:31:01 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 06 Feb 2019 16:31:01 GMT
WORKDIR /usr/local/tomcat
# Wed, 06 Feb 2019 16:31:01 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 06 Feb 2019 16:31:02 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 06 Feb 2019 16:31:02 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 06 Feb 2019 16:33:33 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 16:35:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 16:35:54 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 06 Feb 2019 16:35:54 GMT
ENV TOMCAT_MAJOR=7
# Wed, 06 Feb 2019 16:35:54 GMT
ENV TOMCAT_VERSION=7.0.92
# Wed, 06 Feb 2019 16:35:55 GMT
ENV TOMCAT_SHA512=e5e17ea68956df5d4c220f2e2891953b362b4fadd391f7cb9bc00d86986aa2e2499176d59c393f41db9ab3e0d7f1ab492a881f85c6650514a7f02f047d4eb2b0
# Wed, 06 Feb 2019 16:35:55 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz
# Wed, 06 Feb 2019 16:35:55 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc
# Wed, 06 Feb 2019 16:42:08 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Wed, 06 Feb 2019 16:42:13 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 06 Feb 2019 16:42:13 GMT
EXPOSE 8080
# Wed, 06 Feb 2019 16:42:14 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:ff42297909573059acb8e981efbc12eff68641f8449f04470a4f218e53a1e80e`  
		Last Modified: Wed, 06 Feb 2019 03:33:25 GMT  
		Size: 54.4 MB (54384652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1f85cbc0218759652e5a51e5c5a13006ac20b8ab141c05f1e67a1444a9e62a`  
		Last Modified: Wed, 06 Feb 2019 06:00:08 GMT  
		Size: 17.5 MB (17539308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39bc51c8ce6e0239d8dba25acf6df1aa19b6d0796260977b73f1aee076bb61f0`  
		Last Modified: Wed, 06 Feb 2019 08:56:13 GMT  
		Size: 795.1 KB (795150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e7032334b0b248028287687815babf69db51a75707a458e9a9ca143f69f15bf`  
		Last Modified: Wed, 06 Feb 2019 08:56:12 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8f4d571fd374b50d3f0a03a27625446ea0aa3d85254331f4e2b1b7fe07b1ad`  
		Last Modified: Wed, 06 Feb 2019 08:56:13 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b72b1c4306a80534eb9012c3312b87d1cdbce0f84b5f19844bb856edf5a9ccf`  
		Last Modified: Wed, 06 Feb 2019 08:56:28 GMT  
		Size: 81.8 MB (81819689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad425f8591c1749d525866380d942d70d8cd147e76bb8f62978b79f93e552f8`  
		Last Modified: Wed, 06 Feb 2019 17:14:45 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e3876117e2da52537107e7eed40ca4c329aa2c78405e832b097b309e0e2ba0c`  
		Last Modified: Wed, 06 Feb 2019 17:14:46 GMT  
		Size: 3.2 MB (3152178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f4bb835c3af398f9bee953dd9aa516b215a63aeced48de49806aa67a43c8562`  
		Last Modified: Wed, 06 Feb 2019 17:14:45 GMT  
		Size: 532.0 KB (532025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f01d227e713a498cf707795a0735586726f63ec027c4897cf0eeee236d3025b7`  
		Last Modified: Wed, 06 Feb 2019 17:14:48 GMT  
		Size: 10.0 MB (10041055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15fee977a8d643c170fc6193318f08a27671e72c8357d9ca220fa55a7bbfb8b`  
		Last Modified: Wed, 06 Feb 2019 17:14:44 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:7-jre7` - linux; arm variant v5

```console
$ docker pull tomcat@sha256:20085aeb4f44e14900a54b1897c8add94b5c2fbf1dd68dfe07e09f5edd6a18e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.3 MB (155268616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:373ab49531870beccd789534d3e9875421fd0952544a6e5b9c7fd44d17ea5395`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:10 GMT
ADD file:d54ba2764c6a60a1d23652305cbda61eafbf6d9f3a808ca58fe9c2400a1d51e9 in / 
# Wed, 23 Jan 2019 09:50:11 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:30:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:30:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:01:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:01:03 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:01:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 13:01:06 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 13:01:06 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 23 Jan 2019 13:01:07 GMT
ENV JAVA_VERSION=7u181
# Wed, 23 Jan 2019 13:01:07 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Wed, 23 Jan 2019 13:02:49 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Jan 2019 16:55:58 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 23 Jan 2019 16:55:59 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 16:56:02 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 23 Jan 2019 16:56:02 GMT
WORKDIR /usr/local/tomcat
# Wed, 23 Jan 2019 16:56:03 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 23 Jan 2019 16:56:03 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 23 Jan 2019 16:56:04 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 23 Jan 2019 16:57:12 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 16:58:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 16:58:17 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 23 Jan 2019 16:58:18 GMT
ENV TOMCAT_MAJOR=7
# Wed, 23 Jan 2019 16:58:18 GMT
ENV TOMCAT_VERSION=7.0.92
# Wed, 23 Jan 2019 16:58:19 GMT
ENV TOMCAT_SHA512=e5e17ea68956df5d4c220f2e2891953b362b4fadd391f7cb9bc00d86986aa2e2499176d59c393f41db9ab3e0d7f1ab492a881f85c6650514a7f02f047d4eb2b0
# Wed, 23 Jan 2019 16:58:19 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz
# Wed, 23 Jan 2019 16:58:20 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc
# Wed, 23 Jan 2019 17:01:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Wed, 23 Jan 2019 17:01:38 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 23 Jan 2019 17:01:38 GMT
EXPOSE 8080
# Wed, 23 Jan 2019 17:01:38 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:50fd141dcc41a9d8165a0900c6d253849085d5fefc20c8802d9ab7990cbc0f88`  
		Last Modified: Wed, 23 Jan 2019 09:59:04 GMT  
		Size: 52.6 MB (52574556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c97e5089c7dbd37156a16aa333e82a8047c39870627ad13f9d513f514eba1f9`  
		Last Modified: Wed, 23 Jan 2019 10:46:53 GMT  
		Size: 17.0 MB (17030345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9359813d020b0d9ce651f05a10df633df9b32819ce2a73abd95d616e4c97aae0`  
		Last Modified: Wed, 23 Jan 2019 13:12:52 GMT  
		Size: 788.0 KB (787968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf087ed004deb2058d24ae6cd910445d78d754ce9d873d663a291d9909a03d0`  
		Last Modified: Wed, 23 Jan 2019 13:12:52 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c18c846b876ec307325eaf8af3c9e7164a6dc0098df74bf3a7081af1e7d40f`  
		Last Modified: Wed, 23 Jan 2019 13:12:52 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b6b8b572290c49d1e79a6a89b740fdbbae1cea4e9b4959f808f7c4ec5934c9`  
		Last Modified: Wed, 23 Jan 2019 13:13:08 GMT  
		Size: 71.5 MB (71484477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc4a10978827fed4532e0f727be8f64db4405f356a6e56c06ba58d552924419`  
		Last Modified: Wed, 23 Jan 2019 17:29:17 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eea7918975b83cec1ae2077896b225addd1f4ae98aa08758058d2246c77113f`  
		Last Modified: Wed, 23 Jan 2019 17:29:17 GMT  
		Size: 2.9 MB (2877800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580cb6d2870a1ce7b47c299dfbe62ed8accc6862b14e8154e6be57ce469c23d6`  
		Last Modified: Wed, 23 Jan 2019 17:29:17 GMT  
		Size: 518.3 KB (518277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:157d1dcc17f78963579d13bd0224e75592a1fb78875395f680a1ddf32295dfd2`  
		Last Modified: Wed, 23 Jan 2019 17:29:19 GMT  
		Size: 10.0 MB (9994504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d34c9b3d5194c9339ba9e6c344c6282619348419a04bc5273e775963d35d81d`  
		Last Modified: Wed, 23 Jan 2019 17:29:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:7-jre7` - linux; arm variant v7

```console
$ docker pull tomcat@sha256:aca596d70c45a875c6c5b634520b955f4a4e2a48947bb6358f05785f1a1c4119
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.1 MB (151076181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac09cb7481e44f66b614d0329443e0ed9f573b231c28e9492551cfce7156b5e4`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 23 Jan 2019 12:59:26 GMT
ADD file:82fbc1afc65e113a763fd56969e610ee7f80938bd2f37ffc964d6f5b4525b68b in / 
# Wed, 23 Jan 2019 12:59:27 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:35:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:35:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 14:59:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 14:59:34 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 14:59:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 14:59:37 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 14:59:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 23 Jan 2019 14:59:38 GMT
ENV JAVA_VERSION=7u181
# Wed, 23 Jan 2019 14:59:39 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Wed, 23 Jan 2019 15:01:33 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Jan 2019 19:21:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 23 Jan 2019 19:21:21 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 19:21:22 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 23 Jan 2019 19:21:22 GMT
WORKDIR /usr/local/tomcat
# Wed, 23 Jan 2019 19:21:23 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 23 Jan 2019 19:21:23 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 23 Jan 2019 19:21:24 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Wed, 23 Jan 2019 19:22:30 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 19:23:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 19:23:34 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 23 Jan 2019 19:23:34 GMT
ENV TOMCAT_MAJOR=7
# Wed, 23 Jan 2019 19:23:34 GMT
ENV TOMCAT_VERSION=7.0.92
# Wed, 23 Jan 2019 19:23:35 GMT
ENV TOMCAT_SHA512=e5e17ea68956df5d4c220f2e2891953b362b4fadd391f7cb9bc00d86986aa2e2499176d59c393f41db9ab3e0d7f1ab492a881f85c6650514a7f02f047d4eb2b0
# Wed, 23 Jan 2019 19:23:35 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz
# Wed, 23 Jan 2019 19:23:36 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc
# Wed, 23 Jan 2019 19:26:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Wed, 23 Jan 2019 19:26:34 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 23 Jan 2019 19:26:35 GMT
EXPOSE 8080
# Wed, 23 Jan 2019 19:26:35 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:8d0ee67914252a6f8316bcf4f5de02a5d7894abb8061e33223a2a3691b209217`  
		Last Modified: Wed, 23 Jan 2019 13:09:16 GMT  
		Size: 50.3 MB (50291632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf121bdd5ab54c14416ccb673e4d49a933fe0fbd4e82f9b83a4bcdb965555be`  
		Last Modified: Wed, 23 Jan 2019 14:03:10 GMT  
		Size: 16.7 MB (16713234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e6abe191702b18ab189ddca1f0774fde4dab251e150ae9674a5fb807cd56cc1`  
		Last Modified: Wed, 23 Jan 2019 15:09:17 GMT  
		Size: 762.5 KB (762495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b182e4af8b9a826187990996b5a608b6125b11b9c712f76969fd97fe04aae76`  
		Last Modified: Wed, 23 Jan 2019 15:09:16 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:789956c3ef42ed78f20234fa1a96f874e7eebaa271968d44fc699e061a170799`  
		Last Modified: Wed, 23 Jan 2019 15:09:17 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5af368f4f91823372350a75e1ad8754abd4c5627b2af06184cf0aabf7da6bd2`  
		Last Modified: Wed, 23 Jan 2019 15:09:30 GMT  
		Size: 70.0 MB (70020731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95045f7da84324dee11ef7b93774829de332d41e90c9bd6c0ddca73be6dc1ed9`  
		Last Modified: Wed, 23 Jan 2019 19:48:29 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631196ef442683734e3737acb2c5166eb92b41dacf08688bf7dd84a25d5d2aa5`  
		Last Modified: Wed, 23 Jan 2019 19:48:30 GMT  
		Size: 2.8 MB (2798200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26a184f8e2faccc1f1797ba9c8384021b60efb40b9bc541e5e4e2842908d25e`  
		Last Modified: Wed, 23 Jan 2019 19:48:29 GMT  
		Size: 508.9 KB (508920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568001b34d9150856f99a2060769b3336f6828b7f320343758e8fd22454a0738`  
		Last Modified: Wed, 23 Jan 2019 19:48:32 GMT  
		Size: 10.0 MB (9980278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ca875bf06d706b6c109ecdfd3e762229d27d167ed4c5087feb67f8df044c1a`  
		Last Modified: Wed, 23 Jan 2019 19:48:29 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:7-jre7` - linux; 386

```console
$ docker pull tomcat@sha256:2c037d3b703fd1db75685b3d0976ac871f854ac6900ba3f5c2bddf33d06fd903
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.5 MB (180520527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9693eba87bdea0aa3c652718802c309b3ea03a12f19617eb358d087182e73007`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 23 Jan 2019 11:42:56 GMT
ADD file:34c4d7be20c87ed251d0f5a99c46920d29f51e7050390664fe342895d416cf26 in / 
# Wed, 23 Jan 2019 11:42:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:38:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:38:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 18:16:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 18:16:02 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 18:16:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 18:16:03 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 18:16:04 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 23 Jan 2019 18:16:04 GMT
ENV JAVA_VERSION=7u181
# Wed, 23 Jan 2019 18:16:04 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Wed, 23 Jan 2019 18:19:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 24 Jan 2019 01:55:11 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 24 Jan 2019 01:55:11 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 24 Jan 2019 01:55:12 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 24 Jan 2019 01:55:12 GMT
WORKDIR /usr/local/tomcat
# Thu, 24 Jan 2019 01:55:12 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 24 Jan 2019 01:55:12 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 24 Jan 2019 01:55:12 GMT
ENV OPENSSL_VERSION=1.1.0j-1~deb9u1
# Thu, 24 Jan 2019 01:58:08 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 24 Jan 2019 02:01:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 02:01:04 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 24 Jan 2019 02:01:04 GMT
ENV TOMCAT_MAJOR=7
# Thu, 24 Jan 2019 02:01:04 GMT
ENV TOMCAT_VERSION=7.0.92
# Thu, 24 Jan 2019 02:01:04 GMT
ENV TOMCAT_SHA512=e5e17ea68956df5d4c220f2e2891953b362b4fadd391f7cb9bc00d86986aa2e2499176d59c393f41db9ab3e0d7f1ab492a881f85c6650514a7f02f047d4eb2b0
# Thu, 24 Jan 2019 02:01:04 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz
# Thu, 24 Jan 2019 02:01:05 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz.asc
# Thu, 24 Jan 2019 02:08:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 777 logs work
# Thu, 24 Jan 2019 02:08:55 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 24 Jan 2019 02:08:55 GMT
EXPOSE 8080
# Thu, 24 Jan 2019 02:08:55 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:c9e90e967f2e8ff1c9bcd2f542cedbcf4ef3dd2e4601b2f3c66fdbef5125fe84`  
		Last Modified: Wed, 23 Jan 2019 11:59:12 GMT  
		Size: 54.6 MB (54598497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f41350de1b8c9a9aaef88261e4271f1d2cdbfcd19c25b6ff74b91d18449ccf3`  
		Last Modified: Wed, 23 Jan 2019 13:08:22 GMT  
		Size: 19.8 MB (19846606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e48adfb17eca1e46bc839ba8c38ba760d7e2bc9e8ac6779a1e62a1aae048bfe`  
		Last Modified: Wed, 23 Jan 2019 18:29:46 GMT  
		Size: 798.2 KB (798157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:272ea4d6b4930e1162d015f630b873f2d324eaaf42db6ad4c436d8e6d4bcc68d`  
		Last Modified: Wed, 23 Jan 2019 18:29:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77583c27ba7c8b8d17aacf10bcfb24e0bbfc740d9def584b61348411e9c3b7e2`  
		Last Modified: Wed, 23 Jan 2019 18:29:45 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cde60fadda7ee18ea30b29ecc3b9884e27db0d54c8adf615f000c2bce987b58`  
		Last Modified: Wed, 23 Jan 2019 18:30:00 GMT  
		Size: 91.7 MB (91677068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9026db81655861fc64251c08f6036f1dd1086626cfc8eba4f0d34456706e9d4`  
		Last Modified: Thu, 24 Jan 2019 02:35:17 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed8d90bf8f3828b19d5a3caeca788f85a980a1030ecb110bdd6a7cf0a799dd6`  
		Last Modified: Thu, 24 Jan 2019 02:35:18 GMT  
		Size: 3.2 MB (3156075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b2e7557958846362d65542ae5fa0d321c9060d82f674ef413c07bf465616cc`  
		Last Modified: Thu, 24 Jan 2019 02:35:17 GMT  
		Size: 542.4 KB (542355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf9141370681fce4fa29ba2939dc6d901bdaf6c219d55877670317536b32e82`  
		Last Modified: Thu, 24 Jan 2019 02:35:19 GMT  
		Size: 9.9 MB (9901075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a504fad52a1d70c2634db9bbe51ae34f9412ec36fe7c40821651e5a25ef65c07`  
		Last Modified: Thu, 24 Jan 2019 02:35:17 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
