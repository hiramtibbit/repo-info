## `neurodebian:trusty-non-free`

```console
$ docker pull neurodebian@sha256:4305fa0b5ef2ab460bf3f6a9795b16c3f473055167f936e48190afc4a6e2b438
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:trusty-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:8501fd4ebec21dede49746c4d4833de5963e4e17f3862de06a4bbfba1c7981db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.9 MB (67868075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d65851d2ad11b4c523c4f037ed224c743a7be913edfa2cec6b2378137ca4aad0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 19 Oct 2018 00:48:46 GMT
ADD file:ecefeeae93e44cb420508628b869bab5361955c66d604e32ab5cb6dca0403c1c in / 
# Fri, 19 Oct 2018 00:48:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:48:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:48:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:48:48 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 02:31:23 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 02:31:24 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Fri, 19 Oct 2018 02:31:25 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian trusty main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel trusty main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Wed, 14 Nov 2018 02:20:28 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Nov 2018 02:20:45 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' /etc/apt/sources.list || sed -i -e 's,universe *$,universe multiverse,g' /etc/apt/sources.list
```

-	Layers:
	-	`sha256:027274c8e1113b52e886c8f515b0abe6c67b81f17881acf3e9b7f352f901110a`  
		Last Modified: Fri, 19 Oct 2018 00:51:22 GMT  
		Size: 67.1 MB (67129254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3f9339a13595d28726bb9d01196bcae9e2409d540d276ed7ba60a6a4a226654`  
		Last Modified: Fri, 19 Oct 2018 00:51:09 GMT  
		Size: 72.7 KB (72651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872f75707cf448723cfbf8bf808539676b8a612e45f8ac6f5f64f5ed30973260`  
		Last Modified: Fri, 19 Oct 2018 00:51:09 GMT  
		Size: 366.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd5eed9f50d581a74ed418f044c631fd0ed5afa21c12456ff33456f30321d00c`  
		Last Modified: Fri, 19 Oct 2018 00:51:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:714f8f44362a3920195f7969cdabc392024aa5effa8d116f4e636e0404d63408`  
		Last Modified: Fri, 19 Oct 2018 02:33:58 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db158f1858aa52940a48db755a34d9ffb825bd99f15c672e433c23a536f26b61`  
		Last Modified: Fri, 19 Oct 2018 02:33:59 GMT  
		Size: 3.1 KB (3149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc70ac9eeebbde8dd53de91f274ab4974a0c4f64be0e03079101729f4fdde18`  
		Last Modified: Fri, 19 Oct 2018 02:33:59 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f3bf3e9906face87270cc56ba4bd0a48d515d6c02ea9e4a0dfa8b610b064bde`  
		Last Modified: Wed, 14 Nov 2018 02:27:38 GMT  
		Size: 661.7 KB (661680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc6a80b535ee4f97053e7959bd90c52cb95fc76f5b5f1a68779b1dce43faee2`  
		Last Modified: Wed, 14 Nov 2018 02:28:05 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
