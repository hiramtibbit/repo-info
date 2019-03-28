## `openjdk:12-oraclelinux7`

```console
$ docker pull openjdk@sha256:1f137904abe750368d36ee51403865fc86c6cbc7db86face93dcbb00f2770103
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:12-oraclelinux7` - linux; amd64

```console
$ docker pull openjdk@sha256:fc142e086b4b5a5cd1a98aa858ae420e54cb71c44c39de6c4943a7f0e9cdcfc6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.3 MB (247330340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfb619d9c26c2b0a3335c20072a5329115ecd93d4382d1e9f5b46620d96e251b`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 30 Aug 2018 21:49:27 GMT
MAINTAINER Oracle Linux Product Team <ol-ovm-info_ww@oracle.com>
# Thu, 14 Mar 2019 23:20:32 GMT
ADD file:4d11753c2bf556fa74926f65de05676f76006cc2394377279f3748170b19ff59 in / 
# Thu, 14 Mar 2019 23:20:33 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 23:37:11 GMT
RUN set -eux; 	yum install -y 		gzip 		tar 				freetype fontconfig 	; 	rm -rf /var/cache/yum
# Thu, 14 Mar 2019 23:38:02 GMT
ENV JAVA_HOME=/usr/java/openjdk-12
# Thu, 14 Mar 2019 23:38:02 GMT
ENV PATH=/usr/java/openjdk-12/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Mar 2019 23:38:02 GMT
ENV JAVA_VERSION=12
# Wed, 27 Mar 2019 23:23:51 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk12/GPL/openjdk-12_linux-x64_bin.tar.gz
# Wed, 27 Mar 2019 23:23:51 GMT
ENV JAVA_SHA256=b43bc15f4934f6d321170419f2c24451486bc848a2179af5e49d10721438dd56
# Wed, 27 Mar 2019 23:24:45 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Wed, 27 Mar 2019 23:24:45 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:fed07aa1584277d27939770db62b5d92873f3418468f206eb9587c4acc3e381c`  
		Last Modified: Thu, 14 Mar 2019 23:21:21 GMT  
		Size: 42.6 MB (42594965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a5ab7990508bce67a1b23ec430296a587ac903c8f030065e55376a9cddbc92c`  
		Last Modified: Thu, 14 Mar 2019 23:41:45 GMT  
		Size: 6.6 MB (6617584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eab55cad3c9a34c1f3acee4c29780b0a8965590c7d7cfce57ffffd9447a6778`  
		Last Modified: Wed, 27 Mar 2019 23:45:17 GMT  
		Size: 198.1 MB (198117791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
