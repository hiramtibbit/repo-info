## `ros:kinetic-perception-xenial`

```console
$ docker pull ros@sha256:a4c62bc285c785c87e0fe5476d294a34b08155e3dc7f8e9449fc315895a15aec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-perception-xenial` - linux; amd64

```console
$ docker pull ros@sha256:6a46984eb89c308c0790c8a7d898d8f70b4a2e57b11b95ab945d2b630e041d92
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **725.6 MB (725624670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c78fd2a6712ffb1bed5908f1188fa920444970c70c4f79d22149372adff773f7`
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
# Fri, 26 Apr 2019 23:45:47 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:49:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:90a2bb7c01c28bbff397c109c560051ed498b692d53bf8625bb7a9574ada9d43`  
		Last Modified: Sat, 27 Apr 2019 00:12:11 GMT  
		Size: 85.7 MB (85690998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc0d04ff6ae0144767e1f1a9590af726659d5180e5005052e0f939f9df920b1`  
		Last Modified: Sat, 27 Apr 2019 00:14:40 GMT  
		Size: 340.7 MB (340719250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:f678a3d764f3dfa59ffa7a02f31765ecbc6b8c30c8117d654fd97c5ecab8eacc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **617.0 MB (617042475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3662da06e9e062fa596409bf2b1d39b55ce6fee39a5e550e6fb26bf4b125aa02`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:09:45 GMT
ADD file:6abeb1922711ba983099d4c04a11287c89004f297455bb4fc41451cc27218177 in / 
# Sat, 27 Apr 2019 12:09:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:09:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:09:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:09:54 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 12:37:58 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:38:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 12:38:02 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 12:39:05 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:39:07 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 12:39:07 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 12:39:28 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 12:39:28 GMT
ENV ROS_DISTRO=kinetic
# Sat, 27 Apr 2019 12:41:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:41:50 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 12:41:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 12:41:51 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 12:43:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:49:10 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0e049e8c377f00a9384d53b245eca77dab63d499bc4df0d8058ef0bf4928c47e`  
		Last Modified: Fri, 26 Apr 2019 22:26:56 GMT  
		Size: 38.7 MB (38653833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae07c2e262a27612d57f5f68331e68ca9da1d2c0b4749b4013140867a54c276`  
		Last Modified: Sat, 27 Apr 2019 12:11:47 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccb522494abe8ce55f46b024715305dcaa596581bcc8d60ea20cdb1c9e3fe16`  
		Last Modified: Sat, 27 Apr 2019 12:11:48 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb96c8e04ae9d0fa50d52c33842137046920f3414e45cbcb86c642e5997a567`  
		Last Modified: Sat, 27 Apr 2019 12:11:47 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d87487edcf9345343447b089bdd097293ee54c541e6eba86a9a968243af8d7d`  
		Last Modified: Sat, 27 Apr 2019 13:14:33 GMT  
		Size: 15.0 MB (14955341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa23af2054eea6b6b9fcfb6dd5be9ad80dd8ca8c572e7c454159269025730299`  
		Last Modified: Sat, 27 Apr 2019 13:14:27 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd175624a079d2a90d56480c048ac9b6f3c42faae49758efbc80bf351c0049e`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 5.5 KB (5539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5868e798d3af2bc2524b9edc1dfad1b822e9b8eb68dea1adced91d0c1f14f1`  
		Last Modified: Sat, 27 Apr 2019 13:14:42 GMT  
		Size: 40.9 MB (40938293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92dbb2b7a3cdea223b22709ce412e39fbafd04d378b35c3512db622b72338759`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 653.9 KB (653880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97c02ba4e595b2150d1118510a48e778134b9e12cc8a007a96cfd20b75949264`  
		Last Modified: Sat, 27 Apr 2019 13:15:24 GMT  
		Size: 164.6 MB (164627971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fee04600251a97961df1fdc248c59971cb9157c5f9f4a5282e29e060e27dae89`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1557e1acb3a07404f841a9305aada896ca8337841f6c3c15567cb0f57ff2300f`  
		Last Modified: Sat, 27 Apr 2019 13:16:01 GMT  
		Size: 76.5 MB (76467157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b31ccc55380adc69117cf856d971c6cac03d19243e57a0be34aec7590caca7f6`  
		Last Modified: Sat, 27 Apr 2019 13:18:16 GMT  
		Size: 280.7 MB (280725657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ed6aab35cbc0c8024a56e19f7c0b797c82b61b439658bb0fdb35265175bacf78
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.4 MB (641362506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61444968faa3a22768fbd14e0073a6282754f0dc6cc3618d7f8007fbb99de1ea`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:38:29 GMT
ADD file:871bd7b9746504992c714acf86c19916c9ea2061e665aba4547c02f5a87dda1d in / 
# Sat, 27 Apr 2019 09:38:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:38:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:38:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:38:41 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 10:37:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:37:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 10:37:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 10:39:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:39:47 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 10:39:48 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 10:40:33 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 10:40:34 GMT
ENV ROS_DISTRO=kinetic
# Sat, 27 Apr 2019 10:52:43 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:52:49 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 10:52:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 10:52:51 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 10:58:18 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 11:18:06 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9faae00b8c161eeb3f6dd501b8afea1b3ff6f0cdaafbffc40c8c05e370ca8581`  
		Last Modified: Fri, 26 Apr 2019 22:12:20 GMT  
		Size: 39.7 MB (39729396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2435bdd32c230705ab3d701ff85763cf6f15db3db0ae7677723535a9966f3c`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baab0b94b9762c01dab9564e661e1a9fd77ca7ac7d91fbef8143875e9ad0d5`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d2291befdb8dfc512786348c157758756137ac5176472743061ac5a04f4a7e`  
		Last Modified: Sat, 27 Apr 2019 09:41:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d037a38f554e7a09a2e7badd766a177cd92525e78fe9e405d6648d510c1ce5`  
		Last Modified: Sat, 27 Apr 2019 13:01:02 GMT  
		Size: 15.1 MB (15051308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6810761065f20e40f33f32764f9739e5dde43e7f11a2f06dfdcfc9a972f850ec`  
		Last Modified: Sat, 27 Apr 2019 13:00:14 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd012c533aec7d3dc641dfad8ba805400cd39f3c4705f0fc7744c3bfbe2563c8`  
		Last Modified: Sat, 27 Apr 2019 13:00:12 GMT  
		Size: 5.5 KB (5509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20dd02a1e264d571191a27e49b70caeb8ddeccee85151827d4416ed16b5bc5d`  
		Last Modified: Sat, 27 Apr 2019 13:02:14 GMT  
		Size: 42.8 MB (42811337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9e592c490c1a2606d94ed37d1b58390902f1c327d9bd04d6cac82b2e8e92ad`  
		Last Modified: Sat, 27 Apr 2019 13:00:13 GMT  
		Size: 653.9 KB (653928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48091c58050400c609d5e23d9c8fa68f09e45cad5d8c7e29058fed6bd2b3973a`  
		Last Modified: Sat, 27 Apr 2019 13:04:36 GMT  
		Size: 173.9 MB (173887686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3223c8b16d47d9d8b80333c845f3ca74d9e905dda64e0c28b0085e0f6234727`  
		Last Modified: Sat, 27 Apr 2019 13:00:12 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1033393ff3d8ce353dc0238766006e44847ad2dc17ec627be7261c9d1e3ae7a`  
		Last Modified: Sat, 27 Apr 2019 13:06:41 GMT  
		Size: 78.0 MB (77964326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ffc539f9ce2ea2f82759905a63ee17dd684c18b6efcab8499136d18a081f2f`  
		Last Modified: Sat, 27 Apr 2019 13:16:11 GMT  
		Size: 291.2 MB (291244251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
