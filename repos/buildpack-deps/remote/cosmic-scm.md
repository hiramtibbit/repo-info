## `buildpack-deps:cosmic-scm`

```console
$ docker pull buildpack-deps@sha256:196ecba82ce15c1e6114179f43233b16636d71f0cc450da99a0ba21228a62410
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
$ docker pull buildpack-deps@sha256:15aaeb21de6c9e17692fdf190f5d434cce83361495e7f2f8695cc3f0472236eb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.7 MB (86721460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:110f1cca785ceb2550740902344d1f6a3cebaa08deb1a0185a74dac32cb197dd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:37:59 GMT
ADD file:8b0ccc99800a5f78a832ee06e3c0b41a440e09a7440cb4083c586db4ed5ef8c6 in / 
# Wed, 06 Feb 2019 03:38:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 03:38:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 03:38:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 03:38:01 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 05:32:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:33:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 05:33:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a138b85795ddb9bf319d1eb360af4ae2a107c3624533f2469756781c4b96b2eb`  
		Last Modified: Mon, 04 Feb 2019 15:11:05 GMT  
		Size: 29.3 MB (29269866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03f26254a3512bb6ad17698533a45f5cdeaced032b17205e0955763a8184172`  
		Last Modified: Wed, 06 Feb 2019 03:38:46 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c574f2a0d5fc60acda8ff09fd5e3eb34e1354802f0806f8ae17d2bd2c991772b`  
		Last Modified: Wed, 06 Feb 2019 03:38:46 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d214b3691158cb216fecf74099639861395c962a63a458fec1ad422d25afcf7c`  
		Last Modified: Wed, 06 Feb 2019 03:38:46 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d25180066f9da7861f9df3c264f079e692528fba4bc372b4465bce5b6477384f`  
		Last Modified: Wed, 06 Feb 2019 05:58:12 GMT  
		Size: 6.1 MB (6099988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc323916b9899972866439fbce70da0666eb846c6cb3b12afa7b3e2011fdfb1`  
		Last Modified: Wed, 06 Feb 2019 05:58:12 GMT  
		Size: 3.0 MB (2974289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:025f9b2a2c5182f5a72e46c54f70432892f61d7a557d3b7878bdc7cca8054b33`  
		Last Modified: Wed, 06 Feb 2019 05:58:28 GMT  
		Size: 48.4 MB (48376078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:1cfaa0a7ddfaf9db940c890ea673714f3e9e83229ab942ef9b98e72bef97bf9e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.9 MB (75886569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0894657b8142cad53a8ceb8d2b496d1d22dc94f7db034f6b11b9f460e5be708f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 23 Jan 2019 12:58:48 GMT
ADD file:3b048f60db2f4df8710371c70e9ca8dd2cab6ee789fa1eda47fed3c30b74b266 in / 
# Wed, 23 Jan 2019 12:58:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 12:58:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:58:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 12:58:54 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:26:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:26:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:27:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:24dfcde4629ca0e77e64aa17b22b16e720dae9db062f063d4b374411fac97a15`  
		Last Modified: Wed, 23 Jan 2019 13:01:38 GMT  
		Size: 24.7 MB (24697971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17174ccd0cfc954bacc2051b67e4eaa0047e627e9dbd7f4d40e19b3871a11a2e`  
		Last Modified: Wed, 23 Jan 2019 13:01:31 GMT  
		Size: 867.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0018bef5931ca162197e806e3692a02fbb5e50b8cce7377b57a2e8f12010776f`  
		Last Modified: Wed, 23 Jan 2019 13:01:31 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e31b27059526153df819f9f94d62da558cad7b8636c1f59a5c5f573efead3620`  
		Last Modified: Wed, 23 Jan 2019 13:01:31 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537d045cc0e4c6385f3343de90228cbff4a11832e18b68eac1d044c6494886e2`  
		Last Modified: Wed, 23 Jan 2019 14:00:37 GMT  
		Size: 5.1 MB (5147982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0888ec247fda3f32028ce90d543124f3d3d38ec61f9e1891114a48d76125a3e7`  
		Last Modified: Wed, 23 Jan 2019 14:00:36 GMT  
		Size: 2.5 MB (2535559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:384fe2d74cf0dc41d826cb5d20189aaaa0cd057908b70fdbddd30e8a4b725779`  
		Last Modified: Wed, 23 Jan 2019 14:00:58 GMT  
		Size: 43.5 MB (43503790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:71e8436c02669c6a85a9162ce9513af060f5e0fc1bb0489352d88236b1d76dd3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.6 MB (84602561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2652637ffaaf1cd6ea4f304eb6bfd5a697126973aa4ada2921635f6e2818374c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:06:03 GMT
ADD file:37c662a6fb15af79ea0791b68d1d68098c1ae643457d31990f2e2874dc4a7a7e in / 
# Wed, 23 Jan 2019 10:06:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:06:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:06:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:06:34 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 10:00:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:01:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 10:02:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:97f52970d34c751bf03904e90eed3a6ce318cf7aaeedd1d0f23a85bb9f3b39f8`  
		Last Modified: Wed, 23 Jan 2019 10:10:08 GMT  
		Size: 27.5 MB (27535388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38132e010580afc152676206efb3c9cbe49a9e4188deb4fa1cdb8ec37aa7e02b`  
		Last Modified: Wed, 23 Jan 2019 10:09:58 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c337d9ca532c2f5259193fc0beb718465e447d4e03b5a049c6ca33cff107c6aa`  
		Last Modified: Wed, 23 Jan 2019 10:09:58 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20606d0c66aa158e7828d38999cdc15fca990bcee90adaa04b0d25f1f1dfdfe7`  
		Last Modified: Wed, 23 Jan 2019 10:09:58 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6c5723ff7c70c94ad23f337cf93709ec55acd159e87ffa26f4522cd70e89d9`  
		Last Modified: Wed, 06 Feb 2019 11:08:10 GMT  
		Size: 5.8 MB (5810604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2610c524df31b8cf62a7202e2e4780228d7c739e26d9576bc1c2dd67e7493ce4`  
		Last Modified: Wed, 06 Feb 2019 11:08:07 GMT  
		Size: 2.9 MB (2943459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599d7ab042eb56e7076507559f366a301382917d4329adada01a7432701e2df2`  
		Last Modified: Wed, 06 Feb 2019 11:09:20 GMT  
		Size: 48.3 MB (48311869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:d7086f4ad125a7c7fed3a4e902a58fb211535b0834fa32740f19e5ed1162a69c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.0 MB (88952883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:607fc6c363cef613fc4c7be495848d82cb4227fdc3988748f2246c02a4ae3e61`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 07 Feb 2019 00:49:21 GMT
ADD file:54f073883f3bd46b8bb3dbba9dfa1b8e22126c6d89839f20e97157762aae56bd in / 
# Thu, 07 Feb 2019 00:49:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 07 Feb 2019 00:49:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 00:49:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 07 Feb 2019 00:49:24 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 01:25:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:25:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 01:26:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:648f8842b72477cddce06c46a560a8ad41ce8e9ea4774271d53e2a22deeba512`  
		Last Modified: Mon, 04 Feb 2019 15:11:58 GMT  
		Size: 29.7 MB (29691338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9c44921a54f08f898374cb0f8a2fd2729b69265b3fb979501419b9fdab3113`  
		Last Modified: Thu, 07 Feb 2019 00:50:09 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0f8e4399a17c8b240094afc510a40c8909f6b3e239fc38acb97d16acf7c4e05`  
		Last Modified: Thu, 07 Feb 2019 00:50:09 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c05c83b9fe91c2f1d0bfb9cb63602167105f417effad24fc08c72c8c537bb87`  
		Last Modified: Thu, 07 Feb 2019 00:50:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b60bf9195841f6ff86d0b07d7cf88e8fe0b4754b0409fb8eca4fc9808cea351b`  
		Last Modified: Thu, 07 Feb 2019 01:58:21 GMT  
		Size: 6.4 MB (6375873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f83ae2c135eab1259fe24685e1efb8a5fa6487300c432f5e6ef23ab5ab0b522`  
		Last Modified: Thu, 07 Feb 2019 01:58:15 GMT  
		Size: 3.2 MB (3205904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da7001a8394021f535a4093898f3d48d5de1bb400a8cc605142ce2255629df9`  
		Last Modified: Thu, 07 Feb 2019 01:58:42 GMT  
		Size: 49.7 MB (49678523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:8c2cca11d10e72e2552ce807b342de1a87478fa3b716df9a702199a94bba4879
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.9 MB (101895332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64517e285e1d3746c765f9a8700eef7c6168fb91e01820e399bec3777e70f49c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 06 Feb 2019 15:41:21 GMT
ADD file:4930a49ca85518eeb7acf2de2db2e9ba5bcd03df86ef4c6e1496225c491761f4 in / 
# Wed, 06 Feb 2019 15:41:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 15:41:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 15:41:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 15:41:46 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 18:38:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 18:38:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 18:40:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:356c0b14ba236d37bf8e81b97d66b8a4b36bc0e65107344ac2aa11268cb82b45`  
		Last Modified: Mon, 04 Feb 2019 15:13:13 GMT  
		Size: 34.1 MB (34087898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aab09e41cedcc52eeb753da5549223680df4b9ab3fb9f95219fcb364c88a960`  
		Last Modified: Wed, 06 Feb 2019 15:43:38 GMT  
		Size: 869.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad5555985398f7766fe920a78a6a65ed7f1912ef49afbb12f45e250ffde1560`  
		Last Modified: Wed, 06 Feb 2019 15:43:38 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb7c953d95c634a1949b8405ecc41762445591caa3f617bcc7173c223c8750ec`  
		Last Modified: Wed, 06 Feb 2019 15:43:38 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eab19ab785562fede941aae0aa2c5bbf3cf7d3876b33c6ee81cdaa032879696`  
		Last Modified: Wed, 06 Feb 2019 19:22:32 GMT  
		Size: 6.8 MB (6821635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3c54fc5036620c5ac27b8ae5a0e4d584df6e12799bbfdde91a84585a518caa`  
		Last Modified: Wed, 06 Feb 2019 19:22:31 GMT  
		Size: 3.8 MB (3758254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31dc415795ba6a1442c59204119c913069d69b96af213296b78c7ed4f5683aa1`  
		Last Modified: Wed, 06 Feb 2019 19:23:02 GMT  
		Size: 57.2 MB (57226275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:6789c40b11cc8518e93e2d02c7f9acde3300eebeb14e86891741fb1107fc22b5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.1 MB (84129323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3ec0ff87baad0eb1e9ea02a7983d0ce4caae8df657b63293547544347fb4433`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 06 Feb 2019 15:15:08 GMT
ADD file:4d8fc3b0ec558c517cf3c70049442633f5a55e10345f1e27f9e53f412c54274b in / 
# Wed, 06 Feb 2019 15:15:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 15:15:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 15:15:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 15:15:11 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 15:23:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 15:23:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 15:24:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:fe869230382541de25cd7b7703a7c4c33487cb5d113899a7c50ce31b2ad361c8`  
		Last Modified: Wed, 06 Feb 2019 15:15:54 GMT  
		Size: 27.7 MB (27688701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d2678f5803ff6ac1a3d9ea67929097d02a27bfaab0f89f1c131ca3de23864d`  
		Last Modified: Wed, 06 Feb 2019 15:15:50 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b8c8a20cd3c6ad7637e3b81aed1c7be82e62b38a2c7911e591be7f41e437b4`  
		Last Modified: Wed, 06 Feb 2019 15:15:50 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d97af6549c2a29279f638da8d0a63cea5e9f55705d39fed651ea449d1dfb41c7`  
		Last Modified: Wed, 06 Feb 2019 15:15:49 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41da1b26c571316fa615410964d0e2b7d0f091923edc4d5dcb3d0e0f5be716c`  
		Last Modified: Wed, 06 Feb 2019 15:31:45 GMT  
		Size: 5.8 MB (5768760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a583078aa420b7f8b3b01bdf56ad4c5b1ae016e222c7851a15aa635e3b74b9b`  
		Last Modified: Wed, 06 Feb 2019 15:31:44 GMT  
		Size: 2.9 MB (2915415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa3dfac71e45e27ed37d4b6524d21c76efdd7ac4dfd6df53fe1828419b889bf`  
		Last Modified: Wed, 06 Feb 2019 15:32:00 GMT  
		Size: 47.8 MB (47755212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
