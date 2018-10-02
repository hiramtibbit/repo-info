## `openjdk:12-ea-13-oracle`

```console
$ docker pull openjdk@sha256:b4af373fecb0ae66109583663cb08a8abaff6c66c4565f3538feb0cac4b68826
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:12-ea-13-oracle` - linux; amd64

```console
$ docker pull openjdk@sha256:e7c31ac870f6bb6191e41ca1b7ec82000b79b71f442422d44dc878014c0320df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.7 MB (243692092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:508cd5baa5d616735fd70832b4645519b833abe5b3d8d8d03947da770452c83a`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 30 Aug 2018 21:49:27 GMT
MAINTAINER Oracle Linux Product Team <ol-ovm-info_ww@oracle.com>
# Fri, 28 Sep 2018 18:24:39 GMT
ADD file:4ce1cf3fafb097da3a08d23d42cd9b7dbe83e30920e07389fd2a097ac67caaaa in / 
# Fri, 28 Sep 2018 18:24:40 GMT
CMD ["/bin/bash"]
# Tue, 02 Oct 2018 17:34:41 GMT
RUN set -eux; 	yum install -y 		gzip 		tar 				freetype fontconfig 	; 	rm -rf /var/cache/yum
# Tue, 02 Oct 2018 17:34:44 GMT
ENV JAVA_HOME=/usr/java/openjdk-12
# Tue, 02 Oct 2018 17:34:44 GMT
ENV PATH=/usr/java/openjdk-12/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 02 Oct 2018 17:34:44 GMT
ENV JAVA_VERSION=12-ea+13
# Tue, 02 Oct 2018 17:34:44 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/13/GPL/openjdk-12-ea+13_linux-x64_bin.tar.gz
# Tue, 02 Oct 2018 17:34:51 GMT
ENV JAVA_SHA256=555b0518f1ada185f1d1b77c79cb6f7a62ed17722cd754223bf92ad617f3c330
# Tue, 02 Oct 2018 17:35:58 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Tue, 02 Oct 2018 17:35:58 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4c851099615d9b0b175d684548c589934fda2171323d57e05a5bf9256a44a10e`  
		Last Modified: Fri, 28 Sep 2018 18:26:19 GMT  
		Size: 42.4 MB (42414073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e83c6b6e24f6ddc905449b264e65e944280bb2bb544898f8bb8d9c2f50dcd78`  
		Last Modified: Tue, 02 Oct 2018 17:41:11 GMT  
		Size: 4.4 MB (4374782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f338ce863b7e49aabe268430082feac0c0311c7ac040a87897cecb541b76a48`  
		Last Modified: Tue, 02 Oct 2018 17:41:32 GMT  
		Size: 196.9 MB (196903237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
