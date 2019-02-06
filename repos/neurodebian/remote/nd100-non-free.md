## `neurodebian:nd100-non-free`

```console
$ docker pull neurodebian@sha256:7efbe55f9f5ef339576c9670808f2d60e7e24019f90610064e7dfe313b9248ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:nd100-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:d2436b1aa0257d691e87c7976b86c498add47af43fbcb0a177c17517688aef52
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.9 MB (60916175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daa4d6f94ac7a568defc0a8e27d832a15d8d3b5e2843a68197a35f120f874744`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:27:09 GMT
ADD file:22a69a330913adf5521ab0515a373a657cf7ba89e853b6d6ec43a808e489e481 in / 
# Wed, 06 Feb 2019 03:27:09 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 08:08:25 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:08:27 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 06 Feb 2019 08:08:28 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian buster main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel buster main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Wed, 06 Feb 2019 08:08:34 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:08:40 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:53d9d89325e47abb437613a43f7bd8bcb841e8bd580d9482cc9ade612504e52c`  
		Last Modified: Wed, 06 Feb 2019 03:32:56 GMT  
		Size: 50.1 MB (50149457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d852dac2766ae39a058dd718b6210d090c502d13b77ad578a8bf86d87f817a49`  
		Last Modified: Wed, 06 Feb 2019 08:09:55 GMT  
		Size: 10.5 MB (10467557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97efb85fdc59ec5a2eea0b0929c295bae105a2ec6c283e4a91301c002c21a8f4`  
		Last Modified: Wed, 06 Feb 2019 08:09:53 GMT  
		Size: 3.1 KB (3150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b95a12fe9d93c1eb14c161f68019321ec55f18c6a45b13ee8564f94dc497d1db`  
		Last Modified: Wed, 06 Feb 2019 08:09:53 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf58ccd7a588ab2276a82d038b501a280da6f53e5acd695efc0e0d2bc91bc2b0`  
		Last Modified: Wed, 06 Feb 2019 08:09:53 GMT  
		Size: 295.5 KB (295455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf0bc3df7a270ff58eebdbce0e6af50ccdc9db606af8f7dc91523795346ce85`  
		Last Modified: Wed, 06 Feb 2019 08:09:58 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
