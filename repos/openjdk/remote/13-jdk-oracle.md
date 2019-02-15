## `openjdk:13-jdk-oracle`

```console
$ docker pull openjdk@sha256:0950f188844cc9ee6a44652c49269746da21aee73ae93ab55305d4a7123bee2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:13-jdk-oracle` - linux; amd64

```console
$ docker pull openjdk@sha256:ece655ceb19b7469d3bcf3d9a7c15e72f5f2bf7e443cd6e43f853f990e2856fa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.2 MB (247236656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9fce5114a162cf1e456a1c544754e1f3da0e29b10d118d163e1a442707be026`
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
# Fri, 15 Feb 2019 01:19:52 GMT
ENV JAVA_VERSION=13-ea+8
# Fri, 15 Feb 2019 01:19:52 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/8/GPL/openjdk-13-ea+8_linux-x64_bin.tar.gz
# Fri, 15 Feb 2019 01:19:52 GMT
ENV JAVA_SHA256=8284d81e5fee7e41f33020f9496ed697ef9aa07cec3d17b06d5442d17fe979b0
# Fri, 15 Feb 2019 01:21:23 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Fri, 15 Feb 2019 01:21:23 GMT
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
	-	`sha256:2adc8ab75e9bade26cc33c9131739735bd1755af195e9b00ff87b71f5caf99b1`  
		Last Modified: Fri, 15 Feb 2019 01:28:35 GMT  
		Size: 198.2 MB (198236476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
