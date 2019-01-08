## `openjdk:12-jdk-oraclelinux7`

```console
$ docker pull openjdk@sha256:28f3f3d6564f2ee9cb01d21faaa53b6fcef6e8a942da49510eb2c7439b39a062
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:12-jdk-oraclelinux7` - linux; amd64

```console
$ docker pull openjdk@sha256:740d91e693a1201138933926a4de272ab5af35f8d980efb2c1715055fb668bc9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.1 MB (247050628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c2e34b184363e50c7d72515c43c217914c4d2ba796ac38e763b91cfa379545f`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 30 Aug 2018 21:49:27 GMT
MAINTAINER Oracle Linux Product Team <ol-ovm-info_ww@oracle.com>
# Thu, 08 Nov 2018 02:20:54 GMT
ADD file:455ccf156d2b27cef51d5bb1a11a3b0771a13a2378aa24f1879b3e5d90482f3d in / 
# Thu, 08 Nov 2018 02:20:54 GMT
CMD ["/bin/bash"]
# Thu, 08 Nov 2018 02:38:50 GMT
RUN set -eux; 	yum install -y 		gzip 		tar 				freetype fontconfig 	; 	rm -rf /var/cache/yum
# Thu, 08 Nov 2018 02:38:51 GMT
ENV JAVA_HOME=/usr/java/openjdk-12
# Thu, 08 Nov 2018 02:38:51 GMT
ENV PATH=/usr/java/openjdk-12/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 07 Jan 2019 21:29:23 GMT
ENV JAVA_VERSION=12-ea+26
# Mon, 07 Jan 2019 21:29:23 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/26/GPL/openjdk-12-ea+26_linux-x64_bin.tar.gz
# Mon, 07 Jan 2019 21:29:23 GMT
ENV JAVA_SHA256=c01dbdcab697d9ee5681c1e56a3942574eec423caba671846585ce412792592d
# Mon, 07 Jan 2019 21:30:54 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Mon, 07 Jan 2019 21:30:54 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f25d826091945ac486aa0c52fdcf1b0981e32cef0f95c4dd5e229aeaaa73fe4a`  
		Last Modified: Thu, 08 Nov 2018 02:23:03 GMT  
		Size: 42.4 MB (42400712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871abb54d51cb3a855d5abd9e1d822b1c2a7571b305ce853bd3bceb3d852f90c`  
		Last Modified: Thu, 08 Nov 2018 02:43:02 GMT  
		Size: 6.6 MB (6602360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc31eb96dbdb4ea846dc95115dae34f32adadcd97ab4f870be5702093c7bda13`  
		Last Modified: Mon, 07 Jan 2019 21:34:16 GMT  
		Size: 198.0 MB (198047556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
