## `gazebo:libgazebo9-stretch`

```console
$ docker pull gazebo@sha256:39921825600044d7d4b363c4d2359fba10e34f228bceb3bc3434d503e630bbaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `gazebo:libgazebo9-stretch` - linux; amd64

```console
$ docker pull gazebo@sha256:04fc1820cb4a79926e92d637a48187a29c0b93ee76aa07ac119324ffaab81945
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **650.5 MB (650497116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f50662c273cf0f0bb9cb97d5879b68fd3dbd1e0284ba22319d8f01d286bb5ea5`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:44:51 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 10 Jun 2019 23:44:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Mon, 10 Jun 2019 23:44:55 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Mon, 10 Jun 2019 23:46:59 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.8.0-1*     && rm -rf /var/lib/apt/lists/*
# Mon, 10 Jun 2019 23:47:00 GMT
EXPOSE 11345
# Mon, 10 Jun 2019 23:47:00 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Mon, 10 Jun 2019 23:47:00 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Mon, 10 Jun 2019 23:47:01 GMT
CMD ["gzserver"]
# Mon, 10 Jun 2019 23:48:52 GMT
RUN apt-get update && apt-get install -q -y     libgazebo9-dev=9.8.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df675b1ebb834402f7a83f1dc173534327f311851beb4eba463b393de8a36b36`  
		Last Modified: Mon, 10 Jun 2019 23:49:28 GMT  
		Size: 21.1 MB (21091054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3bb16427edbed647841e44f35442da3ffc72d20ae935939e740fa1b85ae9705`  
		Last Modified: Mon, 10 Jun 2019 23:49:16 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0bab0d61811bcf39478b35031b66c6cccdd5e3e6ebc89b83bb5d3218d99200a`  
		Last Modified: Mon, 10 Jun 2019 23:49:16 GMT  
		Size: 5.0 KB (4982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b287e67a0ef5dd08130f9ed1cce67f619fd588cb48a8e62064b46c2bb4e49b4`  
		Last Modified: Mon, 10 Jun 2019 23:50:09 GMT  
		Size: 279.5 MB (279535958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a88093a552ff4da8be53abb07e3d07e9143873e43ba590b7d42f00c558011c04`  
		Last Modified: Mon, 10 Jun 2019 23:49:16 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22bf4e2a4ac3c398d3b7584e2edf58609ff5d20d198c2f41412f8061a1fe9be9`  
		Last Modified: Mon, 10 Jun 2019 23:51:10 GMT  
		Size: 304.5 MB (304524164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gazebo:libgazebo9-stretch` - linux; arm variant v7

```console
$ docker pull gazebo@sha256:04b3753304246f70cc88af8290a473307f66a2f9235852d5439669e2acbd4df4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **597.0 MB (597006834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c38601e34e9c605b78f697cb46ca4c405841fdbe82be6c3d6b338ad99d7166b`
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
# Thu, 21 Mar 2019 12:09:48 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.7.0-1*     && rm -rf /var/lib/apt/lists/*
# Thu, 21 Mar 2019 12:09:50 GMT
EXPOSE 11345
# Thu, 21 Mar 2019 12:09:51 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Thu, 21 Mar 2019 12:09:51 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Thu, 21 Mar 2019 12:09:52 GMT
CMD ["gzserver"]
# Thu, 21 Mar 2019 12:12:19 GMT
RUN apt-get update && apt-get install -q -y     libgazebo9-dev=9.7.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:568ecf381553d118776fdf569e7571e9f665d50083029bc33c6be48a816074e6`  
		Last Modified: Thu, 21 Mar 2019 12:16:18 GMT  
		Size: 258.0 MB (257971594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:893ae20c267a4e16e4ee94df1a0c88156479f44c69e89a015dc30f9193fd5c99`  
		Last Modified: Thu, 21 Mar 2019 12:15:17 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29bfd6ff3786a41b1a44b3161df36ad64e4d4e2af3d5ffa78167679a8e330d1`  
		Last Modified: Thu, 21 Mar 2019 12:17:46 GMT  
		Size: 277.4 MB (277399022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gazebo:libgazebo9-stretch` - linux; arm64 variant v8

```console
$ docker pull gazebo@sha256:3a02e15aabc33107e55a1278151181cd7f40decc39483ccd213df940e96620f9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **584.6 MB (584588679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd3fdd6c81be311947f9660517afbc6c9905aae710783099196348afce07acae`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Tue, 28 May 2019 23:06:51 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 22:40:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Wed, 29 May 2019 22:40:30 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Wed, 29 May 2019 22:42:34 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.8.0-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 22:42:36 GMT
EXPOSE 11345
# Wed, 29 May 2019 22:42:37 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Wed, 29 May 2019 22:42:37 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Wed, 29 May 2019 22:42:37 GMT
CMD ["gzserver"]
# Wed, 29 May 2019 22:44:57 GMT
RUN apt-get update && apt-get install -q -y     libgazebo9-dev=9.8.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c74936204b55f2fd2f6ee46ff63cf304606bb277c472cdb00515970ada200549`  
		Last Modified: Tue, 28 May 2019 23:53:07 GMT  
		Size: 19.7 MB (19745769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d74ee3873c9124eb2d81119e449a9a062b59d9e2e9b4acada651e5189d51ca`  
		Last Modified: Wed, 29 May 2019 22:50:47 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fdc49a5b72f48f2b09492cc20c75756555fb07d7722e0ae2497809877d21248`  
		Last Modified: Wed, 29 May 2019 22:50:47 GMT  
		Size: 5.0 KB (5016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:658e25667f682c7492cd1602bed7bb9706f408ae554907279a0b2d0f22775896`  
		Last Modified: Wed, 29 May 2019 22:51:49 GMT  
		Size: 265.7 MB (265664681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed868dc2721370622a44e3145679dbec2a41f1c5c67b9c6bf51e624c3eba00a`  
		Last Modified: Wed, 29 May 2019 22:50:47 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22e45de222b1025907576b5540d1f4137ba34594fa1dc13ed09d4cddba87dfa3`  
		Last Modified: Wed, 29 May 2019 22:53:13 GMT  
		Size: 256.0 MB (256029651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
