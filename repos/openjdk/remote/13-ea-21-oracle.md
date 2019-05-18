## `openjdk:13-ea-21-oracle`

```console
$ docker pull openjdk@sha256:e701292c557d6130af00b8fc7114fdf4676127a1406b0419c611275dbd5c70c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:13-ea-21-oracle` - linux; amd64

```console
$ docker pull openjdk@sha256:991c5d3f03bd695d2f1e280b93a31a2950c81d3309f9e3d34b8b737a396fc086
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.6 MB (245577138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e9f04bbc1b0260de7d3cc38188f1da9ffb1070af1eba72e6a8e7d64753ad21b`
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
# Fri, 17 May 2019 23:23:28 GMT
ENV JAVA_VERSION=13-ea+21
# Fri, 17 May 2019 23:23:28 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/21/GPL/openjdk-13-ea+21_linux-x64_bin.tar.gz
# Fri, 17 May 2019 23:23:28 GMT
ENV JAVA_SHA256=0708b5eb0402af007a0a29a5e0082f8be6eacb224afb28cf1e193b32ee8c84c0
# Fri, 17 May 2019 23:24:17 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Fri, 17 May 2019 23:24:18 GMT
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
	-	`sha256:c9256861a2d35a426ee9118ec63583addeafefd2a3798623d22b97b9560644ba`  
		Last Modified: Fri, 17 May 2019 23:26:12 GMT  
		Size: 196.3 MB (196339243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
