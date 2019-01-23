## `gazebo:gzserver9-stretch`

```console
$ docker pull gazebo@sha256:a50ca4a8979b781c7337eafa26acb93111d53772473514e22e88899ffbb0c398
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
$ docker pull gazebo@sha256:ace6c27f67883b0b2ccd9cdcabab4a9f47a2b5d33722fa2fb4a534a945df1404
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.4 MB (319378697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:516c02a374fe42b57e2d1cd165552a585b4867f6fb7a7153b8c69e0830fdab3b`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:28 GMT
ADD file:3ab1f738bb6fe0b2e0c47963cf773badbd7069848e58eeb671d7f13e357f02d8 in / 
# Sat, 29 Dec 2018 13:04:30 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:26:31 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:26:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Sat, 29 Dec 2018 13:26:40 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Sat, 29 Dec 2018 13:29:37 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:29:40 GMT
EXPOSE 11345
# Sat, 29 Dec 2018 13:29:41 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Sat, 29 Dec 2018 13:29:41 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Sat, 29 Dec 2018 13:29:41 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:76e424dac3ee85f0c45a60646f8b87f57bf2ed6b48b6e06522628d2d8f7e06cf`  
		Last Modified: Sat, 29 Dec 2018 13:12:18 GMT  
		Size: 42.1 MB (42074583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a12d74627db2a069b4cd30a6249e24c2f38321a6816e4cdeda7c285151db8c46`  
		Last Modified: Sat, 29 Dec 2018 13:35:19 GMT  
		Size: 19.6 MB (19554669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2379aa5f93d631bd4610f15cad0d967edb514386f1451bfea289d8bf37de7ac`  
		Last Modified: Sat, 29 Dec 2018 13:35:13 GMT  
		Size: 1.4 KB (1419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa0fd1a1809fc5d2c421449eb9df90c6865bcf13fb27b3b3f7f6776e286974a`  
		Last Modified: Sat, 29 Dec 2018 13:35:13 GMT  
		Size: 5.0 KB (5018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327c94696d0ab86f1c202694c6ebb01fe935a6dfa98ac16691199b354771b572`  
		Last Modified: Sat, 29 Dec 2018 13:36:22 GMT  
		Size: 257.7 MB (257742820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:420165b2b83a44eff6554f732335da8a4d3ca688d14aa14b032cfc403f045b2a`  
		Last Modified: Sat, 29 Dec 2018 13:35:13 GMT  
		Size: 188.0 B  
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
