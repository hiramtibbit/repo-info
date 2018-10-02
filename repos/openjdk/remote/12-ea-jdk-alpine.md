## `openjdk:12-ea-jdk-alpine`

```console
$ docker pull openjdk@sha256:f1d10af9562ef2a6b429d1e39218da490b7ec9e440f78e258e8dd417f6d3a42a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:12-ea-jdk-alpine` - linux; amd64

```console
$ docker pull openjdk@sha256:759f638ccc9f130fef3025e36639c43676877242801541e920cc08c073bf6748
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.5 MB (198538227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73f4cd0a8bb2bffa8d45e0fad6bd7a68a946ff895fa90567c1f0b61b07baacb5`
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
# Tue, 02 Oct 2018 17:36:08 GMT
ENV JAVA_VERSION=12-ea+12
# Tue, 02 Oct 2018 17:36:08 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/alpine/12/binaries/openjdk-12-ea+12_linux-x64-musl_bin.tar.gz
# Tue, 02 Oct 2018 17:36:09 GMT
ENV JAVA_SHA256=36729ff2deec675c87fefbee47b805ad1555192f424ca4debeb81f30eb1bf587
# Tue, 02 Oct 2018 17:37:45 GMT
RUN set -eux; 		wget -O /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		java -Xshare:dump; 		java --version; 	javac --version
# Tue, 02 Oct 2018 17:37:45 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42bf988673e7c580542ccf87cf08ea42d64a6ab27fe66e12da9a81504c023323`  
		Last Modified: Tue, 02 Oct 2018 17:44:03 GMT  
		Size: 196.3 MB (196331296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
