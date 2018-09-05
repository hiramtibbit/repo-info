## `ros:lunar-robot`

```console
$ docker pull ros@sha256:8a099396d8cb15b4a7fb923ceed8cb1d3ba3beb2a1d829b0d46f40650d66cb58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot` - linux; amd64

```console
$ docker pull ros@sha256:7ccab1c7f6ca62fd99373c7c4d4684605d8343f38e01a371e08e14e36bc84f0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **488.2 MB (488217331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ee20493b78f207992cc13251a767fb25b70e52229bf0c70d38b1fbd18ddbe97`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 22 Aug 2018 17:31:28 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 22 Aug 2018 17:31:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:31:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:31:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:31:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:31:32 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 07:05:14 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 07:05:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 05 Sep 2018 07:05:16 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 05 Sep 2018 07:06:00 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 07:06:01 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 07:06:01 GMT
ENV LC_ALL=C.UTF-8
# Wed, 05 Sep 2018 07:06:14 GMT
RUN rosdep init     && rosdep update
# Wed, 05 Sep 2018 07:16:32 GMT
ENV ROS_DISTRO=lunar
# Wed, 05 Sep 2018 07:17:26 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 07:17:27 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 05 Sep 2018 07:17:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 05 Sep 2018 07:17:27 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 07:18:13 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 07:19:10 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba077e1ddb3aa8b95b2ecc5e58830800af4f5c06a5a37a3b7d7e0a67e178fb65`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c83d2bc656952f573cee825d42e58622909b4be524b653f4f3df7464e57aa2`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b69b6e47437924b207458fe7fc8f66812622983ae5a5d84bfdd2d83a9581e1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f72e97e1f61face716660657e4df5f70c2008a0b8b89e35dc6a460124fe01d1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be116a5be86cb571dee31dcc43731a8583792e582388818bebae7f86d4e4df6`  
		Last Modified: Wed, 05 Sep 2018 07:53:56 GMT  
		Size: 16.7 MB (16658085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d986d69ce41f16eaa52af29cb032a318c160b6d44338991453afa0fd3aec36fd`  
		Last Modified: Wed, 05 Sep 2018 07:53:49 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6902addd134c345591ba938322b16deefce9290e5ac6c8b950f05e51236344`  
		Last Modified: Wed, 05 Sep 2018 07:53:48 GMT  
		Size: 5.5 KB (5508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14750713bec75dcd1ccf314b383f03b80906ab3e95ff473f8f47e6d60bd4a794`  
		Last Modified: Wed, 05 Sep 2018 07:54:07 GMT  
		Size: 44.9 MB (44863254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:470893d7f517517d4429f416a425739530027bc2e191d0f57bc1f991ed5a968f`  
		Last Modified: Wed, 05 Sep 2018 07:53:49 GMT  
		Size: 809.8 KB (809757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:521b496fd3ff9c736fdcd45cbf4d1fa605124bca3d8f6d62cdc67165acc6e97e`  
		Last Modified: Wed, 05 Sep 2018 07:58:57 GMT  
		Size: 193.3 MB (193272136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abda5e1780bbd6fb16965d587245796ad546ea0dd3cd1ae7ae2a0be0adecc9c0`  
		Last Modified: Wed, 05 Sep 2018 07:58:14 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42ae42401a7fc9b39b1aef98ab7221206af61919b7fc644d41eeb7ead77a893c`  
		Last Modified: Wed, 05 Sep 2018 07:59:26 GMT  
		Size: 85.6 MB (85614694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5abc6504cb0a2f3b3aa2fdead7cbec6d0040a3abc6f42b25af3edbc04b953e72`  
		Last Modified: Wed, 05 Sep 2018 08:00:02 GMT  
		Size: 103.7 MB (103725634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:05c55b94973d9ded58fffb497f61c071fff35251c4713703e038291156ce99c0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.1 MB (426095842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a408d4675c24d4082778625f4d3717b87594b121e5347957410f204667c6cfbb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 23 Aug 2018 13:30:31 GMT
ADD file:ec16ba3ed2a60cabc3d3a02b77550583a9bdaaa21c0b2fdfca075f5e6607bfaa in / 
# Thu, 23 Aug 2018 13:30:32 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 13:30:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 13:30:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 13:30:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 13:30:35 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 14:32:34 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 14:32:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 23 Aug 2018 14:32:37 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 23 Aug 2018 14:33:41 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 14:33:42 GMT
ENV LANG=C.UTF-8
# Thu, 23 Aug 2018 14:33:42 GMT
ENV LC_ALL=C.UTF-8
# Thu, 23 Aug 2018 14:34:04 GMT
RUN rosdep init     && rosdep update
# Thu, 23 Aug 2018 14:45:35 GMT
ENV ROS_DISTRO=lunar
# Thu, 23 Aug 2018 14:49:01 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 14:49:04 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 23 Aug 2018 14:49:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 23 Aug 2018 14:49:07 GMT
CMD ["bash"]
# Thu, 23 Aug 2018 14:52:02 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 14:54:33 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:af302151c3b45b161206d5822da1fded5eee8c164e33dff0892305647273a68c`  
		Last Modified: Thu, 23 Aug 2018 13:33:01 GMT  
		Size: 38.3 MB (38293360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:564e544080788c71f1011b40e98ee8c68f4b022c47f9943228a548280a2f5c9b`  
		Last Modified: Thu, 23 Aug 2018 13:32:50 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de8d7ad02243073103fa1b796b3493f54233d926d348a2a2bd3f9e81f4e6fd38`  
		Last Modified: Thu, 23 Aug 2018 13:32:50 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d012f168dfeea14b18ff07f1fe970a020b0e58136e9d767506598a5a122573d`  
		Last Modified: Thu, 23 Aug 2018 13:32:52 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4765059de30d9257f1f50b046a4742903c8da99ccde571649dd67bcf68afc73`  
		Last Modified: Thu, 23 Aug 2018 13:32:50 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a81df775b73a35c5bbbbbb0779f9261eab9fabe0fa5d37fe304c690ac05052b`  
		Last Modified: Thu, 23 Aug 2018 15:19:53 GMT  
		Size: 15.0 MB (14953271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c717aae849c899989f05249f25b2bb455381a85255c46065636537ad9e7fe90d`  
		Last Modified: Thu, 23 Aug 2018 15:19:47 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f388eabb5c9d6d8fe21ccaa70764b32311a9761ebb1ceb27364c0a8d135507f`  
		Last Modified: Thu, 23 Aug 2018 15:19:46 GMT  
		Size: 5.5 KB (5540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14502dcfbb8e63fe8d309893b99e97c85cb2a753c674e60e1b7e549003560529`  
		Last Modified: Thu, 23 Aug 2018 15:20:02 GMT  
		Size: 40.9 MB (40928787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3c0017c32c8e5272ddb1d4c2ae1dfe0d18888bf5acafeb6510a15c1bebfb67`  
		Last Modified: Thu, 23 Aug 2018 15:19:46 GMT  
		Size: 801.4 KB (801422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:840e3c4edf08c4078bd76a44ec9306abb984e5666f59d99bc3f155ca313fe5ae`  
		Last Modified: Thu, 23 Aug 2018 15:24:43 GMT  
		Size: 164.6 MB (164607410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00ce449f31a8496a0b2c8727c102bd39582b64453a25024545cf81c2864a3e4`  
		Last Modified: Thu, 23 Aug 2018 15:23:54 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77e2a3ef0a48a6b0e12e439b6f3d87ee0f557f77284cabd9affdff6adfff47`  
		Last Modified: Thu, 23 Aug 2018 15:25:21 GMT  
		Size: 76.4 MB (76396671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96dce0cbe61d881bbeb83fd06cda35c3740d8a7d1f064fb3e47bf5e36ab3e6fb`  
		Last Modified: Thu, 23 Aug 2018 15:26:10 GMT  
		Size: 90.1 MB (90093632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:730054e8c9f83a419b3a32295f0d5c6e78f0e14938dade40106af87ef16fa4cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.8 MB (443821085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:603a34bb6f0dbf75cfec386ff5b75c535fe2be93e705ddbfad533833a2be7238`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 23 Aug 2018 18:00:02 GMT
ADD file:e5010797ac02efecbf22dd21592880fd5283c01d177c3f0d1274c6397683f8f0 in / 
# Thu, 23 Aug 2018 18:00:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 18:00:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 18:00:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 18:00:10 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 18:00:11 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 22:31:34 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 22:31:37 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 23 Aug 2018 22:31:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 23 Aug 2018 22:35:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 22:35:13 GMT
ENV LANG=C.UTF-8
# Thu, 23 Aug 2018 22:35:17 GMT
ENV LC_ALL=C.UTF-8
# Thu, 23 Aug 2018 22:36:02 GMT
RUN rosdep init     && rosdep update
# Thu, 23 Aug 2018 23:23:28 GMT
ENV ROS_DISTRO=lunar
# Thu, 23 Aug 2018 23:33:26 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 23:34:00 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 23 Aug 2018 23:34:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 23 Aug 2018 23:34:02 GMT
CMD ["bash"]
# Thu, 23 Aug 2018 23:39:16 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 23:45:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:672a69505838a80ab1d16038f6268944bf913e2b9df67785f4f560145b243625`  
		Last Modified: Fri, 10 Aug 2018 22:12:34 GMT  
		Size: 39.4 MB (39381352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958416e5b29b0395ebf84d5442b4a440207871d06ab7b5b475bbfcbc64625d16`  
		Last Modified: Thu, 23 Aug 2018 18:06:04 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b2df41f722dc826e75f4e3fadac77f1487ed4e1254e92645e664d785662036`  
		Last Modified: Thu, 23 Aug 2018 18:06:04 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea051153c5ecf9f78bc0528c6f4917ae8a6bb1910be9c1e23926fa80704160a`  
		Last Modified: Thu, 23 Aug 2018 18:06:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bdeb5fe2e665aecb71278bdb333b15048b051370afe97929d4abf456e456a22`  
		Last Modified: Thu, 23 Aug 2018 18:06:04 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a782c478e1c91d4b67f976cc297be5601e478ea35decdab6e34360570786b5ea`  
		Last Modified: Fri, 24 Aug 2018 00:55:30 GMT  
		Size: 15.0 MB (15046963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00f20d0bde4df1db3985b36b2c5947c4961f453d987e3215f567ac910ce32a39`  
		Last Modified: Fri, 24 Aug 2018 00:55:15 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93ecbe402d8f99c29f9da0194351be4f7657d19d4c8799d58644da97783a800`  
		Last Modified: Fri, 24 Aug 2018 00:55:12 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bad243b7902f2c477239257a3ec29bc24bffb7c22ee128585bba5c1be1c7167`  
		Last Modified: Fri, 24 Aug 2018 00:55:52 GMT  
		Size: 42.8 MB (42798414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ccf2991d96eaace3fbda62ad9a601ed7282e8c2b63ab2b32001fbd9b3b267af`  
		Last Modified: Fri, 24 Aug 2018 00:55:13 GMT  
		Size: 801.5 KB (801472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111f0a9a56b2621b213708b9979c6106c574707bcd8ac7f0cbb3c03b918170d6`  
		Last Modified: Fri, 24 Aug 2018 01:06:17 GMT  
		Size: 173.9 MB (173876862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc1c0c97aebccbe1b1e8d61eabab2f4c31208e8e5320741f45df7ec17d802d9`  
		Last Modified: Fri, 24 Aug 2018 01:04:24 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3425a9b94941249af3d00b23c6623cbbe05cf4b1dd47dfcf1e754dd3a191008e`  
		Last Modified: Fri, 24 Aug 2018 01:08:06 GMT  
		Size: 77.9 MB (77888576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5a2c3f68ed9e100d185661fef691e9c9420f4f3a7176dc00fabe85d4881c767`  
		Last Modified: Fri, 24 Aug 2018 01:10:00 GMT  
		Size: 94.0 MB (94006241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
