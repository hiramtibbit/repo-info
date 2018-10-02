## `openjdk:11-oraclelinux7`

```console
$ docker pull openjdk@sha256:6c61bfd8f7fea9fd2499426c86844e650513743a0e583a7d352ffe51b69712e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:11-oraclelinux7` - linux; amd64

```console
$ docker pull openjdk@sha256:a87866c9a45769d2f1355931c488084a1dda7d4e139e8ee8faf54a05350b696a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240798675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad099df2a27aaa5fca53120bfff93d2b1a7f8f27199115df907bb409e712731c`
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
# Tue, 02 Oct 2018 17:38:00 GMT
ENV JAVA_HOME=/usr/java/openjdk-11
# Tue, 02 Oct 2018 17:38:00 GMT
ENV PATH=/usr/java/openjdk-11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 02 Oct 2018 17:38:00 GMT
ENV JAVA_VERSION=11
# Tue, 02 Oct 2018 17:38:00 GMT
ENV JAVA_URL=https://download.java.net/java/ga/jdk11/openjdk-11_linux-x64_bin.tar.gz
# Tue, 02 Oct 2018 17:38:01 GMT
ENV JAVA_SHA256=3784cfc4670f0d4c5482604c7c513beb1a92b005f569df9bf100e8bef6610f2e
# Tue, 02 Oct 2018 17:38:36 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Tue, 02 Oct 2018 17:38:37 GMT
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
	-	`sha256:70bb7909d0544b158e9341147eea0da0453758e7e636668c1d51d3be4614c7e1`  
		Last Modified: Tue, 02 Oct 2018 17:47:05 GMT  
		Size: 194.0 MB (194009820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
