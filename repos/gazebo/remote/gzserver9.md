## `gazebo:gzserver9`

```console
$ docker pull gazebo@sha256:ab67df3804f9118a15243752d57735b943908ce8679ee3f84940abad9d1b8ff7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `gazebo:gzserver9` - linux; amd64

```console
$ docker pull gazebo@sha256:7d8118055da1aec3900d85f07175f9bd2aaa387ea7b45e7287f5d26db1d169b5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.4 MB (300432531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc42475b1f8e80fda9b08ef7263d6374553ec5ab51d326de4ab8bfd6b6ba467d`
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
# Wed, 06 Feb 2019 06:24:53 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 06:24:53 GMT
EXPOSE 11345
# Wed, 06 Feb 2019 06:24:54 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Wed, 06 Feb 2019 06:24:54 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Wed, 06 Feb 2019 06:24:54 GMT
CMD ["gzserver"]
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
	-	`sha256:451e64e145be2d5f3f60826b1fd9d51163572046d2f325630e0d833348028135`  
		Last Modified: Wed, 06 Feb 2019 06:40:53 GMT  
		Size: 252.3 MB (252299513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9599a7ea790046e8efec1d2a9b96698ecebdccb79117aa04d37c287068589fb2`  
		Last Modified: Wed, 06 Feb 2019 06:40:05 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gazebo:gzserver9` - linux; arm variant v7

```console
$ docker pull gazebo@sha256:1c3da563c374858f0a6be5b51a3766c1cdb574b697d6a011cfddf04d5cb5b269
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268688299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e81154842dcc91799068ad7417f8d7c70d911ec929138de39a9b6583bfe73b5b`
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
# Thu, 07 Feb 2019 15:26:31 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:26:33 GMT
EXPOSE 11345
# Thu, 07 Feb 2019 15:26:33 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Thu, 07 Feb 2019 15:26:33 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Thu, 07 Feb 2019 15:26:34 GMT
CMD ["gzserver"]
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
	-	`sha256:b03620fb4bb54df8254229f0f674d94777ee79e31a0f384f0db753f6b00d23bb`  
		Last Modified: Thu, 07 Feb 2019 15:37:14 GMT  
		Size: 226.9 MB (226943086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc6d661572b6fd03480acb500783eb49e789dec5e2dcd4b93f6a4433c4805a2`  
		Last Modified: Thu, 07 Feb 2019 15:36:09 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gazebo:gzserver9` - linux; arm64 variant v8

```console
$ docker pull gazebo@sha256:06fa0c105f32c37e57a2f23b3c850bea8ee6672d66a6fbcf9055d211370d0b57
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.0 MB (281998545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5928e32286b571583ab7c23dd2b7f9d132fd0f415b4b048df9467d3b68126d32`
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
# Wed, 06 Feb 2019 20:56:51 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:56:54 GMT
EXPOSE 11345
# Wed, 06 Feb 2019 20:56:55 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Wed, 06 Feb 2019 20:56:56 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Wed, 06 Feb 2019 20:56:59 GMT
CMD ["gzserver"]
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
	-	`sha256:38aae3cc36ff96fe0d03b4b70813218ab7ef06df6063159db1483e65bd191aac`  
		Last Modified: Wed, 06 Feb 2019 21:41:11 GMT  
		Size: 238.2 MB (238197752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:718d9bdf0c67dcfb0f06400a97e7c64fdedb8e738f7afb4f28eb82f797429efe`  
		Last Modified: Wed, 06 Feb 2019 21:39:58 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
