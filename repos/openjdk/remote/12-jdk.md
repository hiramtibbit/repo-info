## `openjdk:12-jdk`

```console
$ docker pull openjdk@sha256:489001024cf3352122fdb7a55cdb896447fffdfddd7a8fee412b67f73f83794b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:12-jdk` - linux; amd64

```console
$ docker pull openjdk@sha256:162c7ca130845885b69202cdf53e13abb4fa1c48c6106f86e463a3d1695876c0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.7 MB (243716855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ec96e33711695e329b456079760ca128c039c3d108c655f019ad40f08980de3`
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
# Tue, 16 Oct 2018 22:02:16 GMT
ENV JAVA_HOME=/usr/java/openjdk-12
# Tue, 16 Oct 2018 22:02:17 GMT
ENV PATH=/usr/java/openjdk-12/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 20 Oct 2018 00:20:02 GMT
ENV JAVA_VERSION=12-ea+16
# Sat, 20 Oct 2018 00:20:02 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/16/GPL/openjdk-12-ea+16_linux-x64_bin.tar.gz
# Sat, 20 Oct 2018 00:20:02 GMT
ENV JAVA_SHA256=20ab4c21b20d0c823c5dcbf0bdb81bc9ab5c2a45954a80563ffd591b25b36038
# Sat, 20 Oct 2018 00:23:22 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Sat, 20 Oct 2018 00:23:30 GMT
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
	-	`sha256:ec840cd9bc7d3960ff0ca38af0378caa71f129234eda9c2f7f1a8437a6c0a67a`  
		Last Modified: Sat, 20 Oct 2018 00:29:11 GMT  
		Size: 196.9 MB (196928043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
