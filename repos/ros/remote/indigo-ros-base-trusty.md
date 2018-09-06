## `ros:indigo-ros-base-trusty`

```console
$ docker pull ros@sha256:42b455a7859b2f9068a2ec48ea6cbb54da203dd0a7015aa45cea61334440d4d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-base-trusty` - linux; amd64

```console
$ docker pull ros@sha256:c00511fd8078a002014adc44d192422ab06757cc138e519d8c63b7a3b0f04156
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.7 MB (313729394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db99d6a137181f0beb3ade21fa401a218a3ed5859ba828a88a6a905ba2b23fdc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:40 GMT
ADD file:b52dc89539ef99aa7478debd2af0497ac50ee0d7658c05219bbf609440626583 in / 
# Wed, 05 Sep 2018 22:20:41 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:43 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 23:12:48 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:12:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 05 Sep 2018 23:12:49 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 05 Sep 2018 23:13:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:13:18 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 23:13:18 GMT
ENV LC_ALL=C.UTF-8
# Wed, 05 Sep 2018 23:13:30 GMT
RUN rosdep init     && rosdep update
# Wed, 05 Sep 2018 23:13:30 GMT
ENV ROS_DISTRO=indigo
# Wed, 05 Sep 2018 23:15:03 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:15:04 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 05 Sep 2018 23:15:04 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 05 Sep 2018 23:15:04 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 23:15:47 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:72c01b436656c9a55ae968ed14e4f1b2a36e11a1103de1d78052edc926d5003f`  
		Last Modified: Wed, 22 Aug 2018 17:35:57 GMT  
		Size: 67.1 MB (67126755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65584f5f70eeea5b72e357d4e2bc0edf9b1a82fb23f1de65880e1dae719f78ab`  
		Last Modified: Wed, 05 Sep 2018 22:21:53 GMT  
		Size: 72.7 KB (72659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9874b529521c67727d1a5ad5d8eb24af93cdc5aa232cc42ff37488c4c2e5c8`  
		Last Modified: Wed, 05 Sep 2018 22:21:53 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86656bbaa6fd4511807a37afa01c1d4dce5cc973faed463aafa4fabd32b6dcde`  
		Last Modified: Wed, 05 Sep 2018 22:21:52 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe6916ab38229dcf39f8534843008d42dd93a44241619505dbf4774f0b70d28`  
		Last Modified: Wed, 05 Sep 2018 22:21:52 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7b876f9ae531a01b03c658b33bda8c8bbdcf41b6e2a4e8c597e658ad67ebe4c`  
		Last Modified: Wed, 05 Sep 2018 23:43:46 GMT  
		Size: 18.0 MB (18035665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820c85b55bd5b001882c3703015dbafd4a9c66ffd4f56561fb6c0b57bdf8683d`  
		Last Modified: Wed, 05 Sep 2018 23:45:48 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a06d820304bfdf0f3e7a105533c8e19752f514ae6a19cbc612200b52c43c81d3`  
		Last Modified: Wed, 05 Sep 2018 23:45:49 GMT  
		Size: 260.3 KB (260317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4951c4cd2c0a5b4a70c662761c5f9891dbf393e4872e0170813e617eeb491f`  
		Last Modified: Wed, 05 Sep 2018 23:45:57 GMT  
		Size: 30.9 MB (30946454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29cbde724d24e8964364039ad8c10bd7497729d466db026af11006968773a699`  
		Last Modified: Wed, 05 Sep 2018 23:45:47 GMT  
		Size: 810.9 KB (810850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab74cedb179e43f72f7096bf44b7ce69aa3ecadc3739308289d10a06443eba9`  
		Last Modified: Wed, 05 Sep 2018 23:46:28 GMT  
		Size: 149.7 MB (149686953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf629b3dbb77f1bc6e704419c59f5fcc98d8421af306b519074c163046123501`  
		Last Modified: Wed, 05 Sep 2018 23:45:47 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca7e449128e8c0d524ca98d6dbd094ef666f339ec8fe5f0cdc15dbbe596ccbd`  
		Last Modified: Wed, 05 Sep 2018 23:46:52 GMT  
		Size: 46.8 MB (46775088 bytes)  
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
