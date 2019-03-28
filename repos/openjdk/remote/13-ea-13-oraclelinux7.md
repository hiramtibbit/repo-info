## `openjdk:13-ea-13-oraclelinux7`

```console
$ docker pull openjdk@sha256:4a53a43f5c00dd695d1a8d14b31df32cd1626a4bfaeaa16fdf156f8d7af82f97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:13-ea-13-oraclelinux7` - linux; amd64

```console
$ docker pull openjdk@sha256:98d1807e561f997bdda50617d29e0aa568088d4337ece95cac6e967f9b5e4b6a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.2 MB (243249648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:290ee2aa3310c864785fca9affa4be94339fa38c13616c352035496e907b03b8`
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
# Thu, 14 Mar 2019 23:37:11 GMT
ENV JAVA_HOME=/usr/java/openjdk-13
# Thu, 14 Mar 2019 23:37:11 GMT
ENV PATH=/usr/java/openjdk-13/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 23:19:54 GMT
ENV JAVA_VERSION=13-ea+13
# Wed, 27 Mar 2019 23:19:54 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/13/GPL/openjdk-13-ea+13_linux-x64_bin.tar.gz
# Wed, 27 Mar 2019 23:19:54 GMT
ENV JAVA_SHA256=dab82e65a0eba2369f2ad1966897cfcf2c5b4582d2087c63f9c3b6e3def1975b
# Wed, 27 Mar 2019 23:21:36 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Wed, 27 Mar 2019 23:21:36 GMT
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
	-	`sha256:bd91fb2e75ab1fdb32e8a072c8e608c2c3a9299edd404fbcfa604a0441f51340`  
		Last Modified: Wed, 27 Mar 2019 23:44:00 GMT  
		Size: 194.0 MB (194037099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
