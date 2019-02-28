## `gazebo:libgazebo10-bionic`

```console
$ docker pull gazebo@sha256:268c65f658efcc85e21587839a6d68641b6dfe5a730cdd0e305e4222d7436efe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `gazebo:libgazebo10-bionic` - linux; amd64

```console
$ docker pull gazebo@sha256:55bda9a2f5518d6bda57d1ce1796755d18b2a319ee19b912dcce9b888b6853ca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **579.8 MB (579779104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab6c2e5fa5dcd7d770339b8acb5a45731469eb2ff923041f920d16e95e9e7444`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Wed, 06 Feb 2019 03:37:49 GMT
ADD file:529264c6593975a61f31e017eaf2e33d9ef126bde387f5d4136c60cf010a7383 in / 
# Wed, 06 Feb 2019 03:37:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 03:37:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 03:37:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 03:37:51 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 06:20:50 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 06:21:20 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 06:21:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Wed, 06 Feb 2019 06:21:23 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Wed, 27 Feb 2019 22:23:11 GMT
RUN apt-get update && apt-get install -q -y     gazebo10=10.0.0-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Feb 2019 22:23:12 GMT
EXPOSE 11345
# Wed, 27 Feb 2019 22:23:12 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Wed, 27 Feb 2019 22:23:12 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Wed, 27 Feb 2019 22:23:12 GMT
CMD ["gzserver"]
# Wed, 27 Feb 2019 22:26:48 GMT
RUN apt-get update && apt-get install -q -y     libgazebo10-dev=10.0.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6cf436f81810f067c6d4ffca6793eae7cb6d38456715b0707d8a5a2d1acccf12`  
		Last Modified: Tue, 05 Feb 2019 08:24:51 GMT  
		Size: 32.4 MB (32374324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987088a85b9606eb474a365eb210db765ff0d011ee099a6e3de5087435c6f966`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4624b3efe0617e59ed3998407eafdbe1cb6451346a6cabd066b6e253f50efb1`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42beb8ded595df5627ad4ef31bf528a6fdbfbd11d82f9023152738d6b05a7fa`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e2b7226e157ac7bcf566789e6b9114f7bd3477f77f080712fb245c62e29daa`  
		Last Modified: Wed, 06 Feb 2019 06:40:07 GMT  
		Size: 837.0 KB (836988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0d981b6afd50a9bac37a864f3a0aa7f6db89a3b626f5482a8082509c7cb0c3`  
		Last Modified: Wed, 06 Feb 2019 06:40:09 GMT  
		Size: 14.9 MB (14913121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69467e5c116fc07c5cab8bd38420fcd4475bfb2896702e8a9925b37760d3dc59`  
		Last Modified: Wed, 06 Feb 2019 06:40:05 GMT  
		Size: 1.4 KB (1439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7305763fabdb3b48da1705941056e94ee83868366cf9de5a0b72f22675052538`  
		Last Modified: Wed, 06 Feb 2019 06:40:05 GMT  
		Size: 5.4 KB (5431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ac1765cc2fea4035ed663fa104c2c4d3cfbb983a792351dac58d6d1c542c06`  
		Last Modified: Wed, 27 Feb 2019 22:27:58 GMT  
		Size: 252.4 MB (252436264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969cfa158a5faa9f3f686be3b50f8d7daf25a21f93b29a037991ae5dfb5e8a98`  
		Last Modified: Wed, 27 Feb 2019 22:27:16 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdabb2952aa592816b4a1ae7ea5bbdba9abcc0651b3c82afe641256d5c82dce`  
		Last Modified: Wed, 27 Feb 2019 22:28:55 GMT  
		Size: 279.2 MB (279209822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gazebo:libgazebo10-bionic` - linux; arm variant v7

```console
$ docker pull gazebo@sha256:2e803e9453b35bbd711dc42734597167bc7ea38b636e4d602b03f9a55be5aa33
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **512.0 MB (511957224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6217eac1585583e4f985ba4d308cb4f894489ceb5adc90b7b2d7630dcc85494f`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 07 Feb 2019 14:56:33 GMT
ADD file:7fa4afa33b899acbfff8b13de217461072573310dbb0b51dd7c2a9e7beaa1b08 in / 
# Thu, 07 Feb 2019 14:56:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 07 Feb 2019 14:56:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 14:56:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 07 Feb 2019 14:56:40 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 15:23:17 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:23:44 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:23:48 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Thu, 07 Feb 2019 15:23:50 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Thu, 28 Feb 2019 13:00:37 GMT
RUN apt-get update && apt-get install -q -y     gazebo10=10.0.0-1*     && rm -rf /var/lib/apt/lists/*
# Thu, 28 Feb 2019 13:00:39 GMT
EXPOSE 11345
# Thu, 28 Feb 2019 13:00:39 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Thu, 28 Feb 2019 13:00:40 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Thu, 28 Feb 2019 13:00:40 GMT
CMD ["gzserver"]
# Thu, 28 Feb 2019 13:03:57 GMT
RUN apt-get update && apt-get install -q -y     libgazebo10-dev=10.0.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:48cb104a58ab4bd8aabe399e32c584321c2b488a815a0242a471e9888ea1c5d2`  
		Last Modified: Thu, 07 Feb 2019 14:58:40 GMT  
		Size: 27.7 MB (27659486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5010f922d7826f46b44c0c2b0e563171224b66058e5f993e08044c835004ea32`  
		Last Modified: Thu, 07 Feb 2019 14:58:33 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b93c416a0aa71d8bfd59c538293a483f2a9f74ed601cbe5c216b035cbe5eb6f`  
		Last Modified: Thu, 07 Feb 2019 14:58:33 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa8bb6d25016c46054b2633ad03a1c240107c69f4f26b9637f5f4bf44b6a7f1`  
		Last Modified: Thu, 07 Feb 2019 14:58:33 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54379fc66721f19bf514cfdb9cb914474cd5219609cac9f36660d48a249265ce`  
		Last Modified: Thu, 07 Feb 2019 15:36:11 GMT  
		Size: 836.8 KB (836843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c886d41fc84815c2f26fd8ca2c4b2ffee65b53982ccd415e90c47748960a03e9`  
		Last Modified: Thu, 07 Feb 2019 15:36:14 GMT  
		Size: 13.2 MB (13240261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d2090cfa479371f5575fc01a4d92f0d353031ba831873fc3914a9989622d24`  
		Last Modified: Thu, 07 Feb 2019 15:36:10 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc4b4864a2e99ef8b827cee18795b532974ead5eeb3e2578afd4532d0837ada`  
		Last Modified: Thu, 07 Feb 2019 15:36:09 GMT  
		Size: 5.5 KB (5464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5e673b4e3bd6af462ec2cbe77afdb0f875fd8b68f606cf614df772e034adc46`  
		Last Modified: Thu, 28 Feb 2019 13:05:18 GMT  
		Size: 227.1 MB (227051811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a7e4106e179ddd26a6da6d11291a8f1ca6758fd9b810449aa765f84f620c90`  
		Last Modified: Thu, 28 Feb 2019 13:04:15 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21c1de3643a62aa3e5fa71c9ec5fe75e0a81e96170a2fe1017a94f3f5b9c6f70`  
		Last Modified: Thu, 28 Feb 2019 13:06:57 GMT  
		Size: 243.2 MB (243160200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gazebo:libgazebo10-bionic` - linux; arm64 variant v8

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
