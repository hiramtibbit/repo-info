## `ros:crystal`

```console
$ docker pull ros@sha256:b084dcbd511bc0f87e13cdeaad798e8e7fb5a2fd23046ee3c674156ba21bee0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:crystal` - linux; amd64

```console
$ docker pull ros@sha256:db8a975d7c9049b88db064de8e3c830a1b27d68b3dfd0396e012e8d8be179a71
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.2 MB (263193830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9c94bf8de2386aa1c7c22cb24e62d6d7abb1c88140282d9b6366545558e6016`
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
# Wed, 15 May 2019 23:16:14 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:40:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 01 Jun 2019 00:40:12 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 01 Jun 2019 00:41:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     git     python3-colcon-common-extensions     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:41:23 GMT
ENV LANG=C.UTF-8
# Sat, 01 Jun 2019 00:41:24 GMT
ENV LC_ALL=C.UTF-8
# Sat, 01 Jun 2019 00:41:40 GMT
RUN rosdep init     && rosdep update
# Sat, 01 Jun 2019 00:41:44 GMT
RUN pip3 install -U     argcomplete
# Sat, 01 Jun 2019 00:43:28 GMT
ENV ROS_DISTRO=crystal
# Sat, 01 Jun 2019 00:44:33 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:44:34 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 01 Jun 2019 00:44:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 01 Jun 2019 00:44:35 GMT
CMD ["bash"]
# Sat, 01 Jun 2019 00:44:56 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:38d719729a4057707a02f27987565d833c270316a75778e1e38c4a0e573cbad9`  
		Last Modified: Wed, 15 May 2019 23:38:16 GMT  
		Size: 151.6 MB (151620770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c1d8b597bfc025e4232e22737f1532f90b250fcb7eb43e505bb9b8c51d023c`  
		Last Modified: Sat, 01 Jun 2019 00:46:07 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1cd42337d501e1ff70b4fbd2dbd0c7b853aba8056bef1782201b68c7462c68`  
		Last Modified: Sat, 01 Jun 2019 00:46:06 GMT  
		Size: 5.4 KB (5431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e034ca0ab405b7d5213c854df2b71d1a157f3c40335ad47e66498cede391d4f`  
		Last Modified: Sat, 01 Jun 2019 00:46:19 GMT  
		Size: 27.9 MB (27946376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9942bd45718a9b2d34347ba50ae9ad9bf53726fbf300158e140b02739c53fb`  
		Last Modified: Sat, 01 Jun 2019 00:46:05 GMT  
		Size: 458.4 KB (458400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a09b65fd477072655a642c8d5fbfcaccb2d4f8ab4e10b6bafc55299fcf2cbb`  
		Last Modified: Sat, 01 Jun 2019 00:46:05 GMT  
		Size: 89.5 KB (89477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:301f82f8435cc744e4c5136dba1165b6b5dd8822429db78da45e2771da85302e`  
		Last Modified: Sat, 01 Jun 2019 00:47:04 GMT  
		Size: 50.2 MB (50204387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f692553187d5b0587d0d4599cdf144cd5cdc4dec9aec68292d2c92578b26d99d`  
		Last Modified: Sat, 01 Jun 2019 00:46:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681d887732c50164a601370bab86f4c906c5185463fb6da4e9d212008ca8b6cb`  
		Last Modified: Sat, 01 Jun 2019 00:47:13 GMT  
		Size: 3.2 MB (3174735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:crystal` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:770b1d814a251981551e477137e018195abc9b70554414f36529ae08be6dcaaa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.5 MB (192472232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11a9fe9909630789b21ba5b628ad2d3b66cd96545f92716622414f7ea29f4a7a`
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
# Tue, 18 Jun 2019 23:10:28 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:10:33 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 23:10:35 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 18 Jun 2019 23:11:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     git     python3-colcon-common-extensions     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:11:40 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 23:11:40 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 23:12:01 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 23:12:06 GMT
RUN pip3 install -U     argcomplete
# Tue, 18 Jun 2019 23:13:46 GMT
ENV ROS_DISTRO=crystal
# Tue, 18 Jun 2019 23:14:56 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:14:59 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 18 Jun 2019 23:15:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 23:15:00 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 23:15:33 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:57ea2f8a738716826ec9ee9315b9f7bf0ecba866fe47bb6caaee8aa2c21c1b9e`  
		Last Modified: Tue, 18 Jun 2019 23:30:44 GMT  
		Size: 97.8 MB (97807291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d67d2c20473cfea3a01fac61b91c20fc9d83f37d7cf854ba2211e82012cfff`  
		Last Modified: Tue, 18 Jun 2019 23:30:12 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb64d58441c12ed30c074299527b83dce298ae27090b46c6d0661014855c0ef4`  
		Last Modified: Tue, 18 Jun 2019 23:30:12 GMT  
		Size: 5.4 KB (5425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1100e2815e733fff7a32406bb256e6dacca2798482d0bc36542bbca477a1eaea`  
		Last Modified: Tue, 18 Jun 2019 23:30:18 GMT  
		Size: 26.6 MB (26618349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf5fb84069315bad7318c54e28c7f646e286f3a73b5f1bc4c605b55cf7eda259`  
		Last Modified: Tue, 18 Jun 2019 23:30:10 GMT  
		Size: 462.5 KB (462534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e518d0e0a85bd3564457320403360faad6836ba3472f8ae39779e766e0df74b`  
		Last Modified: Tue, 18 Jun 2019 23:30:10 GMT  
		Size: 89.6 KB (89601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68fdc291aedac46dc303f5a9c5a3d4532e1b7e1f46b2437601defe9147fb72fd`  
		Last Modified: Tue, 18 Jun 2019 23:31:23 GMT  
		Size: 40.0 MB (39972583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22c5ac05db4f60fd495f4dc3ff843840620c9edf18a23bbb9e2824a88e7578e`  
		Last Modified: Tue, 18 Jun 2019 23:31:07 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea072fd9611d16c4f56cd9300ec385a680126864588b1e50a745f273fc61edfe`  
		Last Modified: Tue, 18 Jun 2019 23:31:33 GMT  
		Size: 2.9 MB (2937131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
