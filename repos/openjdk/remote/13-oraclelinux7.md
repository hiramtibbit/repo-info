## `openjdk:13-oraclelinux7`

```console
$ docker pull openjdk@sha256:a9d9698e371b51724ed5ed535832b29e31f780fa42a4fd15df0de260b6976aa9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:13-oraclelinux7` - linux; amd64

```console
$ docker pull openjdk@sha256:a48173b744f1e95e8172523ff0b4cc2a46397e422ace7a7d6f77d32a10315c72
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.8 MB (245772811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61ca268b6feb7d2cbb3f6cf8f8ee8d49cedb9226dce6c9b50e8a00a103b7fdd0`
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
# Fri, 07 Jun 2019 21:24:29 GMT
ENV JAVA_VERSION=13-ea+24
# Fri, 07 Jun 2019 21:24:29 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/24/GPL/openjdk-13-ea+24_linux-x64_bin.tar.gz
# Fri, 07 Jun 2019 21:24:29 GMT
ENV JAVA_SHA256=33ce4214fbc42c9e093f1c9fb90a643e591ced5974bac603a6f8795f43801afd
# Fri, 07 Jun 2019 21:25:01 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Fri, 07 Jun 2019 21:25:01 GMT
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
	-	`sha256:95d8badfd23d437b77df69d009bc5843eddc670dd3c003bc183dc5946e46a4c9`  
		Last Modified: Fri, 07 Jun 2019 21:26:20 GMT  
		Size: 196.5 MB (196534916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
