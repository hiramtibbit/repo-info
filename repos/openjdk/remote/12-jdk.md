## `openjdk:12-jdk`

```console
$ docker pull openjdk@sha256:2e668b6542897b195ac291d1079349dda0801c802581fe6f5df3967dece4b820
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:12-jdk` - linux; amd64

```console
$ docker pull openjdk@sha256:e2fedd221d37a14206ddcd36411dbacd8b955335c1eafce919af4fb3bcc326bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.8 MB (243761246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4960e1dcc0627ee97693486455cf43a361f10613f736faf847ea1465e559e6b`
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
# Sat, 03 Nov 2018 00:24:23 GMT
ENV JAVA_VERSION=12-ea+18
# Sat, 03 Nov 2018 00:24:23 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/18/GPL/openjdk-12-ea+18_linux-x64_bin.tar.gz
# Sat, 03 Nov 2018 00:24:23 GMT
ENV JAVA_SHA256=c3c5007adeceb1c38473205f3918d65a990405d9c46462b4455c0f80cf4b59bf
# Sat, 03 Nov 2018 00:25:12 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Sat, 03 Nov 2018 00:25:19 GMT
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
	-	`sha256:59a3897122f7b7caa5eca647d6c2455974bea55a347a2c2a130260d5f7d9928e`  
		Last Modified: Sat, 03 Nov 2018 00:27:42 GMT  
		Size: 197.0 MB (196972434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
