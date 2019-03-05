## `neurodebian:nd-non-free`

```console
$ docker pull neurodebian@sha256:98f7a5a7534a4acbfe5ee0b5c6f9e530848b719954cbc1f4213d5df74e602115
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:nd-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:6dae9d238b6290a9d320fcca37ffbbfa13c4448ee9537a3c3fb8e482c53980dc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61692762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64da22cf2d4baac4a53bdc52233ab05b8ff0af966c173d73ba0e14d893494520`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:21:27 GMT
ADD file:dca5a20f97013b9a80952784924ca7f3820f99958ad080344fe8445a67c2ca92 in / 
# Mon, 04 Mar 2019 23:21:27 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:39:47 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:39:48 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Tue, 05 Mar 2019 03:39:48 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian sid main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 05 Mar 2019 03:39:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:39:57 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:9785490dff12d73b09ebaeb9dfa12d32bc61a107039000030ea3d9da0db5f77a`  
		Last Modified: Mon, 04 Mar 2019 23:25:37 GMT  
		Size: 50.2 MB (50217046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae23d16b095a0657a77465a7049005ee79d988279a29f9909fae968385465f95`  
		Last Modified: Tue, 05 Mar 2019 03:40:40 GMT  
		Size: 11.2 MB (11175346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d29b2b5eb89a997ee685c5670f53cf77e04f8dab739774f512693f85365038`  
		Last Modified: Tue, 05 Mar 2019 03:40:37 GMT  
		Size: 3.1 KB (3147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc5225e9d25afe1cbb715768b493b4b90567ae70615d2314cedfee0740fd985`  
		Last Modified: Tue, 05 Mar 2019 03:40:37 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1c633586cc3adc93a013bbb1382f30d2ade240e1e3b97daa2469d1f75f6ed7`  
		Last Modified: Tue, 05 Mar 2019 03:40:38 GMT  
		Size: 296.7 KB (296703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3085f4ecbe77a5d6fa4c818c4ad812ca9b0ef656d61959b3ee41a8c8de95ae`  
		Last Modified: Tue, 05 Mar 2019 03:40:46 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
