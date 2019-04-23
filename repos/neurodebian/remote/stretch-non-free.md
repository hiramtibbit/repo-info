## `neurodebian:stretch-non-free`

```console
$ docker pull neurodebian@sha256:1794421112ff9ba68a2769af121e3b6dde65dfe9fac613ff5c22310e109f2cac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:stretch-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:3a680606efc574969a973cfb1155f73e9c7767690e9609c2842bec427cca2ada
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52203830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4de28f6f676b0c6194c591d661c499bf231eb3408b560aaac0ad31bb4110c050`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:01:32 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Tue, 23 Apr 2019 00:58:51 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --batch --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Tue, 23 Apr 2019 00:58:52 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian stretch main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel stretch main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 23 Apr 2019 00:58:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
# Tue, 23 Apr 2019 00:59:01 GMT
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
	-	`sha256:7ccc1780c53370fbbfb5d05dbfe3a61467678d8e9df598a8abbcc4195b4e5a20`  
		Last Modified: Tue, 23 Apr 2019 01:00:24 GMT  
		Size: 3.2 KB (3153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f785bc330e07b3ad18df7e20695f6905dc7b66a14c80a9204cc02321155009`  
		Last Modified: Tue, 23 Apr 2019 01:00:24 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72cd8017fe61cfe9db77d85319b93b9fa319fe11be621008f59fc1307eadd524`  
		Last Modified: Tue, 23 Apr 2019 01:00:24 GMT  
		Size: 291.7 KB (291705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035c27dbce28f1165e256c93748dada014b67f8cb4a28dda0683b4d7067e5a8e`  
		Last Modified: Tue, 23 Apr 2019 01:00:28 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
