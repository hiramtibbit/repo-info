## `openjdk:13-ea-jdk-oracle`

```console
$ docker pull openjdk@sha256:f7695e2326a704c8c3e67ba4b313dda625e4294ccb8dda08af66f06caefa722e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:13-ea-jdk-oracle` - linux; amd64

```console
$ docker pull openjdk@sha256:e82c330f86a2700d5168db4b8f05401dd9cff5b3adf40a506176fee281360b52
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.0 MB (247036191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09839da33aa70f908f4cc7dc3e9d6eb978a09d2c45fc7d2ed80fbc6f1311a5c9`
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
# Mon, 07 Jan 2019 21:28:35 GMT
ENV JAVA_VERSION=13-ea+2
# Mon, 07 Jan 2019 21:28:35 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/2/GPL/openjdk-13-ea+2_linux-x64_bin.tar.gz
# Mon, 07 Jan 2019 21:28:36 GMT
ENV JAVA_SHA256=4b855094fba64146a8b90e4d51606839d214ec5f2b9c33472e9f28f9824a572e
# Mon, 07 Jan 2019 21:29:11 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Mon, 07 Jan 2019 21:29:11 GMT
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
	-	`sha256:a895fc77c31a471c9dcd802a14a5ba71c16172166c4070ea3df83a503ec1d7f4`  
		Last Modified: Mon, 07 Jan 2019 21:33:33 GMT  
		Size: 198.0 MB (198033119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
