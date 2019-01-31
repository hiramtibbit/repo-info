## `openjdk:12-jdk-alpine`

```console
$ docker pull openjdk@sha256:675ad01bf379108356524dcd27afc799b80c95a2845ab15b31b69b2ddb7c0d08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:12-jdk-alpine` - linux; amd64

```console
$ docker pull openjdk@sha256:0c58c4b4a6f2cf4243a5dc1f8c625219c6a7087c3937a9f30802d3a7713a6dbf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.9 MB (199861693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8bd3b215205892a88ff655bf111e5e02343957f2c8a0174eda639030eb27627`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:40:09 GMT
ENV JAVA_HOME=/opt/openjdk-12
# Thu, 31 Jan 2019 02:40:10 GMT
ENV PATH=/opt/openjdk-12/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 31 Jan 2019 02:40:10 GMT
ENV JAVA_VERSION=12-ea+29
# Thu, 31 Jan 2019 02:40:10 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/alpine/29/binaries/openjdk-12-ea+29_linux-x64-musl_bin.tar.gz
# Thu, 31 Jan 2019 02:40:10 GMT
ENV JAVA_SHA256=39c22481736ae8a054fc820ad0cc3f1d9ad3f3f00d8111775573fe6d04c18bf5
# Thu, 31 Jan 2019 02:41:47 GMT
RUN set -eux; 		wget -O /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		java -Xshare:dump; 		java --version; 	javac --version
# Thu, 31 Jan 2019 02:41:48 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93f8cd9b8606062ffaca60a0bd8f883842918292e91bafc6d0a77fc431b9d7ca`  
		Last Modified: Thu, 31 Jan 2019 02:45:10 GMT  
		Size: 197.7 MB (197654655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
