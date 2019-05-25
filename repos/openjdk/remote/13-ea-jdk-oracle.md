## `openjdk:13-ea-jdk-oracle`

```console
$ docker pull openjdk@sha256:2939766ce746fdd636ce9653effb71562b2c5b2ddf2a841440c5f760cc6aad9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:13-ea-jdk-oracle` - linux; amd64

```console
$ docker pull openjdk@sha256:c199a08586095543a0ac1888369591b46b4ee04e6c01ce182f279d6c730630eb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.7 MB (245661857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:830a45d20233ecb43e16c0397522a00363a84c9e0a3f0ed5aced40b78b63ba2e`
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
# Fri, 12 Apr 2019 01:03:22 GMT
ENV JAVA_HOME=/usr/java/openjdk-13
# Fri, 12 Apr 2019 01:03:23 GMT
ENV PATH=/usr/java/openjdk-13/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 22:33:06 GMT
ENV JAVA_VERSION=13-ea+22
# Fri, 24 May 2019 22:33:07 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/22/GPL/openjdk-13-ea+22_linux-x64_bin.tar.gz
# Fri, 24 May 2019 22:33:07 GMT
ENV JAVA_SHA256=2cf6762a965ffa9cc7d37b948d10ff26b732b523fb0358a339b826370458e439
# Fri, 24 May 2019 22:33:42 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Fri, 24 May 2019 22:33:43 GMT
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
	-	`sha256:82758ff9dfa34da41dfcc6982dceeba9d9d79545cad22d4ae19af5e9cbd97e08`  
		Last Modified: Fri, 24 May 2019 22:37:21 GMT  
		Size: 196.4 MB (196423962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
