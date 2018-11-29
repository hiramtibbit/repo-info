## `openjdk:12-ea-21-jdk`

```console
$ docker pull openjdk@sha256:b55b4a202cb2804b7006e3b1f42a874575e1ae279dde50353915abcfedbca617
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:12-ea-21-jdk` - linux; amd64

```console
$ docker pull openjdk@sha256:a7a84a79e8fbe48f0c69d17bb3f227451746476f16b905be1b3368b32362579f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.3 MB (246325710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e44f279c88922f586a74ad9cc0aff16b6a9736419da591221d25f5d66b26693a`
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
# Wed, 28 Nov 2018 23:50:34 GMT
ENV JAVA_VERSION=12-ea+21
# Wed, 28 Nov 2018 23:50:34 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/21/GPL/openjdk-12-ea+21_linux-x64_bin.tar.gz
# Wed, 28 Nov 2018 23:50:34 GMT
ENV JAVA_SHA256=48553932f5da9dfb8021fb907662268816c3e49422198ba4c16bd0093ee4fda3
# Wed, 28 Nov 2018 23:51:49 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Wed, 28 Nov 2018 23:51:49 GMT
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
	-	`sha256:2f899df0534e2682a7cbb21c2285b31c3eafc960535540e13f03620a3c293e0c`  
		Last Modified: Wed, 28 Nov 2018 23:54:19 GMT  
		Size: 197.3 MB (197322638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
