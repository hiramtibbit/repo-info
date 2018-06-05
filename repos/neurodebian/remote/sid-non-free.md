## `neurodebian:sid-non-free`

```console
$ docker pull neurodebian@sha256:dd4941a7e81e6c791deac3e0f8ffe63f2ac07b7bef08d67fa4117e6b6c8de41c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:sid-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:280aeef473448f8d61a15601dd759c6ae0005b4ac247e9ab5d82540af91ba395
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.1 MB (59141652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc8f5b55151f5309ec5f4f815f3c5d0d74d1131457d66f4890e2c16c3f780e00`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:49:58 GMT
ADD file:229ad62fdc5e079bf925fb084264841ce27bf7125beb1fd821cbd6ed5132b37c in / 
# Sat, 28 Apr 2018 06:49:59 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 22:02:19 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 22:02:20 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Tue, 05 Jun 2018 22:02:21 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian sid main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 05 Jun 2018 22:02:24 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:e7cb83f94a464daabb5fa4e63ae521d65d7956bfcb3619bc75857f7d598ff12c`  
		Last Modified: Sat, 28 Apr 2018 08:58:22 GMT  
		Size: 48.3 MB (48303234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4380e6dd57e4e37e9bae51bfb6f32c8329ceeb98864c2eaa9a636be0651ecf21`  
		Last Modified: Tue, 05 Jun 2018 22:05:35 GMT  
		Size: 10.8 MB (10834738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6268267721c8dacfb10687ef49d089ca166faa0547af486697149e19f2332b`  
		Last Modified: Tue, 05 Jun 2018 22:05:33 GMT  
		Size: 3.2 KB (3152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7e2ab84cd9e0d908ccc7c0f328b51ccbcb2b2c7b10aba09a7f3b9eda84dbdd`  
		Last Modified: Tue, 05 Jun 2018 22:05:33 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f35144a7dd6fdd7965f6554cee65c74816171a74296f8c52c6cc992be20bd02`  
		Last Modified: Tue, 05 Jun 2018 22:05:44 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
