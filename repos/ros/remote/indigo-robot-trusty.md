## `ros:indigo-robot-trusty`

```console
$ docker pull ros@sha256:0e1ad653f4e20b462c3efa49281d34201559d748a920c645a8422c09b9150188
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-robot-trusty` - linux; amd64

```console
$ docker pull ros@sha256:16469f4a1c759dd689830021dc1b4c0eb2ad1ab33be6c7ab882079258f4b6150
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.7 MB (332699738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:992b5d618794bb45430176ff8b2a366cea0493ed62a44f54248f257cd1ef76d7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:07 GMT
ADD file:574946dfc7122f93072b0dceadf9c1e51f8f1ecf3d4c09ea0b6e2b61544c955f in / 
# Fri, 26 Apr 2019 22:22:08 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:09 GMT
CMD ["/bin/bash"]
# Fri, 26 Apr 2019 23:35:44 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:35:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Apr 2019 23:35:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Apr 2019 23:36:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:36:18 GMT
ENV LANG=C.UTF-8
# Fri, 26 Apr 2019 23:36:18 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Apr 2019 23:36:33 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Apr 2019 23:36:33 GMT
ENV ROS_DISTRO=indigo
# Fri, 26 Apr 2019 23:38:09 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:38:09 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 26 Apr 2019 23:38:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Apr 2019 23:38:10 GMT
CMD ["bash"]
# Fri, 26 Apr 2019 23:38:53 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:39:27 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d6fdcbe24ed5fa182ac7e2079daca382068952e5b9e1f78e47a1492feae37379`  
		Last Modified: Thu, 25 Apr 2019 12:20:38 GMT  
		Size: 67.2 MB (67191621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1115217119d4439b38f4fc557ba298d0de6c9e1ecce52b93ad2d25d3523758a1`  
		Last Modified: Fri, 26 Apr 2019 22:23:18 GMT  
		Size: 72.6 KB (72646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8180a23d2c44e5284574f3cf04081a3d5825a61174d41f3d4801e8f00464d5b9`  
		Last Modified: Fri, 26 Apr 2019 22:23:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceab6b3c2a5e76a26134953a6f8ef95dba277ad43b38cd03c00380660df24b8f`  
		Last Modified: Fri, 26 Apr 2019 22:23:18 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5684cbea2fc5bb4e63d97fe403a6e5c211e1d710338bc57fc4dd18a9c6b2ca65`  
		Last Modified: Sat, 27 Apr 2019 00:08:23 GMT  
		Size: 18.0 MB (18040197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759badaee6a846623d1317d4d3d4f27c9b91b7ea81f8e6670663a3c1ae919980`  
		Last Modified: Sat, 27 Apr 2019 00:08:17 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a410a7146f8ff38228cd1c7d4d589d4bab38171659883f110e6fd47f0e3356`  
		Last Modified: Sat, 27 Apr 2019 00:08:17 GMT  
		Size: 260.4 KB (260350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f223a865d3491327ec6f3e5e946d4984db8d4629a82368fe132a7bd74087b9`  
		Last Modified: Sat, 27 Apr 2019 00:08:27 GMT  
		Size: 31.0 MB (30955449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1e192ad2717ee30ce7e8361e3cfa57ceb1b28c09fe442749b27d472718b7c8`  
		Last Modified: Sat, 27 Apr 2019 00:08:17 GMT  
		Size: 653.8 KB (653844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54140d50e7ee1df0c453ae0875feed645b1e0dc0d287dd52b1a779e555f933c2`  
		Last Modified: Sat, 27 Apr 2019 00:09:00 GMT  
		Size: 149.7 MB (149702877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498957176335c0a77c9b373d8b85a09b149b9d0ed8b7c7d01181b8a60974b81f`  
		Last Modified: Sat, 27 Apr 2019 00:08:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4c30d08187cc7caa9435d24bb5612ae55e3d5dcc6adf8ac15b1f8a4a3c4f42`  
		Last Modified: Sat, 27 Apr 2019 00:09:24 GMT  
		Size: 46.8 MB (46776915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ee53d9e0d5a56b6b60494e4b4deaa3ec9f7c17ead9dee64e5d6f7f179d5ca7`  
		Last Modified: Sat, 27 Apr 2019 00:09:35 GMT  
		Size: 19.0 MB (19032041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-robot-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:d4a2818576d6cfcc627587d5aa70354a93469b47db4dcf2ae2d4b8cd15828908
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.4 MB (302370251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2968c2c22e98fdbafbb23c330590d7ade08b1c486223acfe938b19c5c9274bd6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:09:11 GMT
ADD file:1619cbcf63643ad1d5e8e3f021402dd0ca31abdd41852cee6a6fbbeec2fa5de8 in / 
# Sat, 27 Apr 2019 12:09:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:09:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:09:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:09:20 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 12:28:27 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:28:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 12:28:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 12:29:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:29:32 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 12:29:32 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 12:29:53 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 12:29:53 GMT
ENV ROS_DISTRO=indigo
# Sat, 27 Apr 2019 12:32:06 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:32:09 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 12:32:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 12:32:10 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 12:33:01 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:33:51 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c5362603fe6be7d5876ef41ffb08b355892494dd4a50696ea8076ae7dd17ebbb`  
		Last Modified: Sat, 27 Apr 2019 12:11:24 GMT  
		Size: 61.5 MB (61533787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba380cc82188c4efebfcfbbcfceb13f9e312ef48b621cc241b11e159e161dd0a`  
		Last Modified: Sat, 27 Apr 2019 12:11:05 GMT  
		Size: 76.8 KB (76767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab98c98275cf92acaac3db468b6a8458aa10b3fccdc303aee6882cf6e29ee6db`  
		Last Modified: Sat, 27 Apr 2019 12:11:05 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4683afb56c106058227f2417f484198fd14d94b7f1d07c41fe42d595562ab6f8`  
		Last Modified: Sat, 27 Apr 2019 12:11:05 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99e58dfae674642e6ea844c0ac096e38a5a86f695977255635aad3e70f7e8d3`  
		Last Modified: Sat, 27 Apr 2019 13:11:38 GMT  
		Size: 16.0 MB (15995908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f77ba5b657b794b5e0cfbbc223f142dde6625a8466565b2ca87079becb0fa83`  
		Last Modified: Sat, 27 Apr 2019 13:11:33 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c797e170ce48e557512b847b76e267bbb5427307cbe1b4527630b56d896d95e4`  
		Last Modified: Sat, 27 Apr 2019 13:11:32 GMT  
		Size: 260.4 KB (260355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac04a2d7c37e35231d4b9c2eded4904027cf575f60e7ecb191d9caa1cc86f8`  
		Last Modified: Sat, 27 Apr 2019 13:11:43 GMT  
		Size: 28.4 MB (28423464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5babd6d9eab1f8d84c5383c98235b9b54061e92606c0b842c6ce11fbb8dd419`  
		Last Modified: Sat, 27 Apr 2019 13:11:32 GMT  
		Size: 653.9 KB (653867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abdf6009dc82da85f844e3bd7476f4d12fadd1408e93b3163f0fd33ae4346e4`  
		Last Modified: Sat, 27 Apr 2019 13:12:19 GMT  
		Size: 137.3 MB (137334487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15a64a7a568cf81eaa2634f3656288bb88276125b4760e1ca20ef45c508e6b2`  
		Last Modified: Sat, 27 Apr 2019 13:11:32 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4baed70bb59aa122452920eb1f49d616903101e31b5df4f9ab0614a7ced03656`  
		Last Modified: Sat, 27 Apr 2019 13:12:42 GMT  
		Size: 40.4 MB (40389417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d72c30fad293616d283658eb88d4bb4ce02d658f8ea00673a71adc838322eac9`  
		Last Modified: Sat, 27 Apr 2019 13:13:01 GMT  
		Size: 17.7 MB (17688375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
