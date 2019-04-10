## `openjdk:13-ea-14-alpine3.9`

```console
$ docker pull openjdk@sha256:33426e9186d971ae3f0cd37c218ad8bc71de785bf4cddf6ce711c607e3f61cb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:13-ea-14-alpine3.9` - linux; amd64

```console
$ docker pull openjdk@sha256:cc55b2f37453b74311ce05a659db363dae5cf8903baeb04fbb82c064502e1296
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.6 MB (198627154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc4e83fc995f97d4aa0ef3a3d6988f20fb02daadee592ea1552844e2d5f83217`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 01:49:28 GMT
ENV JAVA_HOME=/opt/openjdk-13
# Wed, 10 Apr 2019 01:49:28 GMT
ENV PATH=/opt/openjdk-13/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Apr 2019 01:49:28 GMT
ENV JAVA_VERSION=13-ea+14
# Wed, 10 Apr 2019 01:49:29 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/alpine/14/binaries/openjdk-13-ea+14_linux-x64-musl_bin.tar.gz
# Wed, 10 Apr 2019 01:49:29 GMT
ENV JAVA_SHA256=65902947d71998184de49eec5b420c489f31cb9a33eafd431dad445e97438250
# Wed, 10 Apr 2019 01:51:36 GMT
RUN set -eux; 		wget -O /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		java -Xshare:dump; 		java --version; 	javac --version
# Wed, 10 Apr 2019 01:51:36 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34775b16ae4d0d9b11c066d543b1a7469011b38a117108046667fd773e473b59`  
		Last Modified: Wed, 10 Apr 2019 01:56:43 GMT  
		Size: 195.9 MB (195870145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
