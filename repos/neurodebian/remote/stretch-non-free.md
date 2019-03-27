## `neurodebian:stretch-non-free`

```console
$ docker pull neurodebian@sha256:0c034dd3f6fd2f1170a20cb917798c6a23d3e104999908723db9b8141446419f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:stretch-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:db2467d354035693a339d513f47abe047f59219f881ea385330184c4d7e4c500
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52203754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0b13405d66ac3c2e073a65fd0ab07f1af80baa33faf70c4ad1d54d4e5c16234`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:01:32 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:01:35 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 27 Mar 2019 00:01:36 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian stretch main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel stretch main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Wed, 27 Mar 2019 00:01:40 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:01:47 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f14f523b3f222601521d1cec5ec7efb1063f6d7dcb8fc43c6e2c465172465c6`  
		Last Modified: Wed, 27 Mar 2019 00:03:11 GMT  
		Size: 6.6 MB (6565759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5424fe671ebbefb92473bdd598db49d014cbc115d7eb2fa8adea80f3977cac5`  
		Last Modified: Wed, 27 Mar 2019 00:03:10 GMT  
		Size: 3.1 KB (3150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631cb2951088fb19279a256c7a2371faeef1b567b8a6a349eaf2b51db6e5dc9c`  
		Last Modified: Wed, 27 Mar 2019 00:03:10 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf434c5c2b5a26e19717b5c8c041865593107efe8a497d9265029309a099ceb`  
		Last Modified: Wed, 27 Mar 2019 00:03:11 GMT  
		Size: 291.6 KB (291638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afe4833aedd88df5ff076b64ed8c10c80ebbbe5f07d93e93181f874d9ed36b1`  
		Last Modified: Wed, 27 Mar 2019 00:03:15 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
