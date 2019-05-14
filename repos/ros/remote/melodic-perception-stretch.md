## `ros:melodic-perception-stretch`

```console
$ docker pull ros@sha256:9b10e6c315b528e9373158934a1a054d688c24a3ebe91f258d458a58564fbbfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-perception-stretch` - linux; amd64

```console
$ docker pull ros@sha256:5c9b857fdb2cbd1b7b29d8d0d2b52680e6f6c6605ec6c47a3762463dd22baa02
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **879.4 MB (879359223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db98df701eb8c38ee23deda09002008b334027d379c1480538d8d32f82906464`
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
# Wed, 08 May 2019 01:55:39 GMT
ENV ROS_DISTRO=melodic
# Wed, 08 May 2019 01:57:02 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:57:03 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 08 May 2019 01:57:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 08 May 2019 01:57:04 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:57:50 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 02:00:56 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:08b0f237e6800bd8cd93d1eba6af7ff270cd673e7dca3b3cde75223baf7a1d1c`  
		Last Modified: Wed, 08 May 2019 02:06:26 GMT  
		Size: 269.5 MB (269499783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c137a57430681e4e7cc6c4d68e50bdcbdbd551b92115890ee74c48f399e20c9`  
		Last Modified: Wed, 08 May 2019 02:05:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5202c076b92887bc29a487a374ae6dce2feec957c85ffb20cf87adc38f382dbd`  
		Last Modified: Wed, 08 May 2019 02:06:53 GMT  
		Size: 108.5 MB (108461109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9122b19d47cd553369c62c4527b022d9868cf7adbdb7a963c64b7cb3ce9f5448`  
		Last Modified: Wed, 08 May 2019 02:08:36 GMT  
		Size: 380.8 MB (380757501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:1dbeedbd38be2fd5bc7eb0e07a6d2580bd617f0d92b633b7c77168290bc5f151
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **797.0 MB (797036025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4446be81003340d657ce461c8feb4ceec81d8c7ec50e9630ffceddf58308c4f`
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
# Wed, 08 May 2019 18:17:45 GMT
ENV ROS_DISTRO=melodic
# Wed, 08 May 2019 18:26:35 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 18:26:41 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 08 May 2019 18:26:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 08 May 2019 18:26:43 GMT
CMD ["bash"]
# Wed, 08 May 2019 18:29:41 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 18:46:52 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:269f91a65b147a94a5713f3add231834b7037b7d9a11922c00da22c38bd58f05`  
		Last Modified: Wed, 08 May 2019 18:57:11 GMT  
		Size: 223.7 MB (223679056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8fba45a3a316d31c3b1cd3f1f54340e5b5b4193f510196c2bb97743113ae34`  
		Last Modified: Wed, 08 May 2019 18:55:33 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161a237923c8e3af6bc4989796d97cccf376ce2942989b052feb80f6611fc07f`  
		Last Modified: Wed, 08 May 2019 18:58:03 GMT  
		Size: 102.9 MB (102936644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74354a14a265b6f3d777e664739d55e847e0184c05d37b121a63950e44a0fb7`  
		Last Modified: Wed, 08 May 2019 19:02:28 GMT  
		Size: 355.4 MB (355376541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
