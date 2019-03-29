## `openjdk:13-ea-14-jdk-alpine3.9`

```console
$ docker pull openjdk@sha256:1885143925f6c8c7060e8c3c3db3b4ed1bc87c4551e7065762b4ad39d63ccfeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:13-ea-14-jdk-alpine3.9` - linux; amd64

```console
$ docker pull openjdk@sha256:9d33d945fcc0ba3646296db679320fb0e67e7986ded29190da048c44ff99b7d9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.6 MB (198624916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8f9b2226d626704087cfc8d902d5a3117b6bbda7365f3055d8e88fcde34d0db`
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
# Fri, 29 Mar 2019 22:08:42 GMT
ENV JAVA_VERSION=13-ea+14
# Fri, 29 Mar 2019 22:08:42 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/alpine/14/binaries/openjdk-13-ea+14_linux-x64-musl_bin.tar.gz
# Fri, 29 Mar 2019 22:08:42 GMT
ENV JAVA_SHA256=65902947d71998184de49eec5b420c489f31cb9a33eafd431dad445e97438250
# Fri, 29 Mar 2019 22:10:19 GMT
RUN set -eux; 		wget -O /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		java -Xshare:dump; 		java --version; 	javac --version
# Fri, 29 Mar 2019 22:10:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c5c79aeafbc6a7250302f02ba2c4d6878a1043515c7e3a0b31c27336f6fefc`  
		Last Modified: Fri, 29 Mar 2019 22:12:57 GMT  
		Size: 195.9 MB (195870187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
