## `openjdk:oraclelinux7`

```console
$ docker pull openjdk@sha256:5b7fff2fe4f87c2bdceb62eedc18cd5d772d0b252b80962e9d9567a777d1ec5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:oraclelinux7` - linux; amd64

```console
$ docker pull openjdk@sha256:e6f9fcd4d6341a7ead0635b38eee97e4706e7c4b552f757a8c6bd9140517d5ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.3 MB (247334061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1fc416d936fbbc75fa9036332487a34265aaa4a0a15a44379f9188b0a55aa43`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 30 Aug 2018 21:49:27 GMT
MAINTAINER Oracle Linux Product Team <ol-ovm-info_ww@oracle.com>
# Fri, 29 Mar 2019 22:13:28 GMT
ADD file:6f3fb77cb4c95452f01aa0bb19d308b18c7863f2c73cbcddb67d9ae531a8fc2e in / 
# Fri, 29 Mar 2019 22:13:28 GMT
CMD ["/bin/bash"]
# Fri, 29 Mar 2019 22:24:20 GMT
RUN set -eux; 	yum install -y 		gzip 		tar 				freetype fontconfig 	; 	rm -rf /var/cache/yum
# Fri, 29 Mar 2019 22:24:42 GMT
ENV JAVA_HOME=/usr/java/openjdk-12
# Fri, 29 Mar 2019 22:24:42 GMT
ENV PATH=/usr/java/openjdk-12/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 29 Mar 2019 22:24:42 GMT
ENV JAVA_VERSION=12
# Fri, 29 Mar 2019 22:24:42 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk12/GPL/openjdk-12_linux-x64_bin.tar.gz
# Fri, 29 Mar 2019 22:24:43 GMT
ENV JAVA_SHA256=b43bc15f4934f6d321170419f2c24451486bc848a2179af5e49d10721438dd56
# Fri, 29 Mar 2019 22:24:55 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Fri, 29 Mar 2019 22:24:55 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:473ea9871b29395d70351561fdbf670a69c33141674bbc3175f67d07301cc015`  
		Last Modified: Fri, 29 Mar 2019 22:14:23 GMT  
		Size: 42.6 MB (42597042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53f12c523386577a8cc3e4f89a97d85d0d0c9e9b14fd0133f9a83235f7d1efc4`  
		Last Modified: Fri, 29 Mar 2019 22:27:22 GMT  
		Size: 6.6 MB (6618754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35208fc3a42031ed0a387630a85e75608f03d0e4729b428b06e4a0e1d0df3733`  
		Last Modified: Fri, 29 Mar 2019 22:28:08 GMT  
		Size: 198.1 MB (198118265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
