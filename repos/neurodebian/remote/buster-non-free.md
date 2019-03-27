## `neurodebian:buster-non-free`

```console
$ docker pull neurodebian@sha256:6734650c5d2c48c2d586a3a175f25c23fd094e9055a4a68dc658cbf508d61c80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:buster-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:9559a2d8c1ca8e2b2cc81b786f7a44beb78798cce6a1c8be001a107b3027929d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61005463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fafd78aa3965937f78fb048365cd204e46f015fc6f270adc6efab10098c707cf`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:39:10 GMT
ADD file:76176cc6a94815c82ed8b377f8be206dafafdd7656196edce1f3acbf8762b522 in / 
# Tue, 26 Mar 2019 22:39:11 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:01:57 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:01:59 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 27 Mar 2019 00:02:01 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian buster main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel buster main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Wed, 27 Mar 2019 00:02:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:02:23 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:8ee468effd219ecb1753308b8b7435b236ea041486108ab102e6f1f7443b892f`  
		Last Modified: Tue, 26 Mar 2019 22:42:44 GMT  
		Size: 50.2 MB (50229764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdeb00deaf2f98ef3d065670fcd92521ae5912d537d21fccc4318b16b1d02126`  
		Last Modified: Wed, 27 Mar 2019 00:03:20 GMT  
		Size: 10.5 MB (10475048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:441194661650d27a200f370d426899edcdf618094118876147497bcc4ac35339`  
		Last Modified: Wed, 27 Mar 2019 00:03:19 GMT  
		Size: 3.2 KB (3151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5664b1afd97ffb73bbc973a8ac4c76020e3ab345bce15b7af14758a3ed09efa`  
		Last Modified: Wed, 27 Mar 2019 00:03:19 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8486e0a29ee891f2bab3262abc460674021c507c3eed70c54d0cfaf9e4dc87d`  
		Last Modified: Wed, 27 Mar 2019 00:03:19 GMT  
		Size: 296.9 KB (296887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4da8a8035d44fef26f0d0ae27cc5b671000316afce7e18ced27d79804dd0ce`  
		Last Modified: Wed, 27 Mar 2019 00:03:23 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
