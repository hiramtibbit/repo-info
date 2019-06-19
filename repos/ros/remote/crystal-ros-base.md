## `ros:crystal-ros-base`

```console
$ docker pull ros@sha256:fecbbec2b902273df9afad4a0284883922097e822120d0d04a09e0729a046902
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:crystal-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:c804647c13fb16451e4891ab51a9c848d5eb35878802426049d3af00348535bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.2 MB (262180097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcd1f09edfcd7b9daa7b24a489d9cd8e0e8afc5a09c4436df4ab30373e14c2dd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:51:33 GMT
ADD file:4e6b5d9ca371eb881c581574b8dc4f5391eff2872db364af0f8d9804e4890098 in / 
# Tue, 18 Jun 2019 22:51:35 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:51:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:51:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:51:38 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 03:23:24 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 19 Jun 2019 04:17:41 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Wed, 19 Jun 2019 04:17:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Wed, 19 Jun 2019 04:17:43 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Wed, 19 Jun 2019 04:18:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     git     python3-colcon-common-extensions     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Wed, 19 Jun 2019 04:18:19 GMT
ENV LANG=C.UTF-8
# Wed, 19 Jun 2019 04:18:19 GMT
ENV LC_ALL=C.UTF-8
# Wed, 19 Jun 2019 04:18:28 GMT
RUN rosdep init     && rosdep update
# Wed, 19 Jun 2019 04:18:30 GMT
RUN pip3 install -U     argcomplete
# Wed, 19 Jun 2019 04:19:30 GMT
ENV ROS_DISTRO=crystal
# Wed, 19 Jun 2019 04:20:10 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 19 Jun 2019 04:20:11 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Wed, 19 Jun 2019 04:20:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 19 Jun 2019 04:20:11 GMT
CMD ["bash"]
# Wed, 19 Jun 2019 04:20:22 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5b7339215d1d5f8e68622d584a224f60339f5bef41dbd74330d081e912f0cddd`  
		Last Modified: Thu, 13 Jun 2019 00:24:57 GMT  
		Size: 26.7 MB (26684508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ca88e9f6723ce82bc14b241cda8634f6d19677184691d086662641ab96fe68`  
		Last Modified: Tue, 18 Jun 2019 22:53:58 GMT  
		Size: 35.4 KB (35352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31c3b1caad473a474d574283741f880e37c708cc06ee620d3e93fa602125ee0`  
		Last Modified: Tue, 18 Jun 2019 22:53:57 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b054a26005b7f3b032577f811421fab5ec3b42ce45a4012dfa00cf6ed6191b0f`  
		Last Modified: Tue, 18 Jun 2019 22:53:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d951c0d117b5009d63ffbcb1a28ced8c945a03d1579dbab8d72a0647dd429a8`  
		Last Modified: Wed, 19 Jun 2019 03:42:05 GMT  
		Size: 836.8 KB (836815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ebb5a61f0975bd8e52404ada562276c31a7a5b1339747c03d77b47323da5e3`  
		Last Modified: Wed, 19 Jun 2019 04:31:42 GMT  
		Size: 152.5 MB (152548264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29c9093c6cc56059dad0ed633cb61684b5bfa11345be825ca52394fb2302428`  
		Last Modified: Wed, 19 Jun 2019 04:31:13 GMT  
		Size: 1.4 KB (1419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98343c7b07908a45ca5a3b642dee91693e8d372c663b95648842787a2ce70a5d`  
		Last Modified: Wed, 19 Jun 2019 04:31:13 GMT  
		Size: 5.4 KB (5424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3495a24ce7720f56a30ceb99038b98e187270691721a2382192eb7a128fffa0c`  
		Last Modified: Wed, 19 Jun 2019 04:31:21 GMT  
		Size: 27.9 MB (27894464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ac2c23ede6c5e1c6037273d0de1985f6de39768c054b4e9f5b052bd8e4a78ac`  
		Last Modified: Wed, 19 Jun 2019 04:31:12 GMT  
		Size: 462.5 KB (462470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3ec523a977428007cc6f67b5e7056446b210a50077230aaae44bc1f100687c`  
		Last Modified: Wed, 19 Jun 2019 04:31:12 GMT  
		Size: 89.5 KB (89476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa09cfb8a3044200d293cebc6de62e55ffc64bfdd78ce9ab0acf42ff9d0b8656`  
		Last Modified: Wed, 19 Jun 2019 04:32:09 GMT  
		Size: 50.4 MB (50445902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e62a6967972b2c9e718a8f2023f7e45ec801f7a2562f8c5a2f603510b8b6ba`  
		Last Modified: Wed, 19 Jun 2019 04:31:51 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d965ed511dd7696250cdec7d322a1bd6266c0241f971fb343b11bb106cb0c5e`  
		Last Modified: Wed, 19 Jun 2019 04:32:14 GMT  
		Size: 3.2 MB (3174797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:crystal-ros-base` - linux; arm64 variant v8

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
