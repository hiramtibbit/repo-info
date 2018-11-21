## `openjdk:12-ea-20-jdk-oracle`

```console
$ docker pull openjdk@sha256:0da193bd071428de4cfca7962b903c256d9bcd6a217d3ab5b7af933f36e6286f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:12-ea-20-jdk-oracle` - linux; amd64

```console
$ docker pull openjdk@sha256:e2259a6cf018e9cf4da369f4c9acd4f7b204454666f7ad1b50db7b15981ffb8d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.0 MB (246037371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf4712a8efe8d44888aa0ae18e008e6fe3f7b9910892fdee4c94f0af851f0acc`
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
# Wed, 21 Nov 2018 00:47:58 GMT
ENV JAVA_VERSION=12-ea+20
# Wed, 21 Nov 2018 00:47:59 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/20/GPL/openjdk-12-ea+20_linux-x64_bin.tar.gz
# Wed, 21 Nov 2018 00:47:59 GMT
ENV JAVA_SHA256=a1d61eef989c876f241829b979ac66232e08f55c3c3a3ee618c178e79ede9cff
# Wed, 21 Nov 2018 00:48:37 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Wed, 21 Nov 2018 00:48:37 GMT
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
	-	`sha256:75be085fef21d943c7fd276af3a21c8386d2ead57417d9f7aa97d2c35765df92`  
		Last Modified: Wed, 21 Nov 2018 00:52:32 GMT  
		Size: 197.0 MB (197034299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
