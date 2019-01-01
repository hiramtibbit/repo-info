## `openjdk:12-jdk-alpine`

```console
$ docker pull openjdk@sha256:fd17cb78d642c67f9f147d841cbc043921629cfaf964c944e5bcb84c090e11a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:12-jdk-alpine` - linux; amd64

```console
$ docker pull openjdk@sha256:009ab5d6db37046136c6012fcf420cecd4df3316705a1770a0cd992f476a1bc7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.0 MB (199996021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bb190918f9997975ef59c1765432e901e9ec3ca1be6dbfd6cc488d84fb858a7`
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
# Tue, 01 Jan 2019 01:30:58 GMT
ENV JAVA_VERSION=12-ea+25
# Tue, 01 Jan 2019 01:30:59 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/alpine/25/binaries/openjdk-12-ea+25_linux-x64-musl_bin.tar.gz
# Tue, 01 Jan 2019 01:30:59 GMT
ENV JAVA_SHA256=81e341e4445378fd4546f91ac56f6d74fcecd07321aa5b2bbe3e3f754ab100ca
# Tue, 01 Jan 2019 01:32:35 GMT
RUN set -eux; 		wget -O /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		java -Xshare:dump; 		java --version; 	javac --version
# Tue, 01 Jan 2019 01:32:35 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd7e7960494f5f1daa89189891503287725eb853156c25419b4aa71dd6d89b8`  
		Last Modified: Tue, 01 Jan 2019 01:35:27 GMT  
		Size: 197.8 MB (197788996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
