## `ros:lunar-perception-stretch`

```console
$ docker pull ros@sha256:35586a92a408743d55703298fbad2b52254f4fee352cc2d8694530340b03455d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-perception-stretch` - linux; amd64

```console
$ docker pull ros@sha256:957c8cf4949343126b44e0123e523a5e472c691469638fb0a851ac34e496f41a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **933.4 MB (933358861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36cb19128c2f433c7901ecaad3ea911f49d5b010888383399e21bf123f6438d4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:11:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:48:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 08 May 2019 01:48:02 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 08 May 2019 01:48:35 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:48:36 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 01:48:36 GMT
ENV LC_ALL=C.UTF-8
# Wed, 08 May 2019 01:48:48 GMT
RUN rosdep init     && rosdep update
# Wed, 08 May 2019 01:48:48 GMT
ENV ROS_DISTRO=lunar
# Wed, 08 May 2019 01:50:00 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:50:01 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 08 May 2019 01:50:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 08 May 2019 01:50:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:51:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:55:21 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f9cf699210422079153157eff4d098d7573fa49263b6d8e5b5ff53f3690146`  
		Last Modified: Wed, 08 May 2019 01:16:05 GMT  
		Size: 21.1 MB (21090863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0bea7b6a7e144228d241eba7ed6108bf5f01c9683c9ececa901d356bafe18ce`  
		Last Modified: Wed, 08 May 2019 02:01:40 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27d855df06f71f1a31eabe4d8068bb63250d3359cc8efea15c0b672096a226e`  
		Last Modified: Wed, 08 May 2019 02:01:39 GMT  
		Size: 5.0 KB (4970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17173731882ab6af3c3fb1b9b22c6dd580d6a76fbcd34865e39776f3a1ed4e71`  
		Last Modified: Wed, 08 May 2019 02:01:53 GMT  
		Size: 53.5 MB (53547735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e0c36841004b7f30103b35c363ef4c6fc0671a9b14bc86ee206f59c0ccd382c`  
		Last Modified: Wed, 08 May 2019 02:01:39 GMT  
		Size: 656.4 KB (656376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23224fd5f367eb7a6ab20012ce5e1c310342eff32d58ecebb675da2dc50d0dbf`  
		Last Modified: Wed, 08 May 2019 02:02:34 GMT  
		Size: 251.2 MB (251177782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec8dc77adad38d8c71e1da0cc9b71adf9f9380c43e234f192957b3de049717c`  
		Last Modified: Wed, 08 May 2019 02:01:39 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d7ede2d718953de4bf4166dcafb3597ae7a264db610a690fd3c4cb0e150d42`  
		Last Modified: Wed, 08 May 2019 02:03:15 GMT  
		Size: 123.1 MB (123066684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb7ff2ddda786a1753ce588f705c8b6c5d5fa52901a8525c06003edddc12b33e`  
		Last Modified: Wed, 08 May 2019 02:05:22 GMT  
		Size: 438.5 MB (438473565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:8a5fed5722142960f4346166e9c16c0bdd447aab90fbc83c3f687fe0e6de1b6d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **816.5 MB (816536583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73900b7e06f81295a4fce55e83cc8de4edf66a0871a2b02b063c7aa12f9a5d88`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:39:46 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 17:44:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 08 May 2019 17:44:03 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 08 May 2019 17:45:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 17:45:40 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 17:45:41 GMT
ENV LC_ALL=C.UTF-8
# Wed, 08 May 2019 17:46:22 GMT
RUN rosdep init     && rosdep update
# Wed, 08 May 2019 17:46:22 GMT
ENV ROS_DISTRO=lunar
# Wed, 08 May 2019 17:54:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 17:54:35 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 08 May 2019 17:54:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 08 May 2019 17:54:41 GMT
CMD ["bash"]
# Wed, 08 May 2019 17:59:29 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 18:17:10 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3a75126aa029dd6ab801196dd1c5e6aee65091a6979cbc4def29e80d06137f`  
		Last Modified: Wed, 08 May 2019 12:59:51 GMT  
		Size: 19.7 MB (19745150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c36089d1d545ba823b26319d15c26dd99c3715e4b35ad172029435d806c1b10b`  
		Last Modified: Wed, 08 May 2019 18:48:41 GMT  
		Size: 1.4 KB (1378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6565c19dec3dadbc14a60b67c967a44f1011cfc28d97abd27e3435d40eaa399b`  
		Last Modified: Wed, 08 May 2019 18:48:39 GMT  
		Size: 5.0 KB (4980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a587974942663dce139e167693a1e655bcec4a05a4dafcee51f9483d4ce21ec`  
		Last Modified: Wed, 08 May 2019 18:49:27 GMT  
		Size: 51.5 MB (51493736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb350e2558751d30747f75bdf2355a1c924c5adc6edad8100662b4f266e9d12`  
		Last Modified: Wed, 08 May 2019 18:48:40 GMT  
		Size: 656.4 KB (656390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cd65b652486ec67be2dd9ccd163a53cee27d75251a6628a389caba782f4f1f`  
		Last Modified: Wed, 08 May 2019 18:50:48 GMT  
		Size: 206.1 MB (206090692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10946c3c899de7fe44860f04bb13ee613dd9b103056742d280727d51d062f84d`  
		Last Modified: Wed, 08 May 2019 18:48:39 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a256b3b662f560c265a737fbe21a7daa4ec4bb607bc0f7fb145a1e97f1ef35`  
		Last Modified: Wed, 08 May 2019 18:51:39 GMT  
		Size: 116.9 MB (116881253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fa026ef113a74f9fbc2a61be2f3810e44406aa10f3498a69f656b24a9fa7bf`  
		Last Modified: Wed, 08 May 2019 18:55:13 GMT  
		Size: 378.5 MB (378520854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
