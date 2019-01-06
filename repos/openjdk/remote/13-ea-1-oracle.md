## `openjdk:13-ea-1-oracle`

```console
$ docker pull openjdk@sha256:68f2d5d7784f156c8a9c0b80b3990365f349fe1d08f874987bc015307febee12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:13-ea-1-oracle` - linux; amd64

```console
$ docker pull openjdk@sha256:cc2b66e1bb9abd85006350160ca9d6a21257a125222541cad340b986911d56b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.0 MB (247019847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78e5fa25dc9d2ad010d1d80c2fd6bceba44a0e93a728f76cff35898e2d6e65f7`
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
# Thu, 03 Jan 2019 23:21:35 GMT
ENV JAVA_HOME=/usr/java/openjdk-13
# Thu, 03 Jan 2019 23:21:35 GMT
ENV PATH=/usr/java/openjdk-13/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 03 Jan 2019 23:21:35 GMT
ENV JAVA_VERSION=13-ea+1
# Thu, 03 Jan 2019 23:21:36 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/1/GPL/openjdk-13-ea+1_linux-x64_bin.tar.gz
# Thu, 03 Jan 2019 23:21:36 GMT
ENV JAVA_SHA256=ac5c70debd145200a47023b30ef53296101f1c0edd63a2e4063e54570549c763
# Thu, 03 Jan 2019 23:22:25 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Thu, 03 Jan 2019 23:22:26 GMT
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
	-	`sha256:2f8a9f7cb83b45d1e2d171b9b50a729360afa51f7543c3a95e82ebb37f277753`  
		Last Modified: Thu, 03 Jan 2019 23:26:39 GMT  
		Size: 198.0 MB (198016775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
