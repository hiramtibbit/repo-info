## `neurodebian:jessie`

```console
$ docker pull neurodebian@sha256:20f5d46090fa57404363a281ecc173d6ce9647ca4942fea231dd6f343d539016
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:jessie` - linux; amd64

```console
$ docker pull neurodebian@sha256:8b547581ca49f2570b3f3b429754312f625df686518feb2c502c3de640543b74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.7 MB (54660777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c5ac99262cc6cdc69f2f11997f4b3ccdcd99a9b38efa87a88e60aa9a769f862`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:33:25 GMT
ADD file:0b25d0012989e20b95dd0702d9491fdc4a4d40d0994690df7ec502cf163590fe in / 
# Thu, 15 Nov 2018 22:33:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 13:09:05 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 13:09:13 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Fri, 16 Nov 2018 13:09:14 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian jessie main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel jessie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 16 Nov 2018 13:09:45 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4b105072aa89afc93b7238396c7ca2951308666854da2fb399c4ca362c93b445`  
		Last Modified: Thu, 15 Nov 2018 22:53:33 GMT  
		Size: 54.4 MB (54357843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59db8485450c11b57237e82edd0fcafa82691bd1ef2353b127575b3115e9d874`  
		Last Modified: Fri, 16 Nov 2018 13:16:37 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c2968630e60479046985a93f592135de050db3f8e55e745fff6361b89561d5`  
		Last Modified: Fri, 16 Nov 2018 13:16:37 GMT  
		Size: 3.2 KB (3157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9810d354fb0509cf557ee9def7f33cba0d8ceec4059fdf06753baeb2e7d273`  
		Last Modified: Fri, 16 Nov 2018 13:16:37 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a66e761c938bc669bdae83a40965c508772decb5efd57ea2fdfc450a4317703`  
		Last Modified: Fri, 16 Nov 2018 13:16:37 GMT  
		Size: 299.2 KB (299241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
