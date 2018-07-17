## `neurodebian:jessie-non-free`

```console
$ docker pull neurodebian@sha256:17251d4aafd94aa5754227b7b16578c19fe01a57cce702552289a2dc05eddbb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:jessie-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:b903c5c9f48179854417f3fbe858a666df2f6e9d533b0f86ec99457e04a452b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.3 MB (54256129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f9fbfb8049fb98f7fa2787bad96d4275ea6ea2eb17f581f4b306af70741f41f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 04:33:42 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:33:52 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Tue, 17 Jul 2018 04:33:53 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian jessie main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel jessie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 17 Jul 2018 04:34:08 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e36c70717d859fee00f6d3fb7ae2c54f42938a74cbf4ab664b253fbe30fb74d3`  
		Last Modified: Tue, 17 Jul 2018 04:43:07 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0263befb3d2aed6f327adc2b56071a9510883c2be3642c7c30d89917b8fae702`  
		Last Modified: Tue, 17 Jul 2018 04:43:07 GMT  
		Size: 3.2 KB (3157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa02a2ef7fe361f22c4c02e3b3d0e34ae908c08bac24e6e9cd9304dbbd855d74`  
		Last Modified: Tue, 17 Jul 2018 04:43:07 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ea0fc58f3ae44a06de56e85760a079d43378e00c85c3d16facf140d313cce2`  
		Last Modified: Tue, 17 Jul 2018 04:44:03 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
