## `buildpack-deps:cosmic-scm`

```console
$ docker pull buildpack-deps@sha256:df5b66cd056b292e22e24abc318f011eacf66bc7e9f294e76eedc00927985e78
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
$ docker pull buildpack-deps@sha256:48bf535df2c62ab95ca36ac3b96f8782571148fd3d30d400c50c829ac78e1423
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.7 MB (86711995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:672d2b25dd80ab7002fd15586ef0758592d45d8863b452ef6fa6d511f2e08dba`
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
# Fri, 19 Oct 2018 01:32:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:32:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 19 Oct 2018 01:33:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:b83de0934378fc629db1937f88081529cb8575a913eb0e56018b65b196299131`  
		Last Modified: Fri, 19 Oct 2018 01:45:31 GMT  
		Size: 6.1 MB (6098372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:911850473622abc39fa99455727b6ba1347649cf6b75743edc91bcf19c6d757d`  
		Last Modified: Fri, 19 Oct 2018 01:45:31 GMT  
		Size: 3.0 MB (2973296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d7a2a25d997e4ab2e7c84ef9b206e26ba6884e934988ff6a779bd8e689b4ec`  
		Last Modified: Fri, 19 Oct 2018 01:46:12 GMT  
		Size: 48.4 MB (48372865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:725e34a4f970468b694f5f84851a4faffb497fd8c2f6902aaf5690afa2a3be2d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.6 MB (75627064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e78d68c2fea44cd0a7191c3034c14e461fd54a12f8b9ae14ea0541c28976b70`
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
# Thu, 06 Sep 2018 12:16:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 12:16:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Sep 2018 12:17:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:895bfd5705a721fa2f2ad44f29a14179ac3796c57f57052a1d2e18c5f0357e8c`  
		Last Modified: Thu, 06 Sep 2018 12:19:21 GMT  
		Size: 4.9 MB (4942491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e579c4c2b76ca34bbaefccfafa6cd800cfed64a660a3915a8822ff700fee1a`  
		Last Modified: Thu, 06 Sep 2018 12:19:21 GMT  
		Size: 2.5 MB (2534475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9795d86d635c5074bdcd1282f3fd34c3fb9be314e0a274c8f6dc5516577877f2`  
		Last Modified: Thu, 06 Sep 2018 12:19:55 GMT  
		Size: 43.7 MB (43650457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:7b3c28c641203d9007b8039412a0d31fa6fa3123691f0a4e6f0ab7b61aade6ee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.2 MB (82167614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9cb7f36f8e5bc4d02fb72ee8f292371e617799437d305f046c55d0d7e6d961b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 06 Sep 2018 11:13:30 GMT
ADD file:e26106db800a0ecafb3dced9d54f8d6d610a2ecc3349d0af388822d621a29003 in / 
# Thu, 06 Sep 2018 11:13:32 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 06 Sep 2018 11:13:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 11:13:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 06 Sep 2018 11:13:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 06 Sep 2018 11:13:37 GMT
CMD ["/bin/bash"]
# Thu, 06 Sep 2018 11:34:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 11:35:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Sep 2018 11:36:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8afcf4e2d24a00d2654536c6cd4c53c770ed252a339359579e5bd9b83c1e5a0c`  
		Last Modified: Thu, 06 Sep 2018 11:16:10 GMT  
		Size: 26.6 MB (26626408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b69e476c2268d8a13378e9f3877b80b81fd224fb027a35af9f12a59a6a3b98`  
		Last Modified: Thu, 06 Sep 2018 11:16:00 GMT  
		Size: 867.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9e655e8aebba26cf7d93e0a1d7a911d0852d486f7c37552909152eb62adfdc`  
		Last Modified: Thu, 06 Sep 2018 11:16:00 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6959f058270a4693c87bdb4d8a0816b66eddfec01b291f9df85564392a30c308`  
		Last Modified: Thu, 06 Sep 2018 11:16:01 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7414562e233a271f6f3cfd36fa0dbb0378b5d1e61cdb297bafe65fc802e9257e`  
		Last Modified: Thu, 06 Sep 2018 11:45:30 GMT  
		Size: 5.6 MB (5554519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6de763d81d03a2c3f540c181b27b7371c29e25cdb02209643929e751679f84c`  
		Last Modified: Thu, 06 Sep 2018 11:45:29 GMT  
		Size: 2.9 MB (2942554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8bb3e03a1de3d87a55e254872394d684a2155e89b90b5d5aba0e075c345cf5`  
		Last Modified: Thu, 06 Sep 2018 11:46:42 GMT  
		Size: 47.0 MB (47042251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:96b98c92f0c8c3b9f1b6675574ea62374ac091de831ec09f24eadac079716cab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.0 MB (88978579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:071d8914df23b3b61090c3c021c7ce317918887c782d2d80591d3260fa5b0300`
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
# Fri, 07 Sep 2018 09:29:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 09:29:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 07 Sep 2018 09:30:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:784a92ffd77cb258a9bdcf4163a3620520debb26670c5c08bc386bf3659a3fe6`  
		Last Modified: Fri, 07 Sep 2018 09:40:57 GMT  
		Size: 6.1 MB (6128172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a87776c4fec0f92cc335402786b2e9e12cfb3ac7378c3d869c8651bf1269d60`  
		Last Modified: Fri, 07 Sep 2018 09:40:57 GMT  
		Size: 3.2 MB (3204429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8f6313dd957cd6cc71cc03215578410a9915660664b1f5876bd5b0c2ba3465`  
		Last Modified: Fri, 07 Sep 2018 09:41:21 GMT  
		Size: 50.2 MB (50192668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:933fa7dfa739b6e755bd0aaff679c26ac5ab449126abfb8ad2b5aa3b7c71079a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.1 MB (101053211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7f37727c189b4fc4af76e8fce18f3f0b2b16292fb580cb19e85b689117f6270`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 06 Sep 2018 08:28:08 GMT
ADD file:683cd35f45f566bd77a616ac6c43bf2f8db35936535c3c84e9831125e800b9e6 in / 
# Thu, 06 Sep 2018 08:28:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 06 Sep 2018 08:28:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 08:28:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 06 Sep 2018 08:28:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 06 Sep 2018 08:28:18 GMT
CMD ["/bin/bash"]
# Thu, 06 Sep 2018 09:17:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 09:18:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Sep 2018 09:19:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9fd5f88184877b4587083f632ef6bf799785e3b9c09a0488fda02ed548f07cbb`  
		Last Modified: Thu, 06 Sep 2018 08:29:24 GMT  
		Size: 33.5 MB (33489232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6e33da2b54961ca0cba882b0e2a1f56438d071a1672ba07ee8903d4760f018e`  
		Last Modified: Thu, 06 Sep 2018 08:29:16 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4567f360e38ea1d042142b33a833c846a7277877e945f8c7996933ddfdd75338`  
		Last Modified: Thu, 06 Sep 2018 08:29:16 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a95cac9ea3ffdbee48d4f6f871048d086ae9cb2f88347dc188ac74380188892`  
		Last Modified: Thu, 06 Sep 2018 08:29:16 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16be15113745f1a6f1cea211b507abca8a78f57e522700747949d6175217bac0`  
		Last Modified: Thu, 06 Sep 2018 09:25:50 GMT  
		Size: 6.3 MB (6335717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf4fb35c502163bfc75ffc76a390dbc3056b875f796f374312837abf57eafa1`  
		Last Modified: Thu, 06 Sep 2018 09:25:49 GMT  
		Size: 3.8 MB (3756562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc24bf805d5557cf5286c9531d77ec16b16a4c23c6dd56a5a5e2177af9b9575d`  
		Last Modified: Thu, 06 Sep 2018 09:26:29 GMT  
		Size: 57.5 MB (57469790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:596d9848be8c12089c7ab08373793d4b24a85700cc5b916057bbf7e70dfb8ad2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.1 MB (84099371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3198399f012ce2fba20cf3e356ab1055f1d09a3a7616bc2156381bf69965b63f`
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
# Thu, 06 Sep 2018 12:15:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 12:15:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Sep 2018 12:16:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:cb7045f16da63a4e50f44a24fa9e4e8510b6f2b548aa9fe207c424d6e7c4180f`  
		Last Modified: Thu, 06 Sep 2018 12:18:15 GMT  
		Size: 5.5 MB (5528603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dfdc85a714c1cb23b7e913718957b6b1b816ee2b362c7be97642088c6ac226e`  
		Last Modified: Thu, 06 Sep 2018 12:18:16 GMT  
		Size: 2.9 MB (2914005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04878d542b1e42d13f736fe2afb3578134628f84f24afe7d6057b587f769f3f8`  
		Last Modified: Thu, 06 Sep 2018 12:18:44 GMT  
		Size: 48.1 MB (48112728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
