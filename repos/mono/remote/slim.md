## `mono:slim`

```console
$ docker pull mono@sha256:159c0404963fb68fb95e44daf5ff126b914c4de8dfc82cc7213dd0b6e76cbbcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:slim` - linux; amd64

```console
$ docker pull mono@sha256:871bdfc7efa1cbde47ab5d40b5d906a872c0be3e15485b668b6dbfbf7948c400
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.7 MB (57723762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d01367944846abf84602767b03a50abfe7966936edbb9d6dd2d6b978fe00dc38`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Tue, 20 Mar 2018 10:06:16 GMT
ENV MONO_VERSION=5.10.0.160
# Tue, 20 Mar 2018 10:06:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 20 Mar 2018 10:07:02 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80987e56f805b6d13c4054a0d3bfe4487de52388e40213cfd72f5441a57c3f0f`  
		Last Modified: Tue, 20 Mar 2018 10:25:23 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf43fe22001ef35f38319ed35104b4d307773ace3f4a9287785b98cda4f0670`  
		Last Modified: Tue, 20 Mar 2018 10:25:32 GMT  
		Size: 27.6 MB (27599292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:437631f07312f8973be0ba93fd3286a093084a4c515d2c97f6da24e9baba4533
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.2 MB (48190398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa034c18ef829198c048719f57c87888b28812b39fec5da35e436e872f52bbb5`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 12:27:28 GMT
ADD file:901c5a711f269a7dd8f11eff27131cd2f6d2aee98d68f1e19b4ed954798e5d3f in / 
# Wed, 14 Mar 2018 12:27:29 GMT
CMD ["bash"]
# Tue, 20 Mar 2018 17:51:58 GMT
ENV MONO_VERSION=5.10.0.160
# Tue, 20 Mar 2018 17:52:05 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 20 Mar 2018 17:53:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b8c016a755ce56e2fbb5a9f179c7bde3f0742c21b2727356a1658fc7d973f46a`  
		Last Modified: Wed, 14 Mar 2018 12:39:21 GMT  
		Size: 26.3 MB (26290283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aea02cced56959e0d5dc7d75fde9a2e5f2afc5ef25f5ea8792458c4511dbbad`  
		Last Modified: Tue, 20 Mar 2018 18:08:38 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79415ddf90d4857696503b5a4be8dfd8bee84de3cf5e8735781c50d77f6e20a`  
		Last Modified: Tue, 20 Mar 2018 18:08:46 GMT  
		Size: 21.9 MB (21898046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:c126b78fa605acccab312cdf4b7be02a162533affb230fb637b4c979711ab3c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53985049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59dbc5ce88ae09ee5d35b452a9b0f451651d14880eb3097de1ef7410e28bbd6d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:25:26 GMT
ADD file:0012468f66c7e5b0efd7217a1f29f5044d4dce5a19dcd39786aa7573bc927763 in / 
# Wed, 14 Mar 2018 17:25:26 GMT
CMD ["bash"]
# Mon, 19 Mar 2018 19:46:07 GMT
ENV MONO_VERSION=5.10.0.160
# Mon, 19 Mar 2018 19:46:12 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Mar 2018 19:47:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:784b6f32f75d9222c618727f66027b44ffa35120fc128790dfce4d1070befc90`  
		Last Modified: Wed, 14 Mar 2018 17:39:37 GMT  
		Size: 27.5 MB (27488177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5de54ab74d4942345bb68195cf8da61199cd8f2e1c15cd266b427316b74011`  
		Last Modified: Mon, 19 Mar 2018 19:54:34 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff69d7644d85db2724b07d1b31eb1f9f262b54ac5122eab80f7be63e2977ba64`  
		Last Modified: Mon, 19 Mar 2018 19:54:45 GMT  
		Size: 26.5 MB (26494806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; 386

```console
$ docker pull mono@sha256:6928517cb0063a1fe7d52aedc30f86c10dbdc95bf72f9b5a6cd4e3e7d64885a9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59653603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19ebe1d23e5acb600e9815aabf9e0ca772000e2626abf20d2971480d2b3448be`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Mar 2018 14:24:52 GMT
ADD file:4e79b8dd98596d0354ef30e136278a257e021a36d6d6271ec4c1dafaf07889ae in / 
# Tue, 27 Mar 2018 14:24:53 GMT
CMD ["bash"]
# Wed, 28 Mar 2018 12:52:03 GMT
ENV MONO_VERSION=5.10.0.160
# Wed, 28 Mar 2018 12:52:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 28 Mar 2018 12:53:06 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ec7b1998b022b3eb218010907097139cebc6fb8b1aaab342d847d1f283ef3967`  
		Last Modified: Thu, 15 Mar 2018 01:00:27 GMT  
		Size: 30.3 MB (30273196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a86297d55fa79ad2d0b4c1daf56f76897a395df1447314a09b9a84f8c8ee13`  
		Last Modified: Wed, 28 Mar 2018 14:02:16 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1a22d248017e63b80b5a638767d4037cbb565c0684a23b1216a8517a40811d`  
		Last Modified: Wed, 28 Mar 2018 14:02:27 GMT  
		Size: 29.4 MB (29378339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
