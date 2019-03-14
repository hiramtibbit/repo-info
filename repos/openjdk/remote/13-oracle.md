## `openjdk:13-oracle`

```console
$ docker pull openjdk@sha256:c08703094d7c2284d594de5212090ebb4d8f860e3d2121082514d5b60ea16d8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:13-oracle` - linux; amd64

```console
$ docker pull openjdk@sha256:8ba649fd19796408094a9e9a50bec2a7cb79cb964bcb0196cc09e225b654c45c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.4 MB (244392591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3351f725113ba30aa7f9912218ad46fa827eabc148355bcb1254fb26932dea9b`
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
# Thu, 14 Mar 2019 23:37:11 GMT
ENV JAVA_VERSION=13-ea+11
# Thu, 14 Mar 2019 23:37:11 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/11/GPL/openjdk-13-ea+11_linux-x64_bin.tar.gz
# Thu, 14 Mar 2019 23:37:11 GMT
ENV JAVA_SHA256=037e818139570fd76ecb2084d01be82bd9ffec9dafe3f7fc0707244c488cbd82
# Thu, 14 Mar 2019 23:37:50 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Thu, 14 Mar 2019 23:37:50 GMT
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
	-	`sha256:4354a5d3417b3026428fb89a0ad0ff7dbfaba4910dbd12c1def559eec2b0dd3e`  
		Last Modified: Thu, 14 Mar 2019 23:42:01 GMT  
		Size: 195.2 MB (195180042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
