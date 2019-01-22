## `neurodebian:sid`

```console
$ docker pull neurodebian@sha256:6c3ca4cccbce867826bc62bfcb894dcb9dc74e10629565d7352ca68a2c1f8b14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:sid` - linux; amd64

```console
$ docker pull neurodebian@sha256:2fb81a10eb4577ef297b7d39c9d3fd81056368b4be2e325f36ac0b96e0ed59ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.9 MB (60888146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c42c806b3d14e06a78fe0a5b617208b2c0b89d7c476eab30d44f62083df7ef90`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:27:44 GMT
ADD file:10ceb3ed065b964c9332532874322c1278da8bda0c7caa7ea790da93e84d49e7 in / 
# Tue, 22 Jan 2019 19:27:44 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 21:09:13 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 21:09:15 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Tue, 22 Jan 2019 21:09:15 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian sid main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 22 Jan 2019 21:09:23 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f695fc1eb490900cdc6224504e9f758820a8d68fb1e4512ed93d354848277d3d`  
		Last Modified: Tue, 22 Jan 2019 19:36:00 GMT  
		Size: 50.1 MB (50121951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:907caaa16026505111400e05283f31abcbd87e4c9893cb747d4bab138373a5d8`  
		Last Modified: Tue, 22 Jan 2019 21:10:24 GMT  
		Size: 10.5 MB (10467305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a241fc504e6b809e79bbdef31d406c8e77257d66085323a77301723c474b8e`  
		Last Modified: Tue, 22 Jan 2019 21:10:22 GMT  
		Size: 3.1 KB (3150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb57995b0c126946ec558acd74825564e5b1c1108e85c5fcdb0a887190e22370`  
		Last Modified: Tue, 22 Jan 2019 21:10:22 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d89e7d5de9761fa5021b0bf2d429315b21fe959c16da9988dfc37a8a3ff5c5ed`  
		Last Modified: Tue, 22 Jan 2019 21:10:22 GMT  
		Size: 295.5 KB (295500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
