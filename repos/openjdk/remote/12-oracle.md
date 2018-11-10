## `openjdk:12-oracle`

```console
$ docker pull openjdk@sha256:ac6bb3c5d3b56c02fbdddbe91400409756b65eed41e00e7b355de95d07a0fd3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:12-oracle` - linux; amd64

```console
$ docker pull openjdk@sha256:54d4adbf94c96c7ee929d6743856e3c15dd19a5ea22f5cf10ebfe16449f07595
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.9 MB (245870537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:381cca7809899c3a683181027a278e8825b64df98685e8092326fc5db0371e8a`
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
# Fri, 09 Nov 2018 22:51:09 GMT
ENV JAVA_VERSION=12-ea+19
# Fri, 09 Nov 2018 22:51:09 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/19/GPL/openjdk-12-ea+19_linux-x64_bin.tar.gz
# Fri, 09 Nov 2018 22:51:09 GMT
ENV JAVA_SHA256=ef352ce06801983c6d1554c225dc63d3486775bbd90d84b4e758ea248cb123a0
# Fri, 09 Nov 2018 22:51:59 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Fri, 09 Nov 2018 22:52:00 GMT
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
	-	`sha256:fbcb5656d4b149ae4467b21873f51a203a80c2e5bb5dbed9e40cc6846bd27def`  
		Last Modified: Fri, 09 Nov 2018 22:57:50 GMT  
		Size: 196.9 MB (196867465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
