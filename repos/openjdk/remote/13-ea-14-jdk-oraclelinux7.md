## `openjdk:13-ea-14-jdk-oraclelinux7`

```console
$ docker pull openjdk@sha256:4c96af44a6ac48250baaa155d90c97b391f8bcf5709d773f24a0dac80bb06a1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:13-ea-14-jdk-oraclelinux7` - linux; amd64

```console
$ docker pull openjdk@sha256:92fab16f2514e0e5f19685c1e90e145e984685506079b3df8371dd9bc730bbf2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.9 MB (243895036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:281957a7274743a598b26da1502fa5fa73ecb0494b7c86bb9034cbde45e5b5c1`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 30 Aug 2018 21:49:27 GMT
MAINTAINER Oracle Linux Product Team <ol-ovm-info_ww@oracle.com>
# Fri, 29 Mar 2019 22:13:28 GMT
ADD file:6f3fb77cb4c95452f01aa0bb19d308b18c7863f2c73cbcddb67d9ae531a8fc2e in / 
# Fri, 29 Mar 2019 22:13:28 GMT
CMD ["/bin/bash"]
# Fri, 29 Mar 2019 22:24:20 GMT
RUN set -eux; 	yum install -y 		gzip 		tar 				freetype fontconfig 	; 	rm -rf /var/cache/yum
# Fri, 29 Mar 2019 22:24:20 GMT
ENV JAVA_HOME=/usr/java/openjdk-13
# Fri, 29 Mar 2019 22:24:20 GMT
ENV PATH=/usr/java/openjdk-13/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 29 Mar 2019 22:24:20 GMT
ENV JAVA_VERSION=13-ea+14
# Fri, 29 Mar 2019 22:24:21 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/14/GPL/openjdk-13-ea+14_linux-x64_bin.tar.gz
# Fri, 29 Mar 2019 22:24:21 GMT
ENV JAVA_SHA256=54239f5dea698150ac19cd17ee83c2ef2aea2a25ea0fa78157d455072b56c986
# Fri, 29 Mar 2019 22:24:33 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Fri, 29 Mar 2019 22:24:33 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:473ea9871b29395d70351561fdbf670a69c33141674bbc3175f67d07301cc015`  
		Last Modified: Fri, 29 Mar 2019 22:14:23 GMT  
		Size: 42.6 MB (42597042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53f12c523386577a8cc3e4f89a97d85d0d0c9e9b14fd0133f9a83235f7d1efc4`  
		Last Modified: Fri, 29 Mar 2019 22:27:22 GMT  
		Size: 6.6 MB (6618754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:affe268470a18843415959316f651a30f461a6c4c8a30e199695becaa22c773c`  
		Last Modified: Fri, 29 Mar 2019 22:27:38 GMT  
		Size: 194.7 MB (194679240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
