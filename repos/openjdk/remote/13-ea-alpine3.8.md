## `openjdk:13-ea-alpine3.8`

```console
$ docker pull openjdk@sha256:0ea0dbb823f44373a8ec6b2e615f537a910a3056332f49f2d005ca9c5228b56d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:13-ea-alpine3.8` - linux; amd64

```console
$ docker pull openjdk@sha256:9c6c6da3f47b81fddb33f66885cd803a16baa5e3eb40eb28a238ad44757a6858
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.0 MB (200022130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:322f2ffddfc03c4ff5ff82370effb21fa2666b301eaf498a2c39d9079975e96c`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 03 Jan 2019 23:22:37 GMT
ENV JAVA_HOME=/opt/openjdk-13
# Thu, 03 Jan 2019 23:22:37 GMT
ENV PATH=/opt/openjdk-13/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 03 Jan 2019 23:22:37 GMT
ENV JAVA_VERSION=13-ea+1
# Thu, 03 Jan 2019 23:22:38 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/alpine/1/binaries/openjdk-13-ea+1_linux-x64-musl_bin.tar.gz
# Thu, 03 Jan 2019 23:22:38 GMT
ENV JAVA_SHA256=ce179bb08dff9980a7cca20df1b87b9556c5c71f3cf2fefbcf31d9bfa25b1804
# Thu, 03 Jan 2019 23:24:02 GMT
RUN set -eux; 		wget -O /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		java -Xshare:dump; 		java --version; 	javac --version
# Thu, 03 Jan 2019 23:24:02 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e75b3c089b6d212f09b475ec703098b32f4ea4b0f2f0b7967832edeaa77d4f10`  
		Last Modified: Thu, 03 Jan 2019 23:27:17 GMT  
		Size: 197.8 MB (197815105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
