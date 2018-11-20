## `ros:melodic-ros-base-bionic`

```console
$ docker pull ros@sha256:77c8ba5fbbdb269e47d4b943fa0b7c89c194850e8be978e8224d451b36517197
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-base-bionic` - linux; amd64

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

### `ros:melodic-ros-base-bionic` - linux; arm variant v7

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

### `ros:melodic-ros-base-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:050a6472607c40f33e0aa477fc60a3cbca31d411253ae559e3a8d46351b85aad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.1 MB (358147246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae0f18cd45bdda894a26e1dca54a52bce6f10391e94f1b8b9ad6786dd9f272c9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 19 Oct 2018 11:20:49 GMT
ADD file:110950580db69973226966e62607ac770285caf76a247ce5a8c606c65aa04b50 in / 
# Fri, 19 Oct 2018 11:20:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 11:20:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 11:20:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 11:20:56 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 14:33:11 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 14:35:22 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 14:35:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 19 Oct 2018 14:35:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 19 Oct 2018 14:37:51 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 14:37:54 GMT
ENV LANG=C.UTF-8
# Fri, 19 Oct 2018 14:37:56 GMT
ENV LC_ALL=C.UTF-8
# Fri, 19 Oct 2018 14:38:39 GMT
RUN rosdep init     && rosdep update
# Fri, 19 Oct 2018 14:38:40 GMT
ENV ROS_DISTRO=melodic
# Fri, 19 Oct 2018 14:48:39 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 14:48:45 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 19 Oct 2018 14:48:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 19 Oct 2018 14:48:47 GMT
CMD ["bash"]
# Fri, 19 Oct 2018 14:51:43 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:71878b774cb38a9ed46024ada7a9e0634060697119a8c4c07c611646264513f3`  
		Last Modified: Fri, 19 Oct 2018 11:23:39 GMT  
		Size: 28.8 MB (28833238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1b922a83c7f524b935e8e6b9d738697762972d95fce4c7c269f5cd2c754055`  
		Last Modified: Fri, 19 Oct 2018 11:23:28 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab46b3e1d46e0d1ef143520251afe8bc630c0ab04c2dbf8ac097c7007aaa85f`  
		Last Modified: Fri, 19 Oct 2018 11:23:28 GMT  
		Size: 562.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:169c13f4edfd32451d6658b4c4c8176b38f232d0a3de07d2a9ca253c2c2848ba`  
		Last Modified: Fri, 19 Oct 2018 11:23:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54633e5284eed4695397b3148aaff8d2d4a5e3fce9118dfe99657fff3bf588b5`  
		Last Modified: Fri, 19 Oct 2018 15:30:21 GMT  
		Size: 833.0 KB (832998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e69f6f5999a5c7d3f4bd568181f1ca1d37b4fcb5a49eff064e3722e2ed6c040e`  
		Last Modified: Fri, 19 Oct 2018 15:30:27 GMT  
		Size: 13.8 MB (13823729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1d097c772d5f43e6a2896d3adce59b3094a36f40be164d1c1f9faab85a4586`  
		Last Modified: Fri, 19 Oct 2018 15:30:17 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:516b1b2b478645a51df9d17150d227c9b75eeea2e4ef8fd4c8c4a92b8a4aaca3`  
		Last Modified: Fri, 19 Oct 2018 15:30:15 GMT  
		Size: 5.4 KB (5419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e227fc3bb88b6ed0cdd978500c2369845a77453dafac3420620ce138d839dbbb`  
		Last Modified: Fri, 19 Oct 2018 15:30:39 GMT  
		Size: 47.6 MB (47611551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8e0d09b51297af470a85fc7bbe2fac5494df605fd85be725c12f2de9b593363`  
		Last Modified: Fri, 19 Oct 2018 15:30:18 GMT  
		Size: 828.1 KB (828132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91d62e0e3d12789858e38af9d49ffea8c172454463a2bd3dfed3ea76d8c00496`  
		Last Modified: Fri, 19 Oct 2018 15:31:39 GMT  
		Size: 202.8 MB (202818544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e384e2b86f50f83f8e6308a0519bbd2aa86fa27699c198e97bd56846447a4cc6`  
		Last Modified: Fri, 19 Oct 2018 15:30:15 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aa23be7653f3df19b088346d4b32b991aab9282dd3cfcc2d836728fab68ccbb`  
		Last Modified: Fri, 19 Oct 2018 15:32:35 GMT  
		Size: 63.4 MB (63390471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
