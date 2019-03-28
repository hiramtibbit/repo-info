## `openjdk:13-ea-alpine3.9`

```console
$ docker pull openjdk@sha256:c28918ecb5337f4986905398825b4552d739d28e773946496578526410939dce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:13-ea-alpine3.9` - linux; amd64

```console
$ docker pull openjdk@sha256:11610bd90a675e76565cd0ff74ef4abed9fd48c73d63e61de1b360438fd0f3eb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.9 MB (197911692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:987979d509b0cb4c2a0ffabc72a2c0ef9f7f77dd181c03852f75f3ac4c8c4ec5`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:10:51 GMT
ENV JAVA_HOME=/opt/openjdk-13
# Fri, 08 Mar 2019 02:10:51 GMT
ENV PATH=/opt/openjdk-13/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 23:21:52 GMT
ENV JAVA_VERSION=13-ea+12
# Wed, 27 Mar 2019 23:21:53 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/alpine/12/binaries/openjdk-13-ea+12_linux-x64-musl_bin.tar.gz
# Wed, 27 Mar 2019 23:21:53 GMT
ENV JAVA_SHA256=302c34060a53719a6d25c8621f8a66b3d66dd3dd8de8840153e073db5bf3e3db
# Wed, 27 Mar 2019 23:23:39 GMT
RUN set -eux; 		wget -O /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		java -Xshare:dump; 		java --version; 	javac --version
# Wed, 27 Mar 2019 23:23:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5fd3f43176a88ac673adb20f194390fe57b2d2c701a0939b1e5fa25c08623b`  
		Last Modified: Wed, 27 Mar 2019 23:44:39 GMT  
		Size: 195.2 MB (195156963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
