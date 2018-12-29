## `buildpack-deps:disco-scm`

```console
$ docker pull buildpack-deps@sha256:bfab713e7d0c1772d33e8c150f4126d6d1dc1688483815707f9dd82a2dd689e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:disco-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:2d3d44da27a5ec92e6991dee0cfe70907fcb6a39a2a44cafae18193417cd7855
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.3 MB (86281123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:038a8f7137de9e1b27a01a3805956840f9037f999f276820907a844571769181`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:14 GMT
ADD file:3a109f3caf85a7b3477f6785dfac95d586150b920d7762bd777723e53f26df1d in / 
# Fri, 28 Dec 2018 23:24:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:24:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:24:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:24:17 GMT
CMD ["/bin/bash"]
# Fri, 28 Dec 2018 23:52:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:52:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 28 Dec 2018 23:53:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5d5ba9e5cbafa75fd695c6259512b971d7cf0bf372f6f83ea8a66e39b7232e44`  
		Last Modified: Mon, 24 Dec 2018 15:09:27 GMT  
		Size: 29.5 MB (29507462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3995f02a9bb9318376226e982a42fe61e0839fb3035f3efc79edb66b763ee9`  
		Last Modified: Fri, 28 Dec 2018 23:26:21 GMT  
		Size: 805.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd753179fe083c4423e399f1f1fcbe0aaf0a69bf321c87851b85e9bfc162602`  
		Last Modified: Fri, 28 Dec 2018 23:26:21 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7e36bc580a03c8f3c134ddcfe223657d716b63410ca3d50b7af6ae0102b6992`  
		Last Modified: Fri, 28 Dec 2018 23:26:21 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889876e91107e0346c56e6c08c2a30e319779dab07af86fb3c5fdab3d015dc29`  
		Last Modified: Sat, 29 Dec 2018 00:18:41 GMT  
		Size: 6.1 MB (6144771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:027b5f503509b596c71754e568f22b9aea69c8549481798f1f4c3a0966ffdb24`  
		Last Modified: Sat, 29 Dec 2018 00:18:40 GMT  
		Size: 3.0 MB (2968981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:243bc7025128c78fbb874215a1999f232d7e334ee8acc28c64f743fa9f7d435d`  
		Last Modified: Sat, 29 Dec 2018 00:18:57 GMT  
		Size: 47.7 MB (47658734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:4bd70030dba31ee8f44442b44f534b22952f6dcd66ac1a7343f4a76d0dc4cb23
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.9 MB (75889177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d3b5a2ed81cd61e3d937b18b65a1816f85e3ba575c9f307ba72158acaeba381`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:06:44 GMT
ADD file:25d55bc6d7d892fd357f56bc488362d24323b9fa49980ba53261b824b99b2788 in / 
# Tue, 20 Nov 2018 13:06:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:06:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:06:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:06:48 GMT
CMD ["/bin/bash"]
# Wed, 05 Dec 2018 12:58:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Dec 2018 12:59:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Dec 2018 13:00:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a753913fd9ccf64b6990de89fcbbbb44fc5f459e7c4d693eb57afe859357de3c`  
		Last Modified: Tue, 20 Nov 2018 13:09:35 GMT  
		Size: 24.9 MB (24911271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451dc523aa60b7358e3a45a6f40c36d5cc0166aa5dc6a822710887001aa72947`  
		Last Modified: Tue, 20 Nov 2018 13:09:28 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a188c1ab0c6e346b369134112cb267387d4d3c276004dc27e3074d52cd28e63`  
		Last Modified: Tue, 20 Nov 2018 13:09:28 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc7d9128132a1e2ba7875d0aaae8253f8708d0929dc168fac468d7ed141fadd9`  
		Last Modified: Tue, 20 Nov 2018 13:09:28 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ec77b36c36669a0562da704af6e2e2470009fcfe66d20ce65776e5a405087d3`  
		Last Modified: Wed, 05 Dec 2018 13:04:22 GMT  
		Size: 5.2 MB (5181338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758436e529f07c56d57505a157f11cb5ac11f4ee26d3b7f22cad42c2744ce13d`  
		Last Modified: Wed, 05 Dec 2018 13:04:22 GMT  
		Size: 2.5 MB (2534329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a78762140cbc486cf6dbe4c7b7e171806e4af85bc18b738ddd0c0cc2b0f7c2`  
		Last Modified: Wed, 05 Dec 2018 13:04:52 GMT  
		Size: 43.3 MB (43260993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:2e4019bdd372108c098a504d4408f008ca17713097418fe917c84dbb0d8927f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.6 MB (84633126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d94f61f64226fcfc43f20ee160bd5e058e35390d043dd934a9109e5e2ab97dae`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:52:16 GMT
ADD file:7344b2780092eb0580516b798b85c19f665d8f0f6962166b851a75991810fc35 in / 
# Tue, 20 Nov 2018 09:52:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:52:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:52:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:52:32 GMT
CMD ["/bin/bash"]
# Wed, 05 Dec 2018 09:40:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Dec 2018 09:40:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Dec 2018 09:41:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8c357efdaec52fce4e027720fe69fed72bf2948bc87725246a6c6a8b7e19b890`  
		Last Modified: Tue, 20 Nov 2018 09:56:25 GMT  
		Size: 27.8 MB (27793652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be69864713df57e321efc3c935af24f24f7450d1eda16c156dd6a4a6ffd0430`  
		Last Modified: Tue, 20 Nov 2018 09:56:12 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35e7a518aa95acfe884deb1ee1e1e76ac6fcb97991b65fc75f54e903cf5d7964`  
		Last Modified: Tue, 20 Nov 2018 09:56:12 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:349a5019a4779f00c9d91b5bc9885f48ce8df61890a7d1e17b607ddd87ceaba5`  
		Last Modified: Tue, 20 Nov 2018 09:56:12 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a62fbaee63a01006cfca9a9e371cbcfb50ff5d1f2913a9f89ec02c692c4b3460`  
		Last Modified: Wed, 05 Dec 2018 09:50:18 GMT  
		Size: 6.0 MB (6022364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:423f35105f95a0046c6fa1252932b37a4645e85effdabee50b41c500d7964c85`  
		Last Modified: Wed, 05 Dec 2018 09:50:17 GMT  
		Size: 2.9 MB (2943560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f28aff46d0b1a7e80f59d7f801c8290cefe25b038a9b62d72359b09ed84bb7e`  
		Last Modified: Wed, 05 Dec 2018 09:51:00 GMT  
		Size: 47.9 MB (47872331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:95677fd842f8631fc573179a0660e6fbe33c3fff36b14f585a7d22b492981557
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.6 MB (88640853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07d887a90d182957228233338f1304315eb0116d16aa7319522fe71e805df8fc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Nov 2018 12:18:44 GMT
ADD file:7e657b3a739d3b59bf073c45b33dc5986070acae80ef30ee5f075270ddb528c2 in / 
# Tue, 20 Nov 2018 12:18:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 12:18:45 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:18:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 12:18:46 GMT
CMD ["/bin/bash"]
# Wed, 05 Dec 2018 11:39:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Dec 2018 11:39:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Dec 2018 11:40:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b25787be2647215207aa9e275ab49a7fd66eefd2b419d9816d29da2da9067c69`  
		Last Modified: Tue, 20 Nov 2018 12:22:30 GMT  
		Size: 29.9 MB (29904820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad7d52881b5120764f626b01bb517b7321a24c0fcd45be7595c5f6b18911caa`  
		Last Modified: Tue, 20 Nov 2018 12:22:23 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b004f669deef8471282d7dd38bedff7e9b052ff0eccb2ae828bf5efb5f5c0cec`  
		Last Modified: Tue, 20 Nov 2018 12:22:22 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a69163a735301f92bedb8e6d05114aadb85d8ee00da9c810ba22e070c6fdfd`  
		Last Modified: Tue, 20 Nov 2018 12:22:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8567cab71942aaa35e855f867c0ec4c668bfa6de5ec49f263f22d392560b51f`  
		Last Modified: Wed, 05 Dec 2018 11:44:51 GMT  
		Size: 6.4 MB (6420884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfda097fc3c01fe17061036e0c60df2c97de02650a97caa6203eda6458f15e0`  
		Last Modified: Wed, 05 Dec 2018 11:44:50 GMT  
		Size: 3.2 MB (3204043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab59cb8183faea7da4ae94566980b1dc21ce2cc1e3c83c0b8ddf0069697b858e`  
		Last Modified: Wed, 05 Dec 2018 11:45:38 GMT  
		Size: 49.1 MB (49109887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:6c247249d124ed180e78bebc98a39d174bba4201d3f557f8a790045a2bc3263f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.5 MB (101519460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63ce661dc289e3afd1d8cc70e7a642ae738518883219fcb97e10adca83e4281b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:21:13 GMT
ADD file:799a743f2e48ed199f5c85e58f78c28651566041935c831c0cf404b05e2ae458 in / 
# Sat, 29 Dec 2018 09:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 09:21:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 09:21:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 09:21:42 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 10:18:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:19:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 10:20:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:869aa1f9311f58d123a7b4552cc0f74961262afde457f5212b24b79609fb7d65`  
		Last Modified: Mon, 24 Dec 2018 15:11:30 GMT  
		Size: 34.3 MB (34269209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac95ca438129238925e19dfa7bc58973f339a89a96fc426f176715ee39ad0a8b`  
		Last Modified: Sat, 29 Dec 2018 09:24:59 GMT  
		Size: 808.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb04b44807051cfceb59de5b0d07a4d7f325da7b4cde1d50e9eef4e1878d87f2`  
		Last Modified: Sat, 29 Dec 2018 09:24:59 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea9fc4d29e42af3ba465323cd8fbf4a922143178c7244cdb35555b86dbfe861a`  
		Last Modified: Sat, 29 Dec 2018 09:24:59 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c19f7187feabd15f67ed513b8eb4e7454ba971ff0beaba8b0bd3ab3efa8f31`  
		Last Modified: Sat, 29 Dec 2018 11:14:09 GMT  
		Size: 7.0 MB (6980952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d408736ac52cc333d2c4b769e53f0734fc730a67ca9b258ce7a4011ebd04a55`  
		Last Modified: Sat, 29 Dec 2018 11:14:08 GMT  
		Size: 3.8 MB (3753430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5a4aaafadd1103794daebdc2cc0b36d662182cf29fd88f9882e934758e63ba`  
		Last Modified: Sat, 29 Dec 2018 11:14:48 GMT  
		Size: 56.5 MB (56514662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:80fd18b001809e26d411be3476ca9f13edc90eb6cf40c04147e1ecc883e77219
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.0 MB (83973988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71698220142dd0f3e6e66970cc30780c838e9b6e431eea235106b153d5e9bc36`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:10:47 GMT
ADD file:e403e24fe0174dd207ccac54dd2c6342dba6e71cbedf6d2f00a614e6f67a9775 in / 
# Tue, 20 Nov 2018 13:10:49 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:10:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:10:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:10:57 GMT
CMD ["/bin/bash"]
# Wed, 05 Dec 2018 12:42:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Dec 2018 12:42:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Dec 2018 12:42:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d88339db9ad03424b89ae2790f0153d16c729a57dcf58ee4630e89fcd55e2704`  
		Last Modified: Tue, 20 Nov 2018 13:13:02 GMT  
		Size: 27.9 MB (27934331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57b7b5e64abc55f9f681351b0d31161a0c78019b3450cb3cc98e06c22f584276`  
		Last Modified: Tue, 20 Nov 2018 13:12:56 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46130fe47b308ef9fa05ca9c85dde58ee583133c22fc92891c4b49f8f0e6fd9a`  
		Last Modified: Tue, 20 Nov 2018 13:12:56 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8ceee9be585c558e95b5a6c2b013a0ac341aaba91f7e802cd0f25338143d1a`  
		Last Modified: Tue, 20 Nov 2018 13:12:57 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4174caf9b32c122f00d5bdfd3f0fc8aa9659d0a8a6d85d14734435cb0298964`  
		Last Modified: Wed, 05 Dec 2018 12:44:45 GMT  
		Size: 5.8 MB (5795000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e2106b410686ebc62244718d55e039447e3e6c25daafc393fca341c8923e3ac`  
		Last Modified: Wed, 05 Dec 2018 12:44:44 GMT  
		Size: 2.9 MB (2914719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303ea327bd44cd6287173b12728dee9e7faa6912383e4f5bce1ef598a27fb6c3`  
		Last Modified: Wed, 05 Dec 2018 12:45:08 GMT  
		Size: 47.3 MB (47328722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
