## `openjdk:13-ea-alpine3.9`

```console
$ docker pull openjdk@sha256:de3757aef052a91dde75f45f66a221a752447731844f6222b2b695de13cb9b62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:13-ea-alpine3.9` - linux; amd64

```console
$ docker pull openjdk@sha256:80f09c1f534a0dbe00900e5b9fbe9abdf7494a2c91f18a68ed7ededbd0c2486c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.4 MB (200382169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b3f1c55dd980904d596de6e4cd6f70ce19fe3e403ebaae70a858b8dac75be23`
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
# Fri, 15 Feb 2019 01:21:35 GMT
ENV JAVA_VERSION=13-ea+7
# Fri, 15 Feb 2019 01:21:36 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/alpine/7/binaries/openjdk-13-ea+7_linux-x64-musl_bin.tar.gz
# Fri, 15 Feb 2019 01:21:36 GMT
ENV JAVA_SHA256=436d25bc7bf09afa7b8ca3cfa4cd6637687114431b45a06826597c8ae0d4dba3
# Fri, 15 Feb 2019 01:23:34 GMT
RUN set -eux; 		wget -O /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		java -Xshare:dump; 		java --version; 	javac --version
# Fri, 15 Feb 2019 01:23:34 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2518c14696f860a53775bd316a12eedc26f8bf5b116c892be83640797fa715e5`  
		Last Modified: Fri, 15 Feb 2019 01:29:06 GMT  
		Size: 197.6 MB (197627441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
