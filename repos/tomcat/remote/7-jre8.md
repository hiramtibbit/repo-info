## `tomcat:7-jre8`

```console
$ docker pull tomcat@sha256:51fdf0716eec94973982bf68add21c1db7b427db57b7196fea86e645445ab856
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `tomcat:7-jre8` - linux; amd64

```console
$ docker pull tomcat@sha256:fd2e3adf31e5afad1cc753bd7fe8523f5043c815f880ddc916845ef20ccc70ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.5 MB (195479902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:838e18f6824d74a07ee543a965a8a2d00d735d0849efce825539b0174eb05a5b`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Fri, 04 May 2018 17:41:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 17:41:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 04 May 2018 23:51:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 23:51:32 GMT
ENV LANG=C.UTF-8
# Fri, 04 May 2018 23:51:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 04 May 2018 23:51:34 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 04 May 2018 23:51:34 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 04 May 2018 23:51:34 GMT
ENV JAVA_VERSION=8u171
# Fri, 04 May 2018 23:51:34 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Fri, 04 May 2018 23:51:35 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 14 May 2018 22:44:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 14 May 2018 22:44:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 15 May 2018 00:00:08 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 15 May 2018 00:00:09 GMT
ENV PATH=/usr/local/tomcat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 May 2018 00:00:10 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 15 May 2018 00:00:10 GMT
WORKDIR /usr/local/tomcat
# Tue, 15 May 2018 00:00:10 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 15 May 2018 00:00:11 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 15 May 2018 00:00:11 GMT
ENV OPENSSL_VERSION=1.1.0f-3+deb9u2
# Tue, 15 May 2018 00:00:12 GMT
RUN set -ex; 	currentVersion="$(dpkg-query --show --showformat '${Version}\n' openssl)"; 	if dpkg --compare-versions "$currentVersion" '<<' "$OPENSSL_VERSION"; then 		if ! grep -q stretch /etc/apt/sources.list; then 			{ 				echo 'deb http://deb.debian.org/debian stretch main'; 				echo 'deb http://security.debian.org stretch/updates main'; 				echo 'deb http://deb.debian.org/debian stretch-updates main'; 			} > /etc/apt/sources.list.d/stretch.list; 			{ 				echo 'Package: *'; 				echo 'Pin: release n=stretch*'; 				echo 'Pin-Priority: -10'; 				echo; 				echo 'Package: openssl libssl*'; 				echo "Pin: version $OPENSSL_VERSION"; 				echo 'Pin-Priority: 990'; 			} > /etc/apt/preferences.d/stretch-openssl; 		fi; 		apt-get update; 		apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 15 May 2018 00:00:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libapr1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 00:00:28 GMT
ENV GPG_KEYS=05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23
# Tue, 15 May 2018 00:00:28 GMT
ENV TOMCAT_MAJOR=7
# Tue, 15 May 2018 00:00:28 GMT
ENV TOMCAT_VERSION=7.0.88
# Tue, 15 May 2018 00:00:28 GMT
ENV TOMCAT_SHA512=5adb54155f2da0d59c86af9b6df5cce110e608b7f894cd0398821797cf87502bd2938bc8494e021daf1990b337267c391e90e129c907e9a548d23cb52b2a8451
# Tue, 15 May 2018 00:00:29 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.88/bin/apache-tomcat-7.0.88.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.88/bin/apache-tomcat-7.0.88.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.88/bin/apache-tomcat-7.0.88.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.88/bin/apache-tomcat-7.0.88.tar.gz
# Tue, 15 May 2018 00:00:29 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-7/v7.0.88/bin/apache-tomcat-7.0.88.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.88/bin/apache-tomcat-7.0.88.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-7/v7.0.88/bin/apache-tomcat-7.0.88.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.88/bin/apache-tomcat-7.0.88.tar.gz.asc
# Tue, 15 May 2018 00:01:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 15 May 2018 00:01:46 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 15 May 2018 00:01:47 GMT
EXPOSE 8080/tcp
# Tue, 15 May 2018 00:01:47 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6861473222a6f5fb6abe08f0cdebf56b5f42758b0a7430bbbf47a3d365198e5e`  
		Last Modified: Fri, 04 May 2018 18:20:41 GMT  
		Size: 10.8 MB (10773612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0b9c3b5ae080d11df6df788ce96a45b684d7b050fd017c06b4ea5a40f58545`  
		Last Modified: Fri, 04 May 2018 18:20:39 GMT  
		Size: 4.3 MB (4335883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae14ee39877acb45fb6c2157e51ddcd4690ac64ed50b0bbd417eb101518ef81d`  
		Last Modified: Sat, 05 May 2018 00:08:21 GMT  
		Size: 853.1 KB (853090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8085c1b536f02629bdd8a7a1ba474b47b4c842019776b964d5d34e9100a1c07a`  
		Last Modified: Sat, 05 May 2018 00:08:20 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1431e84c0ce069ca47afe14c3caab9012a2c46f70788f1bdf4b2ec5e4a7e63`  
		Last Modified: Sat, 05 May 2018 00:08:20 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0e3df5a1fd8d55deb4e05d5d22c6ebea2ecf9aab66b5d074a020339cf4fc28`  
		Last Modified: Mon, 14 May 2018 23:18:26 GMT  
		Size: 122.1 MB (122140587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2cb611ced6ca04659961659e0c74ec16433c5ae37a268283d342196ee6cf5fe`  
		Last Modified: Mon, 14 May 2018 23:17:54 GMT  
		Size: 272.1 KB (272121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268dc3e43e662375abdbff24802f2b48058c6da25963c01574ce8b40d28d6950`  
		Last Modified: Tue, 15 May 2018 00:29:10 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a7e8d254c73f479737498b150a8f4b2c975d67dbf5c34c703addb145a896b2`  
		Last Modified: Tue, 15 May 2018 00:29:12 GMT  
		Size: 528.7 KB (528711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:653b71875aa8e6391682d2ed81f676a2a9347febd6e64d073845474145e59eff`  
		Last Modified: Tue, 15 May 2018 00:29:13 GMT  
		Size: 11.3 MB (11257081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae0c1ee7ea7a9e41c4a5cb4aa68c260bd984ac23535a7f4165764ff2753f29a`  
		Last Modified: Tue, 15 May 2018 00:29:10 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
