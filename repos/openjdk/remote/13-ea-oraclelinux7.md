## `openjdk:13-ea-oraclelinux7`

```console
$ docker pull openjdk@sha256:f725ea61a5bf710b4ace6f35e445bcec9d335f8a2fae0e2c062851c4100509fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:13-ea-oraclelinux7` - linux; amd64

```console
$ docker pull openjdk@sha256:87123c6f2c51090b1ecc63ac53065c8c71ba3687367737adee0d874336c0a03f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.1 MB (246092667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd94615bad8e8745a2af2daa81ac145a04b69eab38b140692cb9aa8d59c10080`
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
# Wed, 29 May 2019 20:32:36 GMT
ENV LANG=en_US.UTF-8
# Wed, 29 May 2019 20:32:36 GMT
ENV JAVA_HOME=/usr/java/openjdk-13
# Wed, 29 May 2019 20:32:36 GMT
ENV PATH=/usr/java/openjdk-13/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Jun 2019 22:42:02 GMT
ENV JAVA_VERSION=13-ea+25
# Tue, 18 Jun 2019 22:42:02 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/25/GPL/openjdk-13-ea+25_linux-x64_bin.tar.gz
# Tue, 18 Jun 2019 22:42:02 GMT
ENV JAVA_SHA256=0b35d98531dc62eacf8dc61e8bd97769fdafb12a86ce298a8f1aba5bb1368c77
# Tue, 18 Jun 2019 22:43:34 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Tue, 18 Jun 2019 22:43:35 GMT
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
	-	`sha256:cfb08ecd57d4de2f8adddc128539a8e77a4c499144fd928284ebde965d11131c`  
		Last Modified: Tue, 18 Jun 2019 22:46:27 GMT  
		Size: 196.9 MB (196854772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
