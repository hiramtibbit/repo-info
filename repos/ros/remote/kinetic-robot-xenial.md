## `ros:kinetic-robot-xenial`

```console
$ docker pull ros@sha256:0de8470455b5a293645a79dc55b3d9c43118b756872d98bb82f212c9b6f77b42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:b81f331b07de4f3cee36831af171f3ca2c3aa0dde1c928bda28232a0af9483ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **488.2 MB (488209582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12c0cc83e6f08b9676cee21447c3db45b7a1e26df06a67e59c75060301dc6aa6`
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
# Wed, 05 Sep 2018 23:20:52 GMT
ENV ROS_DISTRO=kinetic
# Wed, 05 Sep 2018 23:22:34 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:22:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 05 Sep 2018 23:22:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 05 Sep 2018 23:22:35 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 23:24:06 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:25:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:eeb3398fb3eaa21aac21be8ee857512fd02221858e136aa899d8361536634b6b`  
		Last Modified: Wed, 05 Sep 2018 23:49:47 GMT  
		Size: 193.3 MB (193271056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98006046f88140aca4b3d1f7c6fb95478d65ad97270f261343c5de0c3d1a3646`  
		Last Modified: Wed, 05 Sep 2018 23:48:54 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:597d296f139f5411ae5630fca4ee34c6a7077f041ba836cacf6cdd08a2939bad`  
		Last Modified: Wed, 05 Sep 2018 23:50:21 GMT  
		Size: 85.7 MB (85691997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9feb40e44d83902bd8d2810cb6635745d5562bc49486518b0ee2d2dd430a55d7`  
		Last Modified: Wed, 05 Sep 2018 23:51:03 GMT  
		Size: 103.6 MB (103639607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:4828feb7ff7cd95315e3bdc09382c8c17cbb240377c5296a39ed8ccb56f1479f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.1 MB (426084692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1354a7d80865175f0eb030f37f7c62e13975e817b0687ae1fda33baae9880d2c`
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
# Thu, 23 Aug 2018 14:34:04 GMT
ENV ROS_DISTRO=kinetic
# Thu, 23 Aug 2018 14:36:17 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 14:36:21 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 23 Aug 2018 14:36:21 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 23 Aug 2018 14:36:21 GMT
CMD ["bash"]
# Thu, 23 Aug 2018 14:38:09 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 14:40:26 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:c84a6341badc8edc4bc41af664691fc6b2c7ff95edfa2783cf1bbf68a7c2dd59`  
		Last Modified: Thu, 23 Aug 2018 15:20:37 GMT  
		Size: 164.6 MB (164607955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bc0c029141520f3f904e5a8ba71500219cb5d35cf09a259ee7d47f5e0d0580`  
		Last Modified: Thu, 23 Aug 2018 15:19:46 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b5cee7103a8b09483b8bf3d479c2115146b7201da45a4cea4cbf6fe098f5c5`  
		Last Modified: Thu, 23 Aug 2018 15:21:14 GMT  
		Size: 76.5 MB (76469079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db419c2dfae00ce0749a6c3c1af3e713b71533d9d4bc0fa12e7c6b55d8802125`  
		Last Modified: Thu, 23 Aug 2018 15:22:03 GMT  
		Size: 90.0 MB (90009529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:972ae819858840062e7eeb6bd6afb30e334efbb186045b65cc93f5439155bf96
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.8 MB (443811310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:532cf8250ebf706a91d8f5e65fdcffd17f77a05ca23f3823469a60522b30ab7d`
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
# Thu, 23 Aug 2018 22:36:06 GMT
ENV ROS_DISTRO=kinetic
# Thu, 23 Aug 2018 22:47:45 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 22:47:53 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 23 Aug 2018 22:47:54 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 23 Aug 2018 22:47:55 GMT
CMD ["bash"]
# Thu, 23 Aug 2018 22:57:19 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 23:04:31 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:0c5ae526600f1d94a81859932789a8db3d0cc67bae5804dc38632cc0b8718b9b`  
		Last Modified: Fri, 24 Aug 2018 00:56:56 GMT  
		Size: 173.9 MB (173875977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5907d989a11a0bca5990454700784ae159807da141513a5ec3b7e9fbea98afd`  
		Last Modified: Fri, 24 Aug 2018 00:55:12 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ae1664975fe7dd8bf74fbc7a4eef4a39897a566d431090fb695a5eec6c02fd`  
		Last Modified: Fri, 24 Aug 2018 00:58:22 GMT  
		Size: 78.0 MB (77973389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd1dc2fb6e4b8e22d97f95621722222125a86b65b040ab96819d3a000c1c2fd`  
		Last Modified: Fri, 24 Aug 2018 01:00:21 GMT  
		Size: 93.9 MB (93912539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
