## `openjdk:12-ea-alpine3.8`

```console
$ docker pull openjdk@sha256:f8c4964eddfc30ea610b4d937bfbd35ea47722274a6582e0339cb2069375e369
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:12-ea-alpine3.8` - linux; amd64

```console
$ docker pull openjdk@sha256:7b4b6a43fd8e155075f074b5e896251e4380fb4698e01769071f878357a801b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.5 MB (198484013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:145b8ee43357598340c7dace0643ca7e883e5a00c8c202793bbb3bc1c3b243b6`
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
# Fri, 09 Nov 2018 22:52:33 GMT
ENV JAVA_VERSION=12-ea+18
# Fri, 09 Nov 2018 22:52:33 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/alpine/18/binaries/openjdk-12-ea+18_linux-x64-musl_bin.tar.gz
# Fri, 09 Nov 2018 22:52:34 GMT
ENV JAVA_SHA256=418ecbea7eee82241fdb3cacbddb139bd2563d3dd91d556b6e3309ca06a62254
# Fri, 09 Nov 2018 22:54:10 GMT
RUN set -eux; 		wget -O /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		java -Xshare:dump; 		java --version; 	javac --version
# Fri, 09 Nov 2018 22:54:10 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a80521626e262e3ded2f02fef1bbbf81e85b91aa366ebfac8667787c49ac37`  
		Last Modified: Fri, 09 Nov 2018 23:04:10 GMT  
		Size: 196.3 MB (196277082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
