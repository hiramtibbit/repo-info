## `openjdk:11-oracle`

```console
$ docker pull openjdk@sha256:dc596f2112aee702341d6e5f7f191952fc68132c37e25789c3772f052871e26b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:11-oracle` - linux; amd64

```console
$ docker pull openjdk@sha256:d319f5e42ffce2784029c78793bea8d329db06f83617e7f958540c51d17757bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240799536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e43035d478271739a38a1bc1437c01ebc596b83e67846fcee3970d0f5475040`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 30 Aug 2018 21:49:27 GMT
MAINTAINER Oracle Linux Product Team <ol-ovm-info_ww@oracle.com>
# Tue, 16 Oct 2018 21:38:24 GMT
ADD file:fbe6533ea9111b27c121848a809a9c839ffe3d74cb1695643ebd19d9899c8e4e in / 
# Tue, 16 Oct 2018 21:38:25 GMT
CMD ["/bin/bash"]
# Tue, 16 Oct 2018 22:02:16 GMT
RUN set -eux; 	yum install -y 		gzip 		tar 				freetype fontconfig 	; 	rm -rf /var/cache/yum
# Tue, 16 Oct 2018 22:03:10 GMT
ENV JAVA_HOME=/usr/java/openjdk-11
# Tue, 16 Oct 2018 22:03:10 GMT
ENV PATH=/usr/java/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 22:03:11 GMT
ENV JAVA_VERSION=11
# Tue, 16 Oct 2018 22:03:11 GMT
ENV JAVA_URL=https://download.java.net/java/ga/jdk11/openjdk-11_linux-x64_bin.tar.gz
# Tue, 16 Oct 2018 22:03:11 GMT
ENV JAVA_SHA256=3784cfc4670f0d4c5482604c7c513beb1a92b005f569df9bf100e8bef6610f2e
# Tue, 16 Oct 2018 22:03:24 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Tue, 16 Oct 2018 22:03:24 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e64f6e679e1aa8acf7118fe395ca9c3ee44b10f3d83b02c381afb68551ba3f67`  
		Last Modified: Tue, 16 Oct 2018 21:41:42 GMT  
		Size: 42.4 MB (42414111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66bec2b4dfe78001e661f43e29dee27e9bbefffea6e1ec67c24a171d64695809`  
		Last Modified: Tue, 16 Oct 2018 22:05:40 GMT  
		Size: 4.4 MB (4374701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfc774e98f682a9edf27e4af3aac91a60e0632e202547008b9a28c7445880da8`  
		Last Modified: Tue, 16 Oct 2018 22:10:27 GMT  
		Size: 194.0 MB (194010724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
