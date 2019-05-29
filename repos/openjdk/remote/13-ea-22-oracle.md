## `openjdk:13-ea-22-oracle`

```console
$ docker pull openjdk@sha256:8a7258017d942c7a91b47507659730d3cbb54bcaf4e332ccf247437ea3de5ac3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:13-ea-22-oracle` - linux; amd64

```console
$ docker pull openjdk@sha256:a3dbddab67ed0165d24515242d40e8774a83ce817d1ed1e696f3a4f3565e6134
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.7 MB (245664228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f88715ec3c30203b7c2494932fba9a2036176600cc11d3c55da81458653fadc`
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
# Wed, 29 May 2019 20:32:36 GMT
ENV JAVA_VERSION=13-ea+22
# Wed, 29 May 2019 20:32:36 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/22/GPL/openjdk-13-ea+22_linux-x64_bin.tar.gz
# Wed, 29 May 2019 20:32:37 GMT
ENV JAVA_SHA256=2cf6762a965ffa9cc7d37b948d10ff26b732b523fb0358a339b826370458e439
# Wed, 29 May 2019 20:33:25 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Wed, 29 May 2019 20:33:25 GMT
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
	-	`sha256:43468e673780b1b458f9de3c96fb06d95daf0e32d6a0159910130a06f8eb2278`  
		Last Modified: Wed, 29 May 2019 20:35:13 GMT  
		Size: 196.4 MB (196426333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
