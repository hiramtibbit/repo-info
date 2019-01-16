## `openjdk:11-jdk-oraclelinux7`

```console
$ docker pull openjdk@sha256:a05e7d8483f9529cc5fc800779c241fd66a0957234b1619b5bf6b67093982d28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:11-jdk-oraclelinux7` - linux; amd64

```console
$ docker pull openjdk@sha256:f2383b63908138c5cac5e0f9c92e07c2153edb7e9b64453d8a62bfd44f4e4d4e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.0 MB (242984013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d69538dc893c1f21898be1ab5321960f5a50496ac6f39fb37b1e2e292a34bbe`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 30 Aug 2018 21:49:27 GMT
MAINTAINER Oracle Linux Product Team <ol-ovm-info_ww@oracle.com>
# Wed, 16 Jan 2019 01:23:19 GMT
ADD file:8263c738e5e034b2f379bc7bde495939a86be9239bee8c0252694ff03fa6e638 in / 
# Wed, 16 Jan 2019 01:23:19 GMT
CMD ["/bin/bash"]
# Wed, 16 Jan 2019 01:42:46 GMT
RUN set -eux; 	yum install -y 		gzip 		tar 				freetype fontconfig 	; 	rm -rf /var/cache/yum
# Wed, 16 Jan 2019 01:44:44 GMT
ENV JAVA_HOME=/usr/java/openjdk-11
# Wed, 16 Jan 2019 01:44:44 GMT
ENV PATH=/usr/java/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Jan 2019 01:44:45 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 16 Jan 2019 01:44:45 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk11/13/GPL/openjdk-11.0.1_linux-x64_bin.tar.gz
# Wed, 16 Jan 2019 01:44:45 GMT
ENV JAVA_SHA256=7a6bb980b9c91c478421f865087ad2d69086a0583aeeb9e69204785e8e97dcfd
# Wed, 16 Jan 2019 01:45:18 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Wed, 16 Jan 2019 01:45:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a8d84c1f755a3ae79bb49ba9bbfd59edd9d8b324fea86f0728a67eab1db70635`  
		Last Modified: Wed, 16 Jan 2019 01:26:18 GMT  
		Size: 42.4 MB (42397948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a1b57216ef83659d273709772c4ee0f10efd5500d48f66bf765751d5e75b75`  
		Last Modified: Wed, 16 Jan 2019 01:47:26 GMT  
		Size: 6.6 MB (6602232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed52790df8c745bd716e960a367b94d62758a193698d7c7aab6dd9112dc6e478`  
		Last Modified: Wed, 16 Jan 2019 01:49:00 GMT  
		Size: 194.0 MB (193983833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
