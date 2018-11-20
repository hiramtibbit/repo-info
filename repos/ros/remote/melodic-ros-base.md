## `ros:melodic-ros-base`

```console
$ docker pull ros@sha256:69cd51acc2e2fc747bf6d8a1dd84c5a48493ce5c13e4f4b542ac5a4c9711efbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:1072ed7484b9787b53a999f8d7bd1fb87ada312bc96c794b3ef1551f6f80c79e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **427.0 MB (427036617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57d0a245020377ed5a2022d29e4fef0d64e9949ae60f1fe1b67e7c837809793e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:20:39 GMT
ADD file:39e5bc157a8be63bbb36a142e18b644b0cfff07a8a02b42f7d0c4ee4ba75a5bc in / 
# Mon, 19 Nov 2018 21:20:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:20:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:20:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:20:42 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:07:47 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:07:58 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:20:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 19 Nov 2018 23:20:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 19 Nov 2018 23:21:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:21:11 GMT
ENV LANG=C.UTF-8
# Mon, 19 Nov 2018 23:21:11 GMT
ENV LC_ALL=C.UTF-8
# Mon, 19 Nov 2018 23:21:24 GMT
RUN rosdep init     && rosdep update
# Mon, 19 Nov 2018 23:21:24 GMT
ENV ROS_DISTRO=melodic
# Mon, 19 Nov 2018 23:24:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:24:21 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 19 Nov 2018 23:24:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 19 Nov 2018 23:24:35 GMT
CMD ["bash"]
# Mon, 19 Nov 2018 23:26:26 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:32802c0cfa4defde2981bec336096350d0bb490469c494e21f678b1dcf6d831f`  
		Last Modified: Tue, 13 Nov 2018 08:24:33 GMT  
		Size: 32.1 MB (32102249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1315cffa03c17988ae5c66f56d5f50517652a622afc1611a8bdd6c00b1fde3`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa83472a3562898caaf8d77542181a473a84039376f2ba56254619d9317ba00d`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85999a86bef2603a9e9a4fa488a7c1f82e471cbb76c3b5068e54e1a9320964a`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e382f7508b8d36f9ec94df8f13c4d28fde57004adc8b5530f7770ab8437227aa`  
		Last Modified: Mon, 19 Nov 2018 22:24:04 GMT  
		Size: 833.4 KB (833385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1dfc85356889358b7533b43d33d52477fc468a0f74b82e7646bf4b604c6cde`  
		Last Modified: Mon, 19 Nov 2018 22:24:07 GMT  
		Size: 14.9 MB (14909246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e0d19cf2d8ff5c2180acc5716b520dc52cb957eb7b28514fa073e3e3fd06326`  
		Last Modified: Mon, 19 Nov 2018 23:52:06 GMT  
		Size: 1.4 KB (1390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7264fb287efaa64107d47bc438bc4ed6cd30652bb7bd8fbb89e3832acc38477d`  
		Last Modified: Mon, 19 Nov 2018 23:52:05 GMT  
		Size: 5.4 KB (5414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb5233a70ae0f4c658a5e531b6f449e9ed17db79753785316fb8eced9df28f5`  
		Last Modified: Mon, 19 Nov 2018 23:52:18 GMT  
		Size: 49.4 MB (49402869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bddaca33be12e6910850d6157d765e5b91e4b36685cca3c02b7b9461bafcc655`  
		Last Modified: Mon, 19 Nov 2018 23:52:05 GMT  
		Size: 835.4 KB (835394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:253da1852d06277b23156e8a0e5b78f5e51eacc0554a096ef2981f6203717185`  
		Last Modified: Mon, 19 Nov 2018 23:52:59 GMT  
		Size: 260.8 MB (260768239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674e41a50dfe92e70c357c9829516f1dbd5cff2ddddef5f024b7f8b5b1a8b6c0`  
		Last Modified: Mon, 19 Nov 2018 23:52:04 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4478cdad51c632688226442e6c6037431f0f3b7f2a6a20ad4e805800bebaaefa`  
		Last Modified: Mon, 19 Nov 2018 23:54:08 GMT  
		Size: 68.2 MB (68176671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:164fe368d684e04dca6bca04904aaf38c7b7ca3e0b58459ecea6a9f9533ed283
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.5 MB (379485332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c825ce84229314d95cf1476989cc264aa15f73f9b173038d31f0133726f499f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 19 Oct 2018 12:27:59 GMT
ADD file:2cea81f148467da28c67eb5a52d47c6c05cdc44a8c91fa9c5b509f31842939e1 in / 
# Fri, 19 Oct 2018 12:28:01 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 12:28:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:28:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 12:28:04 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 13:27:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:28:22 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:28:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 19 Oct 2018 13:28:25 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 19 Oct 2018 13:29:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:29:29 GMT
ENV LANG=C.UTF-8
# Fri, 19 Oct 2018 13:29:30 GMT
ENV LC_ALL=C.UTF-8
# Fri, 19 Oct 2018 13:29:53 GMT
RUN rosdep init     && rosdep update
# Fri, 19 Oct 2018 13:29:57 GMT
ENV ROS_DISTRO=melodic
# Fri, 19 Oct 2018 13:33:33 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:33:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 19 Oct 2018 13:33:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 19 Oct 2018 13:33:41 GMT
CMD ["bash"]
# Fri, 19 Oct 2018 13:35:00 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:23025a23403ab115317132bd4ce2282a37103e3badb6f003949007c400c9d648`  
		Last Modified: Fri, 19 Oct 2018 12:30:18 GMT  
		Size: 27.4 MB (27396734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99727326c2f3e63be08e7cf6e87cb88af41f7fcc6d4d03b326cba116f1bb3da2`  
		Last Modified: Fri, 19 Oct 2018 12:30:10 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241db6d0729bfb3be0a6aae4cca0edeb72ce43ee2e9812c306762f89249209be`  
		Last Modified: Fri, 19 Oct 2018 12:30:10 GMT  
		Size: 562.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54bb1a4b4b1e0196ebd9471b061206953e65a9862af42a38e824cae19e345392`  
		Last Modified: Fri, 19 Oct 2018 12:30:11 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b87388a705e45f1908fe201901ba7b759a1671391f0ec03566dec65b5f871ce`  
		Last Modified: Fri, 19 Oct 2018 13:53:07 GMT  
		Size: 833.1 KB (833144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d145a5034810d407a002061a6689101ae7f521443ecddacb4ded45077d8bb2`  
		Last Modified: Fri, 19 Oct 2018 13:53:10 GMT  
		Size: 13.2 MB (13230870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd0913bcab6e7bf81628f99ccbbb19f39c10fe45875953e4c40dd13e8227cae`  
		Last Modified: Fri, 19 Oct 2018 13:53:08 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a6ff941ef36e02c97ff8dd57cd7521f3e096053f3ec1aaee25fef7e937a890`  
		Last Modified: Fri, 19 Oct 2018 13:53:05 GMT  
		Size: 5.5 KB (5450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de06668d4d0b12f74e968678730d65ab247a0f614659e73bafd10a6856ab208`  
		Last Modified: Fri, 19 Oct 2018 13:53:20 GMT  
		Size: 45.0 MB (45017149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8bd7409b8b50c2844888a2d029bc3cc5fdd0e0c124f3655bf76bd3c191d74aa`  
		Last Modified: Fri, 19 Oct 2018 13:53:05 GMT  
		Size: 828.1 KB (828123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da70bd0a812dada38e7248bc78186c754bf2a4be9f5a71724ee3b237644756df`  
		Last Modified: Fri, 19 Oct 2018 13:54:08 GMT  
		Size: 232.2 MB (232185350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515d854332fe75ca2df1e1a4cf44a277cba6222029a3476b0f0961c06b40878b`  
		Last Modified: Fri, 19 Oct 2018 13:53:04 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945468883d277fe25f9e4ff40adbf8fca5edc707221c62332f72e2035327a71f`  
		Last Modified: Fri, 19 Oct 2018 13:54:41 GMT  
		Size: 60.0 MB (59985325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:bf4c58c2ed04665f68f538b5f889c9bf80bb0bac76e22d64edd76a417f4aed8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.3 MB (358251027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e51e84870e42b5c7d84a7797a5b1756d892291b5425e6b6c3f2acd099adf06c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 12:03:59 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 12:05:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 12:06:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:06:32 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 12:06:33 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 12:07:15 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 12:07:15 GMT
ENV ROS_DISTRO=melodic
# Tue, 20 Nov 2018 12:18:51 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:19:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 12:19:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 12:19:13 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 12:22:11 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc3ab4250df68a117e60e76acbfa48b3f7e9579e7be4727b50a2b1a3bc44d7f`  
		Last Modified: Tue, 20 Nov 2018 12:51:40 GMT  
		Size: 833.1 KB (833126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcbb0d04c2fe8d45073e7e09d93f4d890963da4407bdc2987f8a2458ea6e68c`  
		Last Modified: Tue, 20 Nov 2018 12:51:45 GMT  
		Size: 13.8 MB (13835925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2fe63443518d55cb1cf8802ef75e8155d57a660901bac6b7c21a86b01195e5`  
		Last Modified: Tue, 20 Nov 2018 12:51:36 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8ec4c61ab5951763620e2b6ea609b58d602324d2416870cb045885bf0876ef`  
		Last Modified: Tue, 20 Nov 2018 12:51:34 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170bc8fb6226cdf08ce1618ed9e88e1b7fc1485ea5403876af44ad067f152f56`  
		Last Modified: Tue, 20 Nov 2018 12:52:03 GMT  
		Size: 47.6 MB (47612207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15cacac74417f1c724362873606c45f5b473dec16ddc5cfb49aea76abebb029d`  
		Last Modified: Tue, 20 Nov 2018 12:51:35 GMT  
		Size: 835.4 KB (835401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:508331c6872539dbdae86448f6f8f74fafc48e38e68e3aadaa3bd5e4e24f27e6`  
		Last Modified: Tue, 20 Nov 2018 12:53:05 GMT  
		Size: 202.8 MB (202838728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81ddd026ca070256f778bd84d7713128b7760ee9b9b46ae5a4926589d92d0dd`  
		Last Modified: Tue, 20 Nov 2018 12:51:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bc50b68808001ad58f5e8a916faf21165438c9f28e0a08417f21c551c3b93c`  
		Last Modified: Tue, 20 Nov 2018 12:54:00 GMT  
		Size: 63.4 MB (63393189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
