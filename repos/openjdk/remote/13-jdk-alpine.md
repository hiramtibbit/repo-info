## `openjdk:13-jdk-alpine`

```console
$ docker pull openjdk@sha256:43595aacbbf7403dfa1dbd65ad9a873884c4d68b52830daa093592bf676080be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:13-jdk-alpine` - linux; amd64

```console
$ docker pull openjdk@sha256:ad281cd213189d6dd7aa8c21e9499e3987650840b12f84a6709ebc4d78cf56bd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.9 MB (199889165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c65e764c0f511bb5f294fb0f44591ef525f92d6a669d170a8d6e8a116ae1621`
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
# Wed, 30 Jan 2019 21:23:49 GMT
ENV JAVA_VERSION=13-ea+5
# Wed, 30 Jan 2019 21:23:49 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/alpine/5/binaries/openjdk-13-ea+5_linux-x64-musl_bin.tar.gz
# Wed, 30 Jan 2019 21:23:49 GMT
ENV JAVA_SHA256=277c4238ac2c7c8e1d331ff87f851fefe051c9503e3e030fbdaec40dbff89529
# Wed, 30 Jan 2019 21:25:16 GMT
RUN set -eux; 		wget -O /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		java -Xshare:dump; 		java --version; 	javac --version
# Wed, 30 Jan 2019 21:25:17 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f494308b1f99dc3ea2308c8d80b30530b242190c6f74868ca60ffcd28875a17f`  
		Last Modified: Wed, 30 Jan 2019 21:29:14 GMT  
		Size: 197.7 MB (197682140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
