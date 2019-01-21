## `openjdk:12-ea-28-jdk-oraclelinux7`

```console
$ docker pull openjdk@sha256:8be982ddc2802ec5a3365e176250269087fe78ec784221f66807c93dcdf2f2a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:12-ea-28-jdk-oraclelinux7` - linux; amd64

```console
$ docker pull openjdk@sha256:894418c82545d9ce5b00b7254556a7e6b3fd55949a9d9bf99c97c6bd847328b0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.1 MB (247119002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f162a6e2b45e5a1661adb36995e991e9e76ab6b170e754a0c8754e5e1aa8f41`
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
# Wed, 16 Jan 2019 01:43:54 GMT
ENV JAVA_HOME=/usr/java/openjdk-12
# Wed, 16 Jan 2019 01:43:54 GMT
ENV PATH=/usr/java/openjdk-12/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 21 Jan 2019 21:25:44 GMT
ENV JAVA_VERSION=12-ea+28
# Mon, 21 Jan 2019 21:25:45 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/28/GPL/openjdk-12-ea+28_linux-x64_bin.tar.gz
# Mon, 21 Jan 2019 21:25:45 GMT
ENV JAVA_SHA256=c08d03b70016ee526c61aad1c455449381b6a2fde613e1407ec368c7a29a223f
# Mon, 21 Jan 2019 21:27:08 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Mon, 21 Jan 2019 21:27:08 GMT
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
	-	`sha256:2b181492c57e0e65f62891c7b06af6ef82c71c0ba091b47e600b2876cd69c469`  
		Last Modified: Mon, 21 Jan 2019 21:31:01 GMT  
		Size: 198.1 MB (198118822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
