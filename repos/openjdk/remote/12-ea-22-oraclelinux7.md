## `openjdk:12-ea-22-oraclelinux7`

```console
$ docker pull openjdk@sha256:80acdd21dfa6f3df6b52454e5351cdb809a0e9f10eadcb7392c0608cc9aec1c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:12-ea-22-oraclelinux7` - linux; amd64

```console
$ docker pull openjdk@sha256:62ea24d60394ad7d7fd5a85aeed7cf10491844f774c926708114fc0dc855e96e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.3 MB (246336104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c742d3346b60e91930810013fdabf2f031a92cdba1af95b317400a288c2185ab`
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
# Tue, 04 Dec 2018 23:20:18 GMT
ENV JAVA_VERSION=12-ea+22
# Tue, 04 Dec 2018 23:20:19 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/22/GPL/openjdk-12-ea+22_linux-x64_bin.tar.gz
# Tue, 04 Dec 2018 23:20:19 GMT
ENV JAVA_SHA256=757a759e3aa2f341b8e261e00e826e3014b9c68a35ce6baf2867ea7cba98b62c
# Tue, 04 Dec 2018 23:21:56 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Tue, 04 Dec 2018 23:22:02 GMT
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
	-	`sha256:5a77d6b0304b3a12d553e1239151f1e14cea5eaef5ebbcb980ac9255cdd59162`  
		Last Modified: Tue, 04 Dec 2018 23:29:59 GMT  
		Size: 197.3 MB (197333032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
