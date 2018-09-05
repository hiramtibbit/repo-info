## `neurodebian:sid`

```console
$ docker pull neurodebian@sha256:9dd172c3f27af13d729da137b556bb6560bfe7babea9d6660c89327dfa5c80e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:sid` - linux; amd64

```console
$ docker pull neurodebian@sha256:d6c66edb7a8823ddf8c5377b3b9c147bea75ae2d26e2ccff7e088c21dda07a80
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.9 MB (58877462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcf741b58930d3787c0277a9272708b9e05167992fe4fdf9411fdaa3809c6a0d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:51 GMT
ADD file:6b6ece05e75fbdccfdd76433844e066f0ec636fb62e74326f1747ccde948c381 in / 
# Tue, 04 Sep 2018 21:20:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:46:39 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:46:40 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 05 Sep 2018 00:46:41 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian sid main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:5164339600396c4bdb97f111e5236c5fc64911bbd2bfe6d2343ce45fe79ea7d8`  
		Last Modified: Tue, 04 Sep 2018 21:24:41 GMT  
		Size: 49.1 MB (49071704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f185ca6e7d0cd49506bba7ca7161833ee6768c3cb1140c3e44c1550c5ac3e163`  
		Last Modified: Wed, 05 Sep 2018 00:49:05 GMT  
		Size: 9.8 MB (9802367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f02c2278e13e981836c8385e3975de56e52275bfe3546aa74046d4c48e0247`  
		Last Modified: Wed, 05 Sep 2018 00:49:04 GMT  
		Size: 3.1 KB (3149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd5ea23df9f19135d845d781698ec5fa54e7d84e3aa9521681ad84d17915321`  
		Last Modified: Wed, 05 Sep 2018 00:49:03 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
