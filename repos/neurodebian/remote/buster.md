## `neurodebian:buster`

```console
$ docker pull neurodebian@sha256:309b27e672ec33db40cf23e62cdb144f743ff1c94ae184f68bd00e57bcc95496
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:buster` - linux; amd64

```console
$ docker pull neurodebian@sha256:9f41a6caac653435f975b7072b700263ca494f4e9d4fc07674f661edb4cef3c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.4 MB (59404124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bffb71ca44d8414a15938f7a55220a4a49ac5da99f38e74be1a69fa9476ce825`
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
