## `openjdk:12-ea-jdk-oraclelinux7`

```console
$ docker pull openjdk@sha256:3c6f801f5ecc0e91f3884987a6697d7fef2d5d47dd2783f8e1fdb26d7048b31f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:12-ea-jdk-oraclelinux7` - linux; amd64

```console
$ docker pull openjdk@sha256:820cf88a27fec96d9cd8dfdbb6118a65ffb8f1d38f582f1a9d7a68282f8a326c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.0 MB (245976523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6fc8bb8e778c7bc6d8f6b85b5207cbcd2a48007aca9102d4f1c2dedcc433934`
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
# Thu, 08 Nov 2018 02:38:51 GMT
ENV JAVA_HOME=/usr/java/openjdk-12
# Thu, 08 Nov 2018 02:38:51 GMT
ENV PATH=/usr/java/openjdk-12/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Nov 2018 02:38:51 GMT
ENV JAVA_VERSION=12-ea+18
# Thu, 08 Nov 2018 02:38:51 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/18/GPL/openjdk-12-ea+18_linux-x64_bin.tar.gz
# Thu, 08 Nov 2018 02:38:51 GMT
ENV JAVA_SHA256=c3c5007adeceb1c38473205f3918d65a990405d9c46462b4455c0f80cf4b59bf
# Thu, 08 Nov 2018 02:39:30 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Thu, 08 Nov 2018 02:39:31 GMT
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
	-	`sha256:95b30285f5fdefdb8997080e4bbc62d6354433acf982b44bb89c6a9a7455d9fa`  
		Last Modified: Thu, 08 Nov 2018 02:43:18 GMT  
		Size: 197.0 MB (196973451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
