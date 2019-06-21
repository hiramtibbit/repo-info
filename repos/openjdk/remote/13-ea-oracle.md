## `openjdk:13-ea-oracle`

```console
$ docker pull openjdk@sha256:f33d0ab2876b8b8a08a3b62c40b80267c5bb7b861e28c6bd8ede19db58bbb934
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:13-ea-oracle` - linux; amd64

```console
$ docker pull openjdk@sha256:146db2bfa2501d16bd2cea067d59436781faafedc5ccdff75d32d6d76616df52
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.1 MB (246096767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:535922cf774ad53bf389ccc30fd7417204c86ad445dc1dbaf0b1b369fe486ea8`
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
# Fri, 21 Jun 2019 20:23:37 GMT
ENV JAVA_VERSION=13-ea+26
# Fri, 21 Jun 2019 20:23:37 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/26/GPL/openjdk-13-ea+26_linux-x64_bin.tar.gz
# Fri, 21 Jun 2019 20:23:37 GMT
ENV JAVA_SHA256=0265bee8f6606ba9bb766d078a609f96fdad34735d16ab620005b407233f0f8a
# Fri, 21 Jun 2019 20:25:06 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Fri, 21 Jun 2019 20:25:06 GMT
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
	-	`sha256:4d71017c86175581c431729ada40a62268a16a0f0c9408c56012b6fb0a3becc4`  
		Last Modified: Fri, 21 Jun 2019 20:26:38 GMT  
		Size: 196.9 MB (196858872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
