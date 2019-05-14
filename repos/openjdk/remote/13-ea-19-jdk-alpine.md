## `openjdk:13-ea-19-jdk-alpine`

```console
$ docker pull openjdk@sha256:f385b2f28a0834c0ce7df35e0b3014469ccb8b0fd6457e5c7f97c5ec57f588e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:13-ea-19-jdk-alpine` - linux; amd64

```console
$ docker pull openjdk@sha256:b0541e4a8b07a1673f48b8904143aaaa8cef5c520ceb46d1c4193413ec5b299e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.8 MB (199839108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4af3f7e776e1a6d96c5b91e5c569f501fe19a31c8d9da2714c58a8c38d3f68ab`
-	Default Command: `["jshell"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:30:45 GMT
ENV JAVA_HOME=/opt/openjdk-13
# Sat, 11 May 2019 01:30:45 GMT
ENV PATH=/opt/openjdk-13/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 01:30:45 GMT
ENV JAVA_VERSION=13-ea+19
# Sat, 11 May 2019 01:30:45 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/alpine/19/binaries/openjdk-13-ea+19_linux-x64-musl_bin.tar.gz
# Sat, 11 May 2019 01:30:46 GMT
ENV JAVA_SHA256=010ea985fba7e3d89a9170545c4e697da983cffc442b84e65dba3baa771299a5
# Sat, 11 May 2019 01:31:19 GMT
RUN set -eux; 		wget -O /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		java -Xshare:dump; 		java --version; 	javac --version
# Sat, 11 May 2019 01:31:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9064653447c3f50b807ac581e0d3384d516f665051fe8e54e77ba250b2fabe78`  
		Last Modified: Sat, 11 May 2019 01:36:24 GMT  
		Size: 197.1 MB (197082074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
