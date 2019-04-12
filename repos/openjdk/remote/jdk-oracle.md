## `openjdk:jdk-oracle`

```console
$ docker pull openjdk@sha256:c54b78205a392ed0b61c9e09ec7ce70689540aecf0d6cc94467f962a4b856f72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:jdk-oracle` - linux; amd64

```console
$ docker pull openjdk@sha256:92fe4a9097327f5f96211cdab67b74109a7d4be7567e1e44f0f0f289c7b8c975
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.4 MB (247355842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b697a97ee8e1b1c669d7e495553832123b395be2a55002fcb5fca9e9ba3e6aa6`
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
# Fri, 12 Apr 2019 01:04:10 GMT
ENV JAVA_HOME=/usr/java/openjdk-12
# Fri, 12 Apr 2019 01:04:10 GMT
ENV PATH=/usr/java/openjdk-12/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 12 Apr 2019 01:04:10 GMT
ENV JAVA_VERSION=12
# Fri, 12 Apr 2019 01:04:10 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk12/GPL/openjdk-12_linux-x64_bin.tar.gz
# Fri, 12 Apr 2019 01:04:10 GMT
ENV JAVA_SHA256=b43bc15f4934f6d321170419f2c24451486bc848a2179af5e49d10721438dd56
# Fri, 12 Apr 2019 01:04:47 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Fri, 12 Apr 2019 01:04:47 GMT
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
	-	`sha256:f64a1a25aec8668128da08d8efffb5145f9e31a1ecc328e7debb81652207360f`  
		Last Modified: Fri, 12 Apr 2019 01:07:54 GMT  
		Size: 198.1 MB (198117947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
