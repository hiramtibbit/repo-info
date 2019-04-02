## `gazebo:libgazebo9-stretch`

```console
$ docker pull gazebo@sha256:1ee5107798932479f06437fb9df157e07d2bdc48527cac4767348fe00d3c62d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `gazebo:libgazebo9-stretch` - linux; amd64

```console
$ docker pull gazebo@sha256:6e5eb6d6a7ff05a84c81bec93b2798e1b8056507aeda43b85688698eb6de2076
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **650.5 MB (650494244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba749251f31970cc5c18abb9b736a6964da64c4a57abb8d92868afc3e398585f`
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
# Fri, 29 Mar 2019 21:40:36 GMT
RUN apt-get update && apt-get install -q -y     libgazebo9-dev=9.8.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:512fb9d7ba265a708a475b936b262663fb0c1ccc32e984a8bb641829d4273d84`  
		Last Modified: Fri, 29 Mar 2019 21:56:01 GMT  
		Size: 304.6 MB (304561020 bytes)  
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
$ docker pull gazebo@sha256:6553e8f58da66cfa8215a25667df5d3521354a2cda183370d62cb6333b7f93b5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **584.5 MB (584452014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87e3560baf992edeb1584981eb95ec67473493d0de64581c34b5f3e0e234081b`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:35:42 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:35:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Wed, 27 Mar 2019 09:35:52 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 02 Apr 2019 09:19:33 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.8.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 02 Apr 2019 09:19:35 GMT
EXPOSE 11345
# Tue, 02 Apr 2019 09:19:35 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Tue, 02 Apr 2019 09:19:36 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 02 Apr 2019 09:19:37 GMT
CMD ["gzserver"]
# Tue, 02 Apr 2019 09:29:52 GMT
RUN apt-get update && apt-get install -q -y     libgazebo9-dev=9.8.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d338dbd78ea3a9e8f68cefe88489efca81668d61c3fab2dbde834ef5aed274d`  
		Last Modified: Wed, 27 Mar 2019 17:07:59 GMT  
		Size: 19.7 MB (19745047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1ed147818c9b71af41fdbf1e13a49b9b0686423d96a722cfa740c160e76610`  
		Last Modified: Tue, 02 Apr 2019 09:53:25 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a11f3e7a5c0ea2eef5aab6524cb77379750c3175a6a1d24cf20f8178595f2b30`  
		Last Modified: Tue, 02 Apr 2019 09:53:25 GMT  
		Size: 5.0 KB (4980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971b0a301fbdbab8d86d260483a5d1f44e98265e0dd746445b14116efc453051`  
		Last Modified: Tue, 02 Apr 2019 09:56:19 GMT  
		Size: 265.6 MB (265603269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bec2a397707f582f8599542fea3f73cb5a8e96c46822305c26367cb8b346db0`  
		Last Modified: Tue, 02 Apr 2019 09:53:25 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00da74671663eede2f0e22f8678b327575e84cfff41fc2b99ae416ed24077280`  
		Last Modified: Tue, 02 Apr 2019 10:00:20 GMT  
		Size: 256.0 MB (255965105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
