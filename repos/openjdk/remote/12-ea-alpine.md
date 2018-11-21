## `openjdk:12-ea-alpine`

```console
$ docker pull openjdk@sha256:ce65dea6c69791c5a59d8b53fd73eaf253f1b0f76ce558f8a7c4dd6b260dec98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:12-ea-alpine` - linux; amd64

```console
$ docker pull openjdk@sha256:6ae54cbd3c65100e8d5d366dcdf6648911b0553594c10b3f0cb729819fe26943
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.6 MB (198624254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b335265e222678af765250ed433579eab863e886c071fee5551b8f6a7f8fcece`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 02 Oct 2018 17:36:08 GMT
ENV JAVA_HOME=/opt/openjdk-12
# Tue, 02 Oct 2018 17:36:08 GMT
ENV PATH=/opt/openjdk-12/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Nov 2018 00:49:00 GMT
ENV JAVA_VERSION=12-ea+20
# Wed, 21 Nov 2018 00:49:00 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/alpine/20/binaries/openjdk-12-ea+20_linux-x64-musl_bin.tar.gz
# Wed, 21 Nov 2018 00:49:00 GMT
ENV JAVA_SHA256=125162b84369be592f8355624075f579795343a835706f0cbde065882d9404a1
# Wed, 21 Nov 2018 00:49:51 GMT
RUN set -eux; 		wget -O /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		java -Xshare:dump; 		java --version; 	javac --version
# Wed, 21 Nov 2018 00:49:51 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c44ff00078c4fdf8b8e4b12f58c23f2b85af90e6a5138359f8e0b315c64a1153`  
		Last Modified: Wed, 21 Nov 2018 00:57:36 GMT  
		Size: 196.4 MB (196417323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
