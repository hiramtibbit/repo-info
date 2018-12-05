## `buildpack-deps:disco-curl`

```console
$ docker pull buildpack-deps@sha256:6dffa9e3195a94619ab8f828465597775ccbdc0619219f4e85a9a8ec3872c4a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `buildpack-deps:disco-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:5f096ca1dfb11aecb23096a87e262a7787b6a7c53713451290e00a31c03d952e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.6 MB (38620181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebfe423e9e08fe3135fcaa9776ca6623479a75b14a5e655e58abe33af7a86fe9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:22:35 GMT
ADD file:90689176a9c50e81ddd2854c4cc148c8c0a89da2f45e4ea7a56c611f22c32aa2 in / 
# Mon, 19 Nov 2018 21:22:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:22:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:22:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:22:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Dec 2018 23:20:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Dec 2018 23:20:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:a051180de8da70b092ee2f14774e264340ba4d2068b05ce125779b622e681702`  
		Last Modified: Mon, 19 Nov 2018 21:26:30 GMT  
		Size: 29.5 MB (29501601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11d9cbf1b688af3911b28b0efd80e0fc9c1699812d850c631d3d513d225b6e64`  
		Last Modified: Mon, 19 Nov 2018 21:26:25 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ffb718a3ec78e3a79ba9a71db6be89db856bc90189a784556966d1b3ba61684`  
		Last Modified: Mon, 19 Nov 2018 21:26:25 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9251c5721cc8150e7bd7d40a5de8aa6053a04c75a4ed200954188b9260103a75`  
		Last Modified: Mon, 19 Nov 2018 21:26:25 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7372f7150b5d270e07002258671ef9c4477f7b1a8d28cb65310c2f90ac7bba0b`  
		Last Modified: Tue, 04 Dec 2018 23:26:16 GMT  
		Size: 6.1 MB (6146002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5434688efbf340fbc0b9eedd940d77f03e8c8f89e0ab1c1a4e7e2ee101ae34`  
		Last Modified: Tue, 04 Dec 2018 23:26:15 GMT  
		Size: 3.0 MB (2971361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
