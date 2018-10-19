## `ubuntu:cosmic`

```console
$ docker pull ubuntu@sha256:2e1baf98d0ee23f71f96ead4ce27ab6c28e5628e2426c6adb39e67e637dc937c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:cosmic` - linux; amd64

```console
$ docker pull ubuntu@sha256:6f071beffd160374006ec99b20de6025c7cf3441323bb79e8795447bb341e0ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29267462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e10e8cb09ba03e392d4546a631a8479e193e2f8fb68c2f95405cf39f0a59322`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 19 Oct 2018 00:48:18 GMT
ADD file:4edaa1926df20a1485746993a79b3ac596c83159d51f3d34370759d8bfa3d40a in / 
# Fri, 19 Oct 2018 00:48:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:48:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:48:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:48:20 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:72f45ff89b789ad4a1ee071b3554cea8fb95f6a161009ff9ce9b93fffa8f9f72`  
		Last Modified: Fri, 19 Oct 2018 00:50:19 GMT  
		Size: 29.3 MB (29266221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f034a33b165968ac685c37504f31a6cd0c46bbc13535e3e16b79e1c789f25d8`  
		Last Modified: Fri, 19 Oct 2018 00:50:14 GMT  
		Size: 867.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:386fee7ab4d392ad9dfbe161b465ccc35519326fb8926a084551c2f5d84793bc`  
		Last Modified: Fri, 19 Oct 2018 00:50:14 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f941b4ac6aa8574d1e4261d11e9d4329b4890f658b16def3c761a9648a3360a7`  
		Last Modified: Fri, 19 Oct 2018 00:50:14 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:cosmic` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:9cebf5367a90902aed39390770a86b067f64e5d94231fb7a1052d7e922b17a10
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.5 MB (24499641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4222ba636ff851c21e6a4e864ff7adcdb436fe6f0397ec50d87356a10f649721`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 06 Sep 2018 11:58:29 GMT
ADD file:dc63a110cfc9a362810998efd77dd3f662fdd180a6867cab886a8426103d441c in / 
# Thu, 06 Sep 2018 11:58:34 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 06 Sep 2018 11:58:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 11:58:43 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 06 Sep 2018 11:58:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 06 Sep 2018 11:58:44 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:963b2b96c6390583fe2262d2e51b6f7ccff1cd881195b58459af91358d56eca8`  
		Last Modified: Thu, 06 Sep 2018 11:59:45 GMT  
		Size: 24.5 MB (24497736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae0975fc935a7889b1698f5bd619d57a605fd614078b151ec2e64b3379d89596`  
		Last Modified: Thu, 06 Sep 2018 11:59:39 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba4382f3dda6329644f692acdb8c01d0228ba85edaaf6cf66cdc2bad001026c`  
		Last Modified: Thu, 06 Sep 2018 11:59:40 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c0c329fb06b7843458ea08db1a4c7f44646baad7dc4a524725ae05f80ffd8e`  
		Last Modified: Thu, 06 Sep 2018 11:59:39 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:cosmic` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:f074f7df937ba4ee6bc81ccb218c79faedfb322d708f83f889bc496c811d81b6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.5 MB (27536298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5fa2441784a8dce0c89c736080f338c470f165da12fdf0612f8b6561ed9bf1c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 19 Oct 2018 11:21:22 GMT
ADD file:e6e56aca41e342035fafeb7c12e7bffa77f668100887313c97662d26d2b6a644 in / 
# Fri, 19 Oct 2018 11:21:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 11:21:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 11:21:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 11:21:29 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:b1c856af33667cc4ba965a2e01142ad8e54149d472f81b2bb1f49df365c4fd34`  
		Last Modified: Fri, 19 Oct 2018 11:24:39 GMT  
		Size: 27.5 MB (27535057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baab517ba091c055a75573c2502c425fa8d206509361f07801e7393406dfaf91`  
		Last Modified: Fri, 19 Oct 2018 11:24:32 GMT  
		Size: 866.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b07158007647d5ac2b921fcca5d9946330b5cb344506e57dfed867c320a41788`  
		Last Modified: Fri, 19 Oct 2018 11:24:29 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9592d14c5dd71c1da58e3fc62546237f0f85de32fa09ec77ff775ff7460ec1fa`  
		Last Modified: Fri, 19 Oct 2018 11:24:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:cosmic` - linux; 386

```console
$ docker pull ubuntu@sha256:25115b16e55156a25e0c11ec45431f34dc3b12b86fea40f5a5f5d4e5ab21b03e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.5 MB (29453310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94a7a525c7458d2e3e26751c3ca0d1de5afb5620696b502deda9f040d9cdaf1a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 07 Sep 2018 06:06:51 GMT
ADD file:cb2512b73a2a217acf74ef49c988614a7295f208c8599075eba741aaeb0e6afa in / 
# Fri, 07 Sep 2018 06:06:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 07 Sep 2018 06:06:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 06:06:53 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 07 Sep 2018 06:06:54 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 07 Sep 2018 06:06:54 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:40d5fedd81a59ebc94668926c48b4ca3c9dc26603059044d06392209940221a7`  
		Last Modified: Fri, 07 Sep 2018 06:08:11 GMT  
		Size: 29.5 MB (29451431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7130ce8c4b0dabf4bcf1c1214100b06518932c169017c9eedfb9d83bb6f0a75f`  
		Last Modified: Fri, 07 Sep 2018 06:07:58 GMT  
		Size: 866.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cbd08c155695dc8db451a63338def1fd3c0fbbdce789395e892fd3b416a437`  
		Last Modified: Fri, 07 Sep 2018 06:07:59 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ae82f75c405afee9a0309cb4c47ce9945e5309587ae3b59eecd423248cb4f86`  
		Last Modified: Fri, 07 Sep 2018 06:07:58 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:cosmic` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:b98f93616d8e45427c706b1a49b60d69f7660a62aca683dc15749681d555bac4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34073381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:123a76151bcd8c078ba83187809225b8685a887bc0fa2d3a3aedf329b1655e00`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 19 Oct 2018 09:16:48 GMT
ADD file:9f9aa14c196ad60f93a5d44d5d99ad42647a580e461c07f8fd88939332e5d4e9 in / 
# Fri, 19 Oct 2018 09:16:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 09:16:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 09:17:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 09:17:02 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ff96bdc610825532ca663a34e3b2181bdf6f1ae7939fac9b812a8e06d246a204`  
		Last Modified: Fri, 19 Oct 2018 09:19:39 GMT  
		Size: 34.1 MB (34072113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48fc9001eabb97e48d88402eed6d272344741786d76327350505ed74ed62f306`  
		Last Modified: Fri, 19 Oct 2018 09:19:31 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812a4ce46669a9b735624d479f72fb1658f0212207d049f13694f86e455094b1`  
		Last Modified: Fri, 19 Oct 2018 09:19:31 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae2735981eb8ce5e6b33d9478a543db7e11ecf610bef6e1dc58178910711f24`  
		Last Modified: Fri, 19 Oct 2018 09:19:31 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:cosmic` - linux; s390x

```console
$ docker pull ubuntu@sha256:49b2695e93d082a39744caf5810d19fef072f518b412fe1dfb23b90c65a2366a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.5 MB (27544035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12b58107b11e6e619d3c9be6f7237c318f6ccbd44431bf308da2b5872a7ee745`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 06 Sep 2018 11:57:56 GMT
ADD file:7cadfa32a0925bde0826eb123c8fb82f1470c371a9a928c41311472dc33417e0 in / 
# Thu, 06 Sep 2018 11:57:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 06 Sep 2018 11:57:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 11:58:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 06 Sep 2018 11:58:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 06 Sep 2018 11:58:06 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ae71e5453eeb208ef5af5e425b8272afe3cca34b68db42aa236419a2154c729b`  
		Last Modified: Thu, 06 Sep 2018 11:58:56 GMT  
		Size: 27.5 MB (27542153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dccf3d1f63ef46e472145c06f2b830bdee77fbca376175bea5359e7b53859fe8`  
		Last Modified: Thu, 06 Sep 2018 11:58:50 GMT  
		Size: 864.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5354005189c1ff9e8f69b05fd49dd15133de8b930cb8e85f1d9cde058e7947`  
		Last Modified: Thu, 06 Sep 2018 11:58:51 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f97d5d2d8fb957759f2370e82cfa74c7d9e9fe370063bd21ad3a267994f50d8`  
		Last Modified: Thu, 06 Sep 2018 11:58:51 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
