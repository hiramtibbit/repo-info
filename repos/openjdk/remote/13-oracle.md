## `openjdk:13-oracle`

```console
$ docker pull openjdk@sha256:61f3913773ee8396e3829c067793b75b3cafef248c2aa5f654322b33567ae41c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:13-oracle` - linux; amd64

```console
$ docker pull openjdk@sha256:9d1de67ab612eabc552982d31d152526f129f336be6386d3da199a58d6adeab8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.9 MB (243911595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5b0ccde1d03a16a7dd0b61ffca4526f02572403d4556a516655920801284b37`
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
# Fri, 29 Mar 2019 22:24:20 GMT
ENV JAVA_HOME=/usr/java/openjdk-13
# Fri, 29 Mar 2019 22:24:20 GMT
ENV PATH=/usr/java/openjdk-13/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 04 Apr 2019 22:28:10 GMT
ENV JAVA_VERSION=13-ea+15
# Thu, 04 Apr 2019 22:28:10 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/15/GPL/openjdk-13-ea+15_linux-x64_bin.tar.gz
# Thu, 04 Apr 2019 22:28:11 GMT
ENV JAVA_SHA256=9541d11eed667ed91ca99d416e43c46b4cc36fb0fef60806bc65e0aeaf26c44a
# Thu, 04 Apr 2019 22:29:46 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Thu, 04 Apr 2019 22:29:47 GMT
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
	-	`sha256:727c2f7ff0f35db4618f8881a96f17eeb4ab78291210d5e2503520e24974ed79`  
		Last Modified: Thu, 04 Apr 2019 22:35:27 GMT  
		Size: 194.7 MB (194695799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
