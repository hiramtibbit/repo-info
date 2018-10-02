## `openjdk:jdk-oraclelinux7`

```console
$ docker pull openjdk@sha256:2dc26a33e7f6995f385326ca7a65ed48462a84298e709dd46290b6fcbc9d21f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:jdk-oraclelinux7` - linux; amd64

```console
$ docker pull openjdk@sha256:92226508da1f78dd1c3f3582d8be8611b963ec5252bfa4594e21dd44df1bfa23
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.1 MB (258054112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c1dfb7c910dc2bed233e3d65e66d7e27f17ccdd76eeeaf34f3fe35fd73a78e0`
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
# Tue, 02 Oct 2018 17:39:17 GMT
ENV JAVA_HOME=/usr/java/openjdk-10
# Tue, 02 Oct 2018 17:39:17 GMT
ENV PATH=/usr/java/openjdk-10/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 02 Oct 2018 17:39:17 GMT
ENV JAVA_VERSION=10.0.2
# Tue, 02 Oct 2018 17:39:18 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk10/10.0.2/19aef61b38124481863b1413dce1855f/13/openjdk-10.0.2_linux-x64_bin.tar.gz
# Tue, 02 Oct 2018 17:39:18 GMT
ENV JAVA_SHA256=f3b26abc9990a0b8929781310e14a339a7542adfd6596afb842fa0dd7e3848b2
# Tue, 02 Oct 2018 17:39:58 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Tue, 02 Oct 2018 17:39:59 GMT
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
	-	`sha256:d0eba3437f36101bef2a7e10465ce600ef81848607f0bb43895558d59f72f9df`  
		Last Modified: Tue, 02 Oct 2018 17:48:20 GMT  
		Size: 211.3 MB (211265257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
