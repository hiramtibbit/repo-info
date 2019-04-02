## `gazebo:latest`

```console
$ docker pull gazebo@sha256:819a3e2d0c95c2c3f6a6c4c3e7951ee67a5e26b0be355651fd3e6e17591f9228
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `gazebo:latest` - linux; amd64

```console
$ docker pull gazebo@sha256:6f4e20293d36723de74ca27f6e00e124ebabd47ee722ef9f659776fef5c2585b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **580.1 MB (580055546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3ee3d1163f0c2e60134e5bd59b052af656e14913b5fd191a9f936ce2971e400`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:09:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:09:44 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:29:04 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 12 Mar 2019 01:29:05 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Fri, 29 Mar 2019 21:42:49 GMT
RUN apt-get update && apt-get install -q -y     gazebo10=10.1.0-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 29 Mar 2019 21:42:50 GMT
EXPOSE 11345
# Fri, 29 Mar 2019 21:42:50 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Fri, 29 Mar 2019 21:42:50 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Fri, 29 Mar 2019 21:42:51 GMT
CMD ["gzserver"]
# Fri, 29 Mar 2019 21:45:06 GMT
RUN apt-get update && apt-get install -q -y     libgazebo10-dev=10.1.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10919d32ef8c7fb29d9b741c2fb1da6f67ed0cc1b1e01391dccc85fb48c37f9e`  
		Last Modified: Tue, 12 Mar 2019 01:36:19 GMT  
		Size: 836.6 KB (836625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb57d992df7ab8d5f1ffdb374b8e682ee43bd9d1366000f895e4868287bbf72`  
		Last Modified: Tue, 12 Mar 2019 01:36:22 GMT  
		Size: 14.9 MB (14912527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d2f871beb9929116acca51e8c1dd2ac463abbd7e32fcad8b616485b9fc6b8c`  
		Last Modified: Tue, 12 Mar 2019 01:41:18 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fbf49ae3636c0e3123aea050d5bf3c136276f41e62fc64c3e7243cd1a89e79c`  
		Last Modified: Tue, 12 Mar 2019 01:41:18 GMT  
		Size: 5.4 KB (5434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43adc3ffa2d007161a0535bdd332691f104892030aded5b16ba6e6ccc9d85d88`  
		Last Modified: Fri, 29 Mar 2019 21:57:13 GMT  
		Size: 252.6 MB (252608760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:829bda7032313a97a38ba12b749cb07a749ed0316f3ba18b15ce3060d3055ef5`  
		Last Modified: Fri, 29 Mar 2019 21:56:05 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4102afd3abffead1a261e1fc2b382665bae6a6cb66b9c94d9ab25feb1de5b8`  
		Last Modified: Fri, 29 Mar 2019 21:58:50 GMT  
		Size: 279.2 MB (279222442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gazebo:latest` - linux; arm variant v7

```console
$ docker pull gazebo@sha256:cd9264ffcb7517125cd74b3459c6de081794392b3f6dec70a794fe7857f26381
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **512.0 MB (512022177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05ab603ed428339ac0ebebe027a4fcd877dbf8c3ca6f1297a5ec0a7193725ee5`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

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
# Tue, 12 Mar 2019 13:02:56 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:03:24 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:03:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 12 Mar 2019 13:03:29 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 12 Mar 2019 13:12:43 GMT
RUN apt-get update && apt-get install -q -y     gazebo10=10.0.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:12:46 GMT
EXPOSE 11345
# Tue, 12 Mar 2019 13:12:47 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Tue, 12 Mar 2019 13:12:47 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 12 Mar 2019 13:12:48 GMT
CMD ["gzserver"]
# Tue, 12 Mar 2019 13:16:20 GMT
RUN apt-get update && apt-get install -q -y     libgazebo10-dev=10.0.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:1e0f95e89310b7624947aeb9415495ae17abeb36b2030d56f0021ac9ca98ab2f`  
		Last Modified: Tue, 12 Mar 2019 13:16:47 GMT  
		Size: 837.3 KB (837284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26d8d7f27e90678af748eee6cd7b35df84f2deb1d544634e95a3445d3b2139e`  
		Last Modified: Tue, 12 Mar 2019 13:16:48 GMT  
		Size: 13.2 MB (13240680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfb03d7021557ee2c0d5a933b7825d0dd43344cfac62cea6805bf04c8236273f`  
		Last Modified: Tue, 12 Mar 2019 13:16:45 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5dff837bd6889d80bf01c65c8ebfff98480ef2c479c980bf8a3de0ae587f9c8`  
		Last Modified: Tue, 12 Mar 2019 13:16:45 GMT  
		Size: 5.5 KB (5467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb95e374f7f09a983426898078392742c4b777f0d84a9c1e276a99e47770a9e`  
		Last Modified: Tue, 12 Mar 2019 13:20:20 GMT  
		Size: 227.1 MB (227052359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8d26100064a45c3e186bb2cf4a3cc864271feef7b3b2be484932404e69bf9b1`  
		Last Modified: Tue, 12 Mar 2019 13:19:18 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1f6eda184592a846436c3b03792f0169be5b243029b8022e4094491c3494cc`  
		Last Modified: Tue, 12 Mar 2019 13:21:41 GMT  
		Size: 243.2 MB (243159034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gazebo:latest` - linux; arm64 variant v8

```console
$ docker pull gazebo@sha256:2694d97cefd7055b128a1cf3f956c3d97b36bafa67838520a6d07bbc3b269197
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **498.3 MB (498327390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f40cef604e9d0d3db3b41b33109b474c4dee8ee02ded5ee6ad7e2c197d0d1e8`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

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
# Thu, 14 Mar 2019 11:03:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:05:46 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:44:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Thu, 14 Mar 2019 12:45:01 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 02 Apr 2019 09:38:47 GMT
RUN apt-get update && apt-get install -q -y     gazebo10=10.1.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 02 Apr 2019 09:38:49 GMT
EXPOSE 11345
# Tue, 02 Apr 2019 09:38:51 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Tue, 02 Apr 2019 09:38:52 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 02 Apr 2019 09:38:53 GMT
CMD ["gzserver"]
# Tue, 02 Apr 2019 09:46:36 GMT
RUN apt-get update && apt-get install -q -y     libgazebo10-dev=10.1.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:d9237b4813ac5b34ab7f0e977085e4f0539d141283d74f5f40cecdb5a05e1103`  
		Last Modified: Thu, 14 Mar 2019 12:45:57 GMT  
		Size: 837.1 KB (837067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e74beaed411f0d9f0a4e700e30d1901587fcf9a7f6287c1d879bce72d39dbe4d`  
		Last Modified: Thu, 14 Mar 2019 12:46:09 GMT  
		Size: 13.8 MB (13842786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe825eab3f2d83a1e61c4458ae4ea5b2f3426f05661cc282e7b563e80e43d1c`  
		Last Modified: Thu, 14 Mar 2019 13:08:46 GMT  
		Size: 1.4 KB (1439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4575080fa936820fbca23c142f58252b7af7b9cc48e25170831a84879da328a6`  
		Last Modified: Thu, 14 Mar 2019 13:08:46 GMT  
		Size: 5.4 KB (5435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5f6898f5e07b25a0cdda00cabe642339c1bccb228290bbc4b50f513762f4f7`  
		Last Modified: Tue, 02 Apr 2019 10:03:19 GMT  
		Size: 238.5 MB (238488390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832f393ae5cf15421b1418e4f2f426316a9bc35d96f62c4a8024e50d70aa1cf9`  
		Last Modified: Tue, 02 Apr 2019 10:00:32 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70397830ae612db1b001d667d1094a60150edca602f16be4690d0d65b8e21bd6`  
		Last Modified: Tue, 02 Apr 2019 10:06:39 GMT  
		Size: 216.0 MB (215975000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
