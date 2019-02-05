## `openjdk:12-alpine3.9`

```console
$ docker pull openjdk@sha256:fecd532eaee349b4d9e329148e99de77ffaf803e66e184a0e4d6b946bb97ffa3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:12-alpine3.9` - linux; amd64

```console
$ docker pull openjdk@sha256:37b8b402893091d9120401a3d9c87d81a6fa967d96ca81e06a80d01605845c79
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.4 MB (200409759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c68e7c5b7a0cb1612ea7b14c460d1f165ae7250b8aa7a0e5e53ae6cdc846310`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:37:01 GMT
ENV JAVA_HOME=/opt/openjdk-12
# Tue, 05 Feb 2019 20:37:01 GMT
ENV PATH=/opt/openjdk-12/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Feb 2019 20:37:01 GMT
ENV JAVA_VERSION=12-ea+29
# Tue, 05 Feb 2019 20:37:02 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/alpine/29/binaries/openjdk-12-ea+29_linux-x64-musl_bin.tar.gz
# Tue, 05 Feb 2019 20:37:02 GMT
ENV JAVA_SHA256=39c22481736ae8a054fc820ad0cc3f1d9ad3f3f00d8111775573fe6d04c18bf5
# Tue, 05 Feb 2019 20:38:42 GMT
RUN set -eux; 		wget -O /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		java -Xshare:dump; 		java --version; 	javac --version
# Tue, 05 Feb 2019 20:38:42 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9716b977a99b5983f66063ce42eaa529af94f6265b6908558041581c3ae5b4ac`  
		Last Modified: Tue, 05 Feb 2019 20:44:29 GMT  
		Size: 197.7 MB (197655031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
