## `openjdk:13-alpine`

```console
$ docker pull openjdk@sha256:6a1e79759b938751d164f6c2bb98d7807d866566132bd0e113d51a5659f8a6d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:13-alpine` - linux; amd64

```console
$ docker pull openjdk@sha256:28e05689112ff32e13bbe6f8ab81901af633b62e610910a708aff1ef2e37a93d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 MB (200577615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a6c4997849866ec1e781ffc4929a05143b45e5ff238060740a67109e7ed02a7`
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
# Fri, 08 Mar 2019 02:10:51 GMT
ENV JAVA_VERSION=13-ea+9
# Fri, 08 Mar 2019 02:10:51 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/alpine/9/binaries/openjdk-13-ea+9_linux-x64-musl_bin.tar.gz
# Fri, 08 Mar 2019 02:10:51 GMT
ENV JAVA_SHA256=695fa4b71266858a674d560dec83a51e250f9a7165e8880210425fbcafa10691
# Fri, 08 Mar 2019 02:12:43 GMT
RUN set -eux; 		wget -O /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		java -Xshare:dump; 		java --version; 	javac --version
# Fri, 08 Mar 2019 02:12:44 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d89fc73f703acae0c18953fba976867134b5888ec31da84e3cc2f2eb960aafe4`  
		Last Modified: Fri, 08 Mar 2019 02:15:38 GMT  
		Size: 197.8 MB (197822886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
