## `neurodebian:nd`

```console
$ docker pull neurodebian@sha256:42dacdb63d2b03157b7c5da3e85170806bbdaff5e7401f163506a3a07789c381
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:nd` - linux; amd64

```console
$ docker pull neurodebian@sha256:2ee61fa57c8f4f646bdfedecafd54a1f808fe4644b9921566f928fe6b31cde5a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61136638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a20dc9015e28ba75724b8482f5de43029fe9c0ecd30cb06c1f88bf865424c1db`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:40:23 GMT
ADD file:ae997b4827aa33b5d2a8d031fee7fd4a7f0d7839e72d2cd38977fdf806b1e21c in / 
# Tue, 26 Mar 2019 22:40:23 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:02:34 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Tue, 23 Apr 2019 00:59:18 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --batch --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Tue, 23 Apr 2019 00:59:19 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian sid main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 23 Apr 2019 00:59:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f747399e18307cd4cfb6e3aa0f45160b5c14d6b14f60316342b9f37bac4e7a2d`  
		Last Modified: Tue, 26 Mar 2019 22:43:49 GMT  
		Size: 50.3 MB (50280305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:402bfef32d1ca83cac2c3a5bd2ade2ca681d605dc63f169173d878c4e8095ba5`  
		Last Modified: Wed, 27 Mar 2019 00:03:27 GMT  
		Size: 10.6 MB (10551591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e13c5d9e2995f83ee081896ddd2f8fd4632ce6964e73aa9ece55265ef840167`  
		Last Modified: Tue, 23 Apr 2019 01:00:41 GMT  
		Size: 3.2 KB (3153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95dcfa78c643816cd60c484bfab8bcc64e9dc956d328066e8150200af93c8c5`  
		Last Modified: Tue, 23 Apr 2019 01:00:41 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fed1a9b4286a82cc8bb1a453c6971b398425c167ae02608f15a170df80d4195`  
		Last Modified: Tue, 23 Apr 2019 01:00:41 GMT  
		Size: 301.3 KB (301345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
