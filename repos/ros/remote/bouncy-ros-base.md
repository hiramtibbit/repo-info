## `ros:bouncy-ros-base`

```console
$ docker pull ros@sha256:491e877bc66fabb6e57fd945afe5e440992b73d675ec7d59ee2d90beb92a3629
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:bouncy-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:50a0884283ff95b04e2272965ae1b302f8c0c5e73ffa9dc653bf48b2e48f3300
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.6 MB (274610808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75cb952de3c0ad1243436060d4a89db7269692ad93e58b9ce87cb4703a84c1f7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

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
# Tue, 12 Mar 2019 01:23:35 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:23:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 01:23:43 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 12 Mar 2019 01:24:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:24:28 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 01:24:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 01:24:39 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:24:41 GMT
RUN pip3 install -U     argcomplete
# Tue, 12 Mar 2019 01:24:41 GMT
ENV ROS_DISTRO=bouncy
# Tue, 12 Mar 2019 01:25:32 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:25:33 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 12 Mar 2019 01:25:33 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:25:33 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 01:25:55 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:cfb977d0f5d6ef93abd7ba875e15007fde95ec312df3b5a7adb64a03ec335af7`  
		Last Modified: Tue, 12 Mar 2019 01:40:04 GMT  
		Size: 151.6 MB (151582840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87d1f9fdefbbe3fe841c742d0cd8fb1d83f96314df24f68b6a032be5fcaf41b`  
		Last Modified: Tue, 12 Mar 2019 01:39:31 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78fee6c791997a2083658b9d3fd0cf7cd32793db03b78977c9e06f39f93407ea`  
		Last Modified: Tue, 12 Mar 2019 01:39:31 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f1ff83333572bf76d3a0890ab624b232ab9bcc1d288eec39a512ab886a6e9b`  
		Last Modified: Tue, 12 Mar 2019 01:39:43 GMT  
		Size: 38.2 MB (38228353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85228b93af889cf4de7365d018e5fd7f38076a125429030726fde3b627df498c`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 611.9 KB (611856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2b96ac01896c80dcbd69856013f82c926490a7b2a173b4b55429c77c34ab51`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 93.9 KB (93858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2145329786b7f67d5b6d395fb5fef8f6385a32d1c09eb20f09f5ded6e5301f7`  
		Last Modified: Tue, 12 Mar 2019 01:39:50 GMT  
		Size: 47.6 MB (47647701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1c853455a7d51b13ff45a9ac30d125204c4c6e75dbafe8e6befb6d098075856`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ee6805609a058fceae7f700bf9564371d0fb0f2397f1b04fdc9e74d3cdf78a`  
		Last Modified: Tue, 12 Mar 2019 01:40:15 GMT  
		Size: 3.1 MB (3134424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:bouncy-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:23e760b89262b3ab7a96150976772700400ff7291aa1775d0062fdbf0744fa9f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.8 MB (204795680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19218d189cd55499595d1d1300a875060b6b061b6faa3d1204d859b59a0a0d3b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

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
# Thu, 07 Feb 2019 01:08:10 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:08:14 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 07 Feb 2019 01:08:17 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Thu, 07 Feb 2019 01:10:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:10:59 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 01:11:00 GMT
ENV LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 01:11:50 GMT
RUN rosdep init     && rosdep update
# Thu, 07 Feb 2019 01:12:00 GMT
RUN pip3 install -U     argcomplete
# Thu, 07 Feb 2019 01:12:01 GMT
ENV ROS_DISTRO=bouncy
# Thu, 07 Feb 2019 01:16:46 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:16:52 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Thu, 07 Feb 2019 01:16:54 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 07 Feb 2019 01:16:58 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 01:17:37 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:f87b532a3c2dac876db4304a4ecb095bc22db287f0a0731f8e12da2a0c4e4b19`  
		Last Modified: Thu, 07 Feb 2019 01:50:55 GMT  
		Size: 97.0 MB (96999850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ae486b257f9a45ca76b53938da11076906aa2d8fd7a96f93de3e0a319795ab`  
		Last Modified: Thu, 07 Feb 2019 01:50:13 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56fd298cb78d7687ec9178d2db7ea2c46183cf760bbd04bb21d37978d295a073`  
		Last Modified: Thu, 07 Feb 2019 01:50:13 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:915382865cb0e31bf55bde7beb27efa65b3d1b276fc1e76670e3dade9b97f620`  
		Last Modified: Thu, 07 Feb 2019 01:50:28 GMT  
		Size: 36.6 MB (36605938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5861485a537988e98170021b77a03551431e5132f74a0c65b30a508f8fd089`  
		Last Modified: Thu, 07 Feb 2019 01:50:11 GMT  
		Size: 598.2 KB (598233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8a204a6b4431703ed6b5f52bd0366e843fbfd6eba8b2e242fb55825c69069c`  
		Last Modified: Thu, 07 Feb 2019 01:50:11 GMT  
		Size: 93.9 KB (93866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d404aa64ffa7aeb5a0f77d674a10f5d4927a281aa8bba62d0e472adadefe87`  
		Last Modified: Thu, 07 Feb 2019 01:50:33 GMT  
		Size: 37.6 MB (37646590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c84d23e436b782bcd9bb2072d752b609338226de26f15e5908f62c7775580b`  
		Last Modified: Thu, 07 Feb 2019 01:50:11 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f533a8a7ecea9a63a2dcf7e0744583a98760db6bf059bcf6a5c6dc05f3227e`  
		Last Modified: Thu, 07 Feb 2019 01:51:06 GMT  
		Size: 2.9 MB (2892884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
