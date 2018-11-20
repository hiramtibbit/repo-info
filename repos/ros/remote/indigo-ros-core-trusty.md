## `ros:indigo-ros-core-trusty`

```console
$ docker pull ros@sha256:4313164cfb17bb99e9732290a5f0e015d4735b98bade9ab087512da1fcc72815
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-core-trusty` - linux; amd64

```console
$ docker pull ros@sha256:d50101b060ff13e8c3d87a71bf68a0453d31f2e6a4f664d3602520d80afd7a40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (267018941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4d7268fb0b827f8f7ead59ef9d6a116b04823c25e26ed02490d02da6744a090`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:15 GMT
ADD file:8921935f38cde7b92d4bd627249b58572d76f05b6b1beb19cde07d6266e98dff in / 
# Mon, 19 Nov 2018 21:23:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:18 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:53:00 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:53:13 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 19 Nov 2018 22:53:14 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 19 Nov 2018 22:53:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:53:54 GMT
ENV LANG=C.UTF-8
# Mon, 19 Nov 2018 22:53:54 GMT
ENV LC_ALL=C.UTF-8
# Mon, 19 Nov 2018 22:54:09 GMT
RUN rosdep init     && rosdep update
# Mon, 19 Nov 2018 22:54:22 GMT
ENV ROS_DISTRO=indigo
# Mon, 19 Nov 2018 22:56:15 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:56:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 19 Nov 2018 22:56:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 19 Nov 2018 22:56:16 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:aa1a66b8583aebb7079effdfe4f95e93dbad248eb4016d1204b28a1b4daf0be1`  
		Last Modified: Mon, 19 Nov 2018 15:07:10 GMT  
		Size: 67.1 MB (67148042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaccc2e362b2a0d1730104c2ec458779bf780014de00161d1844f910e41adbfd`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 72.7 KB (72658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53116a2808f001c7a5ca43153ddc0ba788204142fe6fd928761d94d6c8e66bb`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7298e318c5e03f94da0eb1a7d1aba5c973086135a2063a3088b4035d4d933`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd14e92cce34e116b6518e1c51dbabfb9d1998d886049c846bcfba3df5d311d0`  
		Last Modified: Mon, 19 Nov 2018 23:33:55 GMT  
		Size: 18.0 MB (18037830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36edd9a6bcd421fbd13e41276882c043da645bf0bd071b7dc7385275ba81fa4c`  
		Last Modified: Mon, 19 Nov 2018 23:33:49 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0474ae1e8be19d60744808ec632c393a63eb256f8dd3d849861c6551f09033cf`  
		Last Modified: Mon, 19 Nov 2018 23:33:48 GMT  
		Size: 260.4 KB (260353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18070653d6b89055dcc73b12c2358dff6732e2c756f01410d209428747a8dcbe`  
		Last Modified: Mon, 19 Nov 2018 23:34:02 GMT  
		Size: 30.9 MB (30949932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758fde943fa1bdd2dad748fbbeb2026bfce9ae84bf9c873dc433e5c14a923976`  
		Last Modified: Mon, 19 Nov 2018 23:33:49 GMT  
		Size: 835.4 KB (835395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b28af555437529fd1b7e515caae30819cbba95c5999b44b37030332bb917c2`  
		Last Modified: Mon, 19 Nov 2018 23:34:25 GMT  
		Size: 149.7 MB (149700927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:248a02b6f012d2d67f0349917ec8b25288c8319c5dc1b4a46bd868a92855bda2`  
		Last Modified: Mon, 19 Nov 2018 23:33:49 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-core-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:452fd03653cdc38c32a52f8f7cb91992e8cb0ac2614275ece0ed13284f90de34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.4 MB (244414998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5f27875e3a60f530088129d8770fd5a0ce63705a341cc0b28fa5bce7b99f4e8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:07:29 GMT
ADD file:b65c968ad3f55b81882f9b6e722ee967f0404525c7ed13cff0dd2a3e668fd077 in / 
# Tue, 20 Nov 2018 13:07:31 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:07:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:07:33 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:07:33 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:29:09 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:29:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 13:29:12 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 13:30:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:30:07 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 13:30:08 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 13:30:30 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 13:30:31 GMT
ENV ROS_DISTRO=indigo
# Tue, 20 Nov 2018 13:32:34 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:32:38 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 13:32:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 13:32:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d17d4e152eb35c16b1edfe48495abb0c1c83026df1ee62d294f585e99fe5a131`  
		Last Modified: Tue, 20 Nov 2018 13:10:15 GMT  
		Size: 61.5 MB (61490728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4c2ca6bcf93e6488fb05e178240e1710eb74d81507938e1f771dc650d84616`  
		Last Modified: Tue, 20 Nov 2018 13:09:54 GMT  
		Size: 76.8 KB (76768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:749b266e074ecb714b357f0d5387bef72993df0adab2929fb0222857615ff059`  
		Last Modified: Tue, 20 Nov 2018 13:09:55 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f704248d31b8e22a8fede54e24377839ff939d5e3b5db92a7a1caf87047ba16e`  
		Last Modified: Tue, 20 Nov 2018 13:09:54 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a56cd3c0e64b357de750edb9b4606f0edb2c2992b44d932b7fe3334b4bbd8d7f`  
		Last Modified: Tue, 20 Nov 2018 14:12:47 GMT  
		Size: 16.0 MB (15995485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a42e55c6156584433b71a5c969f881fcaf82309a208116d58bf68550433ac681`  
		Last Modified: Tue, 20 Nov 2018 14:12:41 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5220c6742e25176dbe23e2fa29d2782478dc195fff4484b52244ccf920629ff`  
		Last Modified: Tue, 20 Nov 2018 14:12:41 GMT  
		Size: 260.4 KB (260350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e792fee32b7b48e81a2ad0f5668a2bc474e265e07b05831bd8b6227d90f01d`  
		Last Modified: Tue, 20 Nov 2018 14:12:50 GMT  
		Size: 28.4 MB (28409100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26aaea753fa6b9720f01e9eb835b5f7f59be50884f1a140323b2de2d84e474c9`  
		Last Modified: Tue, 20 Nov 2018 14:12:40 GMT  
		Size: 835.4 KB (835441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6c5543024228af93f583714928172dd7905e4e4ef0d9a2643d4d1b452a9dd6d`  
		Last Modified: Tue, 20 Nov 2018 14:13:25 GMT  
		Size: 137.3 MB (137333306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa94b32cae867e131584d18940f848c812b202178d3442e70d00c1707b089c7`  
		Last Modified: Tue, 20 Nov 2018 14:12:40 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
