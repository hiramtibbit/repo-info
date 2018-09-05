## `ros:indigo-ros-base-trusty`

```console
$ docker pull ros@sha256:4b1dabeca86f169e02f3bbd93a1acfb993bc1cd0c057988666fac11744a21ccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-base-trusty` - linux; amd64

```console
$ docker pull ros@sha256:4aac2235032aad5c62524c08045cde0d4145432a67c50b06d5fc1f8e96e900c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.7 MB (313729145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f069ef9aaa799137028afee76907b2f230a4da6370c29a7e169cce0e5e6edca`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 22 Aug 2018 17:30:42 GMT
ADD file:b52dc89539ef99aa7478debd2af0497ac50ee0d7658c05219bbf609440626583 in / 
# Wed, 22 Aug 2018 17:30:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:30:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:30:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:30:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:30:47 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 06:56:47 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 06:56:48 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 05 Sep 2018 06:56:50 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 05 Sep 2018 06:57:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 06:57:37 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 06:57:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 05 Sep 2018 06:58:01 GMT
RUN rosdep init     && rosdep update
# Wed, 05 Sep 2018 06:58:02 GMT
ENV ROS_DISTRO=indigo
# Wed, 05 Sep 2018 06:59:53 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 06:59:54 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 05 Sep 2018 06:59:54 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 05 Sep 2018 06:59:54 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 07:00:42 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:72c01b436656c9a55ae968ed14e4f1b2a36e11a1103de1d78052edc926d5003f`  
		Last Modified: Wed, 22 Aug 2018 17:35:57 GMT  
		Size: 67.1 MB (67126755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944f9cf63457523d1b9cb2a03b24f959518a46db74340ec939cec53e6eaf4f7c`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6856614e8780c7b74fd9f5448864511a0dbb4d2d30a67c32f7b34c72dba00e50`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d0e4b6507f2bfe58324cac95a2327b9d8d14465b25cb07c1973f3236bcaf6f7`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00913272b9b1954235f892b11310c30df9a77bfad37ae48ca070bdd1ed2e0b6`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d818cd668fd77296446f231c4964a0d4cf4692a82ba24d4fca9a02c13af1aec`  
		Last Modified: Wed, 05 Sep 2018 07:51:30 GMT  
		Size: 18.0 MB (18035840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26a606471cdfb1ee22f615f473f3c0cbc520bc7c31ebe9f2e05fc6a5bba8626`  
		Last Modified: Wed, 05 Sep 2018 07:51:20 GMT  
		Size: 13.1 KB (13083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0903ece7c7de9a6a05e643d7510e8918fd784676dda5e6a4e30e81962da1f760`  
		Last Modified: Wed, 05 Sep 2018 07:51:20 GMT  
		Size: 260.3 KB (260314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b0ce6cb3be9a24271299ec098f6ec673061e3db2101128f7d14f16e030734e8`  
		Last Modified: Wed, 05 Sep 2018 07:51:36 GMT  
		Size: 30.9 MB (30946678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a18a1ca17ea8a8688e1ed24a6257ef2e5306ab8d4775d6757926c1d0160d2db`  
		Last Modified: Wed, 05 Sep 2018 07:51:19 GMT  
		Size: 809.8 KB (809760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd7172b716dc84b868013d1fad791abe2e7c18953feb25778cd5c24441402536`  
		Last Modified: Wed, 05 Sep 2018 07:52:04 GMT  
		Size: 149.7 MB (149686558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43866b987f3497151d0de5410f5d878e830a80f5b397ea0803b5c850cc1bcfbb`  
		Last Modified: Wed, 05 Sep 2018 07:51:19 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1c7c26265d6e151ba333d06892fa1a613ba48f7eb000efee14cd1a48d580a24`  
		Last Modified: Wed, 05 Sep 2018 07:52:24 GMT  
		Size: 46.8 MB (46775937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-base-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:4ee737b5eb00865b3a40121e660eb515926e815c5aec040be96a0d4876657776
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.7 MB (284715348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3a3089d764f8022969ff7274b1128933f20bf5f24d2f435668d1fe05fbcc3bc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 23 Aug 2018 13:30:08 GMT
ADD file:5e3787d44d01e9becfe5310d3247c9ce456da1b61fb73ffb2fceb5b72561387e in / 
# Thu, 23 Aug 2018 13:30:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 13:30:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 13:30:12 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 13:30:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 13:30:13 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 14:23:37 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 14:23:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 23 Aug 2018 14:23:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 23 Aug 2018 14:24:21 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 14:24:25 GMT
ENV LANG=C.UTF-8
# Thu, 23 Aug 2018 14:24:25 GMT
ENV LC_ALL=C.UTF-8
# Thu, 23 Aug 2018 14:24:48 GMT
RUN rosdep init     && rosdep update
# Thu, 23 Aug 2018 14:24:53 GMT
ENV ROS_DISTRO=indigo
# Thu, 23 Aug 2018 14:26:11 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 14:26:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 23 Aug 2018 14:26:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 23 Aug 2018 14:26:14 GMT
CMD ["bash"]
# Thu, 23 Aug 2018 14:27:09 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:78b0f13252d4e60560eff60018f22190f87ec4f29f18d3f281d66f86bec021fa`  
		Last Modified: Thu, 23 Aug 2018 13:32:20 GMT  
		Size: 61.5 MB (61464922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:591efdb1deaced5d70644f3f8f54e2c94d890a73853426da8f6327a3461fa7d6`  
		Last Modified: Thu, 23 Aug 2018 13:31:58 GMT  
		Size: 76.8 KB (76770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47ebe67924a57050d039d595cee9862ea3ae32414d0088e1c89ba9d23eeaa534`  
		Last Modified: Thu, 23 Aug 2018 13:31:58 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4d91398ea2ea1cdbb0a09d99c2c6ac1c774b908b4fc0cbb51cde5af760164d`  
		Last Modified: Thu, 23 Aug 2018 13:31:59 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041ad5c52989d00478fe324a2d20b5ab612311651b733da1389669b89ece0811`  
		Last Modified: Thu, 23 Aug 2018 13:31:59 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a732a5e79aa5a6152a498a9d19168d86ece8e1e49ea38b9268bfd900be4e407e`  
		Last Modified: Thu, 23 Aug 2018 15:16:40 GMT  
		Size: 16.0 MB (15992631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebdff095c9ad06e7023e2b2766823e319139505e5a4d1f4afbcb722afe8a23c8`  
		Last Modified: Thu, 23 Aug 2018 15:16:36 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5e77e810fb88b8cd080e224cc582602c03f3d4b2551357fc9e845842e875181`  
		Last Modified: Thu, 23 Aug 2018 15:16:34 GMT  
		Size: 260.3 KB (260327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a453bdfb52f7c4672e29a47e01a1a993f45d939c8ee55c61875589fb8100cf1c`  
		Last Modified: Thu, 23 Aug 2018 15:16:44 GMT  
		Size: 28.4 MB (28389572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d90c427cb1e3d18c5700c009772d720d379ac161bd619cbc939ba27b83139a55`  
		Last Modified: Thu, 23 Aug 2018 15:16:34 GMT  
		Size: 801.4 KB (801429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:154872999e08017259eea539b03b2d359b25d295f44e25766a0bcb813c1cb91d`  
		Last Modified: Thu, 23 Aug 2018 15:17:17 GMT  
		Size: 137.3 MB (137328669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:398f6fcf6b8c591cc5fa4123302c850befd35e622bc7c7fbb95ff80731127513`  
		Last Modified: Thu, 23 Aug 2018 15:16:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a627476b6ffee662b66e5c6529d2bce3c877346a1f80d595e2ebe62a1914cfd7`  
		Last Modified: Thu, 23 Aug 2018 15:17:46 GMT  
		Size: 40.4 MB (40386348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
