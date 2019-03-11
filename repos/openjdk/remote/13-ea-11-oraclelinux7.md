## `openjdk:13-ea-11-oraclelinux7`

```console
$ docker pull openjdk@sha256:74cccd1af54a4147db649f2ceb27b10d9114668694ce26df3fb56b43085bd427
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:13-ea-11-oraclelinux7` - linux; amd64

```console
$ docker pull openjdk@sha256:ab8a0dbed4f4ff977d9e8a734a2a6e77b06ef06eb3a5c3281eea2245c9aaf768
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.2 MB (244178453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05a75e8fdacd62f8c4a66d36e6302d717d13fda1c0ccd0c1911c3f00076cd472`
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
# Mon, 11 Mar 2019 23:21:55 GMT
ENV JAVA_VERSION=13-ea+11
# Mon, 11 Mar 2019 23:21:55 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/11/GPL/openjdk-13-ea+11_linux-x64_bin.tar.gz
# Mon, 11 Mar 2019 23:21:55 GMT
ENV JAVA_SHA256=037e818139570fd76ecb2084d01be82bd9ffec9dafe3f7fc0707244c488cbd82
# Mon, 11 Mar 2019 23:23:19 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Mon, 11 Mar 2019 23:23:19 GMT
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
	-	`sha256:1dcd1caaeb9f8e6326575b3a653137dd56c9f1fa04bb1289749ad0462cd6eb3e`  
		Last Modified: Mon, 11 Mar 2019 23:25:30 GMT  
		Size: 195.2 MB (195178273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
