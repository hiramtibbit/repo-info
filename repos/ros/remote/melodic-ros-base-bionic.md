## `ros:melodic-ros-base-bionic`

```console
$ docker pull ros@sha256:10237768c4a5ed9037510d9df59f1d040dac83b34d56c91ca0c72668dfc654d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-base-bionic` - linux; amd64

```console
$ docker pull ros@sha256:0a1eccd6e9d5d9ed530bc8d1741fbeef2f7bba90695d41771eb7d49caebd1d9f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.0 MB (425967522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66f93effde23a6a1178666aefecab382fbff82dae210a9515887de5df5842fca`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:54:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:54:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:48:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:48:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:49:21 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:49:21 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:49:22 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:49:31 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:49:31 GMT
ENV ROS_DISTRO=melodic
# Fri, 07 Jun 2019 23:52:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:52:08 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:52:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:52:09 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 23:53:12 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04ea25188bb2da81ecdde129c333a396bf48f8caf8e85bb6be208850fee5c4d`  
		Last Modified: Wed, 15 May 2019 22:08:29 GMT  
		Size: 836.6 KB (836561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae984487af8bddc902fd21946f600720932c52b0c52d3bfd1e7378b94e0e3e4f`  
		Last Modified: Wed, 15 May 2019 22:08:33 GMT  
		Size: 14.9 MB (14912958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e993e5c338a9c012a58c2adeaa0aa0bf54fd9358064d6b5b6752242878fd4279`  
		Last Modified: Sat, 08 Jun 2019 00:18:03 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5420ad81ad499c49331437c80fd8320abb0af9ec20a3aa30aab78b9bc34831ce`  
		Last Modified: Sat, 08 Jun 2019 00:18:03 GMT  
		Size: 5.4 KB (5424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c92edf9aeee7b812c3356af97005e0aaa634fadef3e0fb54f3ed28e6dac6f1`  
		Last Modified: Sat, 08 Jun 2019 00:18:15 GMT  
		Size: 49.4 MB (49414358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b4aea44fe30c54546e3c9188de0e3d29c1688b24e819a1327c0b3e1e4a671a`  
		Last Modified: Sat, 08 Jun 2019 00:18:03 GMT  
		Size: 452.6 KB (452605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a54e9838c75084f67b6c1643f64cfc313fa97f11f9d088d5656170e94269395b`  
		Last Modified: Sat, 08 Jun 2019 00:18:54 GMT  
		Size: 260.9 MB (260851901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07f33df6cec9c4bca8a758dd4ee167a0b4bb28d86f01fd469057b5f9243cc41`  
		Last Modified: Sat, 08 Jun 2019 00:18:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e966a5aea4829b95d7a5ec19bad60134db80ddab1fcbc007219a36d0f84bef`  
		Last Modified: Sat, 08 Jun 2019 00:19:17 GMT  
		Size: 70.6 MB (70636024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:3a211c6b7621481f9757eabb94eeda346c56d48f4098829bb034e0491c6a8e81
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **374.5 MB (374454762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b55cc8c7fe41524ca92604607c368ed409f38137d8b48f4f2f16b8019ce33336`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:58:19 GMT
ADD file:f97088f30dc73833af9b7e84a77cc26a7d489c3b106250bc1c67ca78ecf34401 in / 
# Tue, 18 Jun 2019 21:58:21 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:58:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:58:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:58:25 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 21:59:15 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:59:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:54:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:54:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:55:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:55:27 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:55:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:55:47 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:55:47 GMT
ENV ROS_DISTRO=melodic
# Tue, 18 Jun 2019 22:59:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:59:29 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:59:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:59:31 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 23:01:05 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:890bdf70a444971b59240478f3073e23d165e3ba40106d3d4e94a57e52f9f715`  
		Last Modified: Fri, 14 Jun 2019 14:40:30 GMT  
		Size: 22.3 MB (22279501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7984ec58db25dba3b1eb769446c440c608e2a35869a13b6a57ba069134f28e1`  
		Last Modified: Tue, 18 Jun 2019 22:00:38 GMT  
		Size: 35.5 KB (35452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69dd89700a6c256d7ddae21c28adf3ded21abb73838795b0a1a5c3b12556da0b`  
		Last Modified: Tue, 18 Jun 2019 22:00:38 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0af11110095b961ce4addaca6fbf8afe199d233b510f48cdd196b4c0b4029576`  
		Last Modified: Tue, 18 Jun 2019 22:00:41 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87afc2261f1deee1c2830b80945182d785d1438b6fc3b549d4bb64dec9011d79`  
		Last Modified: Tue, 18 Jun 2019 23:16:51 GMT  
		Size: 837.4 KB (837379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:634c3f99130429f09844353284c25e0897018c2d9dafdd1c55f7c59f16bf8fb1`  
		Last Modified: Tue, 18 Jun 2019 23:16:55 GMT  
		Size: 13.4 MB (13444452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0611cafb691dc24df8658c177191f9d0e07f33560be3c29ef35116a6b502e39`  
		Last Modified: Tue, 18 Jun 2019 23:16:55 GMT  
		Size: 1.4 KB (1418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89502c1fd1face592a10673992ee25b7ebcbe552180827776476ee7a3afbaf7f`  
		Last Modified: Tue, 18 Jun 2019 23:16:48 GMT  
		Size: 5.5 KB (5451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e048ea9d2e9670ad314b2e479d78bfdcf8685c616b046d8da850119cf813754`  
		Last Modified: Tue, 18 Jun 2019 23:17:05 GMT  
		Size: 42.3 MB (42286722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa4142a3b30b71f820c689b1a05e9c9346f1e22218c39dd0e2888fd44ea2b1b2`  
		Last Modified: Tue, 18 Jun 2019 23:16:48 GMT  
		Size: 456.5 KB (456531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adfea0d4324397e518427272ca9ebfcfc951d10a6758e0ffe123bd50e1e59ff`  
		Last Modified: Tue, 18 Jun 2019 23:18:01 GMT  
		Size: 233.0 MB (233003271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a3e1bfbadfb4099feed5398d0ac8552a2c118ed13de76656f53c2cdb143627`  
		Last Modified: Tue, 18 Jun 2019 23:16:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c94a2743ae207d33e6bc46005358c687fd5a25d216d6eb09c4facaf541b57ec1`  
		Last Modified: Tue, 18 Jun 2019 23:18:33 GMT  
		Size: 62.1 MB (62103346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:980269e83a842611e73b04e939dd6c03afc5f195d6f14db0e061632c2a511293
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.3 MB (353274554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a98222ed447d02c3b0d17616ed37c28d5c28ef3f002eaa2a0668c6d88f6a9bc9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:40:20 GMT
ADD file:5a85b2cf366cbf793b3cd89f16906c1221128e020868bf7593cf85df20370c31 in / 
# Tue, 18 Jun 2019 21:40:22 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:40:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:40:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:40:26 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:25:07 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:25:40 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:55:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:55:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:56:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:56:38 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:56:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:56:57 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:56:57 GMT
ENV ROS_DISTRO=melodic
# Tue, 18 Jun 2019 23:00:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:00:15 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 23:00:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 23:00:18 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 23:01:48 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:85df13e07ac866f0749412605b4d04aef859d2d116979e1dad9da5093585ce3c`  
		Last Modified: Fri, 14 Jun 2019 14:38:29 GMT  
		Size: 23.7 MB (23704318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8627bf1c6512dd26e72f564465b94d24232e3221dc649211b6c2169cd9bae0f7`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 35.2 KB (35201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99ec04f469874c69bd01d057f54593e5346d90cfba712152008d76624217ddb`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc2e75663b5f54850089251d728dea5cb0b29b1e95e1bc0785c801bd2dc3092`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bec2cd4efc80f49bf9f4185bc3db9f59340ee564e7743e69d0b3679658d5d5`  
		Last Modified: Tue, 18 Jun 2019 22:32:53 GMT  
		Size: 837.1 KB (837142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0587d15e190ac419a3e2fbfcb04b33997dd00aca54129649c0713b1a2cc8268f`  
		Last Modified: Tue, 18 Jun 2019 22:33:04 GMT  
		Size: 14.0 MB (14038197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5d4c4ea38965488e5d644cfde209ac586efff1ba774e7e43e463235e153b54`  
		Last Modified: Tue, 18 Jun 2019 23:25:47 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d56a087f05c5f62c449c8883f2b98263d564330949d2df0b8b88e46fd49c6d2`  
		Last Modified: Tue, 18 Jun 2019 23:25:46 GMT  
		Size: 5.4 KB (5448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f7381ce8adfd0a90d8e7bcfda542e9897bac9feb89c2162fe2e662fd2d1cc9`  
		Last Modified: Tue, 18 Jun 2019 23:26:00 GMT  
		Size: 44.9 MB (44895946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110e163e68b40ee20407e249177e259107fd5f035bfaaf1f0be091edb55aabb8`  
		Last Modified: Tue, 18 Jun 2019 23:25:44 GMT  
		Size: 456.6 KB (456625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6667c604134dc158cd6c5ea09a256c8121d82c1edcd7e8b34dbe665e806a49b1`  
		Last Modified: Tue, 18 Jun 2019 23:26:53 GMT  
		Size: 203.7 MB (203713742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f73a9a9ce90849388c851bda4cfc03eb2bcc51f8f9bfc58e2bb06f3b207aee`  
		Last Modified: Tue, 18 Jun 2019 23:25:44 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955006e8bc5213e0d44652b2a7fa9bce9568d474fdc428eae3d5a945b43d379e`  
		Last Modified: Tue, 18 Jun 2019 23:27:26 GMT  
		Size: 65.6 MB (65585279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
