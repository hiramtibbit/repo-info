## `gazebo:libgazebo9-stretch`

```console
$ docker pull gazebo@sha256:ee92fdbd623780f55182294df9cf47b478febff63aa0f09ad1d7e7ca1daea150
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `gazebo:libgazebo9-stretch` - linux; amd64

```console
$ docker pull gazebo@sha256:8980093f8706859fc740848982c80318929e766b2ceaae2d6903641474ee382a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **650.2 MB (650173126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db73bb708b5b0ee57c221d4a03dee3bf9bd980a518350106383566c989f5194a`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 06:36:19 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 06:36:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Wed, 06 Feb 2019 06:36:26 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Wed, 06 Feb 2019 06:38:01 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 06:38:01 GMT
EXPOSE 11345
# Wed, 06 Feb 2019 06:38:01 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Wed, 06 Feb 2019 06:38:02 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Wed, 06 Feb 2019 06:38:02 GMT
CMD ["gzserver"]
# Wed, 06 Feb 2019 06:39:50 GMT
RUN apt-get update && apt-get install -q -y     libgazebo9-dev=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6a2e0634b1abf3c79b90216e4aeb7471536660714c9370b9e596f13a4590a78`  
		Last Modified: Wed, 06 Feb 2019 06:42:10 GMT  
		Size: 21.1 MB (21091338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4964d812eeda261e0505705549cdc2975d68cd37e34995a3fb46e5ddcaf82d3b`  
		Last Modified: Wed, 06 Feb 2019 06:42:05 GMT  
		Size: 1.4 KB (1419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:271c3cd3cf2215915e8603efef901e275ca8d3150d3b7377a47cb8e2eebb3884`  
		Last Modified: Wed, 06 Feb 2019 06:42:05 GMT  
		Size: 5.0 KB (4982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ebee7e613b70a3e10c56f41d62144e938e7480dc17f38ee296103e05bbac260`  
		Last Modified: Wed, 06 Feb 2019 06:42:54 GMT  
		Size: 279.1 MB (279065016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2cc688df427cfb2878f2d4e4ebe5f305fc9739be4890d3859bf703d108fdbf4`  
		Last Modified: Wed, 06 Feb 2019 06:42:05 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d93683a6f789a8ddafd140ed9ba291403272bed0a20cd17b16233acb501f783`  
		Last Modified: Wed, 06 Feb 2019 06:44:09 GMT  
		Size: 304.7 MB (304665892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gazebo:libgazebo9-stretch` - linux; arm variant v7

```console
$ docker pull gazebo@sha256:dd812a14e95b38b8ef475d3c0ef5ecdf4eda8f560fefc34b05a8234bd69ee2cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.9 MB (596931892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c73e1f0e06beaeb0496589a3fbf040acb0cf8c854e3b8265cb54d6b98e2b143`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:09 GMT
ADD file:5fd4dfb0a59a763b52fd5588a8f4c35f596b133e00275b1cc485a71cf088b31a in / 
# Thu, 07 Feb 2019 13:03:10 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:30:40 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:30:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Thu, 07 Feb 2019 15:30:47 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Thu, 07 Feb 2019 15:33:15 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:33:18 GMT
EXPOSE 11345
# Thu, 07 Feb 2019 15:33:19 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Thu, 07 Feb 2019 15:33:19 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Thu, 07 Feb 2019 15:33:20 GMT
CMD ["gzserver"]
# Thu, 07 Feb 2019 15:35:54 GMT
RUN apt-get update && apt-get install -q -y     libgazebo9-dev=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:54d7f221ed1ab7644f6a88a953847270cd864b5ebc4f343bfa28876a2715031f`  
		Last Modified: Thu, 07 Feb 2019 02:04:53 GMT  
		Size: 42.1 MB (42086927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5827f96bf202a9ae65f2b3d076926b34644d74c9895c9a130545ae3e99e1a866`  
		Last Modified: Thu, 07 Feb 2019 15:39:02 GMT  
		Size: 19.6 MB (19554584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d931d33b2bc49d1c084768c6cb4144c17e2696adf43676ffa5562a434af4ee`  
		Last Modified: Thu, 07 Feb 2019 15:38:56 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e86352a43447dad9afe7b0f0919c3564fa2ccb0e1039c83b02e50d0b71965e`  
		Last Modified: Thu, 07 Feb 2019 15:38:56 GMT  
		Size: 5.0 KB (5011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccedf07f22a81b0c284f1629bb0b0e5905905a11b69e26f0082aecf28b7f6ede`  
		Last Modified: Thu, 07 Feb 2019 15:40:06 GMT  
		Size: 257.8 MB (257767461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be6ced89bc9aa9013dc26f944fc6f02dbc84303c6fc307bf5ecea20ede91b3e`  
		Last Modified: Thu, 07 Feb 2019 15:38:56 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff61f7d5d8b8167a8f8f94d701fcbd7d892bcb2d2821e745502c236eee67a241`  
		Last Modified: Thu, 07 Feb 2019 15:41:34 GMT  
		Size: 277.5 MB (277516301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gazebo:libgazebo9-stretch` - linux; arm64 variant v8

```console
$ docker pull gazebo@sha256:ec7c6f5b91b6f52ce767d91f945f9abd59461e68da672818604fd491cb4596af
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **584.1 MB (584135857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09db889958430012f0e2fb6c8144254604260f6639f0d7a721a7444f0d0f299f`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:15:27 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 21:15:34 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Wed, 06 Feb 2019 21:15:36 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Wed, 06 Feb 2019 21:28:41 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 21:28:43 GMT
EXPOSE 11345
# Wed, 06 Feb 2019 21:28:44 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Wed, 06 Feb 2019 21:28:45 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Wed, 06 Feb 2019 21:28:46 GMT
CMD ["gzserver"]
# Wed, 06 Feb 2019 21:39:35 GMT
RUN apt-get update && apt-get install -q -y     libgazebo9-dev=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:12bb1c82b086301ca1c22eabf3add7cd229f27b63ca4b0924e2356051d9e7194`  
		Last Modified: Wed, 06 Feb 2019 10:14:28 GMT  
		Size: 43.1 MB (43124977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08582476d34c8c1cceb2158965fdbe1badbbf6dafad9fc321c3695ba4bacbe68`  
		Last Modified: Wed, 06 Feb 2019 21:43:27 GMT  
		Size: 19.7 MB (19745851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c738a9c53cfb3aeabb680d8082a8edc7ee9b5cf0de22a1935e6c756c82c5c67a`  
		Last Modified: Wed, 06 Feb 2019 21:43:19 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:387714d4d175664d00a7bfa012019c5dcef221eda617603073834592b0db6f44`  
		Last Modified: Wed, 06 Feb 2019 21:43:20 GMT  
		Size: 5.0 KB (4981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e01bfe7d7a92ce10717c8fa00032973d31a1fe03653820c9acf4ab71ad4f49`  
		Last Modified: Wed, 06 Feb 2019 21:44:40 GMT  
		Size: 265.2 MB (265199214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87ad978e197aa256024daddccdc92b123fd9546bc20fe5a467e73ee1410bd114`  
		Last Modified: Wed, 06 Feb 2019 21:43:20 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:876a2431991236feacb1444a4ed13de7475ec881180e218bf4aebe44fcf1f552`  
		Last Modified: Wed, 06 Feb 2019 21:46:30 GMT  
		Size: 256.1 MB (256059226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
