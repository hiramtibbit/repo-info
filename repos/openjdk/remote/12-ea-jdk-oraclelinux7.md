## `openjdk:12-ea-jdk-oraclelinux7`

```console
$ docker pull openjdk@sha256:a4d83270daee4697cd2bf903c18b0f0e12406ca39699ca43636dd5f8e59a36ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:12-ea-jdk-oraclelinux7` - linux; amd64

```console
$ docker pull openjdk@sha256:5b0acbb75864e94eaca8bb619f5e227f2f9a8c3f9bb01a567456a99ec1ec84fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.6 MB (243641931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:630a1f7ebc386cd6dde2f64bd0167f9ae935a41d93cbacfc6d8ab85d6bbf8d4d`
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
# Fri, 05 Oct 2018 21:19:50 GMT
ENV JAVA_VERSION=12-ea+14
# Fri, 05 Oct 2018 21:19:50 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/14/GPL/openjdk-12-ea+14_linux-x64_bin.tar.gz
# Fri, 05 Oct 2018 21:19:51 GMT
ENV JAVA_SHA256=791ac6f6494a587a4de9dc373cdaa3911dc25ad4c7e793fb8e4dbe1269ab534d
# Fri, 05 Oct 2018 21:20:34 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Fri, 05 Oct 2018 21:20:37 GMT
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
	-	`sha256:f8430ea2a4460e477dfc1fea24ba476eac94884044b50fe8e76d9522d6214541`  
		Last Modified: Fri, 05 Oct 2018 21:22:13 GMT  
		Size: 196.9 MB (196853076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
