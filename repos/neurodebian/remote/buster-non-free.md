## `neurodebian:buster-non-free`

```console
$ docker pull neurodebian@sha256:93dcffe10cc2478d007795c84ca0970e5ca8378811fc9c79d69f470799bf3a40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:buster-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:906a28f257953233cb70610578f673ccc2467e82f509d9691951d520b84c7fac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.6 MB (58607518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:789110a1ff1be227402e6c4ce2a51eccce15d2fa9953dc2ae141d729aed15690`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:19:46 GMT
ADD file:e0eb7fd196a77a8c01b8187e5b032570504c8a8298b9b1ece3e14d9b33d55118 in / 
# Tue, 17 Jul 2018 00:19:47 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 04:35:17 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:35:18 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Tue, 17 Jul 2018 04:35:19 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian buster main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel buster main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 17 Jul 2018 04:35:34 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:6e8f29bc2816888d5c4a1a83baae3048b6d32a16b8f2ce62d9a93d7a37eb976e`  
		Last Modified: Tue, 17 Jul 2018 00:32:47 GMT  
		Size: 48.9 MB (48859152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b263732958924990556c22f936a6191a5a8552173ff9ffd1c86deaa2ec9abb`  
		Last Modified: Tue, 17 Jul 2018 04:46:42 GMT  
		Size: 9.7 MB (9744664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0993a0cfdb912001c4d8e3dea8897b06f0cac62c3e231ee9b0f1851cb0f8ced2`  
		Last Modified: Tue, 17 Jul 2018 04:46:40 GMT  
		Size: 3.1 KB (3146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3182ff94d60aa39e6b29c62252d78e1da77195ceca8059f86ac0e2dd3f2fb576`  
		Last Modified: Tue, 17 Jul 2018 04:46:40 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:076e9b43a8c97baadaf33c71c9c054fba4d1d761285bcc091cabf513985c2cb3`  
		Last Modified: Tue, 17 Jul 2018 04:47:29 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
