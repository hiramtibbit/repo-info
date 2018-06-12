## `ros:lunar-ros-core`

```console
$ docker pull ros@sha256:1c1c2e9c9928c161b120800415d65ab26b4b873ebfc1fc6398ad7b196e7033cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:71da947c02cb34af0b3a80650be8ba24c8a6ff4b200bd70861b89a606bd14ed1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.9 MB (298861238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:652d406eb7f53293bea4aa0dc7860342de30a767177a816c45109aa838314ec0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Thu, 07 Jun 2018 02:57:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:59:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 00:59:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 01:01:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:01:07 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 01:01:08 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 01:01:27 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 01:19:30 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Jun 2018 01:20:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:20:53 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 01:20:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 01:20:53 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890b0e6e0ef97b20ec534c382e1e1a4c92d6974d6d03d3deb16c0f10578569b1`  
		Last Modified: Thu, 07 Jun 2018 03:26:16 GMT  
		Size: 16.7 MB (16658866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418c376d4ff71cb189d3f2ad7fd879a28dcf3d8a32a38befd7b9c9010d061365`  
		Last Modified: Tue, 12 Jun 2018 02:20:05 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64005e782cae5cfc71d5d8b01a481249516f13843811f8c07e774a0d764dc88e`  
		Last Modified: Tue, 12 Jun 2018 02:20:02 GMT  
		Size: 5.5 KB (5506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff6eb745a64347053d06988aa7479ccc3284e905640f263218c34b48737872f5`  
		Last Modified: Tue, 12 Jun 2018 02:20:25 GMT  
		Size: 44.9 MB (44862646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5869fc52ffbb7536c247ef5b5df28aa31f93e5c4c9f3698443cc2ff6890dcb10`  
		Last Modified: Tue, 12 Jun 2018 02:20:03 GMT  
		Size: 868.3 KB (868291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7238c068225825df2beddea0390594a7df5c93a4a32515ab4886b5857ee47d9c`  
		Last Modified: Tue, 12 Jun 2018 02:28:45 GMT  
		Size: 193.3 MB (193327687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc96691df0b61ffb2460787fdc1e93c79cb19100d6e1e99585eadd05da24616a`  
		Last Modified: Tue, 12 Jun 2018 02:27:24 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:3c47dc7b22cc9c60001de030f86b0c0af97fcd393de5d48bca688896dbc368ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.2 MB (259176470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:964265330a93de83d8633f39951f21cd92fd2c55969d17a6d02fd68c7b08974d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:05:33 GMT
ADD file:1e3efdebaf133af6b22e61da056500ff8cf5292f051296f69abd35f44da5625c in / 
# Sat, 28 Apr 2018 12:05:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 12:05:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:05:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 12:05:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 12:05:50 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 12:08:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:08:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 12:08:52 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 12:09:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:09:34 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 12:09:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 12:09:57 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 12:16:42 GMT
ENV ROS_DISTRO=lunar
# Sat, 28 Apr 2018 12:18:04 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:18:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 12:18:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 12:18:15 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f68dc00194f474ccfe395953a935f0a65f37edc5e218b6f310f432b3866f9bac`  
		Last Modified: Sat, 28 Apr 2018 12:09:03 GMT  
		Size: 38.1 MB (38126697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:281b914f46e3b5e9fac0f9436525399186a66cb5abb5403eed9940d4207e15b4`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:754b205ebc944011540b5d7c371fe39a5cb49890d018253fcd39db61040dfed3`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1418c61fca2a7e383833d9b12bd7adf62e311bf6350037e68503fbbbdfb8cc2b`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b471dd10511e8664a33e00815086f40bdfd8c30a16f93b190084bb5bb8a993f`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5050587be2fd4accc805402daed25e9344bd052ced481a6ecd1a5754102cb84`  
		Last Modified: Sat, 28 Apr 2018 12:27:40 GMT  
		Size: 4.6 MB (4614906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334ce8d248512220d545aecf150f8b8172bbd3e4c62f9cdc4c1e814053440912`  
		Last Modified: Sat, 28 Apr 2018 12:27:38 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d06c2ef1c00b3cb66443790e82ae98882427dfc78b0009b2b801bdd0387146`  
		Last Modified: Sat, 28 Apr 2018 12:27:41 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b97dba49af961b21651a5255033ef01a2c0100029e05207d73befd0c45f6d85`  
		Last Modified: Sat, 28 Apr 2018 12:27:55 GMT  
		Size: 50.7 MB (50671071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1310601b6139b280f88b623eeaef6873b2ed293d2e09bc94346f6a444ab9973`  
		Last Modified: Sat, 28 Apr 2018 12:27:38 GMT  
		Size: 833.2 KB (833166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08118158eff956ccf6049e24b2f4fdc1f4450a505d85654be6726518a4e26b48`  
		Last Modified: Sat, 28 Apr 2018 12:32:52 GMT  
		Size: 164.9 MB (164914641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333082bc4516b0aeb21520abb86eecc31f08b6ed0c020598e2f0191242f3d8b9`  
		Last Modified: Sat, 28 Apr 2018 12:32:03 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:037889c584222d7ebf6379366b1ace26e16b2c55c9d0c5ed4c42d71ccc24d2e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.6 MB (271649768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3468d49027c093177c52b07b123b9498f0286f758c78401dd5112bbc86f255ca`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:38:27 GMT
ADD file:4d66a098626c376a1c073e0332a6c8d18aa8cc0dbadb329fd506fdfa59793143 in / 
# Wed, 06 Jun 2018 09:38:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:38:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:38:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:38:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:38:37 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 10:53:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:53:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Jun 2018 10:53:53 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Jun 2018 10:56:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:56:37 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 10:56:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Jun 2018 10:57:18 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Jun 2018 11:36:27 GMT
ENV ROS_DISTRO=lunar
# Wed, 06 Jun 2018 11:46:25 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:46:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 06 Jun 2018 11:46:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Jun 2018 11:46:33 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:21707c5c72669fddc5511cbdced3327d864e1cb7aa4d1d273beb008be29c82dc`  
		Last Modified: Mon, 28 May 2018 14:58:41 GMT  
		Size: 39.3 MB (39283293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b2716544889f4e40c0d32347e352b47046e2b8f272a78cd166f50462a2010a`  
		Last Modified: Wed, 06 Jun 2018 09:43:13 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3396a4a881d875be937f4b13c557a03aca52cb7d058d39395da1f896f8feda23`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f138533abd45add28f8a1ca64239b68a83458387b0d2b1066002ca9b94f6215`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7992862215acd8daf7477cdc3dea5fbf67934989b013a18828f88e64ea00d70a`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5513f215bbf7acfd38964524a1eaac5b11a0e27fc741a7183c358395cef4e50c`  
		Last Modified: Wed, 06 Jun 2018 12:57:11 GMT  
		Size: 4.8 MB (4819093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdeb7ffb4b47fcffe7c2c7dfd8d429878fccff58545255983d1e76f80b7c1058`  
		Last Modified: Wed, 06 Jun 2018 12:57:08 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214fc6f14a0bae2f268d481aefd9d2ea3f148eee2bb7c06d44b82bce831f091d`  
		Last Modified: Wed, 06 Jun 2018 12:57:05 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987212f23d3b893edb3c8af99a9bb217e47d437abe5f8460517d3be1dd2be593`  
		Last Modified: Wed, 06 Jun 2018 12:57:42 GMT  
		Size: 52.5 MB (52480651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a923b1a020d94d073ef0fa057e9f1045cfbe9ce6b0993d4f4bf8e9411c295899`  
		Last Modified: Wed, 06 Jun 2018 12:57:06 GMT  
		Size: 866.5 KB (866506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980ff051d2f4521ab85a1af304a9c1686249bad5defdfa5bdd274ba208332087`  
		Last Modified: Wed, 06 Jun 2018 13:06:09 GMT  
		Size: 174.2 MB (174184235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cab6bee251d01ea96be4bfb8866e8325329c0e3d6f8c81a56d7ab948bf8bb42`  
		Last Modified: Wed, 06 Jun 2018 13:05:00 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
