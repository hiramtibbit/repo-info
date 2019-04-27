## `neurodebian:cosmic`

```console
$ docker pull neurodebian@sha256:130923a38152582315b8af9d40e6c3a2fd4c8437712cabac29be70e74ae80da6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:cosmic` - linux; amd64

```console
$ docker pull neurodebian@sha256:523962b6baa06c9353016a890af7c2bdd1d9076101c92d3c2eeccfccb511f275
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 MB (34350894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a78eeb03d4e4d00f86df34c8a938e2715747db6cf146686369124891b097ec1e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 26 Apr 2019 22:21:29 GMT
ADD file:7d720b4a423f92d6f502a7fd82d91b639332e9435e6adbcf8ffe6df526d0eccd in / 
# Fri, 26 Apr 2019 22:21:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:21:31 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:21:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:21:32 GMT
CMD ["/bin/bash"]
# Fri, 26 Apr 2019 22:50:47 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:50:48 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --batch --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Fri, 26 Apr 2019 22:50:49 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian cosmic main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel cosmic main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 26 Apr 2019 22:50:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a43aaa89cea0569e59fa9d1118576b9efdbc906116b241a5087ca44465737f6e`  
		Last Modified: Mon, 22 Apr 2019 15:15:43 GMT  
		Size: 29.3 MB (29276895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:483b18c8a50f763f3d56555657a8fa0f61dc4caf5c9bd37e2cfd7377ed967b2c`  
		Last Modified: Fri, 26 Apr 2019 22:22:55 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f62699848218e6e363d351d6397105dff563cdcd19556395fa8450d3dc22d6`  
		Last Modified: Fri, 26 Apr 2019 22:22:55 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ac49ee776b4569c1064b839d40c5ade038b50034872238522fb559eddc3473`  
		Last Modified: Fri, 26 Apr 2019 22:22:54 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c157bf8fe6fd77a69b010fedb57ee3f035dd08e0dcd64f9d7daca37f9e143e9`  
		Last Modified: Fri, 26 Apr 2019 22:51:55 GMT  
		Size: 4.8 MB (4832731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4674c80bb9a957312ea5451b364df8b785a81e4fe2ac4b8165aebd37e289b983`  
		Last Modified: Fri, 26 Apr 2019 22:51:54 GMT  
		Size: 3.2 KB (3152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff9083532afc0318085605e33d6ce31a6a3ebcebb7573d638f93a5fa44bb9a88`  
		Last Modified: Fri, 26 Apr 2019 22:51:55 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f8990174dd48350fbba1d0d2de519420f5fe05a48c8d330edaaa9cdf502b065`  
		Last Modified: Fri, 26 Apr 2019 22:51:54 GMT  
		Size: 236.6 KB (236624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
