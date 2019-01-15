## `openjdk:12-ea-jdk-oraclelinux7`

```console
$ docker pull openjdk@sha256:3c3d7cc7ca736d2540413661dfcfa0cf4460680f889907a8fc0a5bfe1e32a87f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:12-ea-jdk-oraclelinux7` - linux; amd64

```console
$ docker pull openjdk@sha256:a4b3511b4316c0d1c4e6b67b2cca6086097a56380ca274b772aac1378eab3078
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.1 MB (247072023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebb028a032eadd43c88110d761268de7c4ffa72e0155bee9978d378acc9027ab`
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
# Fri, 11 Jan 2019 00:24:43 GMT
ENV JAVA_VERSION=12-ea+27
# Fri, 11 Jan 2019 00:24:44 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/27/GPL/openjdk-12-ea+27_linux-x64_bin.tar.gz
# Fri, 11 Jan 2019 00:24:44 GMT
ENV JAVA_SHA256=9fc017547c3113abea34433ec9b1d6f1710712442939ef4b690c1e502de2d2cb
# Fri, 11 Jan 2019 00:25:04 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Fri, 11 Jan 2019 00:25:04 GMT
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
	-	`sha256:a34d363dd98efd123ecb767abb5c7d7a511c71f978e184131944374f564f4b16`  
		Last Modified: Fri, 11 Jan 2019 00:29:05 GMT  
		Size: 198.1 MB (198068951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
