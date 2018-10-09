## `mono:5-slim`

```console
$ docker pull mono@sha256:ef9775044048572c453b17e48ba6d7432082c75688d6a857236e09132712ed4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5-slim` - linux; amd64

```console
$ docker pull mono@sha256:742bfaf959545b9a6c4d1b7977b2d1c4bb5d55ca1c24203240078353943d87b4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.6 MB (75633358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d443ae7b516e1ea046284bf0508b8a2fbe5c218e295e3688f1f17490547a008c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Mon, 08 Oct 2018 23:19:47 GMT
ENV MONO_VERSION=5.16.0.179
# Mon, 08 Oct 2018 23:19:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 08 Oct 2018 23:20:41 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0f4af43ff70e4518f30f241e5ff13a13c829be035317ffd0237e8eeb6c8a19`  
		Last Modified: Mon, 08 Oct 2018 23:26:56 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1271b8c88308664054b6046dab2d0446a7417a436ac806b4f06e88e36df84ba1`  
		Last Modified: Mon, 08 Oct 2018 23:27:09 GMT  
		Size: 45.5 MB (45510726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:11274082028152668c6c9689c89552f3a1a7029653b50e8a7a6b51e5da2671d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.8 MB (63813379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bfac4cf94b91c11d8cdca26fa9dc603c57938da5ed836e7ce90067b829ff77e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:41 GMT
ADD file:e98fce6ce6aee310f31c67240c7a9f8cb7de0e6deb0967029e5528255c7a86f0 in / 
# Wed, 05 Sep 2018 11:59:45 GMT
CMD ["bash"]
# Tue, 09 Oct 2018 11:57:44 GMT
ENV MONO_VERSION=5.16.0.179
# Tue, 09 Oct 2018 11:57:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 09 Oct 2018 11:59:16 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:e7731670a93bf29e604d72ec2b8625589828c7d950c54f459fd2fb3fb8cf6e73`  
		Last Modified: Wed, 05 Sep 2018 12:09:08 GMT  
		Size: 26.3 MB (26287004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf3f3f5a2f428b4bd575c5e953657b239addc0153cb3febb8bac7a4581d7b18`  
		Last Modified: Tue, 09 Oct 2018 12:11:47 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82cb49a5062e7e582bcebd5b800a49f3b498813f6d934993b6e9b314ce4328f`  
		Last Modified: Tue, 09 Oct 2018 12:11:58 GMT  
		Size: 37.5 MB (37524310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; 386

```console
$ docker pull mono@sha256:855a9236e6e005371fbb48b371f33042c8164cd3e7b1b68c3d1d3ee2fc2ebe2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79208858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b57f67ec070f023ad969c003e8d58be5ecffa2a6b4124407954425d8643f4b6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Tue, 09 Oct 2018 10:38:31 GMT
ENV MONO_VERSION=5.16.0.179
# Tue, 09 Oct 2018 10:38:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 09 Oct 2018 10:39:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec3b9dc5f4cfdeaf8aea33360e27ead6d66ce6cc1f5445c68e5c5428517b383`  
		Last Modified: Tue, 09 Oct 2018 10:42:23 GMT  
		Size: 2.1 KB (2070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43c704ee9b44d8c830c56f4d58993c5a9c5ab861f33ddfac46fd7c0ab78c8a9`  
		Last Modified: Tue, 09 Oct 2018 10:42:36 GMT  
		Size: 48.9 MB (48936719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
