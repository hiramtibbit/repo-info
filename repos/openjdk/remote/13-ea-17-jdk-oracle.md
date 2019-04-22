## `openjdk:13-ea-17-jdk-oracle`

```console
$ docker pull openjdk@sha256:6e3014f81095aa301f4baad1f598556977489a670c516988170603dd91e1ccbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:13-ea-17-jdk-oracle` - linux; amd64

```console
$ docker pull openjdk@sha256:9cd7e0bb2a48e26ab707241323724ebde6e21da9a60b972bda1894c4b23ec690
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.6 MB (244624910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72d5c618ebf8bb96cc2d8eb2368e94f1e1a1cf6a7d52139ce2dd974ae443f423`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 30 Aug 2018 21:49:27 GMT
MAINTAINER Oracle Linux Product Team <ol-ovm-info_ww@oracle.com>
# Fri, 12 Apr 2019 00:39:30 GMT
ADD file:fc4b1a8a391c3bd11cdd229574a87e8d1133402deff8ef758f932756d5a82ca3 in / 
# Fri, 12 Apr 2019 00:39:30 GMT
CMD ["/bin/bash"]
# Fri, 12 Apr 2019 01:03:22 GMT
RUN set -eux; 	yum install -y 		gzip 		tar 				freetype fontconfig 	; 	rm -rf /var/cache/yum
# Fri, 12 Apr 2019 01:03:22 GMT
ENV JAVA_HOME=/usr/java/openjdk-13
# Fri, 12 Apr 2019 01:03:23 GMT
ENV PATH=/usr/java/openjdk-13/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 22 Apr 2019 22:27:36 GMT
ENV JAVA_VERSION=13-ea+17
# Mon, 22 Apr 2019 22:27:36 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/17/GPL/openjdk-13-ea+17_linux-x64_bin.tar.gz
# Mon, 22 Apr 2019 22:27:36 GMT
ENV JAVA_SHA256=e76cf3f81e730153f1e8e208a96fab5daa485438090969de3fc73c1f24ea587f
# Mon, 22 Apr 2019 22:28:02 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Mon, 22 Apr 2019 22:28:02 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:35defbf6c365d4b156baefbecee36d050397bcc4fca7906aada0bbd00e34c76a`  
		Last Modified: Fri, 12 Apr 2019 00:41:39 GMT  
		Size: 42.6 MB (42610008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5362bf1d5ff8c939878cd11387a1f195da87c88b7c73c89b3d933917644c8fe1`  
		Last Modified: Fri, 12 Apr 2019 01:07:10 GMT  
		Size: 6.6 MB (6627887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54defb48bb6598a67debf1ff83fec57a432c83fecea4d5f695b7dfbbe531fad2`  
		Last Modified: Mon, 22 Apr 2019 22:30:27 GMT  
		Size: 195.4 MB (195387015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
