## `ros:crystal-ros-base-bionic`

```console
$ docker pull ros@sha256:56b74217eba7ecb4b031351457d29a7cfdf3cc49027284b7c0f741b623453aca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:crystal-ros-base-bionic` - linux; amd64

```console
$ docker pull ros@sha256:c882d50c0038e97d95ce4d5af40e39d2968d4d9a3d44c7b141b24296cc5d9dfc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.0 MB (276989125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63aba6b13edf861f5dd81a8f769b69fabafb1319abc81a90515d07fdfe5ff4d6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:22:55 GMT
ADD file:c0f17c7189fc11b6a1d525e9fcff842b93bfaae92e5b91cb9a76aa867792756d in / 
# Fri, 28 Dec 2018 23:22:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:22:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:22:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:22:57 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 00:03:33 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:57:31 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:57:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 08 Jan 2019 23:57:33 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 08 Jan 2019 23:58:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:58:11 GMT
ENV LANG=C.UTF-8
# Tue, 08 Jan 2019 23:58:11 GMT
ENV LC_ALL=C.UTF-8
# Fri, 11 Jan 2019 23:23:43 GMT
RUN rosdep init     && rosdep update
# Fri, 11 Jan 2019 23:23:45 GMT
RUN pip3 install -U     argcomplete
# Fri, 11 Jan 2019 23:25:09 GMT
ENV ROS_DISTRO=crystal
# Fri, 11 Jan 2019 23:25:41 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 11 Jan 2019 23:25:42 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Fri, 11 Jan 2019 23:25:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 11 Jan 2019 23:25:42 GMT
CMD ["bash"]
# Fri, 11 Jan 2019 23:25:53 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:84ed7d2f608f8a65d944b40132a0333069302d24e9e51a6d6b338888e8fd0a6b`  
		Last Modified: Thu, 06 Dec 2018 08:24:38 GMT  
		Size: 32.2 MB (32174695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2bf1c4a48dae92d5a1b8aa319c8767fa491316fb80da52de80378264599a16`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bdc630309340a3154f37e17c00a61c28c476107656e8d6744d2ba9af980058`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9055237d68d011bb90d49096b637b3b6c5c7251f52e0f2a2a44148aec1181dc`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b830a6444f3dee50862a237c1ad8b2d38fc94b42c9e50af50ced1816a34f7c`  
		Last Modified: Sat, 29 Dec 2018 00:19:51 GMT  
		Size: 833.6 KB (833569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d82a3883f99e5068e52fd0e48ea35422ec73465d4f031570add6e54a38825e61`  
		Last Modified: Wed, 09 Jan 2019 00:01:53 GMT  
		Size: 151.6 MB (151594081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:396efe10183d5590f2e69cf714d55b65ace2ee97907870ecb61a99da8902d496`  
		Last Modified: Wed, 09 Jan 2019 00:01:25 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a37866d4a9c4261e7da8cf61a80ff6b782f232679b1cb5fab2c6dc7f5c6c08d`  
		Last Modified: Wed, 09 Jan 2019 00:01:25 GMT  
		Size: 5.4 KB (5426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375d66c53ac55d5ff98be29a6e8d233f36ec3d3c3e7d0d9543f6f8398b6d2d90`  
		Last Modified: Wed, 09 Jan 2019 00:01:34 GMT  
		Size: 38.2 MB (38227560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5595aca13034ec883f2e7645a69e4703a2f1358da4931dc701ac16c2b5ae0786`  
		Last Modified: Fri, 11 Jan 2019 23:26:57 GMT  
		Size: 867.5 KB (867497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae104ddd638de4319fdd0a1639b937eac0c397ee586f2cb4d60c504091e592ae`  
		Last Modified: Fri, 11 Jan 2019 23:26:57 GMT  
		Size: 93.9 KB (93856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59af65b69957d7cb493f3e02ee8349de3772afcdf743addc29cc9be58614463f`  
		Last Modified: Fri, 11 Jan 2019 23:27:30 GMT  
		Size: 50.0 MB (50014550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd5fc6a5a781de576354b09e56b7d3a12b89bdd2a3bed8745ea7c1f3e933af5`  
		Last Modified: Fri, 11 Jan 2019 23:27:18 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3064905b1da5663afd09d4f1de637d800d46e4586ffc67c351c4997d21c15247`  
		Last Modified: Fri, 11 Jan 2019 23:27:34 GMT  
		Size: 3.2 MB (3174785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:crystal-ros-base-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:becb4742470ace158ee9b8ff2c0017ac552977f38d869c79d4303498fa8e2962
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.3 MB (207253072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:416bec7c05f592a49dc36f8397b1fb3f4282dc7e9f298f6ed1505adaec47b4a0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:10:02 GMT
ADD file:afc5edd7ca04112762b95f27d248d0332cf6a91c59d905995515f35caf9b3d8b in / 
# Sat, 29 Dec 2018 10:10:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:10:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:10:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:10:27 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 10:57:49 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:02:24 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:02:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 09 Jan 2019 12:02:35 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Wed, 09 Jan 2019 12:05:05 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:05:06 GMT
ENV LANG=C.UTF-8
# Wed, 09 Jan 2019 12:05:07 GMT
ENV LC_ALL=C.UTF-8
# Sat, 12 Jan 2019 10:35:18 GMT
RUN rosdep init     && rosdep update
# Sat, 12 Jan 2019 10:35:29 GMT
RUN pip3 install -U     argcomplete
# Sat, 12 Jan 2019 10:38:58 GMT
ENV ROS_DISTRO=crystal
# Sat, 12 Jan 2019 10:43:38 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 12 Jan 2019 10:43:39 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 12 Jan 2019 10:43:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 12 Jan 2019 10:43:40 GMT
CMD ["bash"]
# Sat, 12 Jan 2019 10:44:16 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:df1ba8568c1c37591ee9da550c96037520aa40640e4d811ea4a9ff448180b921`  
		Last Modified: Fri, 07 Dec 2018 23:46:22 GMT  
		Size: 28.9 MB (28942366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2f986b8a2715a54b27ed07fedc48acb6e87810ca9a1ab7b501b10c0ab4ae6b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ccfecef86fe20c786d8cd1e358bd0ac7e8d3eb5a1e9d8adc5f942376d3f35d`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1595dd5aa204fc90df29a0011cd42441562b947a9f99136fb1122d75f67220b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8d31b05e6a68b51fd6f2264014d735e33f5f6a580aa826433f497c0e23dc80`  
		Last Modified: Sat, 29 Dec 2018 12:00:07 GMT  
		Size: 833.3 KB (833276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8bf0f1671b2062ecae6c80cb7ef868a3bd4b43cdee3c265a05cc1840641940b`  
		Last Modified: Wed, 09 Jan 2019 12:20:15 GMT  
		Size: 97.0 MB (97007835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16853b231bacc1de4f918b2d082d0a36f722cbbf38312fb4d4ed051299d2f603`  
		Last Modified: Wed, 09 Jan 2019 12:19:33 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e4eedd0ced794b8fb5685e4c9b584735028ad6e23988b2bd81b6b26072fed2c`  
		Last Modified: Wed, 09 Jan 2019 12:19:33 GMT  
		Size: 5.4 KB (5431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e369da6887210f116a5d26fb6311997ac9f5b96c8b9a595bd86b3b7e3a8ec7`  
		Last Modified: Wed, 09 Jan 2019 12:19:48 GMT  
		Size: 36.6 MB (36604915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:845dec30f89ce0c45001dbe6974b8fee8197c0834014fbb423495c2ffe95db04`  
		Last Modified: Sat, 12 Jan 2019 10:46:32 GMT  
		Size: 867.5 KB (867515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7086ebaa781a21d21052ab938b8aa532a9483e31a5ba114aa7d74cd949516844`  
		Last Modified: Sat, 12 Jan 2019 10:46:32 GMT  
		Size: 93.9 KB (93868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ef6f6e103cd06d3bc0441989250d3891d640e00d1a123af670d68925d9b7058`  
		Last Modified: Sat, 12 Jan 2019 10:47:32 GMT  
		Size: 40.0 MB (39957625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0d34389d83502e67272375a90be6b32e3b9be1099816db12366f4bd1c2d67c8`  
		Last Modified: Sat, 12 Jan 2019 10:47:11 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d8e325164af5230cfa3e641b50e39bff99bc23b9ed30be2b566c03346e6096`  
		Last Modified: Sat, 12 Jan 2019 10:47:42 GMT  
		Size: 2.9 MB (2937149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
