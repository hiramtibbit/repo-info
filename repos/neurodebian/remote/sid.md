## `neurodebian:sid`

```console
$ docker pull neurodebian@sha256:172ab1add7de34e204c57e64fa5d005aa59248a0007aa7a51ebccb728af30806
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:sid` - linux; amd64

```console
$ docker pull neurodebian@sha256:9eb26f5b982395337b9b3360ebc578111411b7b3632d30504fbebd300aa61a58
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.7 MB (60691523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab20ee297581744f7c15dea172c4fba4eb33648d2052558572afe9504268ed9d`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:39:40 GMT
ADD file:84029df3086c983b05fbe43604e262a3500994b6a3ecfe0d463f3c8c58e0a7a1 in / 
# Thu, 15 Nov 2018 22:39:48 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 13:15:20 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 13:15:22 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Fri, 16 Nov 2018 13:15:24 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian sid main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 16 Nov 2018 13:15:32 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:16e82e17faef9e90ceefcd8175e9899edce768aa6008cc16dd1e3fe7d3b88bb8`  
		Last Modified: Thu, 15 Nov 2018 23:04:08 GMT  
		Size: 49.3 MB (49259589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982d883bf3bbe93e48282ccd1adcbde98c55a924fcfcc2f7101e29350570a41d`  
		Last Modified: Fri, 16 Nov 2018 13:19:54 GMT  
		Size: 11.1 MB (11128050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342cdeef0dd3b94fd1bff78010d609a31dea0d2900778297bc4584631f9cbfbf`  
		Last Modified: Fri, 16 Nov 2018 13:19:50 GMT  
		Size: 3.2 KB (3152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa7eccd085564434334d77d4e1b2cf1e708b93d07661ae9f5a6ad57825b0b105`  
		Last Modified: Fri, 16 Nov 2018 13:19:50 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec466805ab9b8a72e55c67ba36223ee044a403f7f1643905a45b9b1ae2f82a48`  
		Last Modified: Fri, 16 Nov 2018 13:19:51 GMT  
		Size: 300.5 KB (300491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
