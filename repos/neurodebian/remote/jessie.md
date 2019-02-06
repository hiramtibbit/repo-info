## `neurodebian:jessie`

```console
$ docker pull neurodebian@sha256:04dbb28304fe78ffbc271cb060d22e0417c7132a7b627a87b0b2aa714cabe72b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:jessie` - linux; amd64

```console
$ docker pull neurodebian@sha256:18f39cf03c305e3585e3b3b84fb46423eb5f0bc0b6bf26e7dc7a416624b54f2c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.7 MB (54688772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21b58b4a4b7ef2d445b4e487ebf22aaf17f88030506a063d6a7ebcba398db614`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:27:30 GMT
ADD file:3a1c24c30fbdad1dd44e5f38c66b10a2ddbeb517b2e441dbcf82c221b45b143b in / 
# Wed, 06 Feb 2019 03:27:31 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 08:04:36 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:05:11 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 06 Feb 2019 08:05:12 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian jessie main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel jessie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Wed, 06 Feb 2019 08:07:22 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ff42297909573059acb8e981efbc12eff68641f8449f04470a4f218e53a1e80e`  
		Last Modified: Wed, 06 Feb 2019 03:33:25 GMT  
		Size: 54.4 MB (54384652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96306acb5521946a1513d18ef75c476506c2b1fdeaf239c2c7bbb1905f7535c4`  
		Last Modified: Wed, 06 Feb 2019 08:09:46 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec863932ab10bdb6050297c4da23879c05124806e1a08b9a60dd569104465ccd`  
		Last Modified: Wed, 06 Feb 2019 08:09:45 GMT  
		Size: 3.2 KB (3156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:671cc852a906e5995699cfa9d4769ca16e901beb0142d0d215500248fb450ad3`  
		Last Modified: Wed, 06 Feb 2019 08:09:45 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f39efea87116aede55fea7ff29c8438ae9a6ac645f25bf8e63c474b5e1c536`  
		Last Modified: Wed, 06 Feb 2019 08:09:46 GMT  
		Size: 300.4 KB (300427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
