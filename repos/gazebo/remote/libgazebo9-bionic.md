## `gazebo:libgazebo9-bionic`

```console
$ docker pull gazebo@sha256:c3b4b3114cf73d7485435406c49a49a3962094fe32a6130d1720a29f964378c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo9-bionic` - linux; amd64

```console
$ docker pull gazebo@sha256:9e02d50097df5b8e2b88eb60a36b128efce8c2d215721781076aebbcb472f3f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **530.4 MB (530372669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ad05099d0dcae5534183e436a713724a28fcd5fd3a12d73bc67d93ffea5bfa7`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 26 Jul 2018 22:20:44 GMT
ADD file:4bb62bb05874068552efeb626f8b31b4a29f26d6cc8c7d7fc7ab4c1fdece957a in / 
# Thu, 26 Jul 2018 22:20:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:20:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:20:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:20:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:20:48 GMT
CMD ["/bin/bash"]
# Fri, 27 Jul 2018 00:26:01 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 00:26:30 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 15 Aug 2018 00:04:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Wed, 15 Aug 2018 00:04:46 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Wed, 15 Aug 2018 00:10:01 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.3.1-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 Aug 2018 00:10:02 GMT
EXPOSE 11345/tcp
# Wed, 15 Aug 2018 00:10:02 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Wed, 15 Aug 2018 00:10:03 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Wed, 15 Aug 2018 00:10:03 GMT
CMD ["gzserver"]
# Wed, 15 Aug 2018 00:16:07 GMT
RUN apt-get update && apt-get install -q -y     libgazebo9-dev=9.3.1-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c64513b741452f95d8a147b69c30f403f6289542dd7b2b51dd8ba0cb35d0e08b`  
		Last Modified: Thu, 26 Jul 2018 22:23:51 GMT  
		Size: 31.7 MB (31658876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b8b12bad90b51d9f15dd4b63103ea6221b339ac3b3e75807c963e678f28624`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d85cf7a05fec99bb829db84dc5a21cc0aca569253f45d1ea10ca9e8a03fa9a`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b268720157210d21bbe49f6112f815774e6d2a6144b14911749fadfdb034f0`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12192999ff18f01315563c63333d7c1059cd8e64dffe75fffe504b95eeb093c`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34953669e579024bb7efba737dc44c5fafdc1717b295b6705953f97e9d8a7e78`  
		Last Modified: Fri, 27 Jul 2018 01:03:14 GMT  
		Size: 832.9 KB (832931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae99436d200ca0be6685d57b9b9522411dec5d9100f89b423b6a011eaf17f19`  
		Last Modified: Fri, 27 Jul 2018 01:03:17 GMT  
		Size: 14.6 MB (14611413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36fe8162b5c5b7cc82b18894477628b7dcb1af7e44523c818db01f3c5d9cc03b`  
		Last Modified: Wed, 15 Aug 2018 00:17:29 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd9ce91b8424be009a3c66b4be8ce1b90b73738f8cd259041ccb5463d694fa5`  
		Last Modified: Wed, 15 Aug 2018 00:17:29 GMT  
		Size: 5.4 KB (5440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9452d9c5e7a95fa2ca01831f135b8bcbdcb78c4a0d680ac7c7d1cd12c7242c6`  
		Last Modified: Wed, 15 Aug 2018 00:18:46 GMT  
		Size: 249.2 MB (249195581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dcdc243b7a641128d8876f3f2ecadd2e69b93b924c1a4c2c6ecd9efc0ea6b78`  
		Last Modified: Wed, 15 Aug 2018 00:17:29 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:145e9811e8c846b0a99799e1bc1b0e76fc5b0ed6d574eeb898b2c3b40e2da465`  
		Last Modified: Wed, 15 Aug 2018 00:21:19 GMT  
		Size: 234.1 MB (234064476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
