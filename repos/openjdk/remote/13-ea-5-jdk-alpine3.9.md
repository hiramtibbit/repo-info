## `openjdk:13-ea-5-jdk-alpine3.9`

```console
$ docker pull openjdk@sha256:1d4561dede217f6dd81367f0e08937b96dbdced4e6d2ed37512ea221b5fd6dfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:13-ea-5-jdk-alpine3.9` - linux; amd64

```console
$ docker pull openjdk@sha256:774e5422e2fbc8058a8ad2f1605ea0e5423c772f6e6c660126284fbd537a24ac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.4 MB (200436824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:251ab03822caaf8c758dd0a39cdc6539af369d9cfdceedfb9c07b909659ae719`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:34:14 GMT
ENV JAVA_HOME=/opt/openjdk-13
# Tue, 05 Feb 2019 20:34:15 GMT
ENV PATH=/opt/openjdk-13/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Feb 2019 20:34:15 GMT
ENV JAVA_VERSION=13-ea+5
# Tue, 05 Feb 2019 20:34:15 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/alpine/5/binaries/openjdk-13-ea+5_linux-x64-musl_bin.tar.gz
# Tue, 05 Feb 2019 20:34:15 GMT
ENV JAVA_SHA256=277c4238ac2c7c8e1d331ff87f851fefe051c9503e3e030fbdaec40dbff89529
# Tue, 05 Feb 2019 20:35:50 GMT
RUN set -eux; 		wget -O /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		java -Xshare:dump; 		java --version; 	javac --version
# Tue, 05 Feb 2019 20:35:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b82714191fe9a3514f694177a6859e1d15f7185b1dc205ea9f36c77f8dfd708`  
		Last Modified: Tue, 05 Feb 2019 20:43:20 GMT  
		Size: 197.7 MB (197682096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
