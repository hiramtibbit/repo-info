## `openjdk:13-ea-16-jdk-oraclelinux7`

```console
$ docker pull openjdk@sha256:83e7b821f72ddc6616738bc371d822f47b199c754b6fcaf4b3a2414194c2141c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:13-ea-16-jdk-oraclelinux7` - linux; amd64

```console
$ docker pull openjdk@sha256:83d728a8fe185bb176309e2fe31439cf138c6839f884eefd260f55ec69ecb122
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.9 MB (243903267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80598dc1d5a9873181f12dce33a09d638cf382b04257a7575ce0de0128ca6c0b`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 30 Aug 2018 21:49:27 GMT
MAINTAINER Oracle Linux Product Team <ol-ovm-info_ww@oracle.com>
# Fri, 29 Mar 2019 22:13:28 GMT
ADD file:6f3fb77cb4c95452f01aa0bb19d308b18c7863f2c73cbcddb67d9ae531a8fc2e in / 
# Fri, 29 Mar 2019 22:13:28 GMT
CMD ["/bin/bash"]
# Fri, 29 Mar 2019 22:24:20 GMT
RUN set -eux; 	yum install -y 		gzip 		tar 				freetype fontconfig 	; 	rm -rf /var/cache/yum
# Fri, 29 Mar 2019 22:24:20 GMT
ENV JAVA_HOME=/usr/java/openjdk-13
# Fri, 29 Mar 2019 22:24:20 GMT
ENV PATH=/usr/java/openjdk-13/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 12 Apr 2019 00:29:25 GMT
ENV JAVA_VERSION=13-ea+16
# Fri, 12 Apr 2019 00:29:25 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/16/GPL/openjdk-13-ea+16_linux-x64_bin.tar.gz
# Fri, 12 Apr 2019 00:29:25 GMT
ENV JAVA_SHA256=c4dec7f4a1a6106ced2556e8136765ec59b4733888928c33fd182e561d2e40d5
# Fri, 12 Apr 2019 00:30:31 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Fri, 12 Apr 2019 00:30:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:473ea9871b29395d70351561fdbf670a69c33141674bbc3175f67d07301cc015`  
		Last Modified: Fri, 29 Mar 2019 22:14:23 GMT  
		Size: 42.6 MB (42597042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53f12c523386577a8cc3e4f89a97d85d0d0c9e9b14fd0133f9a83235f7d1efc4`  
		Last Modified: Fri, 29 Mar 2019 22:27:22 GMT  
		Size: 6.6 MB (6618754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fd1ed699d9fce36e7043325ef0d84dcbbe2dc7a6b5ff2fc2aa35a5049380f43`  
		Last Modified: Fri, 12 Apr 2019 00:35:28 GMT  
		Size: 194.7 MB (194687471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
