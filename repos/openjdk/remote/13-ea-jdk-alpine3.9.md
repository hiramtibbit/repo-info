## `openjdk:13-ea-jdk-alpine3.9`

```console
$ docker pull openjdk@sha256:06d8eeada3a9ddbebd007b389f435df3a0c481f9f4a865dba30de560df5b046a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:13-ea-jdk-alpine3.9` - linux; amd64

```console
$ docker pull openjdk@sha256:bc6c39cb60d7f6610f0d8194e061b84b5d31b1da9bafc05283d9550f29bdfd90
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.8 MB (199839269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6e69b1614bd0c1c3405f7e624a6d19f4afec38423af886eca59ef72247271e4`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 01:49:28 GMT
ENV JAVA_HOME=/opt/openjdk-13
# Wed, 10 Apr 2019 01:49:28 GMT
ENV PATH=/opt/openjdk-13/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 May 2019 23:25:12 GMT
ENV JAVA_VERSION=13-ea+19
# Thu, 09 May 2019 23:25:12 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/alpine/19/binaries/openjdk-13-ea+19_linux-x64-musl_bin.tar.gz
# Thu, 09 May 2019 23:25:12 GMT
ENV JAVA_SHA256=010ea985fba7e3d89a9170545c4e697da983cffc442b84e65dba3baa771299a5
# Thu, 09 May 2019 23:26:54 GMT
RUN set -eux; 		wget -O /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		java -Xshare:dump; 		java --version; 	javac --version
# Thu, 09 May 2019 23:26:55 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a6ad81dd950fc58105bfac8d124e15a38fd43d9978ca0b04cd7c369d7f9dbb`  
		Last Modified: Thu, 09 May 2019 23:30:14 GMT  
		Size: 197.1 MB (197082260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
