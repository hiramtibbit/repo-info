## `openjdk:12-ea-alpine3.8`

```console
$ docker pull openjdk@sha256:ddb34b1db89bf9ed76321c49c22da5dac5702fea6020e6dd60a1a2880ef072e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:12-ea-alpine3.8` - linux; amd64

```console
$ docker pull openjdk@sha256:63c38897e566eed82a36e221a88d724881e2ecf31fab0adff526093c936f6b08
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.4 MB (198369677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68ddc890accaf45d548259166bfe0f5be021f6384848782f6732b613a80d732c`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 02 Oct 2018 17:36:08 GMT
ENV JAVA_HOME=/opt/openjdk-12
# Tue, 02 Oct 2018 17:36:08 GMT
ENV PATH=/opt/openjdk-12/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 09 Oct 2018 22:21:39 GMT
ENV JAVA_VERSION=12-ea+14
# Tue, 09 Oct 2018 22:21:39 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/alpine/14/binaries/openjdk-12-ea+14_linux-x64-musl_bin.tar.gz
# Tue, 09 Oct 2018 22:21:40 GMT
ENV JAVA_SHA256=172c7d7c6859253822e03f0839f83627ffe06055f118423c6ef619a1af836b4c
# Tue, 09 Oct 2018 22:23:04 GMT
RUN set -eux; 		wget -O /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		java -Xshare:dump; 		java --version; 	javac --version
# Tue, 09 Oct 2018 22:23:10 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e5f2e0fe39aa02c5b89c1b82cbf447b2799dfeb96ae4c4f3297bb1769d19b8`  
		Last Modified: Tue, 09 Oct 2018 22:24:47 GMT  
		Size: 196.2 MB (196162746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
