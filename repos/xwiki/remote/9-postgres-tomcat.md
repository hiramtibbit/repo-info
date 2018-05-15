## `xwiki:9-postgres-tomcat`

```console
$ docker pull xwiki@sha256:7af2d6e46fdad6f552717a6fa37874a2f0c6a9e1339d14c223a1b4cff7576926
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `xwiki:9-postgres-tomcat` - linux; amd64

```console
$ docker pull xwiki@sha256:921ea255375f543d32cfa58c8de53eae4189da2e1bf901a0f6cf7405c00f2215
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **583.2 MB (583223206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49ddb95649e419d5d79109c39959d968bd534aaa3183e4f13ddf1cc444585736`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["xwiki"]`

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
# Tue, 15 May 2018 00:09:25 GMT
ENV TOMCAT_MAJOR=8
# Tue, 15 May 2018 00:11:21 GMT
ENV TOMCAT_VERSION=8.5.31
# Tue, 15 May 2018 00:11:22 GMT
ENV TOMCAT_SHA512=a961eedc4b0c0729f1fb96dafb75eb48e000502233b849f47c84a6355873bc96d131b112400587e96391262e0659df9b991b4e66a78fda74168f939c4ab5af88
# Tue, 15 May 2018 00:11:22 GMT
ENV TOMCAT_TGZ_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz
# Tue, 15 May 2018 00:11:22 GMT
ENV TOMCAT_ASC_URLS=https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://www.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc 	https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz.asc
# Tue, 15 May 2018 00:11:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 		apt-get install -y --no-install-recommends gnupg dirmngr; 		export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 		apt-get install -y --no-install-recommends wget ca-certificates; 		success=; 	for url in $TOMCAT_TGZ_URLS; do 		if wget -O tomcat.tar.gz "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; 		success=; 	for url in $TOMCAT_ASC_URLS; do 		if wget -O tomcat.tar.gz.asc "$url"; then 			success=1; 			break; 		fi; 	done; 	[ -n "$success" ]; 		gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xvf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	rm -rf "$GNUPGHOME"; 		nativeBuildDir="$(mktemp -d)"; 	tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 		"openjdk-${JAVA_VERSION%%[.~bu-]*}-jdk=$JAVA_DEBIAN_VERSION" 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$(which apr-1-config)" 			--with-java-home="$(docker-java-home)" 			--with-ssl=yes; 		make -j "$(nproc)"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +
# Tue, 15 May 2018 00:11:51 GMT
RUN set -e 	&& nativeLines="$(catalina.sh configtest 2>&1)" 	&& nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')" 	&& nativeLines="$(echo "$nativeLines" | sort -u)" 	&& if ! echo "$nativeLines" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 15 May 2018 00:11:51 GMT
EXPOSE 8080/tcp
# Tue, 15 May 2018 00:11:52 GMT
CMD ["catalina.sh" "run"]
# Tue, 15 May 2018 04:19:36 GMT
MAINTAINER Vincent Massol <vincent@massol.net>
# Tue, 15 May 2018 04:26:34 GMT
RUN apt-get update &&   apt-get --no-install-recommends -y install     curl     libreoffice     unzip     procps     libpostgresql-jdbc-java &&   rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 04:26:35 GMT
ENV XWIKI_VERSION=9.11.3
# Tue, 15 May 2018 04:26:35 GMT
ENV XWIKI_URL_PREFIX=http://maven.xwiki.org/releases/org/xwiki/platform/xwiki-platform-distribution-war/9.11.3
# Tue, 15 May 2018 04:26:35 GMT
ENV XWIKI_DOWNLOAD_SHA256=40dcf3cd92580f4ef411b8d6d7e4454469e37a425408dff49f4a8b24917f2a48
# Tue, 15 May 2018 04:27:11 GMT
RUN rm -rf /usr/local/tomcat/webapps/* &&   mkdir -p /usr/local/tomcat/temp &&   mkdir -p /usr/local/xwiki/data &&   curl -fSL "${XWIKI_URL_PREFIX}/xwiki-platform-distribution-war-${XWIKI_VERSION}.war" -o xwiki.war &&   echo "$XWIKI_DOWNLOAD_SHA256 xwiki.war" | sha256sum -c - &&   unzip -d /usr/local/tomcat/webapps/ROOT xwiki.war &&   rm -f xwiki.war
# Tue, 15 May 2018 04:27:12 GMT
RUN cp /usr/share/java/postgresql-jdbc4.jar /usr/local/tomcat/webapps/ROOT/WEB-INF/lib/
# Tue, 15 May 2018 04:27:13 GMT
COPY file:725119cd89de5ce41030b7f52a3c80dcbddb95f2e35da254ae1eb2bb48447b8d in /usr/local/tomcat/bin/ 
# Tue, 15 May 2018 04:27:13 GMT
COPY file:7a0ce36c7348308f7754e7d70a4cad74b1c6a11e342ab82fe6e57f1bef38e533 in /usr/local/tomcat/webapps/ROOT/WEB-INF/hibernate.cfg.xml 
# Tue, 15 May 2018 04:27:14 GMT
RUN sed -i 's/<id>org.xwiki.platform:xwiki-platform-distribution-war/<id>org.xwiki.platform:xwiki-platform-distribution-docker/'   /usr/local/tomcat/webapps/ROOT/META-INF/extension.xed
# Tue, 15 May 2018 04:27:14 GMT
COPY file:e69971d04d40c2457dc1fb637a5d02a831cc36048118f93452640388e3e3c97d in /usr/local/bin/docker-entrypoint.sh 
# Tue, 15 May 2018 04:27:14 GMT
VOLUME [/usr/local/xwiki]
# Tue, 15 May 2018 04:27:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 May 2018 04:27:15 GMT
CMD ["xwiki"]
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
	-	`sha256:5c848af927385cacaf5c6e514a0b9ecb9e8f8ab9c4cb6d65aea3324cc402f946`  
		Last Modified: Tue, 15 May 2018 00:32:37 GMT  
		Size: 11.8 MB (11754594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:789b92e37607666bc1eef7bc45f3be4affa70d1edddd03b0b9a2404b85763e48`  
		Last Modified: Tue, 15 May 2018 00:32:35 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ac0e74d7b850951c09c6006b8559b697465366314918702e51afb1a78740aa`  
		Last Modified: Tue, 15 May 2018 04:31:43 GMT  
		Size: 161.0 MB (161026745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cec3affadcccca7b3404c2c4b205d5841cd43d3e3db3bc8a865468bb291b22c`  
		Last Modified: Tue, 15 May 2018 04:31:29 GMT  
		Size: 225.6 MB (225591407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a2be92573e35a6b68cda388f5a761f36ddc15d0fbfc88dc641f74b1f3fd5d1`  
		Last Modified: Tue, 15 May 2018 04:31:06 GMT  
		Size: 618.9 KB (618884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e6eaf7dc57cfce3a0a23750f1d05abf171bffcb55ea2051e44ea32c61850cd6`  
		Last Modified: Tue, 15 May 2018 04:31:05 GMT  
		Size: 674.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96d6c87ce3bc355d07b930a5fb228988d24dd80f78546f71b556c33cb5871b20`  
		Last Modified: Tue, 15 May 2018 04:31:05 GMT  
		Size: 2.4 KB (2430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbfcf5dcc0e3800094aae6f54d1b3c7f8c7965a4c58da2a5e658aa62b236730d`  
		Last Modified: Tue, 15 May 2018 04:31:05 GMT  
		Size: 3.6 KB (3617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2116a80aaf5c791b9f984cc945d4f047421568e2394e465552fa7740c2bd5f7`  
		Last Modified: Tue, 15 May 2018 04:31:05 GMT  
		Size: 2.0 KB (2034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
