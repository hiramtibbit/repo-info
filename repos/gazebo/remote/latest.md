## `gazebo:latest`

```console
$ docker pull gazebo@sha256:b28bf1aba801f3d66b6af03f0b3bbccaea21274ca0ea9606b334bd4c527da5f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `gazebo:latest` - linux; amd64

```console
$ docker pull gazebo@sha256:e10347213c0fd26e4f69ebdf6261c792e885e49f9153af78fae4ed186629b8e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **576.7 MB (576717665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c350667852b1a59a36ffcf918e537534203bb2ddde11afa439a3af3671d9545`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Fri, 28 Dec 2018 23:22:55 GMT
ADD file:c0f17c7189fc11b6a1d525e9fcff842b93bfaae92e5b91cb9a76aa867792756d in / 
# Fri, 28 Dec 2018 23:22:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:22:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:22:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:22:57 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 00:03:33 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:01 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Sat, 29 Dec 2018 00:04:03 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Sat, 29 Dec 2018 00:07:07 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:07:07 GMT
EXPOSE 11345
# Sat, 29 Dec 2018 00:07:07 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Sat, 29 Dec 2018 00:07:08 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Sat, 29 Dec 2018 00:07:08 GMT
CMD ["gzserver"]
# Sat, 29 Dec 2018 00:10:38 GMT
RUN apt-get update && apt-get install -q -y     libgazebo9-dev=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:84ed7d2f608f8a65d944b40132a0333069302d24e9e51a6d6b338888e8fd0a6b`  
		Last Modified: Thu, 06 Dec 2018 08:24:38 GMT  
		Size: 32.2 MB (32174695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2bf1c4a48dae92d5a1b8aa319c8767fa491316fb80da52de80378264599a16`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bdc630309340a3154f37e17c00a61c28c476107656e8d6744d2ba9af980058`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9055237d68d011bb90d49096b637b3b6c5c7251f52e0f2a2a44148aec1181dc`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b830a6444f3dee50862a237c1ad8b2d38fc94b42c9e50af50ced1816a34f7c`  
		Last Modified: Sat, 29 Dec 2018 00:19:51 GMT  
		Size: 833.6 KB (833569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3bc8e0e65d0d32a8da8db2bd05353e2d6689c2a1b8de666571deedd6aab49cc`  
		Last Modified: Sat, 29 Dec 2018 00:19:54 GMT  
		Size: 14.9 MB (14911415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a26ed14146abb868f487964c9ff8928d5993a19d3ec9087ec4c4572aa3cd6475`  
		Last Modified: Sat, 29 Dec 2018 00:19:49 GMT  
		Size: 1.4 KB (1439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b69146c4f05c17b0365459ce3335adda89caa61d9c174f7f18e671a3e5bebe9`  
		Last Modified: Sat, 29 Dec 2018 00:19:49 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae7c74022c4828176ace4a7897babc2f21b36db88c5cb8c0b5847cc02696a03`  
		Last Modified: Sat, 29 Dec 2018 00:20:35 GMT  
		Size: 249.3 MB (249344506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49dc57e135b896bc07866eb386b124b5cff3a8e572bdacb81d3569fdab398ce1`  
		Last Modified: Sat, 29 Dec 2018 00:19:49 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba236015d95756f76b24159c693f218a09737dbeee4b9de38e282c48a247da0e`  
		Last Modified: Sat, 29 Dec 2018 00:21:44 GMT  
		Size: 279.4 MB (279444909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gazebo:latest` - linux; arm variant v7

```console
$ docker pull gazebo@sha256:813ff7e141dcbe39747a89dcec7ed1bc6f1efae331e913a8402d5ec3e443b119
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **511.2 MB (511187503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeebbd0aeb07ee6b1812c72d6785a7e9e33cc06931f0e540933caec9788c843c`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Tue, 20 Nov 2018 13:05:44 GMT
ADD file:0b53ffb024f9f01a10ebb0831142ae3450b661e3757c4936ede7f6a748150a7f in / 
# Tue, 20 Nov 2018 13:05:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:05:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:05:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:05:49 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 14:00:10 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:00:38 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 27 Nov 2018 12:57:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 27 Nov 2018 12:57:45 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 25 Dec 2018 13:00:04 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 25 Dec 2018 13:00:06 GMT
EXPOSE 11345
# Tue, 25 Dec 2018 13:00:07 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Tue, 25 Dec 2018 13:00:07 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 25 Dec 2018 13:00:07 GMT
CMD ["gzserver"]
# Tue, 25 Dec 2018 13:03:27 GMT
RUN apt-get update && apt-get install -q -y     libgazebo9-dev=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0a8b647e51f44dcf9d7ed02148cb87c5db06d6b413002d6ce14abec615c17120`  
		Last Modified: Tue, 20 Nov 2018 13:08:37 GMT  
		Size: 27.5 MB (27455618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a571fde31afa3e43991a1defe06c7840e3b4cc7f4cfcb0fce9709b98bebe8e75`  
		Last Modified: Tue, 20 Nov 2018 13:08:30 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4cf04bb04adf18110128c75166262590b366904c597c9b1636add316731388`  
		Last Modified: Tue, 20 Nov 2018 13:08:30 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf40350077702ab5d298adacee052b0f95372f4f2924dc16daeaf802c34108d2`  
		Last Modified: Tue, 20 Nov 2018 13:08:30 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a06ca85c2f4fcf5e6d3fdc303eb3d9e233c02e83886168277340ff12e96145`  
		Last Modified: Tue, 20 Nov 2018 14:24:13 GMT  
		Size: 833.4 KB (833408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e8711f27b878b7bc11b5ff3a162d321c23b8eb1a3edf3541fc40e2bf7996c9`  
		Last Modified: Tue, 20 Nov 2018 14:24:21 GMT  
		Size: 13.2 MB (13239632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b44a0a541baf21154465c1f0e1c551d35c9315dd023fdbd94d680571b5b49a`  
		Last Modified: Tue, 25 Dec 2018 13:10:11 GMT  
		Size: 1.4 KB (1437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb44b0e5e7f9dff6de36d3cd4cd01df3cb5493f1cfffadb066277611422f64b`  
		Last Modified: Tue, 25 Dec 2018 13:10:11 GMT  
		Size: 5.5 KB (5468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d343e8ef599d6f7283c92fe7e40e5a9fed7a40c86d9e446a554cfb20985f183`  
		Last Modified: Tue, 25 Dec 2018 13:11:08 GMT  
		Size: 224.5 MB (224471097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:229257ce3f165577692e432934ba5ec035e4abf17af99e6cd9ef43aa95f10cfe`  
		Last Modified: Tue, 25 Dec 2018 13:10:11 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e3d8e28d0da42ed3661900658dba3297f6b168672c4da4bc9cd9a3388d530d0`  
		Last Modified: Tue, 25 Dec 2018 13:12:33 GMT  
		Size: 245.2 MB (245179064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gazebo:latest` - linux; arm64 variant v8

```console
$ docker pull gazebo@sha256:16b3263c4c2bbe541b6abfd2c6d98111f27b164bdcf79165045e0502f41384dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **495.3 MB (495304131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e030dfb19af526994f74c9c6f50a2970474ee1fa6329f6bf2825dfd9e5d0f651`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Sat, 29 Dec 2018 10:10:02 GMT
ADD file:afc5edd7ca04112762b95f27d248d0332cf6a91c59d905995515f35caf9b3d8b in / 
# Sat, 29 Dec 2018 10:10:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:10:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:10:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:10:27 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 10:57:49 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:58:52 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:58:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Sat, 29 Dec 2018 10:58:58 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Sat, 29 Dec 2018 11:14:09 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:14:31 GMT
EXPOSE 11345
# Sat, 29 Dec 2018 11:14:32 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Sat, 29 Dec 2018 11:14:34 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Sat, 29 Dec 2018 11:14:35 GMT
CMD ["gzserver"]
# Sat, 29 Dec 2018 11:28:36 GMT
RUN apt-get update && apt-get install -q -y     libgazebo9-dev=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:df1ba8568c1c37591ee9da550c96037520aa40640e4d811ea4a9ff448180b921`  
		Last Modified: Fri, 07 Dec 2018 23:46:22 GMT  
		Size: 28.9 MB (28942366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2f986b8a2715a54b27ed07fedc48acb6e87810ca9a1ab7b501b10c0ab4ae6b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ccfecef86fe20c786d8cd1e358bd0ac7e8d3eb5a1e9d8adc5f942376d3f35d`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1595dd5aa204fc90df29a0011cd42441562b947a9f99136fb1122d75f67220b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8d31b05e6a68b51fd6f2264014d735e33f5f6a580aa826433f497c0e23dc80`  
		Last Modified: Sat, 29 Dec 2018 12:00:07 GMT  
		Size: 833.3 KB (833276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199c3958fc0eb315a2b2e75c7401a8ce6980c3b9c082ab4ac8a9ce425da2cf41`  
		Last Modified: Sat, 29 Dec 2018 12:00:36 GMT  
		Size: 13.8 MB (13840318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be8ee18301e6582eb8f945b06ae52a6fa72a339b9d4422f697385a1478f087eb`  
		Last Modified: Sat, 29 Dec 2018 11:59:38 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a176bf24e9b1f1e75a586a88964eedd883629fdec2a01385a0c913f80a13801`  
		Last Modified: Sat, 29 Dec 2018 11:59:38 GMT  
		Size: 5.4 KB (5434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e351ed5792abe4d7e94f891cf2ebbce5efe488de83d35a1bc98cf4263bba8a5a`  
		Last Modified: Sat, 29 Dec 2018 12:01:30 GMT  
		Size: 235.6 MB (235559394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:509b61faa420d2671a2f04785956ee0bd80c39be9a42258ba850887a2fcf6790`  
		Last Modified: Sat, 29 Dec 2018 11:59:38 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb3a8c638d004b222748cc81e0c369046a49ee599bd7b32baf465e3065e2563`  
		Last Modified: Sat, 29 Dec 2018 12:03:11 GMT  
		Size: 216.1 MB (216120214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
