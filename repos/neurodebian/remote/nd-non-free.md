## `neurodebian:nd-non-free`

```console
$ docker pull neurodebian@sha256:12f72f1abaab57ad491b62cedb97e2a213222fbf217a35d2377034749a9871e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:nd-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:03fc7f06c121b31ba0822e4d6058c66e55df1a57b519f4cd7eeb4e8412f44428
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61136856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:900d74d013d7ee74d8f460019e03bdae6a67fc9364da3c29d9590bb89575d547`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:40:23 GMT
ADD file:ae997b4827aa33b5d2a8d031fee7fd4a7f0d7839e72d2cd38977fdf806b1e21c in / 
# Tue, 26 Mar 2019 22:40:23 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:02:34 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:02:36 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 27 Mar 2019 00:02:38 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian sid main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Wed, 27 Mar 2019 00:02:43 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:02:47 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
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
	-	`sha256:69313e7be6ae7a12d11ad8dad1575985ce9efa5b37281c1375eed00b920da3c1`  
		Last Modified: Wed, 27 Mar 2019 00:03:26 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85bb39b50f29f4fe79ced37b405b5f51f930b358770bf67283a205ccc684b8c7`  
		Last Modified: Wed, 27 Mar 2019 00:03:26 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4c918e9a6436c0c956a4093fd72f1b947d0f0206ba9894be85f80e5ddca7361`  
		Last Modified: Wed, 27 Mar 2019 00:03:26 GMT  
		Size: 301.3 KB (301258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fca20042f787f5a26746a0a90d03a7989b1a01c60f4cfeeb25e314c2cdc4029`  
		Last Modified: Wed, 27 Mar 2019 00:03:31 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
