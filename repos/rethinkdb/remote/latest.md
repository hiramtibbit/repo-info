## `rethinkdb:latest`

```console
$ docker pull rethinkdb@sha256:3313d033f49a83e56c6d6a6a33a03a908654fcb4526a356861d15afa078c7960
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rethinkdb:latest` - linux; amd64

```console
$ docker pull rethinkdb@sha256:ce46b519fab3f6c3892410a5bf85453e5053b573bd911653551b928c9c9d089d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (77968402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a30fe3da043631dbb57b1b16cf4967b81696921a116a251d947372b3cee49c3d`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 22 Jan 2019 19:23:31 GMT
ADD file:3392f08cefaf93484868c5183e810a29e7cc370d21dae7cff10b856b2b21d072 in / 
# Tue, 22 Jan 2019 19:23:31 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 23:23:48 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 22 Jan 2019 23:24:20 GMT
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 3B87619DF812A63A8C1005C30742918E5C8DA04A
# Tue, 22 Jan 2019 23:24:22 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 22 Jan 2019 23:24:22 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.6~0jessie
# Tue, 22 Jan 2019 23:26:23 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 23:26:23 GMT
VOLUME [/data]
# Tue, 22 Jan 2019 23:26:24 GMT
WORKDIR /data
# Tue, 22 Jan 2019 23:26:25 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 22 Jan 2019 23:26:25 GMT
EXPOSE 28015 29015 8080
```

-	Layers:
	-	`sha256:8ac9f5ca4429ff58493e4cb486b7a5eaa6af0a4711e9bda1ce4671732e25d1d1`  
		Last Modified: Tue, 22 Jan 2019 19:34:35 GMT  
		Size: 54.4 MB (54385768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52785efe18024f07d479824f494fd48100081b74e5d600399f7770676681e579`  
		Last Modified: Tue, 22 Jan 2019 23:26:36 GMT  
		Size: 4.1 KB (4108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca84154e9f8a4f42d59d54bf6bba4735d27c0aa651030569c810660da554b8fb`  
		Last Modified: Tue, 22 Jan 2019 23:26:40 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64aa652f3bab70e94597527af8ad70145dd7fc56d3788fb856aad1ff3f859c84`  
		Last Modified: Tue, 22 Jan 2019 23:26:40 GMT  
		Size: 23.6 MB (23578214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058112f3fb11101dfd4d5ea01420cf488f1c40cd473c57d9ff9bddce73f68b63`  
		Last Modified: Tue, 22 Jan 2019 23:26:40 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
