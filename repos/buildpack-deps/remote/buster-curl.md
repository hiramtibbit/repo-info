## `buildpack-deps:buster-curl`

```console
$ docker pull buildpack-deps@sha256:76bc5fae316fc8df191e5ade5a0d7c21cd8871b3d1eea809bbc58b644794d6b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:buster-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:bce1a7d771a9c3a10f0963647180c0f05ca9a16f2f0b83cdcc831d916fb0c757
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.9 MB (67855945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43b3cec9c6d9b6ccbbcf1e21a7b9eada35cb1d2be8111ac012e0c29a7013916b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:21:09 GMT
ADD file:a115ae9594d00c4e30cd53dc533d6ff73497df07db2fc8c2be475a520021fdbe in / 
# Tue, 22 Jan 2019 19:21:10 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 19:54:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 19:54:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:28a5848cd0d3a3c70f45dcd97a5eb29c40559b3cc0cf9e7c1ab839cf23f55034`  
		Last Modified: Tue, 22 Jan 2019 19:34:10 GMT  
		Size: 50.1 MB (50087426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95960608af26d099a4dcc779a2f1a4ae92679c2f05048c17c04bf1404670f8b1`  
		Last Modified: Tue, 22 Jan 2019 20:10:11 GMT  
		Size: 7.8 MB (7802403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7d24a9aad2a63dd099c044fdf94de4254bc2d3d17bca727995aea2008db610`  
		Last Modified: Tue, 22 Jan 2019 20:10:12 GMT  
		Size: 10.0 MB (9966116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:d4acfab91dd7ce06162c7c3c6009e8aabd7a8d5e32ea7bb761ed3b715acfa9e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.1 MB (64145209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:131e171a222d940b5d841bacccbc7f6c092854792e1798806c73eec14f978bda`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:49:09 GMT
ADD file:527782f81b2cdaa7fe8ca73877015dc24b1f39b81cc058bbe612951c6d4db6b9 in / 
# Sat, 29 Dec 2018 09:49:10 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:20:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:21:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:35f77895ee9a6ccd0991d1a079764c1e0777e66a2cedb268252991c107536afd`  
		Last Modified: Sat, 29 Dec 2018 09:59:19 GMT  
		Size: 47.2 MB (47191401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2aa3ab7ab6977e77ddb108c16946c1635234f10fd3608909b58d817be0eaf62`  
		Last Modified: Sat, 29 Dec 2018 10:39:39 GMT  
		Size: 7.3 MB (7291594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4752256e8b15143f87ba231474c7f1d1229dfd1f797ceb91fca1b9645306525`  
		Last Modified: Sat, 29 Dec 2018 10:39:41 GMT  
		Size: 9.7 MB (9662214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:2f0b3bba0e69f1fa2d14dab7e342314f8d66c72a9c4d8b22675737735354aa56
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61346655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39fec02d691479222ecbb295eb1b2d8943c1d1e45b799379bd3d7d8daf1aff0f`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:58:06 GMT
ADD file:7545bfdc8164196c74f5a9b89bf90bdc289896c35fedebcd70dfa20697523258 in / 
# Sat, 29 Dec 2018 12:58:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:22:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:23:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:076ec5e52590bea3da2fc3268ef35580750b2645bee5651aeb6e1dafec22d2e6`  
		Last Modified: Sat, 29 Dec 2018 13:09:01 GMT  
		Size: 45.0 MB (44990109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1a6c8210ec144d056aa2b662c68b44718bb596836438fc8b577e5359086b97`  
		Last Modified: Sat, 29 Dec 2018 13:58:18 GMT  
		Size: 7.0 MB (7037532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d998ce338a6512143ad82706781ac2c77325baf4c7fe9cd1c2f09630900e8db2`  
		Last Modified: Sat, 29 Dec 2018 13:58:18 GMT  
		Size: 9.3 MB (9319014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:7e50d6e6b9058f6aeacda6135d827adfb9fcbb627e8fd9d902620b5919aa21eb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.7 MB (65704737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38f7ae994876d9192e3b8c4f516693f40a1604878c16ffdb4f76930543319fda`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:04:33 GMT
ADD file:6458136999602806c92db4944fc08c7faf3443c54c332169082f6fdee66da894 in / 
# Sat, 29 Dec 2018 10:04:35 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 11:11:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:12:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:fbf13c7901572a3b768b8b17d0b180c68b5cc18cc38b18bc03085795c54306b2`  
		Last Modified: Sat, 29 Dec 2018 10:12:23 GMT  
		Size: 48.1 MB (48142292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8586c0aa3df61b03d3d55e529bd2fa251383ddd7818f84ce81baadb0bf1cce0c`  
		Last Modified: Sat, 29 Dec 2018 13:04:49 GMT  
		Size: 7.6 MB (7605516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5be9dd83a37ec8a95fc616190c20934ba275ed6a83854458d18e25e6292ab261`  
		Last Modified: Sat, 29 Dec 2018 13:04:46 GMT  
		Size: 10.0 MB (9956929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:3318dc0c38fffeefc5767432096736b9cb1b134d774e73cdb66b46c3fd4768cd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.4 MB (68423263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50f822dedebb4b4df8eec7560af53145120fa18e844d3e24adbf30fdf64f59b4`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 11:40:32 GMT
ADD file:a8a6a48a118b132465dbf485a64c9299f1fe4b027ba2a5217493ad3ff35f04ce in / 
# Sat, 29 Dec 2018 11:40:32 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:33:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:33:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:e0906beaed8ec04694fd7fb581653f35c472ccf1d754ee6a2b2d54346f145ff6`  
		Last Modified: Sat, 29 Dec 2018 12:05:22 GMT  
		Size: 50.2 MB (50221713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360041f955b3bff9bde4900a8b2c1986be70d8264e2fb836bf33a2a604520f5e`  
		Last Modified: Sat, 29 Dec 2018 13:18:49 GMT  
		Size: 7.9 MB (7890256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:202275563a679edcc99558d9374587d2814e39a6405992dc962bfd4c845f672e`  
		Last Modified: Sat, 29 Dec 2018 13:18:49 GMT  
		Size: 10.3 MB (10311294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:b48b035338b647ad58b3d916bc4bc9bad0f6a49ff0ad9c51ae79c55c2d893745
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.0 MB (72003186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2de3c2ea348af46a9f79e0d2ddeec3df10a5c00fff5b5834e3a92bdae0d6687`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:19:57 GMT
ADD file:68cd6aa21cf032f213919e34cc194b6f56f4039abd641d1884e1817c86577aa5 in / 
# Sat, 29 Dec 2018 09:19:59 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 09:52:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 09:52:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:6a234d5b011b611a5e107e05783cc2efc888e32736d4aa633c4979482b072057`  
		Last Modified: Sat, 29 Dec 2018 09:25:00 GMT  
		Size: 53.1 MB (53121205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daaa9411429ea78e548f22f5dcffad1364f8bb7487f8608c8f28e368165f6e42`  
		Last Modified: Sat, 29 Dec 2018 11:09:39 GMT  
		Size: 8.2 MB (8175130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:412eaef05026dcf2e7739ba15f745788b42607405b99800f98da68b4bf1245f5`  
		Last Modified: Sat, 29 Dec 2018 11:09:42 GMT  
		Size: 10.7 MB (10706851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:bf8e285da7c9ce09bbc5de7fcdbaad5881f2186726c4292ce4c4c30239504b2a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.2 MB (65249881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eaa0ae0278b494e25f69baf9498553ea7898c1df22dbb402351d9ad75289135`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:42:12 GMT
ADD file:4dfd7162a3ec550c299eec90235e80fb74afe67d7503bf81d82fb49414ab61b2 in / 
# Sat, 29 Dec 2018 12:42:13 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:06:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:06:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:c1142172c864f81f165113d1cab7bcd7334e0f6697efc430ea6889856b7720c8`  
		Last Modified: Sat, 29 Dec 2018 12:45:30 GMT  
		Size: 48.1 MB (48077897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5350945a5ea31287ae1e3f4658bf31598cdbde73396e0191fb98aff39f17ad`  
		Last Modified: Sat, 29 Dec 2018 13:21:20 GMT  
		Size: 7.3 MB (7314381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6efa2ed42a7cd80fa7e1640e130bb29915be0b326c4a16bcea7559592c0bc4`  
		Last Modified: Sat, 29 Dec 2018 13:21:20 GMT  
		Size: 9.9 MB (9857603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
