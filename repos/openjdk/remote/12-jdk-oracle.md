## `openjdk:12-jdk-oracle`

```console
$ docker pull openjdk@sha256:0e0ced881039332b947fc401e88a26fca0b9c6fc937b90726c5f974f96fd6b8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:12-jdk-oracle` - linux; amd64

```console
$ docker pull openjdk@sha256:8760f3ee9f6df1f9c4688a64008a258cea21b839106bd8951ff709908870f5f6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.3 MB (247330463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c842abf5149c7e6523804185f54dc1b8446ad85c091477e1e5c2530c10a2693d`
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
# Thu, 14 Mar 2019 23:38:02 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk12/33/GPL/openjdk-12_linux-x64_bin.tar.gz
# Thu, 14 Mar 2019 23:38:03 GMT
ENV JAVA_SHA256=b43bc15f4934f6d321170419f2c24451486bc848a2179af5e49d10721438dd56
# Thu, 14 Mar 2019 23:39:34 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Thu, 14 Mar 2019 23:39:34 GMT
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
	-	`sha256:2d039b050dcddcce66bfb8302c246def923de3582c398a82f65283c0c900563e`  
		Last Modified: Thu, 14 Mar 2019 23:42:28 GMT  
		Size: 198.1 MB (198117914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
