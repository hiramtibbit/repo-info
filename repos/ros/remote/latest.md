## `ros:latest`

```console
$ docker pull ros@sha256:5e6db5b83d2152171c00977f5e0e7a063841c0267108bc3d6ac7f035ded83fa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:latest` - linux; amd64

```console
$ docker pull ros@sha256:7c60fec1deb39ed9e1963ec36e6d88b53eb58ed17e3bf6a85be4af10cbfaa129
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.0 MB (382018703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e009edabca499c1559825d679a4007c5cb00bd4390ec521faf56cc254710d1d8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Mar 2018 22:17:23 GMT
ADD file:c753df38640ab6e246d9e66f0cef7156b7003976080b1e0b83e5717cd6ef1725 in / 
# Tue, 06 Mar 2018 22:17:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 06 Mar 2018 22:17:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 22:17:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 06 Mar 2018 22:17:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 06 Mar 2018 22:17:26 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 04:23:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:23:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 04:23:17 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 04:23:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:23:48 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 04:23:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 04:23:59 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 04:23:59 GMT
ENV ROS_DISTRO=kinetic
# Wed, 07 Mar 2018 04:25:10 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:25:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 04:25:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 04:25:11 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 04:29:53 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:22dc81ace0ea2f45ad67b790cddad29a45e206d51db0af826dc9495ba21a0b06`  
		Last Modified: Mon, 05 Mar 2018 14:50:20 GMT  
		Size: 43.0 MB (42963776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8b3c87dba3ed16956c881a26eb0c40502c176a35767627d87557d16ea1e0df`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91390a1c435a20661a9e9afdaeb818638299a20d6ee1cc06bbcab8ae4d51994f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07844b14977e91f82408cbb8932c7d6141d6ca8da7d6587b4d3065750d69186f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78396653dae2bc0d9c02c0178bd904bb12195b2b4e541a92cd8793ac7d7d689`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b971c0b1ac620a6f91591ec011d9f698374c4f86ced2e76b0a7406fb3ce58360`  
		Last Modified: Wed, 07 Mar 2018 05:23:16 GMT  
		Size: 5.4 MB (5362878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ce9337c61f12b66456c564611af1cebaf18121573deede5ec5f3e5c7e20ce7`  
		Last Modified: Wed, 07 Mar 2018 05:23:15 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577f569d1a8f7cf40ba5b621ac4314e120e93a2bce92e1e0ffedfecf99cfedd2`  
		Last Modified: Wed, 07 Mar 2018 05:23:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5639ffe3b624ccc82edad135d18b4b1d4aa7819c94689a64e53152b2e01d0243`  
		Last Modified: Wed, 07 Mar 2018 05:23:35 GMT  
		Size: 55.6 MB (55557751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6742823c6cd5873bd85cc3788f03ac1328b9caeee3bf0f474788d5a73a2f7c29`  
		Last Modified: Wed, 07 Mar 2018 05:23:13 GMT  
		Size: 788.0 KB (787957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf992befce791249e12b1de14873dc7994a62aaddf88cd16538460787907726a`  
		Last Modified: Wed, 07 Mar 2018 05:24:12 GMT  
		Size: 193.4 MB (193420853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052757a7efdb65c5c80abf168ae60b8d4aeeda2b26643234ec3c249f12e71f1a`  
		Last Modified: Wed, 07 Mar 2018 05:23:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b2d150f383e7cc4df04f7c561e029b0ff408451ea149faa5b5279406cbb71c`  
		Last Modified: Wed, 07 Mar 2018 05:36:40 GMT  
		Size: 83.9 MB (83909499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:latest` - linux; arm variant v7

```console
$ docker pull ros@sha256:82caf49162c1bdc5aa46c4d63d5fbff60ec2517e48daf3915efe5197a963864a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.0 MB (333978035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b179e429a5896a977a56a5253b1bbfb12f6f8ebe9fe7e1b87d8c6da14e3ad52e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 13:52:24 GMT
ADD file:c07c7154c5c228957fcc844292376cdd264f720f4de80e5e26bfe12b71eb4416 in / 
# Wed, 07 Mar 2018 13:52:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 13:52:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 13:52:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 13:52:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 13:52:29 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 14:22:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:22:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 14:22:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 14:23:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:23:36 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 14:23:37 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 14:23:56 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 14:24:05 GMT
ENV ROS_DISTRO=kinetic
# Wed, 07 Mar 2018 14:26:45 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:26:49 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 14:26:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 14:26:49 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 14:28:30 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:691b6e76f7d3aab0440ae1b4f294074c8b490809368fed044d459292fe167d65`  
		Last Modified: Wed, 07 Mar 2018 13:55:36 GMT  
		Size: 38.1 MB (38072790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddaeb583135666ceef66eba0816ed2027dce2095644cdf80a4334b55a5a90ee2`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d85072a7f55ed7bb2cfe4f48bed80d8c9311b23c2d0bc2997ac020c70443767`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85459cf632f19bfb0925ae8b3baac8101383b24d9262ad72fbf899796fff0cbb`  
		Last Modified: Wed, 07 Mar 2018 13:55:28 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed93ad4943c1d2b769b10ed146a73de5907de32cf2b14f506cbe3c2b78115b82`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e40589e46a9accff6d08d920a618246d48ccb7fadad2d0b063c693b40d3b43`  
		Last Modified: Wed, 07 Mar 2018 14:45:00 GMT  
		Size: 4.6 MB (4614947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e3f8c7fa067f4410ca068ae12672f1e6108d79ad8bb90b34ff8b136d89a8ba`  
		Last Modified: Wed, 07 Mar 2018 14:44:59 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7c071ba89fb1a97a3df220e57451fdd1a402ae32c359b64df3b2842bdcadd3`  
		Last Modified: Wed, 07 Mar 2018 14:44:58 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b228d7e743e739c404ccab5ec9b9b8e88a3588da82b79d97f85a175bc42ab021`  
		Last Modified: Wed, 07 Mar 2018 14:45:15 GMT  
		Size: 50.7 MB (50672956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:033492d3a96cfbee1e3d7319ee3bdc76bf8b8075c205f192596666339de1fc57`  
		Last Modified: Wed, 07 Mar 2018 14:45:00 GMT  
		Size: 788.3 KB (788338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f0d3d1777e9a432c809076f3e6e4933a6b13b63f7733e983e0842435c9bc27`  
		Last Modified: Wed, 07 Mar 2018 14:45:47 GMT  
		Size: 164.7 MB (164718752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dc873fb2fe6d8fb1205313f97df61ba8bacaa79fcfc5dc31ae281b5bc1c2528`  
		Last Modified: Wed, 07 Mar 2018 14:44:58 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa547da5150451ee067be7ca2ad02a7f7c842086914c6fd8172c2aaba81a6b44`  
		Last Modified: Wed, 07 Mar 2018 14:46:30 GMT  
		Size: 75.1 MB (75094273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:latest` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:da4ff9c53ff0d7a63ecc42573da817e8d797c78398c41e78ae7e78c24e3397be
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.8 MB (347752455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78de2479e62b27cd080b312f2877b504a28186310bcf8c27da0135617eb1d35a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 15:03:24 GMT
ADD file:a4b1e1c4e63ac46a933b7a242608f4a30c0e4ee2515ca0452110e6760a46d229 in / 
# Wed, 07 Mar 2018 15:03:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 15:03:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:03:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 15:03:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 15:03:30 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 15:26:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:26:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 15:26:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 15:28:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:28:51 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 15:28:52 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 15:29:33 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 15:29:33 GMT
ENV ROS_DISTRO=kinetic
# Wed, 07 Mar 2018 15:40:28 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:40:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 15:40:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 15:40:32 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 15:46:33 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:39d5c060380999d2bca48d9e9852c5e7581d6a9f85fd001a7efef08343ca259f`  
		Last Modified: Mon, 05 Mar 2018 14:51:24 GMT  
		Size: 39.2 MB (39172548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4022bcc1888c369ba6f61380a4a0393b91249abfad2e39c3eb2b39622bb68c4f`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6737bf717a119603a3072272dcd8d40e7f35e99672e9b1a8e5cccc2dbace2cf0`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77eded6bd704212b82c87ace0f7c9df64ec3f82254d1043321e4f3c27e499db`  
		Last Modified: Wed, 07 Mar 2018 15:07:46 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872459994a866ee3ec73f7a232eb62ca9af16e5e0f8c88385a2b0b7e77732811`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb07c1c51ccef9cf50132fe1bbb044c30ca5531f060bef5249045cb6f1b69dd`  
		Last Modified: Wed, 07 Mar 2018 16:38:46 GMT  
		Size: 4.8 MB (4820298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef408b1e348516d9c5a4fcf93b49cafa5010a803388b8d39a3486263f52ff600`  
		Last Modified: Wed, 07 Mar 2018 16:38:43 GMT  
		Size: 13.1 KB (13083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1551f950764b22e2468ee7513ebe04bf7979cec0c921f19583660b456c04ff9e`  
		Last Modified: Wed, 07 Mar 2018 16:38:42 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178db39d2bb6780a1e1d4729bf7e2ad0f4712b9a76ceb83f895aedbd872da855`  
		Last Modified: Wed, 07 Mar 2018 16:39:06 GMT  
		Size: 52.4 MB (52438998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d7e231dd60465758785dd778c3201b3456ba236bed704a928b07bc7be35a3e`  
		Last Modified: Wed, 07 Mar 2018 16:38:42 GMT  
		Size: 788.2 KB (788181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41b05865e11dda2df26e2342e0c3b33d17b99cfb1ce713d40ba27379de0ef26d`  
		Last Modified: Wed, 07 Mar 2018 16:39:46 GMT  
		Size: 174.0 MB (173980719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f384d297c692a2633ffd7f50ba47b3c29835d1f45180872beb6bbfbb8405b839`  
		Last Modified: Wed, 07 Mar 2018 16:38:41 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9506f6b0915cf13cb642f6fdfe646a43fa9a274b3a01a59b558cc93633f2c7`  
		Last Modified: Wed, 07 Mar 2018 16:40:50 GMT  
		Size: 76.5 MB (76535718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
