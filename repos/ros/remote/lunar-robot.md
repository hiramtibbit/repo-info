## `ros:lunar-robot`

```console
$ docker pull ros@sha256:d53fd563befa961164a5e31f286e0701799874b71552abfdc6d97827a5104d05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot` - linux; amd64

```console
$ docker pull ros@sha256:82345dd3a86604b78a514bc8256ac8561d2c603d02dbb62a43a2dd2c55d0f983
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **488.3 MB (488261322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b789b02f97582117f29cde7cdceaab7011ec3493b1affb3afa765a7e0e70398b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 22:48:13 GMT
ADD file:916a45030dee881bbc8bbabf8bcfcc8828c29ce1c318000950bbe84c57f9df73 in / 
# Tue, 22 Jan 2019 22:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:48:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:48:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:48:19 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 01:32:09 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:32:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 02:32:38 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 02:34:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:34:07 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 02:34:07 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 02:34:18 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 03:03:34 GMT
ENV ROS_DISTRO=lunar
# Wed, 23 Jan 2019 03:05:04 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:05:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 03:05:05 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 03:05:05 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 03:06:00 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:06:48 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7b722c1070cdf5188f1f9e43b8413157f8dfb2b4fe84db3c03cb492379a42fcc`  
		Last Modified: Tue, 22 Jan 2019 22:50:41 GMT  
		Size: 43.5 MB (43521448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbf74db61f1459176d8647ba8f53f8e6cf933a2e56f73f0e8da81213117b7e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed41cb72e5c918bdbd78e68f02930a3f1cf1d6079402b0a5b19de8508e67b766`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea47a67709ebea8efed59fbda703dbd00a0d2cae7e2808959744bfa30bfc0e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d6eff96935e8938eb325c85024d7345ee1addcc7696abd7c4a3d76a97963c5`  
		Last Modified: Wed, 23 Jan 2019 01:55:26 GMT  
		Size: 16.7 MB (16664801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef14dc44152857290be460336ce13333afb3556e7a3827d6ab300cef0cc0b6ba`  
		Last Modified: Wed, 23 Jan 2019 04:23:14 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14bb49d161ab33337f98a19933ab46bfec1c987f2ddf5c0e3bd64da7bcf40634`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 5.5 KB (5514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9808cee631651e0520e1f5af2fd7a6ac123c0986ff9cf265eb7d6f65db8d4e08`  
		Last Modified: Wed, 23 Jan 2019 04:23:24 GMT  
		Size: 44.9 MB (44872151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc20a2cbf96a9ddca14e9196cd7b34ad81aea39004ea5f0726673b875e3e7c6f`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 601.4 KB (601428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b5c6fb86b8500815905068deb5ab5bd8d499ddc54e87af4acbbca50842a7df`  
		Last Modified: Wed, 23 Jan 2019 04:27:01 GMT  
		Size: 193.2 MB (193227902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e58a1481e42322e2da8426ed3a2c2f5cacad8b0cdcb99c54fc3bb434449ff6fb`  
		Last Modified: Wed, 23 Jan 2019 04:26:18 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:965569ade8ae983d0653ffb735c1e1d771acb9dec633641f2294291a7040730b`  
		Last Modified: Wed, 23 Jan 2019 04:27:27 GMT  
		Size: 85.6 MB (85619694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a2b6a2d705a90e786d0993737b58fc3e9cd82a7f203933bf7143f7399840d3e`  
		Last Modified: Wed, 23 Jan 2019 04:27:58 GMT  
		Size: 103.7 MB (103733572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:dba5778952e1ca664cc9dd6cb04a652d2ff5a683a893123704cfa4d7adef5a52
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.1 MB (426081614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c7d1e0c7b5dc80bd91302ed55ef353a861a9bf4ebb28aa2398f82ebccb95009`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:39 GMT
ADD file:18419a29666d16dc719ea46ce806f8c62ce1aaa8fb8b4be852c80430cb533b4e in / 
# Wed, 23 Jan 2019 13:00:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:54 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:29:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:29:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:29:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:30:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:30:28 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:30:29 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:30:48 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:41:19 GMT
ENV ROS_DISTRO=lunar
# Wed, 23 Jan 2019 13:44:02 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:44:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:44:07 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:45:49 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:47:40 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:29ff06089553e503948df40c21e20fea5cab6315f9d6bae2254f41a57c9e3854`  
		Last Modified: Wed, 23 Jan 2019 13:02:42 GMT  
		Size: 38.5 MB (38479053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209fcb263aac1c4e427fbb3fb29ab0ffbdad945f4c6c7d2d09d772056d0b79c1`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a296909621d0830ec940baa0e5abc918f3891df1a07841e4ca81dc769c907d06`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e86336e1a38073dd14045d73320fa19e9e15efc4c83e3bf261145a668fff3d`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd9ce225440332e6a9641824dc1349ffdfd646a01bdc22d4b5110a56e5634a`  
		Last Modified: Wed, 23 Jan 2019 14:08:03 GMT  
		Size: 15.0 MB (14954825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc221fe5e1ae0b323d918f22e2bb4bc24e82dc44c20d2dcd9975e8a6f9ff41d0`  
		Last Modified: Wed, 23 Jan 2019 14:07:57 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e6d7d4a068b8464f95e7d1accab979247e448e37ea98d34957f6918db85150`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 5.5 KB (5541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6c88320fa215a5f44e351cdfe9365f973a9f4f1b32807292417547d0c9a5c3`  
		Last Modified: Wed, 23 Jan 2019 14:08:11 GMT  
		Size: 40.9 MB (40930952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a73db51c3ae9d17342173bc0c300fc9b4b0dba60c0ff09e6735ccfb09f8480`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 601.5 KB (601503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5518b529f6d0468ea507138bea713537aa5bbb2da5e65f819ebffbe8ca1abbeb`  
		Last Modified: Wed, 23 Jan 2019 14:12:51 GMT  
		Size: 164.6 MB (164604414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04acb4a138871d1392e92721fa82d90051521cbb8a18d714aca30fc6920184f5`  
		Last Modified: Wed, 23 Jan 2019 14:11:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c619a9d69c75c8ca30ccdf586e1080bb48605c9613ac70d1559dc9789ad8943`  
		Last Modified: Wed, 23 Jan 2019 14:13:23 GMT  
		Size: 76.4 MB (76395922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fbd0c94a8ac3300c8597c27dd1287b166338975802c60936228460c02327b8b`  
		Last Modified: Wed, 23 Jan 2019 14:14:03 GMT  
		Size: 90.1 MB (90094597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b2add07021411a2eadcbff965cd6f59cd0f6ed4b841fdec28b1a25d13d7c47e6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.8 MB (443786237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caa331758c8de3b6e77754a3627348978eaa436baf0ff3f3bb387eb5d298e56f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:08:56 GMT
ADD file:2748dad7410d2963c4d07521fe9d96832220c1c82b50dc0558489fe47af8528c in / 
# Wed, 23 Jan 2019 10:09:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:09:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:09:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:09:05 GMT
CMD ["/bin/bash"]
# Tue, 29 Jan 2019 15:49:26 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:49:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 29 Jan 2019 15:49:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 29 Jan 2019 15:51:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:51:02 GMT
ENV LANG=C.UTF-8
# Tue, 29 Jan 2019 15:51:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 29 Jan 2019 15:51:37 GMT
RUN rosdep init     && rosdep update
# Tue, 29 Jan 2019 16:21:04 GMT
ENV ROS_DISTRO=lunar
# Tue, 29 Jan 2019 16:28:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 16:28:06 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 29 Jan 2019 16:28:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 16:28:07 GMT
CMD ["bash"]
# Tue, 29 Jan 2019 16:32:18 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 16:37:26 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3589363d0c5c7e357442b19cf74bcf437c4be71aa09601715b36178d5cee4062`  
		Last Modified: Wed, 23 Jan 2019 10:11:35 GMT  
		Size: 39.6 MB (39558203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc63d25106ea8d2808ce328a6c43870e467250ecb93fc5d2d7bb0303035ed20`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647f3c718ef03d58fea6fa02938ab84f8d90c261e75e2709623d4e9c41b8653c`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230e6415b4d91f83140d441d457b9917fc16d17f535ac57870584ecb0fb21a3`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd62429335f1e33c7a873963d55d428d92d2b03d152b038149b9a778a2dcd4f0`  
		Last Modified: Tue, 29 Jan 2019 18:55:18 GMT  
		Size: 15.1 MB (15050635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca747cfc51c64439c5ac67a9cb06db509d8d568e1194a1698e0a0dbad961c5a5`  
		Last Modified: Tue, 29 Jan 2019 18:54:42 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee885819a43027c3dff525802af7c204cc4d774f4dc16c847e020f29fcaf676d`  
		Last Modified: Tue, 29 Jan 2019 18:54:40 GMT  
		Size: 5.5 KB (5510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f5b667c6a089e616f79426fb567702ead89c63a2048ed2aeaef16e48048ae3`  
		Last Modified: Tue, 29 Jan 2019 18:55:49 GMT  
		Size: 42.8 MB (42804021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5133c81b55c9437c49ea992170ee5bdc58f7a23c49f8e1da83d9eff037d64ca3`  
		Last Modified: Tue, 29 Jan 2019 18:54:41 GMT  
		Size: 605.2 KB (605159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5359a7ba4dc0aff1cf0b2abd40d490f49a83988fc8f27765fc820f7012428e`  
		Last Modified: Tue, 29 Jan 2019 19:02:38 GMT  
		Size: 173.9 MB (173860171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3341722f8e47adbcbf37efee2fa74d10404a96052188ff71880522da726fc371`  
		Last Modified: Tue, 29 Jan 2019 19:01:25 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b388ccf291eb0b61acdf218b7ab1f74be37cea4e5ced1496f6f233c12bbca0a`  
		Last Modified: Tue, 29 Jan 2019 19:03:22 GMT  
		Size: 77.9 MB (77886832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048b05dc84130040e9b8d3917e6604f450f8057c645d27a634bbe37755ba1dea`  
		Last Modified: Tue, 29 Jan 2019 19:04:15 GMT  
		Size: 94.0 MB (94000942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
