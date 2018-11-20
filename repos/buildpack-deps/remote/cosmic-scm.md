## `buildpack-deps:cosmic-scm`

```console
$ docker pull buildpack-deps@sha256:dbd30b3bebaf18e264ac3aa529483139cd2ad28c3eddcdda0d3e7e84d17b673e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:cosmic-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:98529ad328d1064574a9a4910f226f25701d436dfcfbce279e2ebc212fb4456f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.7 MB (86717092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37d7df917b773367662f9ef3b73f0b53849bcdda0aaedb8101207939251181d5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:21:31 GMT
ADD file:8b0da299645551a6820a13690f275011deb115b5211ad37935d5e86d62505054 in / 
# Mon, 19 Nov 2018 21:21:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:21:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:21:45 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:21:45 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 21:52:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:53:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 19 Nov 2018 21:54:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5940862bcfcd8fb0162ddb0087994492b39c51bd765a427d13b57f13c7b7a8e0`  
		Last Modified: Mon, 19 Nov 2018 15:04:36 GMT  
		Size: 29.3 MB (29268079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a496d03c4a240fbdc7dffb190703bcd093040d1bf2854b9e7d36e6a2d7f83a26`  
		Last Modified: Mon, 19 Nov 2018 21:25:22 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5e0ccd5d0c52780579e508bbeb75a57ff397a317098b7c3bcf13fc6a67072d`  
		Last Modified: Mon, 19 Nov 2018 21:25:22 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba24b170ddf12284a896354261f6cba112ad54e8e1431ed89537fc55a774dbdc`  
		Last Modified: Mon, 19 Nov 2018 21:25:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e97bba77bd6dbd920af1e0275687d1f705530da959317c3aea6895527b47cd6`  
		Last Modified: Mon, 19 Nov 2018 22:08:23 GMT  
		Size: 6.1 MB (6099427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89940218e727ffbeba9971838db856c86f97d8cdbbe096e69695e31c3448fd50`  
		Last Modified: Mon, 19 Nov 2018 22:08:23 GMT  
		Size: 3.0 MB (2974198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2ce2abef17d088c5ccc5891edff86fd8e270e9c5d843eab4a670e052b979773`  
		Last Modified: Mon, 19 Nov 2018 22:09:05 GMT  
		Size: 48.4 MB (48374147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:a75e55742a7dbf751eebf728ec6a7cb61fff2e1889f8f5df06960a759d5360d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.9 MB (75881169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9e9e3dd754a8cb2186b0b7c443284f48f038d0e1ec1e650ec38cf40e69cf796`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:06:15 GMT
ADD file:7c4e466c789110f5d3cf277bfbda565b35bc8acf1ad61b770060da3b353e97ce in / 
# Tue, 20 Nov 2018 13:06:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:06:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:06:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:06:20 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 14:21:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:21:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 20 Nov 2018 14:22:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c56f6dd2a5625c67474a4f2f55b027383eb2c6a9bb27af3a2dbe4f31b23cdf15`  
		Last Modified: Tue, 20 Nov 2018 13:09:06 GMT  
		Size: 24.7 MB (24701497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aeafc6d072ae9e058ca653081927c0a4d2a744e1d3972eceaaab372ca84df7c`  
		Last Modified: Tue, 20 Nov 2018 13:09:01 GMT  
		Size: 864.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7441156fac0dcae857ed8fca83da94b75e944c4320aaebf244f77d25ff59994`  
		Last Modified: Tue, 20 Nov 2018 13:09:01 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a3e6b0a5e26ac8941c97e322aa83abc29a3fcc5d158b30e2a473d4122e6ef2`  
		Last Modified: Tue, 20 Nov 2018 13:09:01 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cf088201c8e7c671745a6250dad89e459349dbf58c07bd735a3a7f6f1147372`  
		Last Modified: Tue, 20 Nov 2018 14:34:59 GMT  
		Size: 5.1 MB (5146721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b6640d20a7eaa198059395ae29dcabb211dd14c6d45c5c53fe7599afff8a02`  
		Last Modified: Tue, 20 Nov 2018 14:34:56 GMT  
		Size: 2.5 MB (2534779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fbbce444686eb9f608b53561ac6169d7b89c680967e241ccf3f72dc2715478f`  
		Last Modified: Tue, 20 Nov 2018 14:35:26 GMT  
		Size: 43.5 MB (43496907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:e493475e2cf458432617dcfc02bfb3f2a29f989b50fa7a8081e2d40b8b5c1542
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.4 MB (84449265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69ec5234f6175ddea1ce5048d97a4d3745a90b17e90ecd5141c5074ea5f5887f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:45 GMT
ADD file:2e283f2e5622f5ce284aaff9ded1cc0c1777bb539ae7e532d8739bdefdc84231 in / 
# Tue, 20 Nov 2018 09:51:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:52 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:34:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:35:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 20 Nov 2018 10:37:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c5ac5bafc40334fa4424e530baeda860040b805c03832986194b1c2f45665eda`  
		Last Modified: Mon, 19 Nov 2018 15:05:03 GMT  
		Size: 27.5 MB (27535169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9ef68ce232124f29985fc803ae0534c49798640704609b6864df84b8393f49`  
		Last Modified: Tue, 20 Nov 2018 09:55:21 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b37b4fe0a4d1797914b8102c8bb8b51cf6f23b779a50dc1d6fbdc0e43d24474`  
		Last Modified: Tue, 20 Nov 2018 09:55:21 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd89d9aa82df465569f20b6d849b914460e6fd797cfe5091845833c7c9e99a7a`  
		Last Modified: Tue, 20 Nov 2018 09:55:21 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8e6657e8985d00d77d2947803fce8fb84ded08fa7837e4c35efe393e92f4403`  
		Last Modified: Tue, 20 Nov 2018 11:09:15 GMT  
		Size: 5.8 MB (5789570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39340e909cb5026ecc3f94938207ef48a0f2cf35bd221bbdca146525b9e41905`  
		Last Modified: Tue, 20 Nov 2018 11:09:14 GMT  
		Size: 2.9 MB (2943048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b201ace75700e5ac4100d721780904599aad4aaa139e2ea7260c0aa461d7b74f`  
		Last Modified: Tue, 20 Nov 2018 11:09:55 GMT  
		Size: 48.2 MB (48180243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:2b10fb2c6dc685e1e05e6d884baf6b596a86f473ff4904ea0b4c69905ecf8ad6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.9 MB (88940785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7a9b1e0e37f341807befa8e39da7c0d77a0fbf8b59604520762fd46d56dc73d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Nov 2018 12:18:09 GMT
ADD file:fb4f8ab2d5aab05fd02e28c8643a5308d66d962f4b4564f248237af2f8fee182 in / 
# Tue, 20 Nov 2018 12:18:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 12:18:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:18:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 12:18:12 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 12:52:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:52:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 20 Nov 2018 12:53:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e22ab2ead15f7ddf167f98db8140dfb9f074318a48ba8429199912b57363c0a1`  
		Last Modified: Mon, 19 Nov 2018 15:04:43 GMT  
		Size: 29.7 MB (29682871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f02356e0c2fc295a77e39f3d7f718c5aa6408afead84eee7e8c670f109d240`  
		Last Modified: Tue, 20 Nov 2018 12:21:23 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbae203df6d0893a49b1a6ddf1ef353ac1645c058392d948d3059b735284a2be`  
		Last Modified: Tue, 20 Nov 2018 12:21:23 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0bb96b4e7538aaf2cf274d3d83d4afc745a1a4043971f88ee41bf9030ff9cd5`  
		Last Modified: Tue, 20 Nov 2018 12:21:23 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad9372f2d93f4a9da2e04511641b202e1d587f26e9bb40adb104d197f8b02c0`  
		Last Modified: Tue, 20 Nov 2018 13:06:43 GMT  
		Size: 6.4 MB (6374636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48117ed36ac2ae999e4df2fab55338c92e07ca05e96eda95aa9aab8ea3f5a770`  
		Last Modified: Tue, 20 Nov 2018 13:06:42 GMT  
		Size: 3.2 MB (3204429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18ee230adb401b8a6a24eacae0d17121904c898eb99b7f54e7f8a1b170548b9`  
		Last Modified: Tue, 20 Nov 2018 13:07:28 GMT  
		Size: 49.7 MB (49677612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:f621a930d683ec0160e962ad2b10b3544d8fd77d55f149d83c4c63ff5b90c838
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.7 MB (101734252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb5b98434b71f7bdb5cef7a98974b9ce5a794d108970478ee895138ff80949a7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:27:11 GMT
ADD file:5653bd408806fd1977714c3105369f22eb750444e414f8f0d9c97ded61e5cafa in / 
# Tue, 20 Nov 2018 09:27:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:27:15 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:27:18 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:27:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:20:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:20:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 20 Nov 2018 10:22:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:44ad39f4f7a6a976d49fe3348dc061b74b1c236b9a450a732ea512451be4c8ae`  
		Last Modified: Tue, 20 Nov 2018 09:48:41 GMT  
		Size: 34.1 MB (34074209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d98053878298f82781eed4c29d362e963fcdf0ceb1b13a1e5cff1f9622d7504`  
		Last Modified: Tue, 20 Nov 2018 09:48:23 GMT  
		Size: 869.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:950413b3fbdce84c0b8daaad7b5891016354168adfdbe547ce92d2fb6fdb8fc7`  
		Last Modified: Tue, 20 Nov 2018 09:48:23 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc79b373be2b4db5bdbce50c554315fef4f3e60be4d5c4251314932e9875889`  
		Last Modified: Tue, 20 Nov 2018 09:48:23 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195bebf2de6c230e5a9c34588c2b86e11db6ee9e7c14946c6d686fd44292cd80`  
		Last Modified: Tue, 20 Nov 2018 11:08:09 GMT  
		Size: 6.8 MB (6792867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3733e1773e3365316b6907c93e4b1db01b646b037cc197f9a3fea8a90a57ba8`  
		Last Modified: Tue, 20 Nov 2018 11:08:06 GMT  
		Size: 3.8 MB (3756810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286823fa719269d440b3c4b1de3bccfd8045b186c4c30889b3a294d7fa6a9be6`  
		Last Modified: Tue, 20 Nov 2018 11:09:20 GMT  
		Size: 57.1 MB (57109098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:0d7f16e5a062ac852ab0376b02c74f550a41fe8d3927933e68eb51dea77a6963
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.1 MB (84133158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9773a51ebdf6c5bf41bc6a98ed2d7acfa18971767d604ea514a49a4363944f10`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:10:24 GMT
ADD file:c043ca16892c02942adccf1ec94033caf833747e055729e57401b50c738648e1 in / 
# Tue, 20 Nov 2018 13:10:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:10:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:10:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:10:28 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:32:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:32:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 20 Nov 2018 13:33:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:df57303b2a98d18cb5f5f3399b58559d5feaaaa055254b9782abc86e26a775df`  
		Last Modified: Mon, 19 Nov 2018 15:06:33 GMT  
		Size: 27.7 MB (27686987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1550a3b2d521dcebd8645edded3c8724ea98162ce339e2f1ea07b69cb543056b`  
		Last Modified: Tue, 20 Nov 2018 13:12:24 GMT  
		Size: 864.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d32816c65bc70aa930d937c606b52dacb4ff53e319dece98727022f275363147`  
		Last Modified: Tue, 20 Nov 2018 13:12:24 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24fce80ceafb95a74a53b09becd4fd3ab609dd68b17862c531bd0dab6a5585f`  
		Last Modified: Tue, 20 Nov 2018 13:12:24 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8306aee50f07544f99456b8700a5201bc33fb1ae1755975a1a48a4c13e350a94`  
		Last Modified: Tue, 20 Nov 2018 13:38:14 GMT  
		Size: 5.8 MB (5767969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf639c4b4dbfa887ae00410b95bd4847edb19fa38b77345aef27c162557b17e2`  
		Last Modified: Tue, 20 Nov 2018 13:38:14 GMT  
		Size: 2.9 MB (2914387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcb17f4f925c490bbc4a685e6f192bf52c58e7949bc02ed225010d330c1b9f79`  
		Last Modified: Tue, 20 Nov 2018 13:38:36 GMT  
		Size: 47.8 MB (47762579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
