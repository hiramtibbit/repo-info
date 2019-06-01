## `openjdk:13-oraclelinux7`

```console
$ docker pull openjdk@sha256:9903713347cd68e409149d73c5c345aeef0c4ba0fb430da9bd7fb929e426877a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:13-oraclelinux7` - linux; amd64

```console
$ docker pull openjdk@sha256:8e8415cd9a9982a11f33af2bb7ddb008dd92bca605c8937440a4f35ae5628d4e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.7 MB (245718120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:089edb0ea37576aaf342ee5b084ae6b2a79a37d95fef59420947893dd5ac86d0`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 30 Aug 2018 21:49:27 GMT
MAINTAINER Oracle Linux Product Team <ol-ovm-info_ww@oracle.com>
# Fri, 12 Apr 2019 00:39:30 GMT
ADD file:fc4b1a8a391c3bd11cdd229574a87e8d1133402deff8ef758f932756d5a82ca3 in / 
# Fri, 12 Apr 2019 00:39:30 GMT
CMD ["/bin/bash"]
# Fri, 12 Apr 2019 01:03:22 GMT
RUN set -eux; 	yum install -y 		gzip 		tar 				freetype fontconfig 	; 	rm -rf /var/cache/yum
# Wed, 29 May 2019 20:32:36 GMT
ENV LANG=en_US.UTF-8
# Wed, 29 May 2019 20:32:36 GMT
ENV JAVA_HOME=/usr/java/openjdk-13
# Wed, 29 May 2019 20:32:36 GMT
ENV PATH=/usr/java/openjdk-13/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 01 Jun 2019 00:33:17 GMT
ENV JAVA_VERSION=13-ea+23
# Sat, 01 Jun 2019 00:33:17 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/23/GPL/openjdk-13-ea+23_linux-x64_bin.tar.gz
# Sat, 01 Jun 2019 00:33:18 GMT
ENV JAVA_SHA256=0936823f8a0cf794933be2d538898ee36423229ab8e90ec45c28012fe00a8366
# Sat, 01 Jun 2019 00:34:53 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Sat, 01 Jun 2019 00:34:54 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:35defbf6c365d4b156baefbecee36d050397bcc4fca7906aada0bbd00e34c76a`  
		Last Modified: Fri, 12 Apr 2019 00:41:39 GMT  
		Size: 42.6 MB (42610008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5362bf1d5ff8c939878cd11387a1f195da87c88b7c73c89b3d933917644c8fe1`  
		Last Modified: Fri, 12 Apr 2019 01:07:10 GMT  
		Size: 6.6 MB (6627887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a882a7a1c32446cad0da8d0b8508640df5d2e544e9ed3c3c453c68d2fbff6730`  
		Last Modified: Sat, 01 Jun 2019 00:37:38 GMT  
		Size: 196.5 MB (196480225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
