## `ros:indigo-robot`

```console
$ docker pull ros@sha256:75192a9c0bb1bcb82cd454ab3245dce294d0c5b4844332994546d24cf14a18c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-robot` - linux; amd64

```console
$ docker pull ros@sha256:9fcf8b9582ec03babb9c2b0481bb449a5e4c88651127f83b1f1917e6e6d2b35a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.7 MB (332709684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee1eb1e7e6c83040b23ecc657c37a67c2dc6bd8677ccbb4508b590cff62e53fb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:21:11 GMT
ADD file:1e01ab604c0cc308430848d15d75fa9c09a2c53f156a6a2dbdee4ac618c8c8aa in / 
# Wed, 15 May 2019 21:21:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:13 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:29:56 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:29:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:30:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:31:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:31:02 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:31:03 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:31:23 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:31:23 GMT
ENV ROS_DISTRO=indigo
# Wed, 15 May 2019 22:33:56 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:33:57 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:33:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:33:58 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:35:11 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:36:05 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a7344f52cb744a28edb7b2c806f4227d07219709d2365c32a42b580165d261c1`  
		Last Modified: Wed, 15 May 2019 12:22:08 GMT  
		Size: 67.2 MB (67191601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515c9bb515362c9d26b0c6acaa3ad0a79c20cf421d56a8c5bb4ddc60a336239b`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1eabe0537eb2d3647100f04687474cc1c232b4e512e70fd0a09b93d55da8f69`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4701f1215c13b72f8e1fbd292558fc4cb49655209db1b450cbb5c068be64956c`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bb54e8f8da18624b751ed9da1e48f1ff62e62f3228f0e16fda14db23d115f9`  
		Last Modified: Wed, 15 May 2019 23:20:49 GMT  
		Size: 18.0 MB (18040655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:093714e2e2ec8d829d43696b887599c3da8b446d6c8c85d9fb50c65522863303`  
		Last Modified: Wed, 15 May 2019 23:20:39 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e4b133e0a475892d1e3976cb65ee96d56f6d63f992fcd649efc12ffbc5fd0d`  
		Last Modified: Wed, 15 May 2019 23:20:38 GMT  
		Size: 260.4 KB (260381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24b47ebb253d93c6b91c95c1c52e83356c77ca5291f655a9a0f1e874a3d9e04`  
		Last Modified: Wed, 15 May 2019 23:20:55 GMT  
		Size: 31.0 MB (30955707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71cd74d34dd32b3d6890eb1d6989a87c588076ce7dce973acb81ac01f09c1dfe`  
		Last Modified: Wed, 15 May 2019 23:20:39 GMT  
		Size: 661.8 KB (661822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd40a2a0606e82c01905508b67411dac83090e54981a5fa98fbf3a0dd044f4c`  
		Last Modified: Wed, 15 May 2019 23:21:39 GMT  
		Size: 149.7 MB (149703861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ee69063cdf542d69c5ffe21cb0f034a7674d17e45a121d818ecb2cd2ee3a713`  
		Last Modified: Wed, 15 May 2019 23:20:38 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1ce81d19dc804688c7e6843ce668cfde37c8ac1eb2930590f88a4a00cad336`  
		Last Modified: Wed, 15 May 2019 23:22:04 GMT  
		Size: 46.8 MB (46777181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c97076b07cb04cbe22a6db0b0c538970503ed2f10993bc14aeaf798689f719e`  
		Last Modified: Wed, 15 May 2019 23:22:17 GMT  
		Size: 19.0 MB (19032030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:477113ab9c0c7a74ab0aecc37a25a61268dc573c9424d945eb788bc4303288b8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.4 MB (302381246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d21abcdc938b8318a758c4bb94b26450d2310f19873762db91f65768143888cd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:00:38 GMT
ADD file:5a23fd6ac38e37ff5736b56e6bda65245c53cad8ede347990541a3ecc5547fca in / 
# Wed, 15 May 2019 22:00:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:43 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:20:14 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:20:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:20:20 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:21:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:21:26 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:21:26 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:21:47 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:21:47 GMT
ENV ROS_DISTRO=indigo
# Wed, 15 May 2019 22:24:21 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:24:24 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:24:25 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:24:25 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:25:39 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:26:37 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e61899ba83168070e1f62c03d9c951b49380755b789b58dde6674c1fd77b5976`  
		Last Modified: Wed, 15 May 2019 22:03:16 GMT  
		Size: 61.5 MB (61535055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea15ab03fb18c99d76f60fb7e8da9d90feb75fa24c4dea743b7ee92e2a92cd83`  
		Last Modified: Wed, 15 May 2019 22:02:53 GMT  
		Size: 76.8 KB (76771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9150d30e002a17c813eed22654e990e37de8934b23d5a36ac2ca001808adb6`  
		Last Modified: Wed, 15 May 2019 22:02:54 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f509ae3a8676ea3bb07352c8e28e88a66d8bde0b2b7159c869a0a93d907fce6a`  
		Last Modified: Wed, 15 May 2019 22:02:53 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fba16eebed3b1089eb31396478372b24c39a012c3e3ded274aefcea913ffb646`  
		Last Modified: Wed, 15 May 2019 23:09:35 GMT  
		Size: 16.0 MB (15995700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ddf8bea55232d36b1197974ab65bcab0dd94f25ed2eedb9d6ae0ba701dbcfbd`  
		Last Modified: Wed, 15 May 2019 23:09:29 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f1d4e6759ca6e7e6c6ed26fe8ea7a34a5801a207418a8edb679f8b174da480`  
		Last Modified: Wed, 15 May 2019 23:09:28 GMT  
		Size: 260.3 KB (260339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7f95211a813ae1ecd462b1aa5aaf74e15597453dc2566ef49995b2298d54d23`  
		Last Modified: Wed, 15 May 2019 23:09:39 GMT  
		Size: 28.4 MB (28423614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9237a8bc02eb5ca0b4d7310295cb63dc0529aa13531001bbafe4731056493d41`  
		Last Modified: Wed, 15 May 2019 23:09:29 GMT  
		Size: 661.8 KB (661818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b7cf23e5ce6216423865b5d8cae65a00420807b43723af2d7b03e74d5533fc6`  
		Last Modified: Wed, 15 May 2019 23:10:16 GMT  
		Size: 137.3 MB (137336245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5a099b8d6d9ad396051c102378c7df744bcbbb281f851880217672361ce922`  
		Last Modified: Wed, 15 May 2019 23:09:28 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc604354de7fd593ec0c6e1ac24216a04ed76423db2a20e343f6f873369f33b`  
		Last Modified: Wed, 15 May 2019 23:10:35 GMT  
		Size: 40.4 MB (40389477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:012a4f1095b3d3fede561d8d1bedf8a8f406de4392fbb0fcf29fb7fcc9908fb6`  
		Last Modified: Wed, 15 May 2019 23:10:51 GMT  
		Size: 17.7 MB (17688411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
