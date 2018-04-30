## `rethinkdb:latest`

```console
$ docker pull rethinkdb@sha256:d84e2ecf2a56d5b21ada0fce607ba7d3f871ba72fa56489d899113e4d61bdb77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:latest` - linux; amd64

```console
$ docker pull rethinkdb@sha256:9fc3f5e953fe41a7afdf4636848f6f1e3d37fc3501b96702c8f289c8d4fdb5e0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77879763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d86144ae205fb7bd8c7c29babfc23d08aa24ac7de1cfb5e4e0b64d83105723ad`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Sun, 29 Apr 2018 22:10:19 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Sun, 29 Apr 2018 22:13:01 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Sun, 29 Apr 2018 22:13:02 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Sun, 29 Apr 2018 22:13:02 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Sun, 29 Apr 2018 22:13:29 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 22:13:29 GMT
VOLUME [/data]
# Sun, 29 Apr 2018 22:13:29 GMT
WORKDIR /data
# Sun, 29 Apr 2018 22:13:30 GMT
CMD ["rethinkdb" "--bind" "all"]
# Sun, 29 Apr 2018 22:13:30 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79992e150a5973d6c419b9b98d0106f293df12b558af93e301c996ec3cf0e2b6`  
		Last Modified: Sun, 29 Apr 2018 22:24:01 GMT  
		Size: 4.1 KB (4111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8968a34c54f06edfb2643e93616e5f48ef854dea8e3fea1e27a5f1ac571706`  
		Last Modified: Sun, 29 Apr 2018 22:24:01 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f0bedb260eec9032431d15097b4e2a1e6dcc222e369559ea183bf108f17acc`  
		Last Modified: Sun, 29 Apr 2018 22:24:05 GMT  
		Size: 23.6 MB (23612780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d52a0ae321b28e0456e6714a26791717efaf16d7a85dc02c1db2541750fbed`  
		Last Modified: Sun, 29 Apr 2018 22:24:02 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
