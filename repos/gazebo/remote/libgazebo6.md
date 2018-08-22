## `gazebo:libgazebo6`

```console
$ docker pull gazebo@sha256:eef951232fe472357b7e2ada72e8ca8310ec01c941c5431d5f3a2e744c084214
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo6` - linux; amd64

```console
$ docker pull gazebo@sha256:ed3dd0565238c2331da4676f536630dcc1816140c146b4740bcb5bbc1c555b71
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **494.9 MB (494892884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2108053862b3b530971a95ccd8ec93bd3fadce745cc2461d19239462be8634c6`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

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
# Wed, 22 Aug 2018 18:35:14 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Wed, 22 Aug 2018 18:35:16 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Wed, 22 Aug 2018 18:48:15 GMT
RUN apt-get update && apt-get install -q -y     gazebo6=6.7.0-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:48:19 GMT
EXPOSE 11345/tcp
# Wed, 22 Aug 2018 18:48:20 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Wed, 22 Aug 2018 18:48:20 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Wed, 22 Aug 2018 18:48:20 GMT
CMD ["gzserver"]
# Wed, 22 Aug 2018 18:50:57 GMT
RUN apt-get update && apt-get install -q -y     libgazebo6-dev=6.7.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:c649d22b3fcca2650569f0ed19bb303ab7cd9fb841f06a327a44018800340979`  
		Last Modified: Wed, 22 Aug 2018 19:22:06 GMT  
		Size: 13.1 KB (13110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:149386d2ca014b03e7e9d2bac172afa592ca7b170d85367f8cd4c9befe088126`  
		Last Modified: Wed, 22 Aug 2018 19:22:06 GMT  
		Size: 260.3 KB (260335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2054a3ad79f91b33eb2a73dfd9de58bc13fa9fee4114964fa177e3a909394e83`  
		Last Modified: Wed, 22 Aug 2018 19:31:09 GMT  
		Size: 160.8 MB (160761743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38927f67c22d4cb1793ee9edc54f919bc04c1502f421cfb9d38f57ac5fe2cbb2`  
		Last Modified: Wed, 22 Aug 2018 19:30:22 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e741a5348fffd7083bc177b3aa418b9e5105f4e7aa9cd9a8afb0aeffaf6d4353`  
		Last Modified: Wed, 22 Aug 2018 19:33:40 GMT  
		Size: 248.6 MB (248621402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
