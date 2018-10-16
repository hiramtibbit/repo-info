## `openjdk:10-jdk-oraclelinux7`

```console
$ docker pull openjdk@sha256:b9649df529e4da07a006b65a3a37a0a3e982c59d3d61091e3ad0dc7e3a5e701b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:10-jdk-oraclelinux7` - linux; amd64

```console
$ docker pull openjdk@sha256:2c6ce99a904760b11e3498171d949bdd417eb03fbd3b8cae04f39359e5e5790d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.1 MB (258051088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cec617f715fd10be2fa2cacf0cf147f4b03cbeae8b5f90b402614327282ab2e0`
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
# Tue, 16 Oct 2018 22:03:58 GMT
ENV JAVA_HOME=/usr/java/openjdk-10
# Tue, 16 Oct 2018 22:03:59 GMT
ENV PATH=/usr/java/openjdk-10/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 22:03:59 GMT
ENV JAVA_VERSION=10.0.2
# Tue, 16 Oct 2018 22:03:59 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk10/10.0.2/19aef61b38124481863b1413dce1855f/13/openjdk-10.0.2_linux-x64_bin.tar.gz
# Tue, 16 Oct 2018 22:03:59 GMT
ENV JAVA_SHA256=f3b26abc9990a0b8929781310e14a339a7542adfd6596afb842fa0dd7e3848b2
# Tue, 16 Oct 2018 22:04:15 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Tue, 16 Oct 2018 22:04:21 GMT
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
	-	`sha256:5276e6bca074ef7366a8744e676626525c37023599d98f1df45973395e75a105`  
		Last Modified: Tue, 16 Oct 2018 22:12:49 GMT  
		Size: 211.3 MB (211262276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
