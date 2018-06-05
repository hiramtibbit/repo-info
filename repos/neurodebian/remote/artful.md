## `neurodebian:artful`

```console
$ docker pull neurodebian@sha256:3a369a3f6ee9be2505c2c060535b9775200a9594995fd31a7a705ecefd5906f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:artful` - linux; amd64

```console
$ docker pull neurodebian@sha256:350f1b6d83ad8a96cd0f0f347735376529caec4f94c27499fffc027de6b1de83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.5 MB (42515894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0928a72ff3a04397c296a174aaad7477977be5b0bce0c05c6d24d92cc1274ffb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:20:32 GMT
ADD file:2a5d2b4d38cca65ba2a08a780e10a7aa0c92e07930d9b7a1d9cc4943138c1503 in / 
# Tue, 05 Jun 2018 21:20:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:20:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:20:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:20:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:20:35 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 21:58:55 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:58:58 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Tue, 05 Jun 2018 21:58:59 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian artful main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel artful main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:3dcaa911bc8f46143bb91f9e1a07d99951be217e822b62a1b7c9c788266e60d8`  
		Last Modified: Mon, 28 May 2018 14:49:36 GMT  
		Size: 40.7 MB (40675642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f4fafaa221f18fab2c0a24d7859a145a9171cd281a4d4ecbb1f512baf983b9`  
		Last Modified: Tue, 05 Jun 2018 21:22:10 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a42e5448b1f3e26d97dd4fa237e80a21bc382d79cecd2963c9cea5065fea7b`  
		Last Modified: Tue, 05 Jun 2018 21:22:10 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6280163c6fae97a105feabc0c9b9e3d1d8c3dc720ed9ff4988661401cc015`  
		Last Modified: Tue, 05 Jun 2018 21:22:10 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c9a8527d4865f048ab9da9708f19a00617a1463afef91f8d59325b829628f8`  
		Last Modified: Tue, 05 Jun 2018 21:22:10 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ea34aa13e0d030c4a7d9a840eaa8e3c080fe67cbf54ed4bd492c9beb21872c`  
		Last Modified: Tue, 05 Jun 2018 22:03:27 GMT  
		Size: 1.8 MB (1834390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd16d6a661644d3bd36b1ee091cff5538e21028a835305d9567c1d83ce1b676`  
		Last Modified: Tue, 05 Jun 2018 22:03:26 GMT  
		Size: 3.1 KB (3148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7335f19f2a377fa365bfe106cca7a5defa5243eb346fd7fb8bd6218ea61fc15a`  
		Last Modified: Tue, 05 Jun 2018 22:03:26 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
