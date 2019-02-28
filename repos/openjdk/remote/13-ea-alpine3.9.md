## `openjdk:13-ea-alpine3.9`

```console
$ docker pull openjdk@sha256:3a99d04ea2b4114b57e710cab2560ed86d0629b241a77dea60f0df57704818d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:13-ea-alpine3.9` - linux; amd64

```console
$ docker pull openjdk@sha256:a1beeddb37b67420c590b9823242503e3e792854bddd5481125cca8512aad335
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 MB (200577632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb9dced1186ecf16a2f3feba22262e53e60c46516adea69400b67b875f41adf8`
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
# Thu, 28 Feb 2019 01:22:59 GMT
ENV JAVA_VERSION=13-ea+9
# Thu, 28 Feb 2019 01:23:00 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/alpine/9/binaries/openjdk-13-ea+9_linux-x64-musl_bin.tar.gz
# Thu, 28 Feb 2019 01:23:00 GMT
ENV JAVA_SHA256=695fa4b71266858a674d560dec83a51e250f9a7165e8880210425fbcafa10691
# Thu, 28 Feb 2019 01:24:44 GMT
RUN set -eux; 		wget -O /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		java -Xshare:dump; 		java --version; 	javac --version
# Thu, 28 Feb 2019 01:24:45 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:828f731a1a2dde5f1e736da680bf0e8ea7d2242f2aa9c1b9fb6989e9e1a2dbd5`  
		Last Modified: Thu, 28 Feb 2019 01:28:06 GMT  
		Size: 197.8 MB (197822904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
