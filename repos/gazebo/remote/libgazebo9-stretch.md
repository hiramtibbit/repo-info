## `gazebo:libgazebo9-stretch`

```console
$ docker pull gazebo@sha256:ae52c6caef3fecba7d4cc2258d43cd5b9e5c67b60fbd39fe6a4d50e007f77eec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `gazebo:libgazebo9-stretch` - linux; amd64

```console
$ docker pull gazebo@sha256:e934142859ff6e67415458592d28814afdc4fd3da1ca37fa67c48c5434252268
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **650.2 MB (650193872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b886dd8c9d85b379b474a36eab3475583227ab82d42bf1628b43024eddacac2`
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
# Wed, 23 Jan 2019 01:54:55 GMT
RUN apt-get update && apt-get install -q -y     libgazebo9-dev=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:bb8bf917d8432fe2ce25a78fe390174c38b3e8a61fe3902d590803d09d5b483b`  
		Last Modified: Wed, 23 Jan 2019 02:04:44 GMT  
		Size: 304.7 MB (304667805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gazebo:libgazebo9-stretch` - linux; arm variant v7

```console
$ docker pull gazebo@sha256:cc0a416a81e58974be621e0192de4cdb488c4765de40993d4dfc4e2864a88eec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.9 MB (596895630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a660da5ed3961fd522844b71661ff2d5a14e28a83cbf787525e8c35544fa0f5a`
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
# Sat, 29 Dec 2018 13:32:21 GMT
RUN apt-get update && apt-get install -q -y     libgazebo9-dev=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:d07a4b216fcbd2e233d3beeed52131e79b97efeaf85315361472145d599f6735`  
		Last Modified: Sat, 29 Dec 2018 13:37:52 GMT  
		Size: 277.5 MB (277516933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gazebo:libgazebo9-stretch` - linux; arm64 variant v8

```console
$ docker pull gazebo@sha256:22a3774397aa9ae3a374309e15fe8bfd1ef2ee15904b55a8d048714754c553db
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **584.1 MB (584130219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b59489d6c8e0d0f6e79ec8118f07d9d66a877d7c7d532448c20d9dfe8e296748`
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
# Wed, 23 Jan 2019 11:27:25 GMT
RUN apt-get update && apt-get install -q -y     libgazebo9-dev=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:0a288fa7666c19dc0f96b1e0905575cbf43378d4a9107c7691340a5b3be88be5`  
		Last Modified: Wed, 23 Jan 2019 11:35:53 GMT  
		Size: 256.1 MB (256057534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
