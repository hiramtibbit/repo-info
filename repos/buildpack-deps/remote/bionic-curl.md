## `buildpack-deps:bionic-curl`

```console
$ docker pull buildpack-deps@sha256:3c23d8bafbd82e6e7fa92653ec823461efd559c14e415f8c0b29fb1bf0059ab4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:bionic-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:8b8a0285ab351221e1d5633cc3fedc84fcb946d5db85fb739f32194c92ed09a6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (45994918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d898dd1ec301fddf1e7aab00b8f2da5a603ad9a8f0ffd06cc1ea1f9b21dbf2d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 26 Apr 2019 22:21:02 GMT
ADD file:7ce84f13f11609a50ece7823578159412e2299c812746d1d1f1ed5db0728bd37 in / 
# Fri, 26 Apr 2019 22:21:03 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:21:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:21:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:21:05 GMT
CMD ["/bin/bash"]
# Fri, 26 Apr 2019 22:43:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:44:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:f476d66f540886e2bb4d9c8cc8c0f8915bca7d387e536957796ea6c2f8e7dfff`  
		Last Modified: Thu, 25 Apr 2019 00:24:51 GMT  
		Size: 37.2 MB (37206102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8882c27f669ef315fc231f272965cd5ee8507c0f376855d6f9c012aae0224797`  
		Last Modified: Fri, 26 Apr 2019 22:22:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9af21273955749bb8250c7a883fcce21647b54f5a685d237bc6b920a2ebad1a`  
		Last Modified: Fri, 26 Apr 2019 22:22:42 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5029279ec1223b70f2cbb2682ab360e1837a2ea59a8d7ff64b38e9eab5fb8c0`  
		Last Modified: Fri, 26 Apr 2019 22:22:41 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a057feb021c388fc1fd3b7b96c8b4bb654ca13288404cc83c88058d3de5c648`  
		Last Modified: Fri, 26 Apr 2019 22:59:50 GMT  
		Size: 5.8 MB (5827646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db82eded56889a18440771e007290fff3a14b646e6fe71a63de934b5a85b78fd`  
		Last Modified: Fri, 26 Apr 2019 22:59:49 GMT  
		Size: 3.0 MB (2959610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:29dbce8db4736b345058cead0118b02b6b65dbe7c955bb7f78df6926b119a363
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35172405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d01fcd98c7a188f4527d221173c8867f651c46c7cba2d93703a0f8faf2ef3af4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 12 Mar 2019 12:42:51 GMT
ADD file:ee8258018aa132e6acb35329269b72b13b48f1f8c6ce922afa4b1cc6826a5c16 in / 
# Tue, 12 Mar 2019 12:42:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:42:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:42:57 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 13:19:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:20:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:0271361e8a748614d0ba38f51c7a988f326368d204dd208c8fa316b9c3256a8a`  
		Last Modified: Fri, 08 Mar 2019 23:45:14 GMT  
		Size: 27.7 MB (27724155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f82dbae99403c2042928314aca7a23c89d49820ab94d23704497ff98e75ec236`  
		Last Modified: Tue, 12 Mar 2019 12:45:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6b13b46c8edb7b87f8f1e566518d9d14e8cfcccbd738fb42f3f9f0d6bf56ef`  
		Last Modified: Tue, 12 Mar 2019 12:45:10 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492da8380468c9df5987a639a78f80e639877ed0737502667a2c88a35f642c2c`  
		Last Modified: Tue, 12 Mar 2019 12:45:10 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6c2b77e327135ebb02c8bc4d5f13eee53bebac05281e2517359a9b46594027`  
		Last Modified: Tue, 12 Mar 2019 13:38:29 GMT  
		Size: 4.9 MB (4924052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5da41d96446682a4392a7061441a77adc459cb9955d75e98a85183ac3d8f1ed`  
		Last Modified: Tue, 12 Mar 2019 13:38:29 GMT  
		Size: 2.5 MB (2522629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:7e06b63cb62c7124f07f1662a18a374de17e3a495fc565519191000cd5c6ebae
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 MB (37192053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98a110989e0cae3374bd43a0060073acd8207c7597746460ac44918da9347075`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:34:18 GMT
ADD file:4cccf4e4a71783b1ac058bcfcabe23b3901e829c3859551be9d7e732cb9e3f86 in / 
# Thu, 14 Mar 2019 09:34:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:34:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:34:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:34:32 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 11:21:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:22:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:a0ceea30e08b5fa042d10308a43b8b093b67ce44e98a69ea8d277d00077387ab`  
		Last Modified: Fri, 08 Mar 2019 23:47:38 GMT  
		Size: 29.2 MB (29175537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ef245d4e8728acd667d550023b9ffbb688c7976f78f72986d132072041e5a1`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bb25026742c32e7fe5417efb6bc0ff5ad1eb9963007aebd5f71e9bc333e9ba`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62b2948ac15d07c725e6074399d5e49e916e79b2c7738d6ad63e4d1b090db8f`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc50b83bb5de95ccdd1441ff4c4c7e56ab0ba6e70bf72f055b21f02018bf974`  
		Last Modified: Thu, 14 Mar 2019 12:36:32 GMT  
		Size: 5.3 MB (5293254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9055781d17856d7933c24eb7420dd25fcbbec68240859efde8e12af6dfb6c14b`  
		Last Modified: Thu, 14 Mar 2019 12:36:32 GMT  
		Size: 2.7 MB (2721713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:5cd83c745001ec5c7f3283c752409711285d8b17d078f19930038f69df476ff0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.0 MB (41972141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f33fae65a313e4addd65c1115e2106721172ef8e4e736b87b5f80c3bed39a879`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 12 Mar 2019 11:34:22 GMT
ADD file:f7fafa539dd961b988889301aa1a2227ec62e41d6aa679d40dadb3e5c63f1168 in / 
# Tue, 12 Mar 2019 11:34:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 11:34:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 11:34:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 11:34:24 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 11:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 11:52:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:ef3d2bb83afee7eb9e6754deedde1918b0d7f67e26471e534707ea4aeb9e077c`  
		Last Modified: Mon, 11 Mar 2019 15:11:24 GMT  
		Size: 32.7 MB (32675809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2efd94b3527a4a9dc20d5c2c3d035522f3a076f77417c1cc46ebf8ab2e3f221`  
		Last Modified: Tue, 12 Mar 2019 11:35:31 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214a9a444a1e0ba9a2d2deaefb996b91adbbf62c211664c612b4308d4e3aedfc`  
		Last Modified: Tue, 12 Mar 2019 11:35:31 GMT  
		Size: 531.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce2299fb7c34883f2aca8a4fb9514a780289299da4cb98711d7f7e6a0257d06`  
		Last Modified: Tue, 12 Mar 2019 11:35:31 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:024b8a5f6ee18de6824eab0acb6dc6992d97596e35a5c3374aa4e8127c1cb23e`  
		Last Modified: Tue, 12 Mar 2019 12:10:40 GMT  
		Size: 6.1 MB (6104559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ab03ab3d1cac50b10a3869b6d3e73b0b637011db5ec46f3b6526d7ded4d4cd`  
		Last Modified: Tue, 12 Mar 2019 12:10:37 GMT  
		Size: 3.2 MB (3190231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:88186a309ae53542ce462d4535658ad2f30457ad366dabfc91fac91486fb355b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.6 MB (49644099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b1177737aa9b144e183bedd70acf01318c9b4e407e698ef1e8bcdc814075ded`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:15:37 GMT
ADD file:f84af4a2bfeabb29759492bc1fcee90da44b5088e561155cd4c4fa69ec03c939 in / 
# Sat, 27 Apr 2019 09:15:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:16:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:16:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:16:14 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 09:50:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:51:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:05afd6335a2fc38939add8f98ac929a68b140fc6e14a89f99688d334f1cb40d5`  
		Last Modified: Sat, 27 Apr 2019 09:29:49 GMT  
		Size: 39.9 MB (39944868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd52c18e7316709788a8ac0c7bfc70726c6c98a10685f8eb6e0cf2663ea3bf11`  
		Last Modified: Sat, 27 Apr 2019 09:29:18 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d43c0889ab8534b4f1762afc266e4da05e8d2a9751b469a98650943dc658ac0`  
		Last Modified: Sat, 27 Apr 2019 09:29:18 GMT  
		Size: 536.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d262c134c8e6db6fe2f46ebce5a86da0b7466032b6496665161825e36afffdc`  
		Last Modified: Sat, 27 Apr 2019 09:29:18 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dff26a2f54f90331191bb754cf20986c7607f00736b85917d3df872d25ba8ad`  
		Last Modified: Sat, 27 Apr 2019 11:08:29 GMT  
		Size: 6.0 MB (6039694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe4d2222cf647cd56a484cf81bf8118e87bbf825e2def2cf1764b32557606a0`  
		Last Modified: Sat, 27 Apr 2019 11:08:29 GMT  
		Size: 3.7 MB (3657963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:b7522a0f1320b021347f9e0d9ecd9341a3b0833efe15045f7f7ecff93989dce6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 MB (39129277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31d651502d605079bd88575cddfd4c2c3142595b5053a290f3d11216a6a57168`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 12 Mar 2019 12:08:47 GMT
ADD file:7b97cdceb7a661db3458df6cd992d2e735fec8613abd86bdff58a949190c355b in / 
# Tue, 12 Mar 2019 12:08:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:08:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:08:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:08:51 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 12:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:ce90edcc3139e116c97e192a11962790422da390b102aca2d617dc565de4d938`  
		Last Modified: Tue, 12 Mar 2019 12:10:06 GMT  
		Size: 30.7 MB (30701859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2794d8d2439572a529e844dce238c278c50debc920730de784f9cbc405a0b51`  
		Last Modified: Tue, 12 Mar 2019 12:09:58 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ecab1b250dd07edb1294b4ad9afbdcb2a5b9bc81e09ae75d2d65dc32c6df0c4`  
		Last Modified: Tue, 12 Mar 2019 12:09:58 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ae8f34b30e3b128ba685424ccf987869098004713c41da34ce3636eb12060e`  
		Last Modified: Tue, 12 Mar 2019 12:09:58 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eeb968b1e74596e00b92d84f23e765b2ce58d382567df3332212703de40202a`  
		Last Modified: Tue, 12 Mar 2019 12:36:38 GMT  
		Size: 5.5 MB (5512759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39aa25101593ff42fc074c71b740f2c2882802ae8b8948150353f43f44fc4ecd`  
		Last Modified: Tue, 12 Mar 2019 12:36:37 GMT  
		Size: 2.9 MB (2913111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
