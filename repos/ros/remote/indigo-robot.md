## `ros:indigo-robot`

```console
$ docker pull ros@sha256:1fd4bea2e91cda6a9e95d9a938009fe3c783770cce67c8c0a9e1940d3b11ee19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-robot` - linux; amd64

```console
$ docker pull ros@sha256:0200da09b954ec908ca72bc639196ed38219e314c57c3e8cb2193d3f6d602db2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.7 MB (332748898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d969fd1aff4abfc2f226344c733708e6dc2ec03a3526afa1b2fe13ce5b51fa7`
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
# Wed, 22 Aug 2018 18:35:13 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:41:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 22 Aug 2018 19:41:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 22 Aug 2018 19:42:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:42:15 GMT
ENV LANG=C.UTF-8
# Wed, 22 Aug 2018 19:42:15 GMT
ENV LC_ALL=C.UTF-8
# Wed, 22 Aug 2018 19:42:33 GMT
RUN rosdep init     && rosdep update
# Wed, 22 Aug 2018 19:42:34 GMT
ENV ROS_DISTRO=indigo
# Wed, 22 Aug 2018 19:45:28 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:45:30 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 22 Aug 2018 19:45:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 22 Aug 2018 19:45:30 GMT
CMD ["bash"]
# Wed, 22 Aug 2018 19:46:55 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 19:48:28 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:7ebf088c95975c5015ae52790de60b05c135d99e4ab7c090f982ca287bbbd70e`  
		Last Modified: Wed, 22 Aug 2018 19:22:13 GMT  
		Size: 18.0 MB (18035326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21bf9a80c88854e663c21b8c44b4781d1d14f72a903543e20501bde89f3e0333`  
		Last Modified: Wed, 22 Aug 2018 20:39:01 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56033e90ffd85f2f2471fcac69a81ffa01bb58778c77bcc47c486ee623cec3a8`  
		Last Modified: Wed, 22 Aug 2018 20:38:57 GMT  
		Size: 260.3 KB (260329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3cfed3750b6bc22f33071ff5dfbb69e61276cd45400a5503d9305651a04ba3b`  
		Last Modified: Wed, 22 Aug 2018 20:39:13 GMT  
		Size: 30.9 MB (30946528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cd1b8ad9380a3bfe86a0f2e02f05bcbe988e43701a9b2e28a73e36900826f0`  
		Last Modified: Wed, 22 Aug 2018 20:38:58 GMT  
		Size: 801.4 KB (801392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbf292d48b14aa2e7f0c9140c61e20b5ccde015bd9df71e010ca0f7f685f276`  
		Last Modified: Wed, 22 Aug 2018 20:39:54 GMT  
		Size: 149.7 MB (149685816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2b1719e64815d204a701f7ec3448406af93c26bf2f87fa52b8938268735605`  
		Last Modified: Wed, 22 Aug 2018 20:38:57 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:431aedae5280212b806968ceaff20699ed92931ffac6aae7e05f78ab23bcdce8`  
		Last Modified: Wed, 22 Aug 2018 20:41:00 GMT  
		Size: 46.8 MB (46775673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84bfc4368ff1964b754700d596383afddbaeee853c1b46eee7457ab57862a582`  
		Last Modified: Wed, 22 Aug 2018 20:42:24 GMT  
		Size: 19.0 MB (19029784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:b20022af12ba0aa57e56abb28493df05099a2b082106418c152005222857497e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.4 MB (302391831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01608070aa7d7f4f6a493672452ecc5922c60c71b03da9d9c6fd31f8e9f407a7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 13:23:05 GMT
ADD file:7bbac98bb65c84c77ea4e287e758111798edcdc61c0d78672c1623bdf729ac11 in / 
# Tue, 17 Jul 2018 13:23:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 13:23:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:23:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 13:23:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 13:23:12 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 17:11:43 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:11:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 17 Jul 2018 17:11:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 17 Jul 2018 17:12:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:12:34 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 17:12:34 GMT
ENV LC_ALL=C.UTF-8
# Tue, 17 Jul 2018 17:12:57 GMT
RUN rosdep init     && rosdep update
# Tue, 17 Jul 2018 17:13:05 GMT
ENV ROS_DISTRO=indigo
# Tue, 17 Jul 2018 17:14:28 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:14:30 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 17 Jul 2018 17:14:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 17 Jul 2018 17:14:38 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 17:15:49 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:16:43 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9c2a082512cf3a8830b91d42bb98b629740d5fd24b80d72fcb6c02420898b67e`  
		Last Modified: Tue, 17 Jul 2018 13:26:24 GMT  
		Size: 61.5 MB (61468702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b41e83acf679b5d2b57b403be2a7fdf6356f920904951de07f61716c83bbee`  
		Last Modified: Tue, 17 Jul 2018 13:26:07 GMT  
		Size: 76.8 KB (76769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922a277efdf4041c4ff20411bf58600b676449a65a799fd39c199aefb9040b13`  
		Last Modified: Tue, 17 Jul 2018 13:26:06 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6618850e175b633967a0128ec1cc0f3bf4a3271fb8e6411d574048a9ed6428`  
		Last Modified: Tue, 17 Jul 2018 13:26:06 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5ef7a8d6ef97dbddd26f5c20d0b650717aca5f798f1b286dc6ed527eb06965`  
		Last Modified: Tue, 17 Jul 2018 13:26:06 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b82069b2a50c353e905bfcae17380b32a9656c8952682843864c514b39b5f9`  
		Last Modified: Tue, 17 Jul 2018 17:46:57 GMT  
		Size: 16.0 MB (15992494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8b843c2b3653e0a697a51a8d54fcf3450a45b21c53e5342723e978625aff4d`  
		Last Modified: Tue, 17 Jul 2018 17:46:50 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559d5bfca42baff179f33fe4a7c6524796727057eef2b5e7abdc4079d670b2e4`  
		Last Modified: Tue, 17 Jul 2018 17:46:52 GMT  
		Size: 260.3 KB (260336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58327eb1e7e55e9e0f6b0a144ae9d2c8ab6713dc67fb22a1078034a34536b7b6`  
		Last Modified: Tue, 17 Jul 2018 17:46:59 GMT  
		Size: 28.4 MB (28387811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be067005e48ca5e4ecca2a5034fbda0751956d874b39632fa9d21411b65eb41`  
		Last Modified: Tue, 17 Jul 2018 17:46:49 GMT  
		Size: 794.7 KB (794660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acba3fdb189895142a71fb0a4b350fa86870da50084bf85a7fcbb344bcf3b3a`  
		Last Modified: Tue, 17 Jul 2018 17:47:33 GMT  
		Size: 137.3 MB (137326483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d550e74d4a543e2acc3cf5ad99afad3ba7291cba002c687bb45a305841935758`  
		Last Modified: Tue, 17 Jul 2018 17:46:49 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed521622f24c54a706b444f17d89f01b4c68b813e1e6fec240303f18c03c677`  
		Last Modified: Tue, 17 Jul 2018 17:48:37 GMT  
		Size: 40.4 MB (40386111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fcfa35a001223b10dc25556724a265ec65cfff22c550bdc53f2883ee81a5154`  
		Last Modified: Tue, 17 Jul 2018 17:49:59 GMT  
		Size: 17.7 MB (17683784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
