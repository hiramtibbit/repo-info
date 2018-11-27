## `gazebo:gzserver9`

```console
$ docker pull gazebo@sha256:a27d3a990a61d52db284cf009f1d19fb2e2cf25cb2b069a8396910e54cf41152
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `gazebo:gzserver9` - linux; amd64

```console
$ docker pull gazebo@sha256:17613ca1377be32326165a8c006ee161d5fc73e728ddbbefe2299f99535d21af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.1 MB (297114438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d85527506b2876550a74eb05bebdeead55aaabfeb23896d46bb339d6c4346a2`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Mon, 19 Nov 2018 21:20:39 GMT
ADD file:39e5bc157a8be63bbb36a142e18b644b0cfff07a8a02b42f7d0c4ee4ba75a5bc in / 
# Mon, 19 Nov 2018 21:20:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:20:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:20:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:20:42 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:07:47 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:07:58 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:08:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Mon, 19 Nov 2018 22:08:07 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 27 Nov 2018 00:40:57 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.5.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 27 Nov 2018 00:40:58 GMT
EXPOSE 11345/tcp
# Tue, 27 Nov 2018 00:40:59 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Tue, 27 Nov 2018 00:40:59 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 27 Nov 2018 00:40:59 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:32802c0cfa4defde2981bec336096350d0bb490469c494e21f678b1dcf6d831f`  
		Last Modified: Tue, 13 Nov 2018 08:24:33 GMT  
		Size: 32.1 MB (32102249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1315cffa03c17988ae5c66f56d5f50517652a622afc1611a8bdd6c00b1fde3`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa83472a3562898caaf8d77542181a473a84039376f2ba56254619d9317ba00d`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85999a86bef2603a9e9a4fa488a7c1f82e471cbb76c3b5068e54e1a9320964a`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e382f7508b8d36f9ec94df8f13c4d28fde57004adc8b5530f7770ab8437227aa`  
		Last Modified: Mon, 19 Nov 2018 22:24:04 GMT  
		Size: 833.4 KB (833385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1dfc85356889358b7533b43d33d52477fc468a0f74b82e7646bf4b604c6cde`  
		Last Modified: Mon, 19 Nov 2018 22:24:07 GMT  
		Size: 14.9 MB (14909246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f952ee8207ba7bd8f05a26dbf3c530011a60a82b479c7b46221b905155a1f9de`  
		Last Modified: Mon, 19 Nov 2018 22:24:02 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd533576ee712b4aaad8a7c27b15253f40b385e04be2b45c8d1306543536250f`  
		Last Modified: Mon, 19 Nov 2018 22:24:02 GMT  
		Size: 5.4 KB (5428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb97958c9672e957fa1cd89ed3fcdc90e3bdbbe48369b98199cf201dbbf4d699`  
		Last Modified: Tue, 27 Nov 2018 00:56:18 GMT  
		Size: 249.3 MB (249260943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09220457cdf500a5e644e750acc0682ceb87b3a976eec70e973a5f649f503d72`  
		Last Modified: Tue, 27 Nov 2018 00:55:13 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gazebo:gzserver9` - linux; arm64 variant v8

```console
$ docker pull gazebo@sha256:8fa2b868cd29bf4242532c1cebccbb97516e00f02d286284c69fd1224fb5a1e0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.0 MB (279049816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1f7b7369751a01fb33b0cc699ee94c719287e34f008a570b5ce00529c1c56a6`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 12:03:59 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 27 Nov 2018 09:43:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 27 Nov 2018 09:43:53 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 27 Nov 2018 09:54:18 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.5.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 27 Nov 2018 09:54:20 GMT
EXPOSE 11345/tcp
# Tue, 27 Nov 2018 09:54:21 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Tue, 27 Nov 2018 09:54:21 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 27 Nov 2018 09:54:22 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc3ab4250df68a117e60e76acbfa48b3f7e9579e7be4727b50a2b1a3bc44d7f`  
		Last Modified: Tue, 20 Nov 2018 12:51:40 GMT  
		Size: 833.1 KB (833126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcbb0d04c2fe8d45073e7e09d93f4d890963da4407bdc2987f8a2458ea6e68c`  
		Last Modified: Tue, 20 Nov 2018 12:51:45 GMT  
		Size: 13.8 MB (13835925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612b3e7bd4844afaccfead5fc4a208ce98fb779027e80be8bf94976c2cd4e8d8`  
		Last Modified: Tue, 27 Nov 2018 10:21:15 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4910dcf0893089b2c80214acbdea723e40423a08cbd929c71743d744164312`  
		Last Modified: Tue, 27 Nov 2018 10:21:15 GMT  
		Size: 5.4 KB (5441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a39013122ac18e9d7055205163cc94fbdc953996820b2464029fd950984e8daf`  
		Last Modified: Tue, 27 Nov 2018 10:23:19 GMT  
		Size: 235.5 MB (235478260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbdc1716fcb47829d52a9b09b64f1e6dde62842761d824ab5db61dd99cc9d794`  
		Last Modified: Tue, 27 Nov 2018 10:21:15 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
