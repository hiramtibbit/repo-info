## `rethinkdb:latest`

```console
$ docker pull rethinkdb@sha256:80967fafeb6cc2491bf8c4b19380889d29a7b8432a7cbd5ec5861c26cc32c785
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:latest` - linux; amd64

```console
$ docker pull rethinkdb@sha256:50315bd9855a0042780effe43ee51fd60f5979fd65dcd91bce06f37cc6ee51f2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (77968990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc96c8bc6ae57bfea24d848ac04c0dc8f6e148e06717f1e855fe59c3e509b09b`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 26 Mar 2019 22:39:37 GMT
ADD file:ca3bf06a040bfe3d0d727326698ec36f9578bf9c8f6fe1050b7d85a3dd241112 in / 
# Tue, 26 Mar 2019 22:39:37 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:54:20 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 26 Mar 2019 23:54:52 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Tue, 26 Mar 2019 23:54:54 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 26 Mar 2019 23:54:54 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Tue, 26 Mar 2019 23:56:55 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:56:55 GMT
VOLUME [/data]
# Tue, 26 Mar 2019 23:56:56 GMT
WORKDIR /data
# Tue, 26 Mar 2019 23:56:56 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 26 Mar 2019 23:56:57 GMT
EXPOSE 28015 29015 8080
```

-	Layers:
	-	`sha256:bf295113f40dde5826c75de78b0aaa190302b3b467a3d6a3f222498b0ad1cea3`  
		Last Modified: Tue, 26 Mar 2019 22:43:06 GMT  
		Size: 54.4 MB (54382913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa352d0099b2f62926d7e8daf17169a15cdc16dd3a6add66ed7a9e2638b693e`  
		Last Modified: Tue, 26 Mar 2019 23:57:08 GMT  
		Size: 4.1 KB (4113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72a5df1d7aa53d94a290cb83d7ce5577d4fcaeb49921b45f5dda5ded5b13e43d`  
		Last Modified: Tue, 26 Mar 2019 23:57:08 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca958152c7c05868bf9008ee782e78132d0a13ae4fa12c39db001c5e22406370`  
		Last Modified: Tue, 26 Mar 2019 23:57:12 GMT  
		Size: 23.6 MB (23581654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d849185ff69008c0d308bd94ab7efbdad0d3bcbe1895f6270546981e371046d4`  
		Last Modified: Tue, 26 Mar 2019 23:57:08 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
