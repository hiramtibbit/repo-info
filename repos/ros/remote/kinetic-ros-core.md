## `ros:kinetic-ros-core`

```console
$ docker pull ros@sha256:93aeff1fecc4e92c2ea5b8257de79cef6c7048988b6131527bfd861b9aab7555
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:7fc83262e8899ca85df7ec74e66217f6ab73c0cdbf3d9b1f54989b657e037a9b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.2 MB (299214422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23720b43ab196859a546cb8b6e44b27aa2788713e31e49587878adb32635a231`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Fri, 26 Apr 2019 23:36:05 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:42:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Apr 2019 23:42:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Apr 2019 23:43:19 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:43:19 GMT
ENV LANG=C.UTF-8
# Fri, 26 Apr 2019 23:43:19 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Apr 2019 23:43:31 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Apr 2019 23:43:31 GMT
ENV ROS_DISTRO=kinetic
# Fri, 26 Apr 2019 23:44:38 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:44:38 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 26 Apr 2019 23:44:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Apr 2019 23:44:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b30c8f71ebdd40c0e3d4e1265b1e6aa1ad6e5b377225f950e3e5e85feb12f73`  
		Last Modified: Fri, 26 Apr 2019 23:53:27 GMT  
		Size: 16.7 MB (16665257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca24a737616955e7afbf76771111dad1ccc4771fa18c0084520f25c8ef6d3e2`  
		Last Modified: Sat, 27 Apr 2019 00:10:45 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab72aed2be71b71537d9f0ff27077cb7a22f6a012fe3ac93764075316b26b6f1`  
		Last Modified: Sat, 27 Apr 2019 00:10:44 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e310010fd1683b8c1741d3874fcacb662f15910b8603eab78f50ea8faff16e91`  
		Last Modified: Sat, 27 Apr 2019 00:11:02 GMT  
		Size: 44.9 MB (44880671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150d17009a36ae433c14f458d57d43a530960ab71f2b4344b7a3c2e8b3cfa3f5`  
		Last Modified: Sat, 27 Apr 2019 00:10:45 GMT  
		Size: 653.8 KB (653844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c51f91b582b2149c7192373613e3407ac46d5337cccc6287a0ed3cf9ba514a0`  
		Last Modified: Sat, 27 Apr 2019 00:11:41 GMT  
		Size: 193.2 MB (193241805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d875f4c02c0107211194b63d7c264cff52e579aaadcca8326931c907751dcaae`  
		Last Modified: Sat, 27 Apr 2019 00:10:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:2cb148679eff3beea2dfa56714b2ec47b159b270e39076fdbd362e8e84061648
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259645204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dd182c0dadb759a96f8f3f9361d506c44702ca61a5695582b0fb39fbf81f2f8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 12:44:48 GMT
ADD file:e5db96b75b2cf1774c68ea6ee2d87d8e6b4246f6eb2298de3432baea84a4ffff in / 
# Tue, 12 Mar 2019 12:44:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:44:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:44:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:44:53 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 13:12:56 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:12:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 13:12:59 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 13:13:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:13:58 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 13:13:59 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 13:14:17 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 13:14:18 GMT
ENV ROS_DISTRO=kinetic
# Tue, 12 Mar 2019 13:16:45 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:16:48 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 13:16:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 13:16:49 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:43be3b8c2f5742fcf4a72ad20ccd9c3bac3c85e4c21e2064b283dfbc434a1257`  
		Last Modified: Fri, 22 Feb 2019 23:21:19 GMT  
		Size: 38.5 MB (38499261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68a6f066cb58f4d2f6410e25e54adeb14293449915440e1d9f7f58fa890901a2`  
		Last Modified: Tue, 12 Mar 2019 12:46:24 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2edb7db6e5c5b7c5188163bef447c091ef9f9e12f4055e478e1aca8ba439b44f`  
		Last Modified: Tue, 12 Mar 2019 12:46:24 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5ea7717896e6cc1cfd54f4dc3fa532cca4b66bf7c737170d20d724196aa693`  
		Last Modified: Tue, 12 Mar 2019 12:46:24 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cc3ccf293746a6fde443fd27786dc422734c57ef942c194bad7160434f5e09`  
		Last Modified: Tue, 12 Mar 2019 13:48:37 GMT  
		Size: 15.0 MB (14955547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c85f722789c3fe228b0fb7e3242c14dd0e3ef837941e5e92fb64fdc033977e`  
		Last Modified: Tue, 12 Mar 2019 13:48:31 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a6828791529f386c765daa54046a1d5e7cac7efe49461fae7f30a37aaa8b69`  
		Last Modified: Tue, 12 Mar 2019 13:48:30 GMT  
		Size: 5.5 KB (5542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2fbf772f98ba611d857ac41c1c2ba05656fad4ad0bbe44a70d08b845e22a389`  
		Last Modified: Tue, 12 Mar 2019 13:48:47 GMT  
		Size: 40.9 MB (40930925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3edbf62c110e267796ffd88a69645514b677f9e398bb0e64243d70834a3adb9`  
		Last Modified: Tue, 12 Mar 2019 13:48:31 GMT  
		Size: 621.2 KB (621193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66abc20f6de30c399750ff144be72867d9ec1cd94814a80028e30b0533ba5e5`  
		Last Modified: Tue, 12 Mar 2019 13:49:23 GMT  
		Size: 164.6 MB (164617924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1996ab16c44cd366f4086b84f6b7b2cd3d65a10f2da58fe3b85c9b766dda36`  
		Last Modified: Tue, 12 Mar 2019 13:48:31 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:873d889f390b390648b8c89c17a4bcedebdbabdd8264709d8f21960e91eb5bd7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (271956925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8e83eebf45a51cba8e5bf54740d68a492ae4cbf09eb1c228817138b4db1c5de`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:37:10 GMT
ADD file:fb512c07289f9bff179e81ccc3c7db7cfa5cbe0e28c60dcf2582fdb621ef4873 in / 
# Thu, 14 Mar 2019 09:37:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:37:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:37:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:37:20 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 09:57:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:57:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Mar 2019 09:57:26 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Mar 2019 09:59:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:59:24 GMT
ENV LANG=C.UTF-8
# Thu, 14 Mar 2019 09:59:25 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Mar 2019 10:00:05 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Mar 2019 10:00:06 GMT
ENV ROS_DISTRO=kinetic
# Thu, 14 Mar 2019 10:08:40 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 10:08:46 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Thu, 14 Mar 2019 10:08:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Mar 2019 10:08:47 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:42a68504e090bdbf515c814e7ef1eec51c4e5e86f869c3196416372743583213`  
		Last Modified: Fri, 22 Feb 2019 23:17:09 GMT  
		Size: 39.6 MB (39582965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca2bac1d329215e2f3bc584352d5eb878cc611f42990f3c8b2a4f86caef05cf`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9450bbb566ac27c4e32a7c6a5fc0ad9c4eb7eba18a33c7abc2aabf470369ff6`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909659e6e151b05fe5662d99effc50f4e0e47c27763091c952c98d731bb399a8`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda9352f53a2528e98350f07950b413b3c293340fb1aa8509b6d4893795fa423`  
		Last Modified: Thu, 14 Mar 2019 12:24:38 GMT  
		Size: 15.1 MB (15051078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2576190549336a6dd6a7d477db0cfb8b70bcc4f83acff07c43b4a0c93a63b8f8`  
		Last Modified: Thu, 14 Mar 2019 12:23:41 GMT  
		Size: 13.1 KB (13084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d40b6f75169bd6774f6f3cdea3df37c0151c3f768282a0402605b599cf1cb70`  
		Last Modified: Thu, 14 Mar 2019 12:23:39 GMT  
		Size: 5.5 KB (5515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1db2278317a1d0599c2e3f9e0aca7f5624b55bebd18673ac688976960b19bd4c`  
		Last Modified: Thu, 14 Mar 2019 12:25:46 GMT  
		Size: 42.8 MB (42803322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270734711734315f4c5cf38e8cb93789da5a32b2d81c498d7544afdc057371f5`  
		Last Modified: Thu, 14 Mar 2019 12:23:40 GMT  
		Size: 623.5 KB (623497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd6ec153600917c27d256ceed8759df2afc1e4db9af24ece3067f9812b6b939`  
		Last Modified: Thu, 14 Mar 2019 12:28:22 GMT  
		Size: 173.9 MB (173875777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3956bbf9e8672837f2ecfd64e546a40e8aa0488f8f010d62f271ee25244e7ea3`  
		Last Modified: Thu, 14 Mar 2019 12:23:39 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
