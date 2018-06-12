## `ros:melodic-robot-bionic`

```console
$ docker pull ros@sha256:62a80e6d010bb94b8dd4f418b15518c9e2bfc0cb8e31aafd7f93001d56dbf017
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-robot-bionic` - linux; amd64

```console
$ docker pull ros@sha256:3341e5c6491e27d6612a66511daa2fdb847232bba5e4d98f6c77a4833f115a85
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **418.3 MB (418316787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d0eb83bd2103fa901e55d4b461e7f97002937e031cd3a7d24d6b6bf3f0b9685`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:20:51 GMT
ADD file:28c0771e44ff530dba3f237024acc38e8ec9293d60f0e44c8c78536c12f13a0b in / 
# Tue, 05 Jun 2018 21:20:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:20:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:20:53 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:20:54 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:20:54 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 23:33:46 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:40:13 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:40:14 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 01:40:15 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 01:41:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:41:46 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 01:41:46 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 01:42:03 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 01:42:03 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Jun 2018 01:48:06 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:48:07 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 01:48:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 01:48:08 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 01:50:57 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:52:48 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6b98dfc1607190243b0938e62c5ba2b7daedf2c56d7825dfb835208344705641`  
		Last Modified: Mon, 28 May 2018 14:49:47 GMT  
		Size: 31.3 MB (31262546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4001a1209541c37465e524db0b9bb20744ceb319e8303ebec3259fc8317e2dec`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6319fc68c576d6bd3e469b0ae31e9a010bc9b71ed286cf4e632424d82dca70d8`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24603670dc3e91d00439b5d56701884e4fc313877ef3940183a7e8e25fa5f1b`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f170c87c6f10548068b35cbe9bd00da1278b92f700a5e66c6a16ec04ba456b`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979f74553e2f46c9466182fa57886e6f1b7cee0e5bdfb55faa7d0801ebee7c5a`  
		Last Modified: Wed, 06 Jun 2018 00:34:37 GMT  
		Size: 831.6 KB (831640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2413da49cb9dbb697a0918b0367f90358d92d3a37e0fd017eb7a13824c3a6d95`  
		Last Modified: Tue, 12 Jun 2018 02:41:00 GMT  
		Size: 14.8 MB (14842409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:652985201ab535f87e10fc3da4dde4f4886cdd01b8f43f25fd80340f0f03536d`  
		Last Modified: Tue, 12 Jun 2018 02:40:48 GMT  
		Size: 1.4 KB (1394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e828be34f7aa637978360afe607bdbd8a1a65e319e4cdfd112b3932f50050513`  
		Last Modified: Tue, 12 Jun 2018 02:40:46 GMT  
		Size: 5.4 KB (5415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:308b41b91982bc8c11878b0487eaf39354764165dc5df8a42b70cc948445a757`  
		Last Modified: Tue, 12 Jun 2018 02:41:09 GMT  
		Size: 49.4 MB (49384346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2de7c1875059fbd16b8c53e58152618c2eb751d146ad0deab29524603a4ed56`  
		Last Modified: Tue, 12 Jun 2018 02:40:47 GMT  
		Size: 868.3 KB (868292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d678fbdf1b7c548f02e8d571003e52ebdcab722ab52cb64eecbe467dc96e54`  
		Last Modified: Tue, 12 Jun 2018 02:42:20 GMT  
		Size: 215.3 MB (215342748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a4ec92e7e7937b55454437e374aba167d9646503331413cd220b4016b596097`  
		Last Modified: Tue, 12 Jun 2018 02:40:47 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e2b1ab5d6ffcea26e4f19640d68a478aee7083ee998ae6bbf39c8758bf9027`  
		Last Modified: Tue, 12 Jun 2018 02:43:16 GMT  
		Size: 68.2 MB (68186951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f856a55db7096b8eb3e8830b742c8e9c84db5d160311d0a7f7f3a4348e80d29`  
		Last Modified: Tue, 12 Jun 2018 02:44:08 GMT  
		Size: 37.6 MB (37588525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:82b144ad1f24e785d886816824d117d48f615a8adce732dc6bf0beadc57a839e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **367.8 MB (367844000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b61244cad3d5969418354bb644c03c9b5b1a9630621bc9f5a40c106909566b86`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Jun 2018 12:16:08 GMT
ADD file:f4d27a69bc5473e5f5eb5dad6fc8826911740b7c04ffa555c991446ec6c287fe in / 
# Wed, 06 Jun 2018 12:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 12:16:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:16:12 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 12:16:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 12:16:13 GMT
CMD ["/bin/bash"]
# Tue, 12 Jun 2018 13:52:14 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 13:54:29 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 13:54:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 13:54:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 13:58:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 13:58:16 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 13:58:16 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 13:58:40 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 13:58:40 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Jun 2018 14:11:09 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 14:11:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 14:11:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 14:11:12 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 14:16:09 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 14:19:36 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:253c7c36e8ff222be6ae46b8a8b0274cacd471a9539af3178155497f98bb6f2f`  
		Last Modified: Wed, 06 Jun 2018 12:22:18 GMT  
		Size: 26.7 MB (26734895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe7c768a65c7849ed925f8924b6da2470aa34ca22e1d70325c112d1139fae364`  
		Last Modified: Wed, 06 Jun 2018 12:22:12 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba8d0d2ce80ebc3eb68df32d260e990ce42538e7feec69b9947bf18a2869f13a`  
		Last Modified: Wed, 06 Jun 2018 12:22:10 GMT  
		Size: 456.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28492cd57e466858970f9c49b2f9ac45b8a99b1895ca1edd4781eceeaf659c94`  
		Last Modified: Wed, 06 Jun 2018 12:22:10 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdfd257d89dc79a9116e3059d142e75d882a9312878d0ed63afa9568a3073287`  
		Last Modified: Wed, 06 Jun 2018 12:22:10 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22565ca561f06d621e606476a307d5070c9713b1491497d6f975d9ae408b0540`  
		Last Modified: Tue, 12 Jun 2018 14:43:33 GMT  
		Size: 831.9 KB (831867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0aa4f07722ee1e37e74079219bb63846d1cda7749860231f006eb39a072d3cd`  
		Last Modified: Tue, 12 Jun 2018 14:43:36 GMT  
		Size: 13.2 MB (13208193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48741555dea365ccfbad023c0baaedaef74ac0613f8eb4675ffd81426d1bc48e`  
		Last Modified: Tue, 12 Jun 2018 14:43:31 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9629f05f754b23b014b96c300e2a600c0925eeaebacb4c1db89791b5928b4546`  
		Last Modified: Tue, 12 Jun 2018 14:43:30 GMT  
		Size: 5.4 KB (5447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c91e8d954ff4bdce24bcfc086a02be9ca1448778e1d66ce3e1bb75d71e71b2`  
		Last Modified: Tue, 12 Jun 2018 14:43:48 GMT  
		Size: 45.0 MB (45009475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50da0cc71913c2b2f1d262881357d41e6731abbcbbee963798b0ce9f455d6ce2`  
		Last Modified: Tue, 12 Jun 2018 14:43:31 GMT  
		Size: 868.5 KB (868465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:addd3c471874ee323a543b5d8fa8b31ef1255389dd62fd19393a34ab36fbd04d`  
		Last Modified: Tue, 12 Jun 2018 14:44:27 GMT  
		Size: 188.0 MB (187964366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cbf7e931cf2db957ba6ab41eb8e2561af0eb8cd987c93c7e2ca25da442d9cef`  
		Last Modified: Tue, 12 Jun 2018 14:43:30 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa20872359343b97157a715162bb8b54b00e715793ec555334fbe19e7389baa4`  
		Last Modified: Tue, 12 Jun 2018 14:45:06 GMT  
		Size: 60.0 MB (60003186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7a7fe526345d26f7579fba99b0edd43cfb2dd3b201cee1869893d37e9eb918`  
		Last Modified: Tue, 12 Jun 2018 14:45:43 GMT  
		Size: 33.2 MB (33214170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f6039eb36d9c40642819b64c38b545bbdeada3ad75c3e0dc80a77b6cfdd5cfb2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.1 MB (393113108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40eb713f8bc239c3b1be421788a4dd687de0a062f54d1ad290ee4803f040064d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:36:07 GMT
ADD file:e621379575a99de6e4ba37f4ae8dcc55df1c97a6400433124a2f19acb114dbd6 in / 
# Wed, 06 Jun 2018 09:36:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:36:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:36:13 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:36:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:36:16 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 12:15:02 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 12:25:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 12:25:57 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 12:25:59 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 12:30:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 12:30:05 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 12:30:06 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 12:30:44 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 12:30:45 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Jun 2018 12:56:04 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 12:56:20 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 12:56:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 12:56:21 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 13:04:08 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 13:11:17 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7832065b5d3446538e5ba50643be10e4c34b9e75f5a8b8df1358f999c7cd8424`  
		Last Modified: Mon, 28 May 2018 14:51:36 GMT  
		Size: 28.2 MB (28183155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e785b4ce40b0aea87739098d0012769178d94f1719637b68f9933a4f933c5d0c`  
		Last Modified: Wed, 06 Jun 2018 09:39:54 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1dddf51db09b762e68bab7662fa89879e6824075d6da9703eef3455e70a7f2`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66d20b2cdc45a149d7a54e6e605aabb6214e4811b6b0973649b36bc6e670621`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029aeb777c3f3fd5e77c8685eab4ce0f485d581b8359bcd0ada43b8eb8239453`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bca181cf195a49efa74526992d33ea0b897c861356478d8ffa8f2f2722b8ef9`  
		Last Modified: Wed, 06 Jun 2018 13:12:05 GMT  
		Size: 831.7 KB (831653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b40a7cf8c92f732a98ed0c91a8f376ac5d026966bb62ae8a3cc31950149a865`  
		Last Modified: Tue, 12 Jun 2018 14:42:25 GMT  
		Size: 14.0 MB (14025602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64161ea3457828bf106e2a41ea1bdec4fa57b0d91be42273e1ff8dffd8df257e`  
		Last Modified: Tue, 12 Jun 2018 14:42:15 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d133e469e364e410d95018672de36eb9eeb81c3fe907432b2990ebe279c415e`  
		Last Modified: Tue, 12 Jun 2018 14:42:14 GMT  
		Size: 5.4 KB (5419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11388e22ee416c388786a3b452453ecba80d4276f795882240d8bb27e353e670`  
		Last Modified: Tue, 12 Jun 2018 14:42:39 GMT  
		Size: 47.6 MB (47598703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356cfd429774875db9a2a54f6c8cb0febf375f1bb762af541aeeff987d1ebf36`  
		Last Modified: Tue, 12 Jun 2018 14:42:14 GMT  
		Size: 868.4 KB (868392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f364401d16f83e21dbe354babf5043963ede9bb2c4fc08f8937eeac914894bb2`  
		Last Modified: Tue, 12 Jun 2018 14:43:39 GMT  
		Size: 202.8 MB (202839689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6d6fdd8ae904e2c320dbe80b81324367e33ec71255263006d6912b4053b6d4`  
		Last Modified: Tue, 12 Jun 2018 14:42:13 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8809f12ace9ed052a72b917f094ff97b30325959a05d469faf8fc1d8c12e72d7`  
		Last Modified: Tue, 12 Jun 2018 14:44:24 GMT  
		Size: 63.4 MB (63383073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:735626fa3d218399415639f5986257674fd00e135fa33ddc661a74841f074e8f`  
		Last Modified: Tue, 12 Jun 2018 14:45:15 GMT  
		Size: 35.4 MB (35373513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
