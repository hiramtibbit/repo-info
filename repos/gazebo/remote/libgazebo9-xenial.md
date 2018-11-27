## `gazebo:libgazebo9-xenial`

```console
$ docker pull gazebo@sha256:1665921a2cda14a3f20c562e68593457b2930a3c22a8f601114915de0cd2caf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo9-xenial` - linux; amd64

```console
$ docker pull gazebo@sha256:efb1aee30e220f6567879dfaaf98b9d3126df24c1fc945db3b901beb379f18d9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **521.3 MB (521274901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:501fc2197492389e6da2441b21cd21e73f0acef900134fcfb74d932ad269d4a3`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 21:55:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:55:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Mon, 19 Nov 2018 21:55:25 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 27 Nov 2018 00:30:30 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.5.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 27 Nov 2018 00:30:31 GMT
EXPOSE 11345/tcp
# Tue, 27 Nov 2018 00:30:31 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Tue, 27 Nov 2018 00:30:31 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 27 Nov 2018 00:30:32 GMT
CMD ["gzserver"]
# Tue, 27 Nov 2018 00:36:01 GMT
RUN apt-get update && apt-get install -q -y     libgazebo9-dev=9.5.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72e8e9d1e469cd8cb070e8393dc0e9213b13c66ed43d86e5f4dad863eac9a34`  
		Last Modified: Mon, 19 Nov 2018 22:15:52 GMT  
		Size: 16.7 MB (16660724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73289f5b144f68412e6c2ea83c36c1756c184548da8e6c7d721dd6fd7a2bcec8`  
		Last Modified: Mon, 19 Nov 2018 22:15:47 GMT  
		Size: 13.1 KB (13118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2194b5d9305d63b244d755f1eb2bc5eb2fe94548436ed89971367414df64a1c9`  
		Last Modified: Mon, 19 Nov 2018 22:15:47 GMT  
		Size: 5.5 KB (5522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75afba3034be5e7c4214da5fc13d77711075600676b4d3edf40c330bae0db66a`  
		Last Modified: Tue, 27 Nov 2018 00:53:33 GMT  
		Size: 218.9 MB (218934609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0279c0375e40a4242d4e2a9445bb46b2b90eccb15f624e2995a7ff02ce46a119`  
		Last Modified: Tue, 27 Nov 2018 00:52:51 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5d2ab5de7b2fadd485711c60cc8980782e572ba04219dd7900ae35797e76a5`  
		Last Modified: Tue, 27 Nov 2018 00:54:53 GMT  
		Size: 242.2 MB (242246924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
