## `openjdk:13-jdk`

```console
$ docker pull openjdk@sha256:52374965e4c6c81bfc9d978e03625ec111acb656f07fd16dd6143aba5a5ca800
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:13-jdk` - linux; amd64

```console
$ docker pull openjdk@sha256:646e2610202ab5bb2a914bd317d874370264d0c64245e08122be3f03dda227a0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.2 MB (244243328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c01c5d8fab1c77d84516a3644a6f17edccb789a627eeb8688e3df74f5e86f9d`
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
# Wed, 16 Jan 2019 01:42:46 GMT
ENV JAVA_HOME=/usr/java/openjdk-13
# Wed, 16 Jan 2019 01:42:47 GMT
ENV PATH=/usr/java/openjdk-13/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 02 Mar 2019 01:28:26 GMT
ENV JAVA_VERSION=13-ea+10
# Sat, 02 Mar 2019 01:28:27 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/10/GPL/openjdk-13-ea+10_linux-x64_bin.tar.gz
# Sat, 02 Mar 2019 01:28:27 GMT
ENV JAVA_SHA256=da4baff832f9cddbb73efa14f8078d27081bf6da906368f8ffdc4313cd1b9876
# Sat, 02 Mar 2019 01:30:02 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Sat, 02 Mar 2019 01:30:02 GMT
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
	-	`sha256:bcae668a98a06c5f076890e17eaefac86d28bc86c7434f861c3a932ac2096977`  
		Last Modified: Sat, 02 Mar 2019 01:32:17 GMT  
		Size: 195.2 MB (195243148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
