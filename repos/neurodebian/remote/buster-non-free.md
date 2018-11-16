## `neurodebian:buster-non-free`

```console
$ docker pull neurodebian@sha256:991fa3584d4941dcc6d0dee494ffdfb3f1ef8d8cdbc0c81ad6a186de82c5d6fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:buster-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:c5a3a2b9aac53d86e7220699b49df3e070a74372b3134f7144f679af386f293e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.6 MB (60637502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4a2fdab65197eac1a2a17b1ebca5c1b98e1bc86f895aabf66ffc8af62020552`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:32:12 GMT
ADD file:0dc58768faa0403918d16823eee1547c7ee299249251e279d3378f8b8522ffac in / 
# Thu, 15 Nov 2018 22:32:13 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 13:13:56 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 13:13:58 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Fri, 16 Nov 2018 13:14:00 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian buster main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel buster main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 16 Nov 2018 13:14:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 13:14:37 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:bac5159b230a9f6ac8aedbb940e99daf2f02c4f92812d766769e555262fbc162`  
		Last Modified: Thu, 15 Nov 2018 00:59:39 GMT  
		Size: 49.2 MB (49205033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19ecbe874c766baaeff54996f9596a57f3b531291f756174fefab075666d93b`  
		Last Modified: Fri, 16 Nov 2018 13:18:15 GMT  
		Size: 11.1 MB (11128110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:572ef42c4242913848bb85da25694b932d7bc639b0e6144d30012122bfca3e93`  
		Last Modified: Fri, 16 Nov 2018 13:18:13 GMT  
		Size: 3.2 KB (3152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd2940763a1fcfa8be23b9955fb762d0a4cb118d6ad7cca2dc5fb5febbd1a8d`  
		Last Modified: Fri, 16 Nov 2018 13:18:13 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f27390e4f2a8748e86a675e448f595c800055d4282ee53c1aa901592444d9cc`  
		Last Modified: Fri, 16 Nov 2018 13:18:14 GMT  
		Size: 300.6 KB (300645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f75246830ed2e4578f6b8a22d4e6e3b55c2fb7ae441240b95b56144d446544`  
		Last Modified: Fri, 16 Nov 2018 13:19:02 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
