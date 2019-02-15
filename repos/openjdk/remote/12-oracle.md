## `openjdk:12-oracle`

```console
$ docker pull openjdk@sha256:5be11aa1e51b46085b5175b505d532b801aee4b1b415d8c36d99a12ec68adea3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:12-oracle` - linux; amd64

```console
$ docker pull openjdk@sha256:237b4a9620e664b2d08ab93b6a51b42cf118fdfa29b9f02ff450683744b6d2d7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.1 MB (247113522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ea2edcbf1583d6b6c5694b8368e2e71bec53f1c05bbd3cbd30c1107e9defb12`
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
# Wed, 16 Jan 2019 01:43:54 GMT
ENV JAVA_HOME=/usr/java/openjdk-12
# Wed, 16 Jan 2019 01:43:54 GMT
ENV PATH=/usr/java/openjdk-12/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Feb 2019 01:23:49 GMT
ENV JAVA_VERSION=12
# Fri, 15 Feb 2019 01:23:49 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk12/32/GPL/openjdk-12_linux-x64_bin.tar.gz
# Fri, 15 Feb 2019 01:23:49 GMT
ENV JAVA_SHA256=4bf3d9f4bbbb8cb9a0d96ceade42df8b2ca85f7853fbcd08274df2b7d2cef074
# Fri, 15 Feb 2019 01:25:29 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Fri, 15 Feb 2019 01:25:30 GMT
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
	-	`sha256:72c764ce1f64a1464cecaa590c394cff18b7dc8efd871b127ff0f140d169fff2`  
		Last Modified: Fri, 15 Feb 2019 01:29:50 GMT  
		Size: 198.1 MB (198113342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
