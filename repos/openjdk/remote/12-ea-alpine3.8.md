## `openjdk:12-ea-alpine3.8`

```console
$ docker pull openjdk@sha256:37477612c3605fbd90ac5b21942260a316a9bb8b56a5ddeddc65da9b9351009a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:12-ea-alpine3.8` - linux; amd64

```console
$ docker pull openjdk@sha256:71c2bc83753f07cb3115b62c5f929144c7b0a46d39e1e66d5ffab661e69b6529
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.9 MB (199861592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:927f12d1c80b2bfdf9695aa1b77cb43228231e645dfc1fae26ae2dbac1c86838`
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
# Wed, 30 Jan 2019 21:25:35 GMT
ENV JAVA_VERSION=12-ea+29
# Wed, 30 Jan 2019 21:25:35 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/alpine/29/binaries/openjdk-12-ea+29_linux-x64-musl_bin.tar.gz
# Wed, 30 Jan 2019 21:25:36 GMT
ENV JAVA_SHA256=39c22481736ae8a054fc820ad0cc3f1d9ad3f3f00d8111775573fe6d04c18bf5
# Wed, 30 Jan 2019 21:27:01 GMT
RUN set -eux; 		wget -O /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		java -Xshare:dump; 		java --version; 	javac --version
# Wed, 30 Jan 2019 21:27:01 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02127f6e3f8211775ddd25a96c6db1153a8ce0793bbdda5a83696d1513f87db6`  
		Last Modified: Wed, 30 Jan 2019 21:29:50 GMT  
		Size: 197.7 MB (197654567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
