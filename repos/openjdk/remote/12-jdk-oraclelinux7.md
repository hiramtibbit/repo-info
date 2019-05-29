## `openjdk:12-jdk-oraclelinux7`

```console
$ docker pull openjdk@sha256:51ff2083ac7b86ffe0700e8df3fc63a26cd98db225d6c9a808916ac3c52aa871
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:12-jdk-oraclelinux7` - linux; amd64

```console
$ docker pull openjdk@sha256:434420f716179f45738480ce72c8b28f2b78e2650fad3d3762e7c716424b46f6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.4 MB (247365309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef36deb98f03436feb5ed0eaa505613e915f916bff9d3cb966409f007ca55774`
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
# Wed, 29 May 2019 20:33:33 GMT
ENV JAVA_HOME=/usr/java/openjdk-12
# Wed, 29 May 2019 20:33:34 GMT
ENV PATH=/usr/java/openjdk-12/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 20:33:34 GMT
ENV JAVA_VERSION=12.0.1
# Wed, 29 May 2019 20:33:34 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk12.0.1/69cfe15208a647278a19ef0990eea691/12/GPL/openjdk-12.0.1_linux-x64_bin.tar.gz
# Wed, 29 May 2019 20:33:34 GMT
ENV JAVA_SHA256=151eb4ec00f82e5e951126f572dc9116104c884d97f91be14ec11e85fc2dd626
# Wed, 29 May 2019 20:33:59 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Wed, 29 May 2019 20:33:59 GMT
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
	-	`sha256:7753f6dc3499dbeb4ad11e39fbe14d4ba959bf0ec7d90c6523bede118cf55dcb`  
		Last Modified: Wed, 29 May 2019 20:35:45 GMT  
		Size: 198.1 MB (198127414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
