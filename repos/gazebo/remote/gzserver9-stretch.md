## `gazebo:gzserver9-stretch`

```console
$ docker pull gazebo@sha256:f659a51c309ea74aae144116323e7142f8ddbc0191f3b6dd4d7312e6683d02c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `gazebo:gzserver9-stretch` - linux; amd64

```console
$ docker pull gazebo@sha256:0531f7bad5d03d8e0c42bb5c6d4a36671a95f0002cf52011ceb5c6c0810ee887
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.5 MB (345507571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4ebb1ed3590d8b8419985e596ba2b8d703cbef18bc848e45a4b526e297a2ae6`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:46:15 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:46:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 05 Mar 2019 03:46:20 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 05 Mar 2019 03:48:05 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:48:05 GMT
EXPOSE 11345
# Tue, 05 Mar 2019 03:48:05 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Tue, 05 Mar 2019 03:48:06 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 05 Mar 2019 03:48:06 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cf3ccf167266b9fe9ed95a296cf36c71c5328236d6cf99143cb3cf9d46ac2d`  
		Last Modified: Tue, 05 Mar 2019 03:50:18 GMT  
		Size: 21.1 MB (21090956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0ebdc30a57201616a48b6a9b4062c6130fa849fcceea0a18963fdc7ee45204`  
		Last Modified: Tue, 05 Mar 2019 03:50:12 GMT  
		Size: 1.4 KB (1418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14df6206105991355531aa51308cc8fbd934ddfd81c2411f3df6274a6078d855`  
		Last Modified: Tue, 05 Mar 2019 03:50:12 GMT  
		Size: 5.0 KB (4979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96579629368a2fb91fe1ddb729df5cbb405c036f6bf4a0eb5a3da00648d8211e`  
		Last Modified: Tue, 05 Mar 2019 03:50:55 GMT  
		Size: 279.1 MB (279067502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bdd31f3437f70c6764f82c44de9e1f6470aae7672ce68add8cf4daa0042d46c`  
		Last Modified: Tue, 05 Mar 2019 03:50:13 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gazebo:gzserver9-stretch` - linux; arm variant v7

```console
$ docker pull gazebo@sha256:5b2258ce513791450b5493b819c515b614ac58aa8df6bb0a8898a2f399171a2b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.4 MB (319415591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65233f08cab139a170e481724d1bea90c16e0ea657fe0cea0755896dc7864bc5`
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

### `gazebo:gzserver9-stretch` - linux; arm64 variant v8

```console
$ docker pull gazebo@sha256:b139ce5c81c821fd424fbed48ac6a20ff75d67e24158596171762851c9a171ee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.1 MB (328076631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f74bedbca2ce0505e18b418e0c8f6c4a2a04ea330f7ad724b2de9c67ae88860`
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
