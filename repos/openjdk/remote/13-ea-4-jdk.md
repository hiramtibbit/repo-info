## `openjdk:13-ea-4-jdk`

```console
$ docker pull openjdk@sha256:1f2d1e028cd1db9260c54aab9df04ac23c6b74f3e13dd3d45574f48c01bda3c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:13-ea-4-jdk` - linux; amd64

```console
$ docker pull openjdk@sha256:ff7c6b159b8016fc6b17d4929da44485f215d3f409724431e8080ced484c88aa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.1 MB (247146561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fa5a1550499f053370f080a80f33d7e729f934d0ff5aff752a2e0a2e040890a`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 30 Aug 2018 21:49:27 GMT
MAINTAINER Oracle Linux Product Team <ol-ovm-info_ww@oracle.com>
# Wed, 16 Jan 2019 01:23:19 GMT
ADD file:8263c738e5e034b2f379bc7bde495939a86be9239bee8c0252694ff03fa6e638 in / 
# Wed, 16 Jan 2019 01:23:19 GMT
CMD ["/bin/bash"]
# Wed, 16 Jan 2019 01:42:46 GMT
RUN set -eux; 	yum install -y 		gzip 		tar 				freetype fontconfig 	; 	rm -rf /var/cache/yum
# Wed, 16 Jan 2019 01:42:46 GMT
ENV JAVA_HOME=/usr/java/openjdk-13
# Wed, 16 Jan 2019 01:42:47 GMT
ENV PATH=/usr/java/openjdk-13/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 21 Jan 2019 21:24:12 GMT
ENV JAVA_VERSION=13-ea+4
# Mon, 21 Jan 2019 21:24:12 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/4/GPL/openjdk-13-ea+4_linux-x64_bin.tar.gz
# Mon, 21 Jan 2019 21:24:12 GMT
ENV JAVA_SHA256=e53c3dffbd81b8ddf5f98c348dc2bd3180c27b7b14e5f6f7849e3b8ac4a78940
# Mon, 21 Jan 2019 21:25:36 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Mon, 21 Jan 2019 21:25:36 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a8d84c1f755a3ae79bb49ba9bbfd59edd9d8b324fea86f0728a67eab1db70635`  
		Last Modified: Wed, 16 Jan 2019 01:26:18 GMT  
		Size: 42.4 MB (42397948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a1b57216ef83659d273709772c4ee0f10efd5500d48f66bf765751d5e75b75`  
		Last Modified: Wed, 16 Jan 2019 01:47:26 GMT  
		Size: 6.6 MB (6602232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a173eb0abb4361ba7f220e5e366d20e8f5e9b4c5f990996ad5905c57d01cc929`  
		Last Modified: Mon, 21 Jan 2019 21:30:25 GMT  
		Size: 198.1 MB (198146381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
