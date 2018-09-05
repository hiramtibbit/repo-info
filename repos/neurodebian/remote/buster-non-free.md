## `neurodebian:buster-non-free`

```console
$ docker pull neurodebian@sha256:834cd0828bb0d77769eea5409a13995e059da446979d1953acb7d1d437322a05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:buster-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:e5fad252942796700c54187ad6c470fd3dd443ab8258b7a8902fb38530e9831b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.4 MB (59404438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d1b655cf8c31ae591973497a8ae53344bd9e073fcba3ab3aa8072294c49e033`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:38 GMT
ADD file:9a59523584bffb4f021dc93910d62a0895fb3034e1b677cee880bc2c9c7d3cfa in / 
# Tue, 04 Sep 2018 21:19:39 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:46:13 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:46:15 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 05 Sep 2018 00:46:15 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian buster main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel buster main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Wed, 05 Sep 2018 00:46:22 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:1064a561889d4755937e39513dda622c2ebd16d0e4faeefe499ccb8494ea5176`  
		Last Modified: Tue, 04 Sep 2018 21:22:49 GMT  
		Size: 49.0 MB (48982727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f471eecec8732b26ccc50549f4f7e85bdf18b6067d1e78080b40a13325e20b3`  
		Last Modified: Wed, 05 Sep 2018 00:48:51 GMT  
		Size: 10.4 MB (10418000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29336988c68d8f516c2fa55962e3d890873de1908d842099a0c4ba7baca3fd2c`  
		Last Modified: Wed, 05 Sep 2018 00:48:49 GMT  
		Size: 3.2 KB (3152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46c6839137b1fd98749854a03c3b19864526c204890f9bf20420280fe33ba91b`  
		Last Modified: Wed, 05 Sep 2018 00:48:49 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98ff5caeae13ef35f9caf90a4b4a33f0b62bd78a93e6d49d2bb41f1faa43a9a`  
		Last Modified: Wed, 05 Sep 2018 00:48:57 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
