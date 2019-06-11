## `neurodebian:sid-non-free`

```console
$ docker pull neurodebian@sha256:2851f4898a55c1b741b1399881a341e656ce57591e3183aeb640e20c65d9b6fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:sid-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:22f9cdb5e6b15cd85aaa693defc9f8fd60edeb3a43d908f19bf2cc47b9a359f2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61275396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37df986324a721b8033c0e0cf92f635a67dc5d5830aa7a25d1cc043e0a58f875`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:23:11 GMT
ADD file:dd0986a5b74404f77d300a1f66ca28f1d810b9563bb0ad60166c42c86a3951a3 in / 
# Mon, 10 Jun 2019 23:23:12 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 06:58:52 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 06:58:53 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --batch --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Tue, 11 Jun 2019 06:58:54 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian sid main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 11 Jun 2019 06:59:02 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 06:59:09 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:26a3de69c889cd62b7ca9d1a2acfcd53ec6a80624f14b8ac06f623e5e4cd3a83`  
		Last Modified: Mon, 10 Jun 2019 23:27:10 GMT  
		Size: 50.4 MB (50416288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0b095afb0b832446d34bfda9b869587023dad6b009fc10793c516312b29c50b`  
		Last Modified: Tue, 11 Jun 2019 07:00:05 GMT  
		Size: 10.6 MB (10553745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcda103b6f1d051dc0f9261e51f93602b061be1c5d0dd85025985165e0351cc7`  
		Last Modified: Tue, 11 Jun 2019 07:00:03 GMT  
		Size: 3.2 KB (3151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096297fbf4736de259a11f2ba359d06f93cb32a448ae07d9f2d9caed9839233a`  
		Last Modified: Tue, 11 Jun 2019 07:00:03 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e250a24829c5d65127aed081c4fa1b955350ca2822e2afa54c3eb0bc0449d22`  
		Last Modified: Tue, 11 Jun 2019 07:00:03 GMT  
		Size: 301.7 KB (301657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f9f40225ee050fc75a3f448c60529d360610b553b773d6fdd53a8c381c8d4c`  
		Last Modified: Tue, 11 Jun 2019 07:00:09 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
