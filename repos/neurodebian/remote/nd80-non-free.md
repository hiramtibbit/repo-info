## `neurodebian:nd80-non-free`

```console
$ docker pull neurodebian@sha256:15cbbe0f42e12b1da138bb44b124c36f08fe623cc85d77468bb056ae15c356b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:nd80-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:4fce3d96ae4726161d35bb1fecf6eedb3da0fe6d28547bd2f7c337933e99fbd9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.7 MB (54689089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b76b23958fbd67e8dc38b8c43b883388c8bd67293df21c10b255424607d2d779`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:27:30 GMT
ADD file:3a1c24c30fbdad1dd44e5f38c66b10a2ddbeb517b2e441dbcf82c221b45b143b in / 
# Wed, 06 Feb 2019 03:27:31 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 08:04:36 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:05:11 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 06 Feb 2019 08:05:12 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian jessie main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel jessie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Wed, 06 Feb 2019 08:07:22 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:07:34 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:ff42297909573059acb8e981efbc12eff68641f8449f04470a4f218e53a1e80e`  
		Last Modified: Wed, 06 Feb 2019 03:33:25 GMT  
		Size: 54.4 MB (54384652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96306acb5521946a1513d18ef75c476506c2b1fdeaf239c2c7bbb1905f7535c4`  
		Last Modified: Wed, 06 Feb 2019 08:09:46 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec863932ab10bdb6050297c4da23879c05124806e1a08b9a60dd569104465ccd`  
		Last Modified: Wed, 06 Feb 2019 08:09:45 GMT  
		Size: 3.2 KB (3156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:671cc852a906e5995699cfa9d4769ca16e901beb0142d0d215500248fb450ad3`  
		Last Modified: Wed, 06 Feb 2019 08:09:45 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f39efea87116aede55fea7ff29c8438ae9a6ac645f25bf8e63c474b5e1c536`  
		Last Modified: Wed, 06 Feb 2019 08:09:46 GMT  
		Size: 300.4 KB (300427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c92cee902ad9db092449c2267a088f2355f770cfa6ebc1281ba57a7facee2a`  
		Last Modified: Wed, 06 Feb 2019 08:09:49 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
