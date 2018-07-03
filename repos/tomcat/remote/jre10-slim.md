## `tomcat:jre10-slim`

```console
$ docker pull tomcat@sha256:c233b4563cc99d8bcf3a0f0c97990ebc20f29e713a0d57b0656f3ed45f87c073
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `tomcat:jre10-slim` - linux; amd64

```console
$ docker pull tomcat@sha256:115b6ba89c4b76de82b0a3406d84e827cbc6601bb9ebbc2363968085b15d55b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.0 MB (114014208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a675d8153ad7c1fbe7bf27237284880784020a19d1f4f673161f4815cd2b925a`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 26 Jun 2018 21:23:47 GMT
ADD file:f6f1518ff68043ed3ca8bae9ce07dcc969ae13bbdbfa6de70c869a9082f53e3c in / 
# Tue, 26 Jun 2018 21:23:47 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 23:19:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:19:36 GMT
ENV LANG=C.UTF-8
# Tue, 26 Jun 2018 23:19:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 26 Jun 2018 23:23:44 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 26 Jun 2018 23:23:44 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 26 Jun 2018 23:23:44 GMT
ENV JAVA_VERSION=10.0.1+10
# Tue, 26 Jun 2018 23:23:44 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Tue, 26 Jun 2018 23:26:56 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 07:17:51 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 27 Jun 2018 07:17:51 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 07:17:52 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 27 Jun 2018 07:17:52 GMT
WORKDIR /usr/local/tomcat
# Wed, 27 Jun 2018 07:17:52 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 27 Jun 2018 07:17:52 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 27 Jun 2018 07:17:52 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Wed, 27 Jun 2018 07:17:53 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 07:18:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 07:18:01 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 27 Jun 2018 07:18:01 GMT
ENV TOMCAT_MAJOR=8
# Wed, 27 Jun 2018 07:18:01 GMT
ENV TOMCAT_VERSION=8.5.31
# Wed, 27 Jun 2018 07:18:01 GMT
ENV TOMCAT_SHA512=a961eedc4b0c0729f1fb96dafb75eb48e000502233b849f47c84a6355873bc96d131b112400587e96391262e0659df9b991b4e66a78fda74168f939c4ab5af88
# Wed, 27 Jun 2018 07:18:02 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz
# Wed, 27 Jun 2018 07:18:02 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc
# Wed, 27 Jun 2018 07:20:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Wed, 27 Jun 2018 07:20:40 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Wed, 27 Jun 2018 07:20:40 GMT
EXPOSE 8080/tcp
# Wed, 27 Jun 2018 07:20:41 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:469c03946d59bad3e2f921c73851b892468df0e7358d603dc6cf4cf3754df71d`  
		Last Modified: Tue, 26 Jun 2018 21:34:51 GMT  
		Size: 26.1 MB (26124512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9071a53fca24b6a916b853d0e5fc165853317f150c46e8cb23f78f07cbd910cd`  
		Last Modified: Tue, 26 Jun 2018 23:42:22 GMT  
		Size: 460.1 KB (460064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5abfd2a20a1c0b8700b067a71251d414d178315c2de46c9f6d0c0a85d105c810`  
		Last Modified: Tue, 26 Jun 2018 23:42:21 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8f3a2da32f1fc8ee5d2a6df817b518c352401ee994eea942cf004321390480`  
		Last Modified: Tue, 26 Jun 2018 23:42:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2712b07288b4694086f2d5ba1b5eba8f06ebdce40a86cbab252721ac8209912d`  
		Last Modified: Tue, 26 Jun 2018 23:47:36 GMT  
		Size: 76.4 MB (76354261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8b2e6cf13e060611ba6794552e0cf39f812be680e111284008c140db5716993`  
		Last Modified: Wed, 27 Jun 2018 07:45:34 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18768a2ac73725097c1fce3ef0a89c9fd533b153e1a65b51fed8d88d5fc4f11e`  
		Last Modified: Wed, 27 Jun 2018 07:45:35 GMT  
		Size: 406.9 KB (406871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7fcac3208e62026f1286b4b63d9f024bc8b135b320ae6436616c3fcc77cf658`  
		Last Modified: Wed, 27 Jun 2018 07:45:38 GMT  
		Size: 10.7 MB (10667830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b5c358cb3a29f99861e18c2fa831a244c5ba21cbbf1b80ddd0c5729812251e`  
		Last Modified: Wed, 27 Jun 2018 07:45:35 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:jre10-slim` - linux; arm variant v5

```console
$ docker pull tomcat@sha256:c4da9d43799d3b04b15b43e17c49f529defd3a3e18981f9f5d96b380f9d1e084
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.6 MB (97591001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cac638a6302d3baea4994290eec89f7b53a41020a1987e32fb6334edc493830`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 27 Jun 2018 08:52:27 GMT
ADD file:e57206d1e45e262bfb6e4f3bc11722f30ee3b33538b4c1095792a076d5b4b2aa in / 
# Wed, 27 Jun 2018 08:52:27 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:25:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:25:21 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 12:25:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 12:29:40 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 12:29:41 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 12:29:41 GMT
ENV JAVA_VERSION=10.0.1+10
# Wed, 27 Jun 2018 12:29:41 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Wed, 27 Jun 2018 12:32:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 16:09:16 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 27 Jun 2018 16:09:16 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 16:09:17 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 27 Jun 2018 16:09:18 GMT
WORKDIR /usr/local/tomcat
# Wed, 27 Jun 2018 16:09:18 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 27 Jun 2018 16:09:18 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 27 Jun 2018 16:09:19 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Wed, 27 Jun 2018 16:09:20 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 16:09:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 16:09:28 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 27 Jun 2018 16:09:29 GMT
ENV TOMCAT_MAJOR=8
# Wed, 27 Jun 2018 16:09:29 GMT
ENV TOMCAT_VERSION=8.5.31
# Wed, 27 Jun 2018 16:09:30 GMT
ENV TOMCAT_SHA512=a961eedc4b0c0729f1fb96dafb75eb48e000502233b849f47c84a6355873bc96d131b112400587e96391262e0659df9b991b4e66a78fda74168f939c4ab5af88
# Wed, 27 Jun 2018 16:09:30 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz
# Wed, 27 Jun 2018 16:09:30 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc
# Tue, 03 Jul 2018 09:31:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 03 Jul 2018 09:31:19 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 03 Jul 2018 09:31:25 GMT
EXPOSE 8080/tcp
# Tue, 03 Jul 2018 09:31:26 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:ab290037f4b3ddf1d7b1d19da8d2becec47e1854d7d4ee1442ab7f82bde3b262`  
		Last Modified: Wed, 27 Jun 2018 09:01:27 GMT  
		Size: 24.1 MB (24081950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a68d3622f3af06525b6108a0a3e2bb840402b384b4d8f18836036fec4bccc750`  
		Last Modified: Wed, 27 Jun 2018 12:47:58 GMT  
		Size: 453.6 KB (453561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7078e99830203460c84053319478b36f2cb0988d2ecd3309a56a01fb37a93fbd`  
		Last Modified: Wed, 27 Jun 2018 12:47:58 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d320bdb202788d7ff5812ec7341814eb7f72641fd0a2642031af85f0901754e`  
		Last Modified: Wed, 27 Jun 2018 12:47:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0409905400fae4a326fdce2d08042ba67e82f80468669d3cf79711209502f923`  
		Last Modified: Wed, 27 Jun 2018 12:52:31 GMT  
		Size: 61.3 MB (61258680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f5ebbca5dd8758fc34b6b1198cb6224b84cc44c4771020758a206753cf38d6`  
		Last Modified: Tue, 03 Jul 2018 09:33:59 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242d4e0de1d4a6a7a15d09a55c6fd536e97ee6f1d33adc001ec09dbf22783f76`  
		Last Modified: Tue, 03 Jul 2018 09:33:59 GMT  
		Size: 390.9 KB (390910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6573fd4953a735c96539189be36ca659f81b12be99c46ad746fd67fd3705f3d`  
		Last Modified: Tue, 03 Jul 2018 09:34:01 GMT  
		Size: 11.4 MB (11405229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d828e3f33521032298c07d608cbb39c1fac344db81cd75edd554db6d77f1b581`  
		Last Modified: Tue, 03 Jul 2018 09:33:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:jre10-slim` - linux; arm variant v7

```console
$ docker pull tomcat@sha256:5288f410c2c37ce649a0ac68b077ee0bcb9b2984f3121239aab6d963c9050f62
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.4 MB (100392273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:706c237f5cd9ae9dfc6df1349c986b8d842ef8b15452826a11634bb7bc61778b`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Sat, 28 Apr 2018 12:02:41 GMT
ADD file:51a6f559367fc724be19aeee6bd277b378069389bc848507cfa991829488f7a6 in / 
# Sat, 28 Apr 2018 12:02:41 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:38:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:38:04 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 12:38:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 12:42:14 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 12:42:19 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 28 Apr 2018 12:42:20 GMT
ENV JAVA_VERSION=10.0.1+10
# Thu, 10 May 2018 12:10:49 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Tue, 15 May 2018 12:10:01 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 31 May 2018 13:18:23 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 31 May 2018 13:18:33 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 31 May 2018 13:18:46 GMT
RUN mkdir -p "$CATALINA_HOME"
# Thu, 31 May 2018 13:18:46 GMT
WORKDIR /usr/local/tomcat
# Thu, 31 May 2018 13:18:46 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 31 May 2018 13:18:47 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 31 May 2018 13:18:47 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Thu, 31 May 2018 13:18:48 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 31 May 2018 13:18:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 31 May 2018 13:18:55 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Thu, 31 May 2018 13:18:55 GMT
ENV TOMCAT_MAJOR=8
# Thu, 31 May 2018 13:18:55 GMT
ENV TOMCAT_VERSION=8.5.31
# Thu, 31 May 2018 13:18:56 GMT
ENV TOMCAT_SHA512=a961eedc4b0c0729f1fb96dafb75eb48e000502233b849f47c84a6355873bc96d131b112400587e96391262e0659df9b991b4e66a78fda74168f939c4ab5af88
# Thu, 31 May 2018 13:18:56 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz
# Thu, 31 May 2018 13:18:56 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc
# Thu, 31 May 2018 13:20:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 31 May 2018 13:20:20 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 31 May 2018 13:20:20 GMT
EXPOSE 8080/tcp
# Thu, 31 May 2018 13:20:20 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:e896ce6a07096665b9b10eea8b8d7a9f0f6e26c3d88bd463db48304823b92890`  
		Last Modified: Sat, 28 Apr 2018 12:14:08 GMT  
		Size: 22.0 MB (21967210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:925e7bf3333e528dfd915abfbcbc560f820ce29a375d884865566688160e4eed`  
		Last Modified: Sat, 28 Apr 2018 13:05:56 GMT  
		Size: 436.6 KB (436647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc2cc177a3ab014156f5c72f5b4f97a9fb66c88c1f2d8c79cdf90ed2dab6a6c`  
		Last Modified: Sat, 28 Apr 2018 13:05:56 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec819d3fefda63fdabc6644a3152410ef549eafd68839c96b47375d98e14cc1c`  
		Last Modified: Sat, 28 Apr 2018 13:05:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1f79516c27f16d3d4aeceee99c452dff4dd0acfa299ab9a9b3aca2ffecdaf2`  
		Last Modified: Tue, 15 May 2018 12:41:12 GMT  
		Size: 63.2 MB (63207610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f672a2af8eef0a3eca82f5d701536c248394cb0e62eebc3d4d7ee435060ea1f`  
		Last Modified: Thu, 31 May 2018 13:36:39 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69bac7a4c93b358657149fc352d64d49c430f73d0f969f697021ed8fb1f5b02b`  
		Last Modified: Thu, 31 May 2018 13:36:40 GMT  
		Size: 381.0 KB (381014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:389b7257b982a9eef6e6e4b22a42e8163aa68de37899538e7b7f58fc51b5a088`  
		Last Modified: Thu, 31 May 2018 13:36:43 GMT  
		Size: 14.4 MB (14399121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ba86eac7fd05a22785fe7ee8a83c5a74fb9f63a29fb3f7dda5b018ac382a089`  
		Last Modified: Thu, 31 May 2018 13:36:40 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:jre10-slim` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:ebbb0bc57c22164bc07887741ddb0651e61b0fb7214adbbb9da06b98009f8c7f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.5 MB (100504462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c017f6624713400f556c703fbccdfd70dda650e8fc50334c7a32032f14196a2e`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 27 Jun 2018 08:45:15 GMT
ADD file:43ec4f040b626f1ded3ce1a923597ce0c4c7f95f69f95f086a3847e8aeb74bd3 in / 
# Wed, 27 Jun 2018 08:45:17 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:20:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:20:30 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 10:20:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 10:22:39 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 10:22:40 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 10:22:41 GMT
ENV JAVA_VERSION=10.0.1+10
# Wed, 27 Jun 2018 10:22:42 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Wed, 27 Jun 2018 10:34:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 19:07:50 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 27 Jun 2018 19:07:51 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 19:07:54 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 27 Jun 2018 19:07:54 GMT
WORKDIR /usr/local/tomcat
# Wed, 27 Jun 2018 19:07:55 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 27 Jun 2018 19:07:56 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 27 Jun 2018 19:07:57 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Wed, 27 Jun 2018 19:07:59 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 19:08:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 19:08:15 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 27 Jun 2018 19:08:16 GMT
ENV TOMCAT_MAJOR=8
# Wed, 27 Jun 2018 19:08:17 GMT
ENV TOMCAT_VERSION=8.5.31
# Wed, 27 Jun 2018 19:08:17 GMT
ENV TOMCAT_SHA512=a961eedc4b0c0729f1fb96dafb75eb48e000502233b849f47c84a6355873bc96d131b112400587e96391262e0659df9b991b4e66a78fda74168f939c4ab5af88
# Wed, 27 Jun 2018 19:08:18 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz
# Wed, 27 Jun 2018 19:08:20 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc
# Thu, 28 Jun 2018 04:55:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Thu, 28 Jun 2018 04:55:20 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Thu, 28 Jun 2018 04:55:20 GMT
EXPOSE 8080/tcp
# Thu, 28 Jun 2018 04:55:21 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:6a0581b8511ac26263e1c081abe6382d7ce4481f47612f79a5460165410d1da7`  
		Last Modified: Wed, 27 Jun 2018 08:55:56 GMT  
		Size: 23.5 MB (23467711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29a41f0f7beab1d044e8af784988f7edba4c2864fc3c3a8895b4a9923cf8688a`  
		Last Modified: Wed, 27 Jun 2018 10:44:50 GMT  
		Size: 445.0 KB (444977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a408113d860847fc397e2efe7e9e5b70c792848f6cdd53715333f04f14d5151c`  
		Last Modified: Wed, 27 Jun 2018 10:44:50 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360f23b6c1f5ff2fd50f4c1624b12135cad6b44e5fcad2ca644809184db95729`  
		Last Modified: Wed, 27 Jun 2018 10:44:50 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b838544e25b2cd9cf7f46ac62c889776bfd65414990379f41aa30654b37069e4`  
		Last Modified: Wed, 27 Jun 2018 10:48:49 GMT  
		Size: 64.7 MB (64684558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1484750b5dc7bd2c198c640365ebe0ec1e2b675e4cb4b66675c61a5644b3207e`  
		Last Modified: Thu, 28 Jun 2018 05:12:53 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:382e492b820df97f2363cf716140b5fdc50517421f1a193a4e503435ae088209`  
		Last Modified: Thu, 28 Jun 2018 05:12:53 GMT  
		Size: 392.1 KB (392055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f9ff35d5829b6191a5bc6c9378bd2927e7f1d9154a6915557365f9340bd8f81`  
		Last Modified: Thu, 28 Jun 2018 05:12:55 GMT  
		Size: 11.5 MB (11514525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7be72759683e6179ca964d457f3eb9055df30cc5c60616a5200ca6457173347`  
		Last Modified: Thu, 28 Jun 2018 05:12:52 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:jre10-slim` - linux; 386

```console
$ docker pull tomcat@sha256:782faf20f262497ace88cfa8694511454749688a8a93abf046ba8658ac7fe070
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.1 MB (120094229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cbe02a6131008499ab0d65529ef7ad3ae5b66ec4c7513fe91e9e1c4a0c5333f`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 27 Jun 2018 10:44:39 GMT
ADD file:f929d208ceb204b3c1497f39d9adcf84b402fd97ac8f46d83cd7037e033a72a6 in / 
# Wed, 27 Jun 2018 10:44:39 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 15:08:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:08:52 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 15:08:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 15:12:09 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 15:12:09 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 15:12:09 GMT
ENV JAVA_VERSION=10.0.1+10
# Wed, 27 Jun 2018 15:12:10 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Wed, 27 Jun 2018 15:14:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 17:42:46 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 27 Jun 2018 17:42:46 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 17:42:47 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 27 Jun 2018 17:42:47 GMT
WORKDIR /usr/local/tomcat
# Wed, 27 Jun 2018 17:42:48 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 27 Jun 2018 17:42:48 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 27 Jun 2018 17:42:48 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Wed, 27 Jun 2018 17:42:49 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 17:42:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 17:42:57 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 27 Jun 2018 17:42:57 GMT
ENV TOMCAT_MAJOR=8
# Wed, 27 Jun 2018 17:42:57 GMT
ENV TOMCAT_VERSION=8.5.31
# Wed, 27 Jun 2018 17:42:58 GMT
ENV TOMCAT_SHA512=a961eedc4b0c0729f1fb96dafb75eb48e000502233b849f47c84a6355873bc96d131b112400587e96391262e0659df9b991b4e66a78fda74168f939c4ab5af88
# Wed, 27 Jun 2018 17:42:58 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz
# Wed, 27 Jun 2018 17:42:58 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc
# Tue, 03 Jul 2018 11:56:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 03 Jul 2018 11:56:52 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 03 Jul 2018 11:56:53 GMT
EXPOSE 8080/tcp
# Tue, 03 Jul 2018 11:56:53 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:a0fea8269111d652b0ccabbceca6901b3b5791cfc9bb1d6d6f82252a9642bd91`  
		Last Modified: Wed, 27 Jun 2018 11:08:32 GMT  
		Size: 26.8 MB (26801995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95034a8d87d9c355bc27c23ad0c8867e9eae93965df86188e628194c2a12628e`  
		Last Modified: Wed, 27 Jun 2018 15:26:24 GMT  
		Size: 468.7 KB (468729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e631fe3dcfcbf42022608af9fafb31506636834640a617210d6a07c8f2784f2`  
		Last Modified: Wed, 27 Jun 2018 15:26:23 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9149731fef78b89e29e6b409b876d261b3605b0167ff14a227c3f5510e18d77`  
		Last Modified: Wed, 27 Jun 2018 15:26:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50d08b2873b21da4ab3205d76b65736f8242f78ff80fe3d7091e6392b7cee0c`  
		Last Modified: Wed, 27 Jun 2018 15:26:54 GMT  
		Size: 80.9 MB (80899833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd71460d41ec9c4cdc255022b3ba027a8c3e0c7c71519b8821e00adf5efdee8`  
		Last Modified: Tue, 03 Jul 2018 12:04:39 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b87a567a6d71edf1f419e15f62e64bae2848245033672dc1681b9e3ac189165`  
		Last Modified: Tue, 03 Jul 2018 12:04:39 GMT  
		Size: 417.4 KB (417445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691c6572f2d76efae6a7a1c9957c481042ae8f3ac7db73ccb4d1c58af0b2f346`  
		Last Modified: Tue, 03 Jul 2018 12:04:42 GMT  
		Size: 11.5 MB (11505554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:239f44c8bcb8c18578d7b308f763bfb228a12da7a8bffe2078903dfb1439bad0`  
		Last Modified: Tue, 03 Jul 2018 12:04:39 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:jre10-slim` - linux; ppc64le

```console
$ docker pull tomcat@sha256:a97b283fbe74ac175b502f0351502e8e000fe0a14d5b1364261187744355cf1e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.9 MB (105878154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4a18087e23afdcf154cac689288b1df2e15a5f92ee05e0c80b3b279f754a42f`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 27 Jun 2018 08:19:43 GMT
ADD file:b78eeabafaf8782971a5f0656c75c78c8c5433892c3eaf767f7929efef69c569 in / 
# Wed, 27 Jun 2018 08:19:44 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:09:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:09:45 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 13:09:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 13:24:35 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 13:24:37 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 13:24:38 GMT
ENV JAVA_VERSION=10.0.1+10
# Wed, 27 Jun 2018 13:24:39 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Wed, 27 Jun 2018 13:37:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 20:18:34 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 27 Jun 2018 20:18:35 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 20:18:38 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 27 Jun 2018 20:18:38 GMT
WORKDIR /usr/local/tomcat
# Wed, 27 Jun 2018 20:18:39 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 27 Jun 2018 20:18:40 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 27 Jun 2018 20:18:40 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Wed, 27 Jun 2018 20:18:43 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 20:18:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 20:18:54 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 27 Jun 2018 20:18:54 GMT
ENV TOMCAT_MAJOR=8
# Wed, 27 Jun 2018 20:18:55 GMT
ENV TOMCAT_VERSION=8.5.31
# Wed, 27 Jun 2018 20:18:55 GMT
ENV TOMCAT_SHA512=a961eedc4b0c0729f1fb96dafb75eb48e000502233b849f47c84a6355873bc96d131b112400587e96391262e0659df9b991b4e66a78fda74168f939c4ab5af88
# Wed, 27 Jun 2018 20:18:56 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz
# Wed, 27 Jun 2018 20:18:56 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc
# Tue, 03 Jul 2018 10:18:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 03 Jul 2018 10:18:56 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 03 Jul 2018 10:18:57 GMT
EXPOSE 8080/tcp
# Tue, 03 Jul 2018 10:18:58 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:97c5cc34273d3c2f949fe7e1929100eee6ce7c2a2cd3643a25cdf70d6de85dc0`  
		Last Modified: Wed, 27 Jun 2018 08:29:18 GMT  
		Size: 27.4 MB (27418879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d97ed0631635aedd4374fc866e43da4d472d2db0823719ee368e40e6e1a9bb`  
		Last Modified: Wed, 27 Jun 2018 14:00:53 GMT  
		Size: 454.8 KB (454789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40effdc3cf774d1ccc0bb80e0f9f3ca757b9aacb532d5e613e4f3ae4c64642a9`  
		Last Modified: Wed, 27 Jun 2018 14:00:52 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:876339928d0898664acfd7b59ab840f17142f1c5ee966aa0ed07e3a5df18e0b3`  
		Last Modified: Wed, 27 Jun 2018 14:00:53 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95df1a46a5d6e1e781fd227eba740aef37f6dcd2a0f01c780109e2608e8d79f`  
		Last Modified: Wed, 27 Jun 2018 14:07:02 GMT  
		Size: 65.9 MB (65920365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43abe30c4e5fd17c3cee8e28d9c5e419e8f192583d67ef87ae7c3ca20f0b9c0b`  
		Last Modified: Tue, 03 Jul 2018 10:27:46 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc9755e7e551b1c5c668e0769e73ba015369a16e2e8915d212fab745cd5c120`  
		Last Modified: Tue, 03 Jul 2018 10:27:47 GMT  
		Size: 404.5 KB (404517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c70dbb112e08cc95ec78151f5b829caf0e702d114f40177d2eeef798c5d1876`  
		Last Modified: Tue, 03 Jul 2018 10:27:49 GMT  
		Size: 11.7 MB (11678933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf32338b6a09f2733901fcfa049690c038272a19330c32c92c574b91da426bc0`  
		Last Modified: Tue, 03 Jul 2018 10:27:46 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:jre10-slim` - linux; s390x

```console
$ docker pull tomcat@sha256:84ae7b60d8cab519286528fb78f06b204607feb3abaacedb856ef6196c632bdd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.2 MB (103227861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84fbebb6a7b6d472d715dbf71d5962487aa9d6eb0b728705f9c49e3c2163dc36`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 27 Jun 2018 11:47:58 GMT
ADD file:cf737655826d4b1e468ce84aa62b13c3fdffa34c82b378e4009593f7849ea7e7 in / 
# Wed, 27 Jun 2018 11:47:59 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:50:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:50:14 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 13:50:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 13:53:04 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 13:53:04 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 13:53:04 GMT
ENV JAVA_VERSION=10.0.1+10
# Wed, 27 Jun 2018 13:53:04 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Wed, 27 Jun 2018 13:55:29 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 17:56:19 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 27 Jun 2018 17:56:19 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 17:56:20 GMT
RUN mkdir -p "$CATALINA_HOME"
# Wed, 27 Jun 2018 17:56:20 GMT
WORKDIR /usr/local/tomcat
# Wed, 27 Jun 2018 17:56:20 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 27 Jun 2018 17:56:20 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 27 Jun 2018 17:56:20 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Wed, 27 Jun 2018 17:56:21 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 17:56:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 17:56:25 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Wed, 27 Jun 2018 17:56:25 GMT
ENV TOMCAT_MAJOR=8
# Wed, 27 Jun 2018 17:56:25 GMT
ENV TOMCAT_VERSION=8.5.31
# Wed, 27 Jun 2018 17:56:26 GMT
ENV TOMCAT_SHA512=a961eedc4b0c0729f1fb96dafb75eb48e000502233b849f47c84a6355873bc96d131b112400587e96391262e0659df9b991b4e66a78fda74168f939c4ab5af88
# Wed, 27 Jun 2018 17:56:26 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz
# Wed, 27 Jun 2018 17:56:26 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc
# Tue, 03 Jul 2018 12:37:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 03 Jul 2018 12:37:23 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 03 Jul 2018 12:37:23 GMT
EXPOSE 8080/tcp
# Tue, 03 Jul 2018 12:37:24 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:8293cf5769b809c9c94e73478bfb163e35d6fa4a5088ecadf2d19c65993b745f`  
		Last Modified: Wed, 27 Jun 2018 11:52:23 GMT  
		Size: 25.1 MB (25124482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aff9df39c1e3554e85381d02064727f34c20aed926476bb74445aac4f475d98`  
		Last Modified: Wed, 27 Jun 2018 14:02:16 GMT  
		Size: 470.8 KB (470844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a16a1697363ae9163e609b14853395e36b56766df4003c7b2b775cfb7cde1fa`  
		Last Modified: Wed, 27 Jun 2018 14:02:15 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b831e698cd68c7b0d8efa54ce7719ef9d161f63d0b6e686b021ecabf998c42`  
		Last Modified: Wed, 27 Jun 2018 14:02:15 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9050430c1879c4cc6fcdc094d4a3b703461cdc151053ed9973497cc72f5f8191`  
		Last Modified: Wed, 27 Jun 2018 14:04:55 GMT  
		Size: 65.7 MB (65650443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305f8b51d0190025954b55d9f5aee1597e959a50ec780f754a7427d61a86e53a`  
		Last Modified: Tue, 03 Jul 2018 12:40:12 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:436ee8b09942969983e4ab697b2c5da76631baeaa04f2492bf19aa71c4cc3104`  
		Last Modified: Tue, 03 Jul 2018 12:40:12 GMT  
		Size: 409.8 KB (409800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fa1b208f31dbc50aae57b68d60c5c23a75551a4cbd51af69ea24ff414b4ed30`  
		Last Modified: Tue, 03 Jul 2018 12:40:14 GMT  
		Size: 11.6 MB (11571652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:732e1fa3a3b24f5b2885905010a0505a1dc907d09c548e08c6fe4192aa11bfa4`  
		Last Modified: Tue, 03 Jul 2018 12:40:15 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
