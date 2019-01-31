## `openjdk:13-ea-jdk-alpine`

```console
$ docker pull openjdk@sha256:2df25c4adfc21565862670b7c1d382f6fa3e8b697ae3437f07f52a66f33fcec5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:13-ea-jdk-alpine` - linux; amd64

```console
$ docker pull openjdk@sha256:98c8aead5eb985acd86cacb8ed3004cc100b7371d64a724b1c668ca9da0cdacc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.9 MB (199889459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35c564bfd274a0ad4ce8165d2caa781f5d5a0b23c84bb6dd4a1e5f9ab5501e15`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:38:23 GMT
ENV JAVA_HOME=/opt/openjdk-13
# Thu, 31 Jan 2019 02:38:23 GMT
ENV PATH=/opt/openjdk-13/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 31 Jan 2019 02:38:23 GMT
ENV JAVA_VERSION=13-ea+5
# Thu, 31 Jan 2019 02:38:23 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/alpine/5/binaries/openjdk-13-ea+5_linux-x64-musl_bin.tar.gz
# Thu, 31 Jan 2019 02:38:23 GMT
ENV JAVA_SHA256=277c4238ac2c7c8e1d331ff87f851fefe051c9503e3e030fbdaec40dbff89529
# Thu, 31 Jan 2019 02:39:58 GMT
RUN set -eux; 		wget -O /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		java -Xshare:dump; 		java --version; 	javac --version
# Thu, 31 Jan 2019 02:39:58 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:438a7199c60c93f109c957d51abdfb6a162d676b0f17debbf69150c36ff4332a`  
		Last Modified: Thu, 31 Jan 2019 02:44:39 GMT  
		Size: 197.7 MB (197682421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
