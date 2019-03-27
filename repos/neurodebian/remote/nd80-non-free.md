## `neurodebian:nd80-non-free`

```console
$ docker pull neurodebian@sha256:608f35bb2de02123485d49125fe56f7b4fedb459da9b5b8d74e146d1dc38a32e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:nd80-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:6229fcf76813cacc7f1ee21aca3aca74c41dba80b710ecf0db2d4b6d63c3c5a0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.7 MB (54688409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56065b8b08d8dbf9c8e87499cf0cea7afbd2837a3d922b8330a40fe1c0000341`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:39:37 GMT
ADD file:ca3bf06a040bfe3d0d727326698ec36f9578bf9c8f6fe1050b7d85a3dd241112 in / 
# Tue, 26 Mar 2019 22:39:37 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:58:38 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:59:10 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Tue, 26 Mar 2019 23:59:11 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian jessie main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel jessie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Wed, 27 Mar 2019 00:01:02 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:01:16 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:bf295113f40dde5826c75de78b0aaa190302b3b467a3d6a3f222498b0ad1cea3`  
		Last Modified: Tue, 26 Mar 2019 22:43:06 GMT  
		Size: 54.4 MB (54382913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:677fb1b8a7505e5c4589f11ab40c11b950818ca9b386de80a1701da7ceec21c8`  
		Last Modified: Wed, 27 Mar 2019 00:03:04 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c1f5ffcc87fc004c8550f666727a4af8973749b72a98a3f71800a1a21452435`  
		Last Modified: Wed, 27 Mar 2019 00:03:04 GMT  
		Size: 3.2 KB (3157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:910b13c0477a836d51520c002e3b6d097bbf19ba469f6f1ad1027b1ac15c2be8`  
		Last Modified: Wed, 27 Mar 2019 00:03:04 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98ee5fb899e39217308021a8f6997357589bab642a1a1b2001f28c656a76c73`  
		Last Modified: Wed, 27 Mar 2019 00:03:04 GMT  
		Size: 301.5 KB (301453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14c902c5fafb03b98fcb52c728240cb848f24fedf2ca310fdb54f44a9971d6cc`  
		Last Modified: Wed, 27 Mar 2019 00:03:07 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
