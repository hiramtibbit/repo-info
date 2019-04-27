## `buildpack-deps:disco-scm`

```console
$ docker pull buildpack-deps@sha256:7300a47cb91a4be2abbe8a728bebbefcd4754adf45587eb3b415d732a4af1ab2
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
$ docker pull buildpack-deps@sha256:f66a904059216ffcad0bec5545ee7ba21fca9b5a67ca367dd92583c625ec3e9d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.9 MB (88919709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b588f5495bc65c0c2ecf7eedd37ad4068c62ad19216d290059f6777e430602d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 26 Apr 2019 22:21:46 GMT
ADD file:3d102fe260ec4d6629916600b464c22ec98d92f70fbd77eb5bc9be491246aec7 in / 
# Fri, 26 Apr 2019 22:21:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:21:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:21:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:21:48 GMT
CMD ["/bin/bash"]
# Fri, 26 Apr 2019 22:50:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:50:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 26 Apr 2019 22:51:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7eab35e32a16ff1387d61b34bddec80cc134f691c428065bdb4c81a3a339fb44`  
		Last Modified: Fri, 26 Apr 2019 22:23:13 GMT  
		Size: 29.8 MB (29761618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c0b49bd5b97141e4edf0018e1345d0e6d44ab1a80ac86c753ef7ca1f96f6284`  
		Last Modified: Fri, 26 Apr 2019 22:23:08 GMT  
		Size: 864.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76ea149966fabba8a80d6f2c9f22589f7b851f60ca712e844bdd67038a63e554`  
		Last Modified: Fri, 26 Apr 2019 22:23:08 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56480354398151b0726ab0aa1e02a6c51ebfbada0eaa3611748d4d27c3c05ce`  
		Last Modified: Fri, 26 Apr 2019 22:23:08 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f11ddc8843fecf98b8321de938abc3014f4aa990903a2890e77a49bb61a419d`  
		Last Modified: Fri, 26 Apr 2019 23:01:47 GMT  
		Size: 6.7 MB (6666774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9859ec75336f5ab1a44f11f358e9fa44c77ebbf147c95e2e0aafe44a68d032`  
		Last Modified: Fri, 26 Apr 2019 23:01:45 GMT  
		Size: 3.5 MB (3511173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6d291e8c52dee3df6b77168a7cc1859b3b53a6b21cef617e4f68f4a0a5d386`  
		Last Modified: Fri, 26 Apr 2019 23:02:04 GMT  
		Size: 49.0 MB (48978924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:2fb17e4d978651f37b69982adcfa7861a504cce57361f6d175be0de0f380fdef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.4 MB (78404065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02d291bd7c440633f162e022d89e159785fa50e3003c5c256b507e1c43f5fff9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 12 Mar 2019 12:43:40 GMT
ADD file:cbff62336756d13fd1c5230182c38f861fefb994b4c70286730b4f191ee0a3e8 in / 
# Tue, 12 Mar 2019 12:43:42 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:43:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:43:45 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:43:46 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 13:27:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:27:37 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Mar 2019 13:28:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:748e6e0aa3d7bf1aea7780a2a52097eb014ce7091710e564bc3ac414fd6502b5`  
		Last Modified: Mon, 11 Mar 2019 15:16:41 GMT  
		Size: 25.3 MB (25295502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4453e71d375509f3298bdb09233408843f29707d0bcf50ee437b17b04dd0cc03`  
		Last Modified: Tue, 12 Mar 2019 12:45:42 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95ef41e7b4da71ba954261d67faca11c14a9349165133c31d99a2e02d3746afa`  
		Last Modified: Tue, 12 Mar 2019 12:45:42 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9df704909aa394bc95dd9cf59147e532fa41af6b8bfd8cec0978c6b2e1e6066e`  
		Last Modified: Tue, 12 Mar 2019 12:45:42 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45564e19031b3c292ef78a58ad317aa2cf17cf00571694f116e69d3869cf731b`  
		Last Modified: Tue, 12 Mar 2019 13:40:55 GMT  
		Size: 5.6 MB (5637243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0805841e32a5727c28e78a584b84b2ebad6af034697054522db8adccf587334a`  
		Last Modified: Tue, 12 Mar 2019 13:40:54 GMT  
		Size: 3.0 MB (2975626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4df46a5d2b7d237877f109041ab38ad965f2e62112b35b0e68f608aac18e8552`  
		Last Modified: Tue, 12 Mar 2019 13:41:17 GMT  
		Size: 44.5 MB (44494442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:35dee4cc2aeb6fb4f46d3becd4fffa9c39750d3fcf873985447bdc282ce7200a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.9 MB (87854558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebc26f8e6b9243abfede1b1e0bd5edc67b32af3bf0f020a2767533e293cb76de`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:36:04 GMT
ADD file:5e18ef3eaf8210502b612e56077c33baef533723c2017d205b516a8dec9c9023 in / 
# Thu, 14 Mar 2019 09:36:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:36:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:36:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:36:12 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 12:00:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:01:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Mar 2019 12:04:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f3a20987ba9217a7a73974b8935c60d400be00cc290682a6afce8ed5eef6eb1c`  
		Last Modified: Mon, 11 Mar 2019 15:16:02 GMT  
		Size: 28.6 MB (28564892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6faa60d339af6971077e3d900e43b10810ecf337070262cd43fd13b0e26e718`  
		Last Modified: Thu, 14 Mar 2019 09:38:36 GMT  
		Size: 861.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f17b4c63f71d33824fd9e175418ead0edd59cdfd1df0849de3fe7a5322b5bdad`  
		Last Modified: Thu, 14 Mar 2019 09:38:36 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a470f0f21c7144c2834fdcc9dea1169d78d7cd9350b249e421bf6da7b25378`  
		Last Modified: Thu, 14 Mar 2019 09:38:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ad17c0962480828bbf35cd3511f1f81dcdbb9b236cd6b1f13005fe5bdb9352`  
		Last Modified: Thu, 14 Mar 2019 12:39:48 GMT  
		Size: 6.5 MB (6537063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9d2d70bfd3a41160623d0a770c7392b4d0e651d53881e1fad0d0d6bc8376cc`  
		Last Modified: Thu, 14 Mar 2019 12:39:47 GMT  
		Size: 3.5 MB (3505561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f4f3181b6ba15fa095830f9c667368f89b295c99204242e6ed16713fa04cff`  
		Last Modified: Thu, 14 Mar 2019 12:40:17 GMT  
		Size: 49.2 MB (49245808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:06d3c9b188a49a6a390e6ba7ac9732fc164ac6c3aeff848fbb31043ac3723d50
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.7 MB (91720877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:117ad675fb68c98cf0c626de1af794a8ac3e07d25cdd7634f25e32f145db6599`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 11:58:26 GMT
ADD file:590e9ab0529542976636982092fc27d82616b92d7e8e9218dae6f9c479faed89 in / 
# Sat, 27 Apr 2019 11:58:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 11:58:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 11:58:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 11:58:28 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 12:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:30:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 27 Apr 2019 12:30:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b0ec486e8ca6e81f7667ce95a52d0d0bd8d37f18d64873f2b619cea5150a2083`  
		Last Modified: Sat, 27 Apr 2019 11:59:55 GMT  
		Size: 30.4 MB (30420686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf2493384b114bcc4649d72fc3a028bdf832a2fde19616608498907ab07a2554`  
		Last Modified: Sat, 27 Apr 2019 11:59:48 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bb173cff22a28fe95d92de25bc466e320ae283dbecddc2276592c7e8e31d15e`  
		Last Modified: Sat, 27 Apr 2019 11:59:48 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6d341fe48e1bec15f0d2e842ae04ce911c0d91bb683de15f6b89c65cd25b3e`  
		Last Modified: Sat, 27 Apr 2019 11:59:48 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d28627c8ce0bb9c9a11bc19d7ae150f4a808245cce7f3acf1e1aa4611e63a792`  
		Last Modified: Sat, 27 Apr 2019 12:41:43 GMT  
		Size: 7.0 MB (6979404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812af0b5d0c21fbec46e9bc282cc83b3000d953bb1e2e002d86cb06730431495`  
		Last Modified: Sat, 27 Apr 2019 12:41:42 GMT  
		Size: 3.8 MB (3804559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79103ac417160535166427d295b072d2af46a55f7b5c372fc22a75f12ee862a`  
		Last Modified: Sat, 27 Apr 2019 12:42:00 GMT  
		Size: 50.5 MB (50515008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:5d4106f96dd89bfa6179582eec6bec61103afa55c88550e35e6edd1e50605de2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.0 MB (104990334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e56c31c7fa11b64f5e3087e9e8e80527270b134993face15b5df85e6076f65e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:24:32 GMT
ADD file:58bb3a0119a14002fa97781ba0f47f14a78ec4a1b0ccdb3d6709f91cd330b340 in / 
# Sat, 27 Apr 2019 09:24:41 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:24:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:24:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:24:53 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 10:22:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:23:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 27 Apr 2019 10:27:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a999c107c313f741c65c3a8769432eb37516e9d8d70d880e8c422bdaf0a585fc`  
		Last Modified: Sat, 27 Apr 2019 09:31:20 GMT  
		Size: 35.0 MB (35024949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aa2b0476ee53b4f0e8d4a8b579933f32271ac9bf8bc59b5db23ceaa5a4b1688`  
		Last Modified: Sat, 27 Apr 2019 09:30:50 GMT  
		Size: 872.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7377a54be74859898e331f16ce38ed25707db0fc01a825977654155e9118026`  
		Last Modified: Sat, 27 Apr 2019 09:30:50 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a57350737985b161b838f05ab6e216fc9a1b04899afbe9371a4005d977109c`  
		Last Modified: Sat, 27 Apr 2019 09:30:50 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7d4a20350a3ade0f659947f77b00f7a2c16028efd5d7553978d3f858b4a8a83`  
		Last Modified: Sat, 27 Apr 2019 11:15:12 GMT  
		Size: 7.7 MB (7741711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc43be99fff6f4b757dd635be156dd00a9dace995b76cb45ca503371aa605abc`  
		Last Modified: Sat, 27 Apr 2019 11:15:11 GMT  
		Size: 4.5 MB (4461300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30cd5c478aa7e430409abf83af049e5cfc873cb83e1edd5bb151f7c0ffa79797`  
		Last Modified: Sat, 27 Apr 2019 11:16:26 GMT  
		Size: 57.8 MB (57761122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:4d3f65a91c15d0ab2f23da26b5974c36ea5eaf9a8611a18a877247652f48f9e2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.7 MB (86664333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:687d94d69ea849f7b34f62230a74071ef79a322fc8bcc1b506eca38cf6017096`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 12 Mar 2019 12:09:15 GMT
ADD file:e37ba2873aa5ddfdbef288b6918d41be3cccfdb999270d3b9a968e445b0e9c7e in / 
# Tue, 12 Mar 2019 12:09:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:09:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:09:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:09:22 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 12:31:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:31:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Mar 2019 12:31:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0e3c141776ad97066eef399660b5365166d8e09e778617ebd8fef60f9de9aa9e`  
		Last Modified: Mon, 11 Mar 2019 15:18:20 GMT  
		Size: 28.4 MB (28381823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b590beeeb9ac49dd3e079d5d37704a06889acb31e0bbf69a321c454ba86b847`  
		Last Modified: Tue, 12 Mar 2019 12:10:30 GMT  
		Size: 861.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69988281313e592c56d6f88042d4751dc708fa32b135531bf2b5c7f82e075471`  
		Last Modified: Tue, 12 Mar 2019 12:10:30 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bca2c34773bb7e2e3316d4d834652f1112de7bf63c35ec1b0258f5cf54731c5`  
		Last Modified: Tue, 12 Mar 2019 12:10:30 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:896311308f2d5056e1c1c4f4c9f2b75e1185ab1a254f2bd3848ff9da88fb7248`  
		Last Modified: Tue, 12 Mar 2019 12:38:35 GMT  
		Size: 6.2 MB (6223143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e23b65edba51147750c2fcf260d7dca3cc480865a9f56895e2b5887f80e4b64`  
		Last Modified: Tue, 12 Mar 2019 12:38:34 GMT  
		Size: 3.4 MB (3428846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f704c1ea73ee705aeca26651ac1a8810328af36e9768b3a0251b1af1590e751`  
		Last Modified: Tue, 12 Mar 2019 12:38:56 GMT  
		Size: 48.6 MB (48629288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
