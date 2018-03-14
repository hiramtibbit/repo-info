## `neurodebian:nd80-non-free`

```console
$ docker pull neurodebian@sha256:034973e1059131eac8a6fcef287ce357151d343c0b9e8fbf8b466e218999fac2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:nd80-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:32b174cfb491f551d80786b64168a0b9a2143823ab7b1349460e75f01bab0f9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52612518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32e95d90537b3650f5c49067f292ccbd00afbbd402244b65ec755ae723a4ffaa`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 09:34:31 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 09:34:36 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 14 Mar 2018 09:34:37 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian jessie main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel jessie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Wed, 14 Mar 2018 09:34:56 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14f77eedd7989e649d101516c676de9d24a83116045a86b4668f6823201ffab8`  
		Last Modified: Wed, 14 Mar 2018 09:39:25 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d61df763f2e5a3d94d97c58398356ff99c2d224a693418fefa4b83e1f63f0f`  
		Last Modified: Wed, 14 Mar 2018 09:39:24 GMT  
		Size: 3.2 KB (3155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13bbb84765ef7a8090ecb6e1e630d7dfd4cce299cd3126b0fd191bfffb98f0d7`  
		Last Modified: Wed, 14 Mar 2018 09:39:24 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:051ae630e7066957e6029e9510d69371594fb794c93fd6543cd68d33bc039751`  
		Last Modified: Wed, 14 Mar 2018 09:40:02 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
