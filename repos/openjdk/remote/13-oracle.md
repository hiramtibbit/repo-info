## `openjdk:13-oracle`

```console
$ docker pull openjdk@sha256:d746ca8c747afa57ba50d4f3bb27cb5ab0f16c965f1c367e53bbc562ff5efce7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:13-oracle` - linux; amd64

```console
$ docker pull openjdk@sha256:09279d079203b607f5ceb48cac2ac6f5f515783586a283eec66a87d7a251f58d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.1 MB (245147823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e4bfdf03a926adf7aeec07ee3b6a87ebc46b51b6d286f8267c3383554c2a256`
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
# Tue, 14 May 2019 00:24:46 GMT
ENV JAVA_VERSION=13-ea+20
# Tue, 14 May 2019 00:24:46 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/20/GPL/openjdk-13-ea+20_linux-x64_bin.tar.gz
# Tue, 14 May 2019 00:24:46 GMT
ENV JAVA_SHA256=545f946d931f38ea32614cc6a5089fb5abe92497f98d52dc9f6375097c70bdba
# Tue, 14 May 2019 00:25:40 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Tue, 14 May 2019 00:25:40 GMT
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
	-	`sha256:99f904284597fd5e3305fbe54ea4c9c44259e48a10e4737b6a7bfc5c64961da5`  
		Last Modified: Tue, 14 May 2019 00:38:01 GMT  
		Size: 195.9 MB (195909928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
