## `openjdk:13-ea-jdk`

```console
$ docker pull openjdk@sha256:d6fe189faac822c38f9aea78f8705323dc680908e604184a2ab335844f8a9639
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:13-ea-jdk` - linux; amd64

```console
$ docker pull openjdk@sha256:d134604c732363be6eecf4ec38999ffee2bbbd80008a883c803919b0fe3398ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244671392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5699aedd9ab831cb7dc795adc5368d2f6c9f4e8d84d609558ee81e29528d7ab9`
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
# Mon, 29 Apr 2019 17:31:14 GMT
ENV JAVA_VERSION=13-ea+18
# Mon, 29 Apr 2019 17:31:15 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/18/GPL/openjdk-13-ea+18_linux-x64_bin.tar.gz
# Mon, 29 Apr 2019 17:31:15 GMT
ENV JAVA_SHA256=c744572a5a42309db38d91ed5d27cddf7a6f4a5cbf8fe474112533bcb5198ca1
# Mon, 29 Apr 2019 17:32:48 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Mon, 29 Apr 2019 17:32:48 GMT
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
	-	`sha256:3601e440839a7ebb5714d55ff889860c5c5b94ce8dbdb2b0e9c007d1f6d1cd03`  
		Last Modified: Mon, 29 Apr 2019 17:35:02 GMT  
		Size: 195.4 MB (195433497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
