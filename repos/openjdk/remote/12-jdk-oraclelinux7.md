## `openjdk:12-jdk-oraclelinux7`

```console
$ docker pull openjdk@sha256:4268cf27db671991545e3926d87ebd93d80b3c58c01d41fc9b4d5ba8624137c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:12-jdk-oraclelinux7` - linux; amd64

```console
$ docker pull openjdk@sha256:57ba5b534eec1df4093f6cc7a9f7dbe652793ac2ca251f7485a2df581dfc93c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.8 MB (243765816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1eacb9a1e180848d6f22dd0223f5b2859c681c11eb05d750c08be82b492c9af7`
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
# Fri, 26 Oct 2018 20:23:51 GMT
ENV JAVA_VERSION=12-ea+17
# Fri, 26 Oct 2018 20:23:51 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/17/GPL/openjdk-12-ea+17_linux-x64_bin.tar.gz
# Fri, 26 Oct 2018 20:23:52 GMT
ENV JAVA_SHA256=68a4cafbb0325ad89efa67c36aa46788fcf076721d73e479bd84d735d62ccd1f
# Fri, 26 Oct 2018 20:24:31 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Fri, 26 Oct 2018 20:24:39 GMT
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
	-	`sha256:8e07188eb4e4ff656de38d92d6e2ce5b660a572ad5d307d225892f1da9288026`  
		Last Modified: Fri, 26 Oct 2018 20:33:06 GMT  
		Size: 197.0 MB (196977004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
