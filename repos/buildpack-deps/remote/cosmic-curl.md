## `buildpack-deps:cosmic-curl`

```console
$ docker pull buildpack-deps@sha256:bc82a0e11f11fed33e160502412c54d53de026ef16d624115eff7771d8ad45d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:cosmic-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:6d4c48052580934d183a3a8cd654ac6bd0be120198ef286691ff7f7ea5228ce6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 MB (37813135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbea5fd292711730bbcdc4a5772b68119b98d7b0232dbdecb0d2a8c6d057da21`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:52:44 GMT
ADD file:11d95b51d3050c68fff27b804b89c2f7bc8455bf9ec49d25b69548782b3fdda4 in / 
# Tue, 17 Jul 2018 00:52:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:52:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:52:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:52:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:52:48 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 02:59:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:00:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:cea5b1245e6f208d71834365d62d1fa118e3d9d4a939fa80f35ccdfcb5b0483d`  
		Last Modified: Tue, 17 Jul 2018 00:57:01 GMT  
		Size: 29.0 MB (29013626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe35b2b314e5c1d8e1e57f50bcf3fe3efea423df04bdc33f851e2cdd01119f66`  
		Last Modified: Tue, 17 Jul 2018 00:56:52 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be1718d2daa9dc5b87456ff37add13071c96b0580951fa9ce45b6f3043eda9d8`  
		Last Modified: Tue, 17 Jul 2018 00:56:52 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2dcfe38c4a3aa79bebc1d921f94e05cad15b5c9e0055731e26d7b746676f495`  
		Last Modified: Tue, 17 Jul 2018 00:56:52 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a17d47ada50521d241c8ee0ec5e330e3e45c440361f0b9f769dc4a187e31c93`  
		Last Modified: Tue, 17 Jul 2018 03:44:09 GMT  
		Size: 5.8 MB (5832465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05612b1ec97fe45f9e7b67c64e4fc1d53d14ba14fa74d9cec1409db8a4a252eb`  
		Last Modified: Tue, 17 Jul 2018 03:44:07 GMT  
		Size: 3.0 MB (2965175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:cb970299ba987803b83b2783645d03bcbd43933d626611ba2856b7b3ea543135
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.0 MB (32034385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e062d40438020a48134fadc148f0f679d2e32b5af7775201920d59c317391cae`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 13:22:23 GMT
ADD file:b28a5b370d043cef1340b7852772c720a4d1f4da3bacc2861b78b845f164d83c in / 
# Tue, 17 Jul 2018 13:22:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 13:22:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:22:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 13:22:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 13:22:36 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 13:37:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:37:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:7df6206d94cc3596241393040e60c0fc9e76d8e5c974e2f59d34423cfc61bcab`  
		Last Modified: Tue, 17 Jul 2018 13:25:33 GMT  
		Size: 24.6 MB (24573626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a524a00a87db38d0bf9557ee75ceb311c47bd5fc246963e35926eac26a6f77b4`  
		Last Modified: Tue, 17 Jul 2018 13:25:26 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adc34490d60134886eaf8e07e3ca876cfa38422350c3b6476268b2e133bf6c1a`  
		Last Modified: Tue, 17 Jul 2018 13:25:26 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd5516846bb343c6e5930844476a5c5bcb86f8545ae968f40449d25909a9e8a`  
		Last Modified: Tue, 17 Jul 2018 13:25:26 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a76c793bea4208c0db600d86563173db7dff6359e58e4506d7c0935d1abef7a`  
		Last Modified: Tue, 17 Jul 2018 14:04:12 GMT  
		Size: 4.9 MB (4929212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc3953c3e4bc35369ed9e91abf753857021c327e714cd799b6206376af56fb8`  
		Last Modified: Tue, 17 Jul 2018 14:04:11 GMT  
		Size: 2.5 MB (2529644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:443071fc38a89afb62653351fbf45c9d78521f0b717d9628dfe61d97420db1ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36537850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df97c733041dd01f406e37d139ffed4089286f05cf26185349c3158fbf6e42bf`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:36:48 GMT
ADD file:5c5ae9859989b2106dc10823f3419d642755619e7eaa244c84c89a9678779971 in / 
# Wed, 06 Jun 2018 09:36:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:36:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:36:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:36:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:36:58 GMT
CMD ["/bin/bash"]
# Wed, 11 Jul 2018 08:40:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 08:41:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:1f48f4e125f7a97a6953ad4b266081f5e4c5acaf8d7fdc63a98e9a5f32384345`  
		Last Modified: Wed, 06 Jun 2018 09:41:15 GMT  
		Size: 28.3 MB (28300974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d97ca4873890ac0a34725a3b48a2137e0fbc87756dae93365230db43342894e7`  
		Last Modified: Wed, 06 Jun 2018 09:41:05 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61f8636160dd4576a5d2dd4b6806266cb97ff23597890ff00aba9f68aea406ee`  
		Last Modified: Wed, 06 Jun 2018 09:41:05 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e26b0e6b3fe2008653142140e945e0225ea879acf1dde8459a84885d8c4ee`  
		Last Modified: Wed, 06 Jun 2018 09:41:05 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8ce0a40644cd0b897fc84184da0aa559416260983c291245750e8149bc08b67`  
		Last Modified: Wed, 06 Jun 2018 09:41:05 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d28334ac0fa36aed07617176b1c919e8be7ebe6994de779220c6f9ed3cecad15`  
		Last Modified: Wed, 11 Jul 2018 08:54:11 GMT  
		Size: 5.3 MB (5298529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44da7f4bbf602f690b0c50b365d86ffc34c44c9ba6e4eb79cf63df0c72d8e2f`  
		Last Modified: Wed, 11 Jul 2018 08:54:10 GMT  
		Size: 2.9 MB (2936084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:de6739a72056b0fd276d6a36f360ada62d3c257b84137156e75d7d6e22c535f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38737563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23eb055efda43720086525f689e6b66939be897f5cc83321f18333f893b35b98`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:33:18 GMT
ADD file:b5b8deab49b5438ca795a9e5bf8311c39e7744b4b0ffaea573c1a3e3f2d0674c in / 
# Tue, 17 Jul 2018 12:33:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 12:33:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:33:23 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 12:33:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 12:33:25 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 14:19:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:19:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:17a470f3a24fb9ca6270d6619c4a2949fd0c0bc51b17617f681066a5da0967cc`  
		Last Modified: Tue, 17 Jul 2018 12:37:16 GMT  
		Size: 29.4 MB (29427766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84cadc8f49ecd47af4cf692807639b66bb0e93758b552d098148c2404c7e5128`  
		Last Modified: Tue, 17 Jul 2018 12:37:07 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c710aebc210e7f221ddebf71a09be9db625633e74ec743dab5fd93c540294fbc`  
		Last Modified: Tue, 17 Jul 2018 12:37:08 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe2f96ec715c305f6598854de16b3a3846f01b99592f21808b9a6a3d036a896`  
		Last Modified: Tue, 17 Jul 2018 12:37:08 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e93469b40dda9a971a4c9e44dab4df0d3dc9b4af7ca85a542635680697473ad`  
		Last Modified: Tue, 17 Jul 2018 15:05:53 GMT  
		Size: 6.1 MB (6109578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d60ad083e6855d34ff5b593244ba751fb6cd556740cafe3f5617615c540b1300`  
		Last Modified: Tue, 17 Jul 2018 15:05:52 GMT  
		Size: 3.2 MB (3198339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:87925649255ed48ddd51a1c45679376169af149ebbc925cfa854cabb0d633134
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.4 MB (42438458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a9b0f65e27791de3c1ac50aff4879cdded7d7b628a492f659f9a544b71edc31`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 11:22:20 GMT
ADD file:37c0c48b0f302939d0acfbd9bd05f1b8f5f3754350ddbac01b5f7f6228cd524f in / 
# Tue, 17 Jul 2018 11:22:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 11:22:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:22:32 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 11:22:33 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 11:22:36 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 12:44:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:45:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:15865920a7de90e2ab21bc983b0fbce3bcd5022bc6087adbc3b0418ee8235273`  
		Last Modified: Tue, 17 Jul 2018 11:27:30 GMT  
		Size: 32.7 MB (32714865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:145d279ec60b7680440564372a81250262e8e4773819a9ad63f321023f256b09`  
		Last Modified: Tue, 17 Jul 2018 11:27:20 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c8ea0a1bc371343ba0c2a34e55a3d68ba9a508b9aaef16ff387b98aba56b899`  
		Last Modified: Tue, 17 Jul 2018 11:27:20 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6091389178d590f17408cc7be695b01e12ac3a51f31c8dc836687563d2e905e`  
		Last Modified: Tue, 17 Jul 2018 11:27:20 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eaa5afa0930acbd10c696f039d189abb5fe0d71e6b9f6a42131d5cee28ecb16`  
		Last Modified: Tue, 17 Jul 2018 14:10:45 GMT  
		Size: 6.1 MB (6050258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dacd7c80fc8abe737dfc7acd26ec8e771846680c7901fcb65b7f6183a34d127`  
		Last Modified: Tue, 17 Jul 2018 14:10:44 GMT  
		Size: 3.7 MB (3671430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:0c71542f3508ae5f97611e2d42fd308cd8d463e3ed4157d561a0cc61f85f4558
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.1 MB (36100727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dff18d00b7d90fd018be0a977352a05c35cf646286cf43a64a479730563514d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 13:07:51 GMT
ADD file:138424b931f46e1ccf61a828946e3addce512e0432512d2c9532120e026d64da in / 
# Tue, 17 Jul 2018 13:07:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 13:07:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:07:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 13:07:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 13:07:59 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 13:17:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:17:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:c194ce38b9148dfda8cf34e64c396f7851f8fcda4fd89b670033091de9dd96a2`  
		Last Modified: Tue, 17 Jul 2018 13:09:36 GMT  
		Size: 27.7 MB (27661081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514c5de2e49ff537463e87ec1b79d1052628e81562837216866748d0fdee0af0`  
		Last Modified: Tue, 17 Jul 2018 13:09:31 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717bf353f8c78598f28dd59926e0594b3f4d7ac20a4e1f95a9ae15df6d9438b6`  
		Last Modified: Tue, 17 Jul 2018 13:09:32 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb259aa356204c39d15513364c6831cad0b26b64658488e6a33473d8ee336223`  
		Last Modified: Tue, 17 Jul 2018 13:09:31 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4813f2e18476072b657d453f436594e700fa20da3db4ea2eb26b33bb5844354`  
		Last Modified: Tue, 17 Jul 2018 13:28:16 GMT  
		Size: 5.5 MB (5518242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14f1d68d27da64c8a2a95e450533b411a58333aca667871a3a8dca9c50815043`  
		Last Modified: Tue, 17 Jul 2018 13:28:15 GMT  
		Size: 2.9 MB (2919527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
