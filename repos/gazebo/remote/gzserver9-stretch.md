## `gazebo:gzserver9-stretch`

```console
$ docker pull gazebo@sha256:f37a433fcaa415f007a7d8bd61b44c41f7d63d2c4659be77dc93c9d8446f77b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `gazebo:gzserver9-stretch` - linux; amd64

```console
$ docker pull gazebo@sha256:9759ddfa173588840db69a9b1568f31ab69af7e6f1ac3120a1054f69f8046cf0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.5 MB (345526067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acbe8a1aa2b3f6bfa4a34d25ccef40984aa67d988a1513db26fcc439b3b48c6b`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 01:51:15 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 01:51:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Wed, 23 Jan 2019 01:51:20 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Wed, 23 Jan 2019 01:53:04 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 01:53:05 GMT
EXPOSE 11345
# Wed, 23 Jan 2019 01:53:05 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Wed, 23 Jan 2019 01:53:05 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Wed, 23 Jan 2019 01:53:05 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520678ab4c4e263f82bfec96aa051faba9bae110dc9cb90dae5ed7cc65a9a8e1`  
		Last Modified: Wed, 23 Jan 2019 02:02:47 GMT  
		Size: 21.1 MB (21091495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef4ed809969d6eb5a0a2401ce00a48591b73ed9262e3870fb9d51560c975580b`  
		Last Modified: Wed, 23 Jan 2019 02:02:41 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ee44b4adb039a767da994366cc1bf05bd4fd0d6dd21887b543a4fad9ac25ef9`  
		Last Modified: Wed, 23 Jan 2019 02:02:41 GMT  
		Size: 5.0 KB (4977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:379fd97d0d5d8d2eb96d6c1cad0423bacf821f8bc1959feb7ccb082f19927bc3`  
		Last Modified: Wed, 23 Jan 2019 02:03:32 GMT  
		Size: 279.1 MB (279083238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04dad965ecb5e4ca66e4777fd0cd1319021286052a0e03515befa9763854bbda`  
		Last Modified: Wed, 23 Jan 2019 02:02:41 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gazebo:gzserver9-stretch` - linux; arm variant v7

```console
$ docker pull gazebo@sha256:804d014274f06c38d1b833cd4d20737228dc71b23fbe99b9b97993ea421d3b97
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.4 MB (319397833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19454515f9a765408b24d346c74277ae2c174811472c994dc5b4ce96e70a7cf5`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:29 GMT
ADD file:f58fcfcac4bd31e03fe733b7c850ff7f67728d2532fc54252c02a91c66445c88 in / 
# Wed, 23 Jan 2019 13:04:29 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:26:18 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:26:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Wed, 23 Jan 2019 13:26:26 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Wed, 23 Jan 2019 13:29:38 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:29:41 GMT
EXPOSE 11345
# Wed, 23 Jan 2019 13:29:42 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Wed, 23 Jan 2019 13:29:42 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Wed, 23 Jan 2019 13:29:43 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:d9d6acb4f2f3e6ab798235f9f094d5e343bad5a702bac8cf38e2569dfec4e284`  
		Last Modified: Wed, 23 Jan 2019 13:12:06 GMT  
		Size: 42.1 MB (42087731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740c0aec7e7c16949bfb19a532d3ea708ba12e64b84be849d305e000d936bccf`  
		Last Modified: Wed, 23 Jan 2019 13:36:13 GMT  
		Size: 19.6 MB (19554433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e53afe90d38951b8f0e634ae746f19d6904d4670fec13ec1a92ac7cec133da`  
		Last Modified: Wed, 23 Jan 2019 13:36:08 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2819702f56757675252a2fc146ce7d5843a923b6ad1234c58c1fa6da751d1cf1`  
		Last Modified: Wed, 23 Jan 2019 13:36:08 GMT  
		Size: 5.0 KB (5012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a3411de249fff964e0aff9347014a61822b550d2912affe92a30a83939241f1`  
		Last Modified: Wed, 23 Jan 2019 13:37:11 GMT  
		Size: 257.7 MB (257749048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a24bdfe6bf706e1dc6b7df43b204ae90460b59ae62f184c9a00469f843834e2`  
		Last Modified: Wed, 23 Jan 2019 13:36:08 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gazebo:gzserver9-stretch` - linux; arm64 variant v8

```console
$ docker pull gazebo@sha256:25dabfbb942c0bf85f8b3fc89d73341134ce86703ddf322ea1a44627ac1c2038
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.1 MB (328072685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3aa9344c5499f59a6b47b9b20b448f0d9216b0d0a4fc23602c1fd83cf2b971d3`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Wed, 23 Jan 2019 10:03:54 GMT
ADD file:8e97108c1e48b9197ff71d26fbf0d9c12372f7197eace7801dd05a1b34e56e65 in / 
# Wed, 23 Jan 2019 10:03:55 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:04:59 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:05:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Wed, 23 Jan 2019 11:05:19 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Wed, 23 Jan 2019 11:18:32 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:18:40 GMT
EXPOSE 11345
# Wed, 23 Jan 2019 11:18:41 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Wed, 23 Jan 2019 11:18:41 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Wed, 23 Jan 2019 11:18:43 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:8c20612220f39dab58625e39fe6985d91acf6a5359517e82621d51d28bf82e05`  
		Last Modified: Wed, 23 Jan 2019 10:11:07 GMT  
		Size: 43.1 MB (43125634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:394ae40b1c7c44334bbb4bd812fd8f53c9976d70ec59977ec32c8c272ea50cd3`  
		Last Modified: Wed, 23 Jan 2019 11:32:54 GMT  
		Size: 19.7 MB (19745787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b45a74044a9c9dcdd61e0e4429809cb8aad87159ec9c09545680fece05a1d114`  
		Last Modified: Wed, 23 Jan 2019 11:32:47 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9651cc89a0319a3b60c929be23cf784b0b07722e86a739b1a9ff871a308b987`  
		Last Modified: Wed, 23 Jan 2019 11:32:47 GMT  
		Size: 5.0 KB (4988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf39eb8f731111910e39bc2ba8429e08c0df48001df855900e5ba3b69b78f73`  
		Last Modified: Wed, 23 Jan 2019 11:34:06 GMT  
		Size: 265.2 MB (265194667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9672ab41a675fe9a871cd0e7aed2873ca587542d139fe168af62ee6eefd73fca`  
		Last Modified: Wed, 23 Jan 2019 11:32:46 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
