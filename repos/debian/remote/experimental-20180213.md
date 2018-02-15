## `debian:experimental-20180213`

```console
$ docker pull debian@sha256:e66e07b0ece4156129a228b6172f5acda816a494e7101cae7f0dda4867816ffd
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

### `debian:experimental-20180213` - linux; amd64

```console
$ docker pull debian@sha256:4c8079f823b8dd1b8d5747f3d8f3e5ad96cb7a319d79807086c9cc2de2453105
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48429263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:482ac71e0f30039b47d8a0a428b1bd8133ea0efa28528112952773411c02f47b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:45:32 GMT
ADD file:957b950d67042842b71e1b5cecbf5312ba4bb487ee680be3733fd990c324ea84 in / 
# Tue, 12 Dec 2017 01:45:32 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 01:46:35 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:5ee18ad89bbbca1e99102a1d354cb2ff20c247906d1f650ba43ca3d0c828c2ae`  
		Last Modified: Tue, 12 Dec 2017 01:57:41 GMT  
		Size: 48.4 MB (48429041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0631cfab5acbc1c7363e28d98daf7230376dff190dc4aeb70d2ff25652fa10f2`  
		Last Modified: Tue, 12 Dec 2017 02:00:54 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20180213` - linux; arm variant v5

```console
$ docker pull debian@sha256:dced5b1e6cc4dd78828e85076341c30ef950195bafe2f5f47a576ac45c95f802
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.9 MB (46876456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e20e3820c1373b3552b670fb40772c5cab87aef6724f7707a05f78f492b5f71b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 21:03:35 GMT
ADD file:507c19e8218a314cb3358eebf8c56e2ddae59f0062bfa9d2f436bad054fee79c in / 
# Tue, 12 Dec 2017 21:03:35 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:05:09 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:b23e4d8867aaf30cdfd6b2d8b14f9972690a10b7a9979ff8e6a57fc5d6b90780`  
		Last Modified: Tue, 12 Dec 2017 21:14:10 GMT  
		Size: 46.9 MB (46876235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabbe33fc24a5340fd5a9c49b06193869f1feb1141e6ff03c4280d9f124aa612`  
		Last Modified: Tue, 12 Dec 2017 21:15:56 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20180213` - linux; arm variant v7

```console
$ docker pull debian@sha256:b60064783640d18153feeafd62713d0bd86409ee21b71561d64e6cfc5ecabad9
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44836534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab653fff7c3d0ef3f980c47e038040876e1c31f34240c3a09d5c3ee6408681e7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 13:35:11 GMT
ADD file:2a0b0013d08946ea237e5537f8fe5f3ffcca5031ae82c3c9fb1bfd010404181b in / 
# Tue, 12 Dec 2017 13:35:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 13:37:07 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:c4b3e3b96669da6a353e867aa9ba56b371b5b454656c96d2caa6cde9948c3588`  
		Last Modified: Tue, 12 Dec 2017 13:47:06 GMT  
		Size: 44.8 MB (44836312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67411ec20c1aaf2a184ee36d02304c120126f5cd1e1c581996463ea776208cc`  
		Last Modified: Tue, 12 Dec 2017 13:49:18 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20180213` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:b3bd9bcb25e73aafdf064d968e4b5bcc8ef2511101b645404352397db6ee28f4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.2 MB (46189264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83d47ca795dba063d477c189780e296a086731fffe3a7cc44d83c44a8124153e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:36:22 GMT
ADD file:a0ffff6b995a5d22e95472480d4d8a4a2063e1413dcc4ef502b546f40a84f9a0 in / 
# Tue, 12 Dec 2017 18:36:23 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 18:37:24 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:ae44d18085090600a152d1980267ff7481d06c04d22f77731a5efa3c6c0cd9bf`  
		Last Modified: Tue, 12 Dec 2017 18:51:02 GMT  
		Size: 46.2 MB (46189039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f35010ed47b22ff14081541dba4b521d51bb2ac3810e62080dd3170aefe1bb8`  
		Last Modified: Tue, 12 Dec 2017 18:52:12 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20180213` - linux; 386

```console
$ docker pull debian@sha256:cd9d711064420d28e6e28fbca30a6e5e3dd4f4d19b779e10af94a303a9652fd2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49251248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9439194ecca814444be029cedeea747f5f979afbd59e72046043ace2087079f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:37:25 GMT
ADD file:c8910df1edda65fbc639138733075bc042c7109577938fc346c909cefa66e895 in / 
# Tue, 12 Dec 2017 14:37:26 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:44:29 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:dd4c74665efbafdac6a4c44585e6e73aef31526266149b8672b3e8d2ab3dcde0`  
		Last Modified: Tue, 12 Dec 2017 15:07:41 GMT  
		Size: 49.3 MB (49251025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5c5ebd93e3b4b8ba307edc20a9c97f15f39a989a6c627a960546dd6e4a1386`  
		Last Modified: Tue, 12 Dec 2017 15:14:33 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20180213` - linux; ppc64le

```console
$ docker pull debian@sha256:005bab5a6cd078298521b45f7f5184a9dab65f993c0affca0fe6fc97592088d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.7 MB (49652248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45b75a81d70858ad532d37437219584fcbda30efe9372c0bc78d85a3e4f7340b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:36:24 GMT
ADD file:a93811f5ad3cd911c45fd506d8f636d1d5dc7dbf9895d753a2dfa34e4556cf1a in / 
# Tue, 12 Dec 2017 01:36:25 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 01:36:47 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:fcf89c08ffe3bf009811ac5c2dc0a7193dde0d7ede4e09d4a24adbb347b271fd`  
		Last Modified: Tue, 12 Dec 2017 01:44:13 GMT  
		Size: 49.7 MB (49652028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22811db6d1afd42145963570d2b00e05aef77bc0d053b17e302369fde022e0e6`  
		Last Modified: Tue, 12 Dec 2017 01:44:48 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental-20180213` - linux; s390x

```console
$ docker pull debian@sha256:85e6eb6fe89a01373a5b8920d9e013c962b51516a3781f960c234291edb99aa2
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48137525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31385fcaedbc230ce3dc7b1404985021622e2b07d6a7df9d36b86abe94d4d46e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 06:26:36 GMT
ADD file:494105ddf54872b2efe534b949d9b178023b66a512859ba044df17027ec34d5a in / 
# Tue, 12 Dec 2017 06:26:36 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:26:59 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:91dd137cb0743be4ba8f150642fca0c3b19d913007841be87e73b8e7664088cc`  
		Last Modified: Tue, 12 Dec 2017 06:32:12 GMT  
		Size: 48.1 MB (48137303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3717b9864bfc0c8f886765b755707e09db5541eae5ba22cb4695d9a65fbac85`  
		Last Modified: Tue, 12 Dec 2017 06:32:38 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
