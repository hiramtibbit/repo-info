## `openjdk:12-ea-20-jdk-alpine3.8`

```console
$ docker pull openjdk@sha256:bd6ce945beebb33ada6b5618a1e387cf903ff4e9e2a61f840a857dacb2145bd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:12-ea-20-jdk-alpine3.8` - linux; amd64

```console
$ docker pull openjdk@sha256:d3e4540d491448eb740d4a769a8a96af4561621b78e71e40e1a16179dba6c274
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.6 MB (198625529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f180304fad950716d39c38755af99ece5d1c69e610d054ad4eb705ba4d885e6`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:39:33 GMT
ENV JAVA_HOME=/opt/openjdk-12
# Fri, 21 Dec 2018 00:39:33 GMT
ENV PATH=/opt/openjdk-12/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 00:39:33 GMT
ENV JAVA_VERSION=12-ea+20
# Fri, 21 Dec 2018 00:39:33 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/alpine/20/binaries/openjdk-12-ea+20_linux-x64-musl_bin.tar.gz
# Fri, 21 Dec 2018 00:39:33 GMT
ENV JAVA_SHA256=125162b84369be592f8355624075f579795343a835706f0cbde065882d9404a1
# Fri, 21 Dec 2018 00:40:21 GMT
RUN set -eux; 		wget -O /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		java -Xshare:dump; 		java --version; 	javac --version
# Fri, 21 Dec 2018 00:40:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d2866971ec1d3c2ad2b80c2ba1b575f9dce5b6eb5329009962a2414a4cc02b2`  
		Last Modified: Fri, 21 Dec 2018 00:43:57 GMT  
		Size: 196.4 MB (196418504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
