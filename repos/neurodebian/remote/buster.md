## `neurodebian:buster`

```console
$ docker pull neurodebian@sha256:95e2bc13171ada7976b88cee509f7cb03604b0ed3bee11e46c1cff04e9e98e2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:buster` - linux; amd64

```console
$ docker pull neurodebian@sha256:63ed6b12fc6fe880d00eec9244254e1a61fcf7aa8678c56ea69c9354b0705870
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.9 MB (60923161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa036692cb0924068e87c60eda9a088a83352ebf8a53fc597c683644f56ddb36`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:19:56 GMT
ADD file:d272c1d83c768286bee82c0583c289bbc64661c4b528db2217208623331689d8 in / 
# Mon, 04 Mar 2019 23:19:56 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:39:24 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:39:25 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Tue, 05 Mar 2019 03:39:25 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian buster main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel buster main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 05 Mar 2019 03:39:30 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a5e86c41ccba20f8cc620ba9905a566083b6659ea5212c4ef78fdcc1a5d9ab32`  
		Last Modified: Mon, 04 Mar 2019 23:24:04 GMT  
		Size: 50.2 MB (50154948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a1b4a89eb4aa2c9162fc5b868c45b37444f8881e335ff4c75815bf41a16941e`  
		Last Modified: Tue, 05 Mar 2019 03:40:29 GMT  
		Size: 10.5 MB (10468128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccca368802df5a4d0d236ddbccf564d6d6c6ab3f74ed1b3ed68c17933f0342c`  
		Last Modified: Tue, 05 Mar 2019 03:40:28 GMT  
		Size: 3.1 KB (3146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf0c802f52dd94a0d73e46641d802667ce770ec3d53526ce751b9873a41838b8`  
		Last Modified: Tue, 05 Mar 2019 03:40:28 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5a2fee5ca8e162215219c263f0ed38997eae01c8a72c672cd0a880ca023139`  
		Last Modified: Tue, 05 Mar 2019 03:40:28 GMT  
		Size: 296.7 KB (296695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
