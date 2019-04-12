## `openjdk:13-ea-jdk`

```console
$ docker pull openjdk@sha256:29d21007e31698eaf1034ef2cf7bafa15588f815a8e48ae8f4dd185ad6293186
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:13-ea-jdk` - linux; amd64

```console
$ docker pull openjdk@sha256:5720f9d2cc83469eb90a1e4ebe30c92319994b99aa1f1f978c0686f7e75d5769
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.9 MB (243925411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfe454ce267d7fc7c4bab57f3fbc46603756ea814d973efae2b0a833c68b189a`
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
# Fri, 12 Apr 2019 01:03:23 GMT
ENV JAVA_VERSION=13-ea+16
# Fri, 12 Apr 2019 01:03:23 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/16/GPL/openjdk-13-ea+16_linux-x64_bin.tar.gz
# Fri, 12 Apr 2019 01:03:23 GMT
ENV JAVA_SHA256=c4dec7f4a1a6106ced2556e8136765ec59b4733888928c33fd182e561d2e40d5
# Fri, 12 Apr 2019 01:04:02 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Fri, 12 Apr 2019 01:04:02 GMT
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
	-	`sha256:c5f1c8b55ddbe37cfd904525d715f8941945c0e870efcc8870b0337f76cb3cb4`  
		Last Modified: Fri, 12 Apr 2019 01:07:26 GMT  
		Size: 194.7 MB (194687516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
