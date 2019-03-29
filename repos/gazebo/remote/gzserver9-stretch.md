## `gazebo:gzserver9-stretch`

```console
$ docker pull gazebo@sha256:9587fcda5b951015bdb31fc724cf239c65848597dc7b73984ed84d5c89dc5efd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `gazebo:gzserver9-stretch` - linux; amd64

```console
$ docker pull gazebo@sha256:f242b47ac14f35f79d0f3dd604dd5a0652dcc80b8af6c95fc7d9a1f721b55b5a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.9 MB (345933224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbcbffd467cbdd8ea58d036ba746312cc26538e6b7b7b1042bf38e8aa872cafa`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:17:43 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:17:47 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 26 Mar 2019 23:17:49 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Fri, 29 Mar 2019 21:38:00 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.8.0-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 29 Mar 2019 21:38:01 GMT
EXPOSE 11345
# Fri, 29 Mar 2019 21:38:01 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Fri, 29 Mar 2019 21:38:01 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Fri, 29 Mar 2019 21:38:01 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc7577829ec656f5fa65d58d5c0d75518769ad093463eb8dd397639f252c5c0`  
		Last Modified: Wed, 27 Mar 2019 03:42:06 GMT  
		Size: 21.1 MB (21090893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a25e398b95e94a88cee8d333a87775a892ed0f14c99612d5bbe9008addc3a25`  
		Last Modified: Fri, 29 Mar 2019 21:53:15 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd6bdc4e743faddf247a8434d164d81c7a400fe9d7e56d6beb68dd3c740e383`  
		Last Modified: Fri, 29 Mar 2019 21:53:15 GMT  
		Size: 5.0 KB (4980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05fbabf0eaf65fbee0541e9c8ef99bd0de7f9c95c702c0ad0831348a4c33181`  
		Last Modified: Fri, 29 Mar 2019 21:54:25 GMT  
		Size: 279.5 MB (279493143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e57f4d1daef00f306fd8018d58f6655c363b219ebdd28fd1c6645081dbafb8a`  
		Last Modified: Fri, 29 Mar 2019 21:53:15 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gazebo:gzserver9-stretch` - linux; arm variant v7

```console
$ docker pull gazebo@sha256:480d837a332130cb14533817dd0fd7588d0bd3ce1f5b9dc537530de096ea46b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.6 MB (319607812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5b40786ae5bc082b1f333ae237900ede816da40560e020f2fe21d5fff88b15f`
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

### `gazebo:gzserver9-stretch` - linux; arm64 variant v8

```console
$ docker pull gazebo@sha256:66e957261cda64180d79829e7c592a8b69b9f1255038d70dae5f0eda169e7330
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.3 MB (328323757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e46b0395e40e1b88cd5c5d02ec310ff4843d50f7cb56967beccb1b7f6eb6f8b`
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
