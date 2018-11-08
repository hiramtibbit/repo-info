## `openjdk:11-jdk-oraclelinux7`

```console
$ docker pull openjdk@sha256:2267542f5ea326e75986494fc4b9e8a0b29bf80c39ed0796bd118a5bfa2bd572
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:11-jdk-oraclelinux7` - linux; amd64

```console
$ docker pull openjdk@sha256:f5c5367743dbfba4401fe0efcca86408cc54e3c00baa95afe53a70b83b1330fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.0 MB (242987240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:393d2ab988d9f51e1ff6e3bec568b0e40b09b3af2e0c4997e52db92797c8073f`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 30 Aug 2018 21:49:27 GMT
MAINTAINER Oracle Linux Product Team <ol-ovm-info_ww@oracle.com>
# Thu, 08 Nov 2018 02:20:54 GMT
ADD file:455ccf156d2b27cef51d5bb1a11a3b0771a13a2378aa24f1879b3e5d90482f3d in / 
# Thu, 08 Nov 2018 02:20:54 GMT
CMD ["/bin/bash"]
# Thu, 08 Nov 2018 02:38:50 GMT
RUN set -eux; 	yum install -y 		gzip 		tar 				freetype fontconfig 	; 	rm -rf /var/cache/yum
# Thu, 08 Nov 2018 02:39:55 GMT
ENV JAVA_HOME=/usr/java/openjdk-11
# Thu, 08 Nov 2018 02:39:55 GMT
ENV PATH=/usr/java/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Nov 2018 02:39:55 GMT
ENV JAVA_VERSION=11.0.1
# Thu, 08 Nov 2018 02:39:56 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk11/13/GPL/openjdk-11.0.1_linux-x64_bin.tar.gz
# Thu, 08 Nov 2018 02:39:56 GMT
ENV JAVA_SHA256=7a6bb980b9c91c478421f865087ad2d69086a0583aeeb9e69204785e8e97dcfd
# Thu, 08 Nov 2018 02:40:19 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Thu, 08 Nov 2018 02:40:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f25d826091945ac486aa0c52fdcf1b0981e32cef0f95c4dd5e229aeaaa73fe4a`  
		Last Modified: Thu, 08 Nov 2018 02:23:03 GMT  
		Size: 42.4 MB (42400712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871abb54d51cb3a855d5abd9e1d822b1c2a7571b305ce853bd3bceb3d852f90c`  
		Last Modified: Thu, 08 Nov 2018 02:43:02 GMT  
		Size: 6.6 MB (6602360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ec74a7d152a3801a5ece210edf51d71e851812776a2693e441f3a21a9c17c9`  
		Last Modified: Thu, 08 Nov 2018 02:47:09 GMT  
		Size: 194.0 MB (193984168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
