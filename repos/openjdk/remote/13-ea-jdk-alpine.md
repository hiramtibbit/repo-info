## `openjdk:13-ea-jdk-alpine`

```console
$ docker pull openjdk@sha256:5e91e51f5aadc58ab5ca35c9a2887e6a40b2c9e71790d200165674fa0fa60582
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:13-ea-jdk-alpine` - linux; amd64

```console
$ docker pull openjdk@sha256:e6bcdf76b71221ce1b4fa4d47be09b5076196d233905f3b98f034350cd9fe181
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.7 MB (198689486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b27cbf25cea60c312b3469eb18c544d81480e11b3779f5b4ca336511d7c9590`
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
# Wed, 17 Apr 2019 23:25:19 GMT
ENV JAVA_VERSION=13-ea+16
# Wed, 17 Apr 2019 23:25:19 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/alpine/16/binaries/openjdk-13-ea+16_linux-x64-musl_bin.tar.gz
# Wed, 17 Apr 2019 23:25:19 GMT
ENV JAVA_SHA256=1e3bcc2efccf17b1c86053dece5c9f5543d9c0ec1809a2586e89d3fe0e20e37d
# Wed, 17 Apr 2019 23:26:53 GMT
RUN set -eux; 		wget -O /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		java -Xshare:dump; 		java --version; 	javac --version
# Wed, 17 Apr 2019 23:26:53 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60ef0bda3704e6411e2fe1436b5955538b0c42d7ccf2ecc0f7787ea5997961a`  
		Last Modified: Wed, 17 Apr 2019 23:30:11 GMT  
		Size: 195.9 MB (195932477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
