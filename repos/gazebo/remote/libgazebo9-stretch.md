## `gazebo:libgazebo9-stretch`

```console
$ docker pull gazebo@sha256:e8573a69393b93cacbb436bab1fd09b5350952309a9565d3b264785a4bd9dcfe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `gazebo:libgazebo9-stretch` - linux; amd64

```console
$ docker pull gazebo@sha256:a9af62bc4b6c3e005d8fca573b6911dc8c5a888973f29ac40ebcb0baa6223789
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **650.3 MB (650321394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce308a9aa70a917986ef07e6c4bda0e72a065f1272e1e04b1d05e3977cfb24cd`
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
# Wed, 20 Mar 2019 22:40:38 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.7.0-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 20 Mar 2019 22:40:39 GMT
EXPOSE 11345
# Wed, 20 Mar 2019 22:40:39 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Wed, 20 Mar 2019 22:40:40 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Wed, 20 Mar 2019 22:40:40 GMT
CMD ["gzserver"]
# Wed, 20 Mar 2019 22:43:03 GMT
RUN apt-get update && apt-get install -q -y     libgazebo9-dev=9.7.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:16aa7730180601d482e9457114a86b7e6f00f8a19b5823df919e7f00f1c3c7b6`  
		Last Modified: Wed, 20 Mar 2019 22:48:56 GMT  
		Size: 279.3 MB (279338282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd5f8501b3a58a2da6ba2addc2bd60345fa04faabac4dde383375c07e6e25f49`  
		Last Modified: Wed, 20 Mar 2019 22:48:07 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eda9aaca85919b5266fd2910a721de5b0fb92911643d929da1f66dc22dcdb4d`  
		Last Modified: Wed, 20 Mar 2019 22:50:29 GMT  
		Size: 304.5 MB (304543043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gazebo:libgazebo9-stretch` - linux; arm variant v7

```console
$ docker pull gazebo@sha256:15d5adbf5dfc5c2dc1d2e074d8abb3b25f6edfde93828aee617f1d61033ae9bf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.9 MB (596946488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbd7a0f8f6c9d5ea773b605542d86176f0e7c65fc4b2bf08c03e738f80023042`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Tue, 05 Mar 2019 13:10:34 GMT
ADD file:8f0ec0cbcef5902fe5ef35892898a19e6c61f5c422ac3d47500d42067ad7fef8 in / 
# Tue, 05 Mar 2019 13:10:35 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:12:08 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:12:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 05 Mar 2019 14:12:18 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 05 Mar 2019 14:14:40 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:14:44 GMT
EXPOSE 11345
# Tue, 05 Mar 2019 14:14:44 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Tue, 05 Mar 2019 14:14:45 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 05 Mar 2019 14:14:45 GMT
CMD ["gzserver"]
# Tue, 05 Mar 2019 14:17:54 GMT
RUN apt-get update && apt-get install -q -y     libgazebo9-dev=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ec43a77fdcf3d8df75738e0d3bec016f01ad00db637d5e43eee90aa67114e127`  
		Last Modified: Tue, 05 Mar 2019 13:18:22 GMT  
		Size: 42.1 MB (42075119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcfe1620eae9a31d468d937705028145d4e4ad40bd8d7a96371ef05a4d641cae`  
		Last Modified: Tue, 05 Mar 2019 14:18:24 GMT  
		Size: 19.6 MB (19554481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5c8188618c43dcd54081bab8020535bae67c8586f49708c5cafb387f7ece6f8`  
		Last Modified: Tue, 05 Mar 2019 14:18:18 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b45d93c9607ceb050dbe8b027bbed7e2a14180e03b9228264955d6e457050717`  
		Last Modified: Tue, 05 Mar 2019 14:18:18 GMT  
		Size: 5.0 KB (5010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5addf5f689e335d4abe7461effe98479f5eb3497dbb246fd98049ee138324302`  
		Last Modified: Tue, 05 Mar 2019 14:19:24 GMT  
		Size: 257.8 MB (257771416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:218ebc436ba70d9ca20d9575546a90015609f5f8629ceacf578aaa2905158bb2`  
		Last Modified: Tue, 05 Mar 2019 14:18:17 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb0ec2d3a0a2a2464bd3deedebbfb4b794523f675b9651289f69b5bc419b1d2`  
		Last Modified: Tue, 05 Mar 2019 14:21:02 GMT  
		Size: 277.5 MB (277538854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gazebo:libgazebo9-stretch` - linux; arm64 variant v8

```console
$ docker pull gazebo@sha256:ca7e79c7a70b147af5f4ef542ec2a06eed2bddc55e08a4d87aa81715e1d3f87e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **584.3 MB (584275474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c856e742697ad599f53f739c950290d39a6e34b074f9cecd378274e840c324e8`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Tue, 05 Mar 2019 10:00:23 GMT
ADD file:7bdd35ab84858c7d5864b73a83750df5ac3db71ce3e586a7da68d50ed15904c8 in / 
# Tue, 05 Mar 2019 10:00:24 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:52:42 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:52:47 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 05 Mar 2019 11:52:50 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Thu, 21 Mar 2019 09:16:29 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.7.0-1*     && rm -rf /var/lib/apt/lists/*
# Thu, 21 Mar 2019 09:16:31 GMT
EXPOSE 11345
# Thu, 21 Mar 2019 09:16:33 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Thu, 21 Mar 2019 09:16:34 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Thu, 21 Mar 2019 09:16:35 GMT
CMD ["gzserver"]
# Thu, 21 Mar 2019 09:25:18 GMT
RUN apt-get update && apt-get install -q -y     libgazebo9-dev=9.7.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:fe62b3d54b9c915735c759d5d36826088c3c05a73dec307a4ec4cb502ad034ff`  
		Last Modified: Tue, 05 Mar 2019 10:06:07 GMT  
		Size: 43.1 MB (43131855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd3b24a081012912a19ac28f020434d256dd51c4f37f1148b93161598148662`  
		Last Modified: Tue, 05 Mar 2019 12:14:47 GMT  
		Size: 19.7 MB (19744946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3c8215af5035fe7cfb8512c777208c33935a0ee52ad338ee2744dc117053c63`  
		Last Modified: Tue, 05 Mar 2019 12:14:38 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474e0eea7c2f5d5a1995dcc649d7805f9ffba72f4b4dd8ddb818c3b5c3039f0f`  
		Last Modified: Tue, 05 Mar 2019 12:14:38 GMT  
		Size: 5.0 KB (4984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da96025be51d2208011b302cbfbf9385294df592c49e049d938e28f25c6e05b2`  
		Last Modified: Thu, 21 Mar 2019 09:30:42 GMT  
		Size: 265.4 MB (265440364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b8786501ececa638ec9c81a02c6278e86e55e18900c510fd3262c7b9f36461a`  
		Last Modified: Thu, 21 Mar 2019 09:29:20 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c50e47badd0ebe24409f416e23daee7f2d087455f3ab94ac4d9fc6776167aae6`  
		Last Modified: Thu, 21 Mar 2019 09:32:44 GMT  
		Size: 256.0 MB (255951717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
