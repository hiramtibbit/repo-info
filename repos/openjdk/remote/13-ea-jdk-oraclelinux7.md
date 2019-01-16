## `openjdk:13-ea-jdk-oraclelinux7`

```console
$ docker pull openjdk@sha256:caafdcbe69b66b5bbed5f8b72649621fde8a3e22f3e0441d3a7b90b0e28bf3d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:13-ea-jdk-oraclelinux7` - linux; amd64

```console
$ docker pull openjdk@sha256:9e3b4b64c58fc32b197a4e6b6bf7f4ea6da46ed45d27307d261a4717a7d35e2b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.1 MB (247071053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acefc911916484461f5647d93dfd210c1295f3e63cbf5cc04139e6c89ffb18fc`
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
# Wed, 16 Jan 2019 01:42:47 GMT
ENV JAVA_VERSION=13-ea+3
# Wed, 16 Jan 2019 01:42:47 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/3/GPL/openjdk-13-ea+3_linux-x64_bin.tar.gz
# Wed, 16 Jan 2019 01:42:47 GMT
ENV JAVA_SHA256=626418ed5a8e72af1555697db60eb974a5e49dc928815d78f8de5ae217585981
# Wed, 16 Jan 2019 01:43:38 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Wed, 16 Jan 2019 01:43:38 GMT
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
	-	`sha256:e1dee409afcfb450337609da703eea3959bef51aa4b8a34324718287f5a0de49`  
		Last Modified: Wed, 16 Jan 2019 01:47:44 GMT  
		Size: 198.1 MB (198070873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
