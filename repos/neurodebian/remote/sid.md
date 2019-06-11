## `neurodebian:sid`

```console
$ docker pull neurodebian@sha256:2e584ce967089908dea63bf6997d89276833d05d4bf15401c3c7b2a50f03eabe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:sid` - linux; amd64

```console
$ docker pull neurodebian@sha256:2b233bb5f1a45471459133844a54fb27e6cf9e89587c050aea9c9110a9149591
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61275081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ea414fc3c3d7d3cc72ddc53780056c0839db2a1c042e5acdd28b24181c7c958`
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
