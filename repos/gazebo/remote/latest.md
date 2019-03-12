## `gazebo:latest`

```console
$ docker pull gazebo@sha256:e438657988a45c959c82552dd64d2d658f0f38fd4fbca81e9530568ad02e5fdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `gazebo:latest` - linux; amd64

```console
$ docker pull gazebo@sha256:5795e90e132153f6917d5a4b08bb0b4512ac57ce4d67831253ed3009ab8f1c08
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **579.9 MB (579867275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33ed863281553a28c02b10eca6c52cd43031921cc9e131ecc9423930a9692d23`
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
# Tue, 12 Mar 2019 01:34:26 GMT
RUN apt-get update && apt-get install -q -y     gazebo10=10.0.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:34:27 GMT
EXPOSE 11345
# Tue, 12 Mar 2019 01:34:27 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Tue, 12 Mar 2019 01:34:28 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 12 Mar 2019 01:34:28 GMT
CMD ["gzserver"]
# Tue, 12 Mar 2019 01:35:52 GMT
RUN apt-get update && apt-get install -q -y     libgazebo10-dev=10.0.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:c8df347bba5604610b6e4dbb610012875b5faefa327a493ed1d634803acfdc6d`  
		Last Modified: Tue, 12 Mar 2019 01:44:06 GMT  
		Size: 252.4 MB (252435799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0ce816b8834bf53d0478c080a30fd57c67923f62619e8873c52ae9e508ea88`  
		Last Modified: Tue, 12 Mar 2019 01:43:22 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7e65357f5a742a43878426ac3b0b064d6ff1dd05c4c7e6c8127073ddb12b925`  
		Last Modified: Tue, 12 Mar 2019 01:45:09 GMT  
		Size: 279.2 MB (279207133 bytes)  
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
$ docker pull gazebo@sha256:536557cb20da9d50a60416de1b2c6d74ca21a1e31955fc8591709d33fdc1e826
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **498.1 MB (498075046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0f8049b6f1ee6b216dd5c76a329a80256ee0e20bea327811700ad0811eefb0b`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 20:40:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:41:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:41:48 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Wed, 06 Feb 2019 20:41:50 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Thu, 28 Feb 2019 09:58:21 GMT
RUN apt-get update && apt-get install -q -y     gazebo10=10.0.0-1*     && rm -rf /var/lib/apt/lists/*
# Thu, 28 Feb 2019 09:58:24 GMT
EXPOSE 11345
# Thu, 28 Feb 2019 09:58:25 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Thu, 28 Feb 2019 09:58:26 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Thu, 28 Feb 2019 09:58:29 GMT
CMD ["gzserver"]
# Thu, 28 Feb 2019 10:10:21 GMT
RUN apt-get update && apt-get install -q -y     libgazebo10-dev=10.0.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0430669192d066aae552606ab79f4e5a652bbfa9c297ba60121d8f194b86d3`  
		Last Modified: Wed, 06 Feb 2019 21:40:13 GMT  
		Size: 837.3 KB (837252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3e83e2bf02f5095e0624384b3bdc3e796c7bbd4b1c1f9042461f548e1a01ba`  
		Last Modified: Wed, 06 Feb 2019 21:40:22 GMT  
		Size: 13.8 MB (13842430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df0b16dfe0f3e0b0e3a95ed60eb514b3999b08a32980cbf7305810fe6756fb9`  
		Last Modified: Wed, 06 Feb 2019 21:39:57 GMT  
		Size: 1.4 KB (1439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f375e2a6ad303ce6e17930d8be99bb58a3757ad743dd78d28474436658ac4855`  
		Last Modified: Wed, 06 Feb 2019 21:39:58 GMT  
		Size: 5.4 KB (5435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c6e67a10a4ad2b777f1f4f64a386b9180fefeadb001cee3fe7ed5a6e6ebfc96`  
		Last Modified: Thu, 28 Feb 2019 10:12:03 GMT  
		Size: 238.3 MB (238308906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422b476c451f8853271221c6f5a286f570ef173af82de0eccfffd312a084e572`  
		Last Modified: Thu, 28 Feb 2019 10:10:49 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b51c489e90bb105bb814e69704c70a1f8c5ec39ee6957b15b82e921ff600d48`  
		Last Modified: Thu, 28 Feb 2019 10:13:45 GMT  
		Size: 216.0 MB (215965350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
