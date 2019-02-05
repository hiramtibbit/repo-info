## `openjdk:12-oracle`

```console
$ docker pull openjdk@sha256:c7e49ce5a665566534c8252f5f9b8b44729e03238fd42f43272eaa7cdf0fb124
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:12-oracle` - linux; amd64

```console
$ docker pull openjdk@sha256:03967fff211e3ed0d02988cac8111e499dbe3250f6d47aab26044b6e94a37750
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.1 MB (247110807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5362008e654f92b84fd77e73ae71c115b50f830fff0cb876967fa1ae4ea57bf`
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
# Tue, 05 Feb 2019 20:35:58 GMT
ENV JAVA_VERSION=12-ea+30
# Tue, 05 Feb 2019 20:35:59 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/30/GPL/openjdk-12-ea+30_linux-x64_bin.tar.gz
# Tue, 05 Feb 2019 20:35:59 GMT
ENV JAVA_SHA256=edfd94e15194dbaa5f08b995ee98309f9b8bb97a59b232be4e590c4954f4c859
# Tue, 05 Feb 2019 20:36:49 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Tue, 05 Feb 2019 20:36:50 GMT
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
	-	`sha256:9d640b927499180f21f00511f79101a799f614fe72771a58f2e529f28ba56cf5`  
		Last Modified: Tue, 05 Feb 2019 20:43:56 GMT  
		Size: 198.1 MB (198110627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
