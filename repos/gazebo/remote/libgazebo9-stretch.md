## `gazebo:libgazebo9-stretch`

```console
$ docker pull gazebo@sha256:ec5dcde91a51677b5b65fa0ff3ff81533169a8cddd9d6377b46e0a478f856aa5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `gazebo:libgazebo9-stretch` - linux; amd64

```console
$ docker pull gazebo@sha256:a30c1060be955b90b6012f5d26f7640157d54a5b4f0a93ff5cd988da70e5d231
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **650.2 MB (650176865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e086a669e3c28f61b29a517d20d39f122ef73f68afd24c14458a9f6604fdd67e`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:10:57 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:11:00 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Sat, 29 Dec 2018 00:11:01 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Sat, 29 Dec 2018 00:12:37 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:12:38 GMT
EXPOSE 11345
# Sat, 29 Dec 2018 00:12:38 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Sat, 29 Dec 2018 00:12:38 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Sat, 29 Dec 2018 00:12:38 GMT
CMD ["gzserver"]
# Sat, 29 Dec 2018 00:14:18 GMT
RUN apt-get update && apt-get install -q -y     libgazebo9-dev=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9dbd30b808800417a52844c612f887e55d4ba4e5135b6a446eef49389d8c411`  
		Last Modified: Sat, 29 Dec 2018 00:21:57 GMT  
		Size: 21.1 MB (21091306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e01e5b3050a8874d66c9c6c90490eedf506e0f5ecedd3feee79e2c83727c73d`  
		Last Modified: Sat, 29 Dec 2018 00:21:51 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7678c781f2420b47e50bd1013ebad7e7779cb9ed1c108ccee2e237e004a8ab6`  
		Last Modified: Sat, 29 Dec 2018 00:21:51 GMT  
		Size: 5.0 KB (4979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc42d65a87831c79e8964a41aa9005eff4804a6319e1351af67dc8ebab0b44e1`  
		Last Modified: Sat, 29 Dec 2018 00:22:40 GMT  
		Size: 279.1 MB (279087304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:867e3c8ee19443b3938222aab30d8f2b3eb7072d4202df8a8c098004bcc8f068`  
		Last Modified: Sat, 29 Dec 2018 00:21:51 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148edc2f75841a91b7df37b730e9dbbfbbcecca523aedf8179deee8db3f1bf33`  
		Last Modified: Sat, 29 Dec 2018 00:23:48 GMT  
		Size: 304.7 MB (304667876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gazebo:libgazebo9-stretch` - linux; arm variant v7

```console
$ docker pull gazebo@sha256:97733ab02da3dbde2546480bfa763f4d67baa6c7c4808fe39c1cc2f80aaa7a66
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **598.6 MB (598601128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83a8184ce7a30a8aa9d10d70b8ec8654bd1cb6ff18415b7ca26eaf984ffd164c`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Fri, 16 Nov 2018 13:08:47 GMT
ADD file:085a6a2a32a05acfff8d2b179dad7789d649aca5cf2565a5b5490403e3d3cea0 in / 
# Fri, 16 Nov 2018 13:08:48 GMT
CMD ["bash"]
# Tue, 27 Nov 2018 12:59:08 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 27 Nov 2018 12:59:13 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 27 Nov 2018 12:59:15 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 25 Dec 2018 13:06:47 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 25 Dec 2018 13:06:49 GMT
EXPOSE 11345
# Tue, 25 Dec 2018 13:06:50 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Tue, 25 Dec 2018 13:06:50 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 25 Dec 2018 13:06:51 GMT
CMD ["gzserver"]
# Tue, 25 Dec 2018 13:09:46 GMT
RUN apt-get update && apt-get install -q -y     libgazebo9-dev=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:33dd5ae6335a66a99c6beb10708f7ff8d992b1075b6477cce3accbbe3b3a765e`  
		Last Modified: Fri, 16 Nov 2018 13:21:03 GMT  
		Size: 42.1 MB (42076140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f91b3513e76659f7e80c78fcddf249633ef3705c81279a88bb3c67399b3decd`  
		Last Modified: Tue, 27 Nov 2018 13:14:33 GMT  
		Size: 19.5 MB (19543722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3284a500de9bcfef46a9273eaef8907952f0f9786bb9bf08bb2dd56fced2539b`  
		Last Modified: Tue, 27 Nov 2018 13:14:25 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba32d797633f081791f6a037965ca4dda268644751d75483a624fa2dd33ae34`  
		Last Modified: Tue, 27 Nov 2018 13:14:25 GMT  
		Size: 5.0 KB (5012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc9a812e142a376a084e27e7933f3adfac467a1941c3ce7e82cfb11d3cc828db`  
		Last Modified: Tue, 25 Dec 2018 13:13:48 GMT  
		Size: 257.7 MB (257746256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccff19ea6823296d8bda184959de94cd039b1a8536dd4ae185d3fc2cb4cc357e`  
		Last Modified: Tue, 25 Dec 2018 13:12:41 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9065b1b120b40f27c10d489b9e4098de6a221b520cf7a3d770597f5a24c367d`  
		Last Modified: Tue, 25 Dec 2018 13:15:17 GMT  
		Size: 279.2 MB (279228391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gazebo:libgazebo9-stretch` - linux; arm64 variant v8

```console
$ docker pull gazebo@sha256:fd6603ef3d5035f4c5a697d8820c17d48bda17f4da9b3858c55023bd91e163d9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **584.1 MB (584115230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:560d74acb8a52f39bc44edf538c051598588e8e8f74655ab38f94abaa71c33b7`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 11:30:37 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:30:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Sat, 29 Dec 2018 11:30:45 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Sat, 29 Dec 2018 11:44:18 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:44:32 GMT
EXPOSE 11345
# Sat, 29 Dec 2018 11:44:34 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Sat, 29 Dec 2018 11:44:37 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Sat, 29 Dec 2018 11:44:40 GMT
CMD ["gzserver"]
# Sat, 29 Dec 2018 11:59:07 GMT
RUN apt-get update && apt-get install -q -y     libgazebo9-dev=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1d1944f1d21b0c58e7ecc4e7f9f25e36a085797ae60e4aabc5344d7a3cbc71`  
		Last Modified: Sat, 29 Dec 2018 12:03:44 GMT  
		Size: 19.7 MB (19745752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50340d8805aa24935eb4ffd28f55512c2dd2cd2ff0bb1d751ff47719619a600b`  
		Last Modified: Sat, 29 Dec 2018 12:03:36 GMT  
		Size: 1.4 KB (1421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2321cfd777fb901d8166000464a20bc8f1715d64917d1ebcd51a6b463ed90f21`  
		Last Modified: Sat, 29 Dec 2018 12:03:36 GMT  
		Size: 5.0 KB (4986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f852ead35cb88d286f26c1bbbfa291115b8e45dd69fbf624dd89bfba7ac45a93`  
		Last Modified: Sat, 29 Dec 2018 12:05:00 GMT  
		Size: 265.2 MB (265189822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4931f6c9157aadbc2f56648f163e7083c7b424c105dba79c155e4bd3743448b1`  
		Last Modified: Sat, 29 Dec 2018 12:03:36 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb15fcc06c9440c6526eb3567a4bb6930befe5088a6387d771c7d1ab2f2a6b5`  
		Last Modified: Sat, 29 Dec 2018 12:06:47 GMT  
		Size: 256.1 MB (256056584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
