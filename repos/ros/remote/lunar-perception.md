## `ros:lunar-perception`

```console
$ docker pull ros@sha256:3a07154d438dc1f30f62327848bdc643bee138ba054936c5ce37c6e542227475
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception` - linux; amd64

```console
$ docker pull ros@sha256:f504be31d8220a186e4d7f73fdc8f96bd20b0194de3eb0c2e24d498a5cf60760
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **723.6 MB (723613418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72ea9d639a5c089ed69c43422ea16366b794535f8378671ee5b52554411abffd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:55 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 05 Sep 2018 22:20:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:57 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 23:19:58 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:20:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 05 Sep 2018 23:20:03 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 05 Sep 2018 23:20:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:20:36 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 23:20:36 GMT
ENV LC_ALL=C.UTF-8
# Wed, 05 Sep 2018 23:20:49 GMT
RUN rosdep init     && rosdep update
# Wed, 05 Sep 2018 23:29:19 GMT
ENV ROS_DISTRO=lunar
# Wed, 05 Sep 2018 23:30:24 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:30:26 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 05 Sep 2018 23:30:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 05 Sep 2018 23:30:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 23:31:14 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:34:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504facff238fde83f1ca8f9f54520b4219c5b8f80be9616ddc52d31448a044bd`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbcacd28e101968415b0c812b2d2dc60f969e36b0b08c073bf796e12b1bb449`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fb3351ecad291a88b92b600037e2435c84a347683d540042086fe72c902b8a`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3debadcbf7e542e2aefbce1b64a358b1931fb403b3e4aeca27cb4d809d56c2`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33ae61b78a745ffcf1af3cb8fc6392e3766a5bdc38791e35e97c2be5f72eb999`  
		Last Modified: Wed, 05 Sep 2018 23:49:03 GMT  
		Size: 16.7 MB (16658228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc2bab3bb28260893403c805457bce4a48c6098b170db0b12430934cbf47100`  
		Last Modified: Wed, 05 Sep 2018 23:48:56 GMT  
		Size: 13.1 KB (13084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:815de9ba02a163c4baeaeb0ba84fe49bd0d08a2884b3541357b1478bad81eb6a`  
		Last Modified: Wed, 05 Sep 2018 23:48:55 GMT  
		Size: 5.5 KB (5511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6526781ff8fa1faa8ddeeb65a7bbd6ba4a975872cd269e75fab939329b6571ac`  
		Last Modified: Wed, 05 Sep 2018 23:49:09 GMT  
		Size: 44.9 MB (44864072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8dc1b51156d179a5eed00c45631a189270a01ea4f9858038eca4a93e8125960`  
		Last Modified: Wed, 05 Sep 2018 23:48:55 GMT  
		Size: 810.8 KB (810847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d034a9224a6feca4dd2a9c6995aab34735b8a6497d962fb3382642e0b3fd21`  
		Last Modified: Wed, 05 Sep 2018 23:53:38 GMT  
		Size: 193.3 MB (193272163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19df8129e0a2b1a2c690f3b430d864dd1b72ea974ccdd60a14cf0b071b4ec4df`  
		Last Modified: Wed, 05 Sep 2018 23:52:49 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73596a8bbd10e75436487e219e340ff9a31b060ca70f4a9486b87b018d04ff3f`  
		Last Modified: Wed, 05 Sep 2018 23:54:12 GMT  
		Size: 85.6 MB (85615673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe2111c4e1cdcce7b6fcf66de79844759e6c21b0fa897b252fab399568af5eb`  
		Last Modified: Wed, 05 Sep 2018 23:56:26 GMT  
		Size: 339.1 MB (339118659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:b124b26576c7eac03b332f8ea82880cb5478acc8d68bff5e540e5e466acb852c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **616.3 MB (616256645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f04c2429496715b41f08277b91f43f0923c0bcb46046707f64b7024ff7e96bd9`
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
# Thu, 23 Aug 2018 14:59:10 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:61550f2be7af55779a6a676d593bdd7e6394a31a117ca052f1df0670f08a2cb4`  
		Last Modified: Thu, 23 Aug 2018 15:27:46 GMT  
		Size: 280.3 MB (280254435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:13a1de5ba6dd7826b1077f3f4b0f7922129204ccdbeee435524a5074c4c9c909
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.8 MB (639787409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84b0372074ce1ce909e2eff9044d3fd291ef42275950b91d2bbe140e1a13a9e1`
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
# Fri, 24 Aug 2018 00:05:02 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:5214131ebf7713fbc15c58d16a823e7911459965648c3b2fe356662a80c0a9df`  
		Last Modified: Fri, 24 Aug 2018 01:13:24 GMT  
		Size: 290.0 MB (289972565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
