## `neurodebian:sid-non-free`

```console
$ docker pull neurodebian@sha256:ed2eb0b4239a381377f63018068319ae395c29347d0fc878e6e38ef31d8c3ab0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:sid-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:31e285f1b4b55e9e748cb8b48a51634d1ef9b77669b2131fd537840f964d4d5b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.8 MB (60843748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91000ab71ce906af79ae738ea9d7bb9d9dd0798787df5d5cdababa7ea4d5e623`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:28:59 GMT
ADD file:9c6a8e35fb0a355b15c531885f92b45f2a8f4a102a8fdb351280826b1dc8a455 in / 
# Wed, 06 Feb 2019 03:28:59 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 08:08:54 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:08:56 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 06 Feb 2019 08:08:57 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian sid main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Wed, 06 Feb 2019 08:09:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:09:11 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:7c225361587bd702b61e38248f9c9566e1150260cbc201bb504e523904acde83`  
		Last Modified: Wed, 06 Feb 2019 03:34:53 GMT  
		Size: 50.1 MB (50076371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0157c1c63371e2ca568da3a692b0b810e22703a9be404809a2d4f18286b338fb`  
		Last Modified: Wed, 06 Feb 2019 08:10:04 GMT  
		Size: 10.5 MB (10468280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9e5ddacdd5e481a947a2c4b43da9c7d5530c096fc09f06dcc9bdb6fc6ca0020`  
		Last Modified: Wed, 06 Feb 2019 08:10:01 GMT  
		Size: 3.2 KB (3151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7350587ff72d99772142f628da57b0dc44763cce786af5ccd4aa56dab1bcce90`  
		Last Modified: Wed, 06 Feb 2019 08:10:01 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8996b1757d1d641687b433c9ab21a09679e5404d687ae270be6f7207e530ac40`  
		Last Modified: Wed, 06 Feb 2019 08:10:01 GMT  
		Size: 295.4 KB (295426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a5a297b80529eaeab3db80e969827bd3d058c1063826c353fdf1ad755d144bf`  
		Last Modified: Wed, 06 Feb 2019 08:10:08 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
