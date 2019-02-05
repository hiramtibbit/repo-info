## `openjdk:13-oraclelinux7`

```console
$ docker pull openjdk@sha256:814c26656b370d91e6729a20aece053a66779affb39da428b0893b32f3795e55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:13-oraclelinux7` - linux; amd64

```console
$ docker pull openjdk@sha256:8015c57ef69e8cffd85543ef04d6b4a93d03176b3253096781cedf67650d37fe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.1 MB (247099067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e997b17d33fce181b2cc1bb490743d9f7b203a546a5f72e7ec3988c040f4c849`
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
# Tue, 05 Feb 2019 20:33:22 GMT
ENV JAVA_VERSION=13-ea+6
# Tue, 05 Feb 2019 20:33:22 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/6/GPL/openjdk-13-ea+6_linux-x64_bin.tar.gz
# Tue, 05 Feb 2019 20:33:22 GMT
ENV JAVA_SHA256=c746b087d3401b85b705c8073533bdd338e4d61780107ec2b3be1803ffcdbc26
# Tue, 05 Feb 2019 20:34:08 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Tue, 05 Feb 2019 20:34:08 GMT
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
	-	`sha256:13720c88388d5a56d711cd89d6c4db276744e3e3799bdae84ee322208aaf1037`  
		Last Modified: Tue, 05 Feb 2019 20:42:40 GMT  
		Size: 198.1 MB (198098887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
