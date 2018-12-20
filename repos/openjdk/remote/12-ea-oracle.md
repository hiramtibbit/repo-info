## `openjdk:12-ea-oracle`

```console
$ docker pull openjdk@sha256:3327e1816d79b2bdaca5a805f3bd47adc316f24015ca1c6ebea17976e97fa145
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:12-ea-oracle` - linux; amd64

```console
$ docker pull openjdk@sha256:6ab61afff3b1fd2ffd3b9248e6dec9fe12693c77e6a20aa91f7fb46392eeef20
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.0 MB (247003809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bd6d19668b8ce681b582781ab31f7719a9f6f5c4b97fb0ad71cdc1ab8330b3b`
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
# Thu, 20 Dec 2018 03:26:29 GMT
ENV JAVA_VERSION=12-ea+24
# Thu, 20 Dec 2018 03:26:29 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/24/GPL/openjdk-12-ea+24_linux-x64_bin.tar.gz
# Thu, 20 Dec 2018 03:26:29 GMT
ENV JAVA_SHA256=dd927d41c2174f66e3fa2ffc847386e081d111318b235d2b9f4fb64b40624072
# Thu, 20 Dec 2018 03:27:52 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Thu, 20 Dec 2018 03:27:52 GMT
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
	-	`sha256:74f320846f36e2fb3819855f81568cb89c9c7f871e14d25a99556b6440d24848`  
		Last Modified: Thu, 20 Dec 2018 03:31:00 GMT  
		Size: 198.0 MB (198000737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
