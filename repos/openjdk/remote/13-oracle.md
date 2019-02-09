## `openjdk:13-oracle`

```console
$ docker pull openjdk@sha256:5d3b85699ef9ae18770effa6f3158d7dbbe064adb6d1c2bae4f88465bce29baf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:13-oracle` - linux; amd64

```console
$ docker pull openjdk@sha256:3f9fc66f18364180856babc05ad6fabc5f864d2c67267d06bc166cfd819e5045
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.1 MB (247083861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09773e30c7e59537024159ec584c839cd7ac02a8758d5e95d39672429193b6e4`
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
# Sat, 09 Feb 2019 01:27:14 GMT
ENV JAVA_VERSION=13-ea+7
# Sat, 09 Feb 2019 01:27:14 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/7/GPL/openjdk-13-ea+7_linux-x64_bin.tar.gz
# Sat, 09 Feb 2019 01:27:15 GMT
ENV JAVA_SHA256=6fd89d72518f9d50d5d2c3db3683a2e614cd266d9cb67ab52f4a55b5873fb1d8
# Sat, 09 Feb 2019 01:28:41 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Sat, 09 Feb 2019 01:28:41 GMT
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
	-	`sha256:79e1a974a94a1e36ce4b1f5d13eaacc1aaf9d2095ee6df1b6f131b37a13bf6c4`  
		Last Modified: Sat, 09 Feb 2019 01:33:09 GMT  
		Size: 198.1 MB (198083681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
