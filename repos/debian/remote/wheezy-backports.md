## `debian:wheezy-backports`

```console
$ docker pull debian@sha256:cb8d906f0ed9734ade7bbe25b0b2b03f473d35e7343cfdc9bf0f0f606596c9e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:wheezy-backports` - linux; amd64

```console
$ docker pull debian@sha256:a8f8ed91b00b7599e0ef753da702c5621a497f4c4ef828147bf436b8069c0ce5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39339929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:648ae8933c7a1042589fe2df349285a2cf3d644087a211c8565401aab990a25d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:31:30 GMT
ADD file:8cf36f5c76ea3119278e91016148dd680311000ba59b5fa986b707f000a40906 in / 
# Wed, 06 Feb 2019 03:31:30 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 03:31:35 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:2eaed095b90d08fb6a1870ea73a7bff5cd989c5969dd5ed3be88483796869559`  
		Last Modified: Wed, 06 Feb 2019 03:36:56 GMT  
		Size: 39.3 MB (39339703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a54c5386a4891e455160c37ab95fd3e3094eb43c6e44689e3b4cf2b9281ee38d`  
		Last Modified: Wed, 06 Feb 2019 03:37:01 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:35ed4bbf996f4907df3f5d628619ef3078fd954d7e8910f1394bd3da89587752
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37992397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1742afa7163ac022bb5d9e9cd02222e5ee7768494f8094977a88fa4af40383ae`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:58:09 GMT
ADD file:07deffdab34fbda2720eedc80699cbea4704f0c89927a2d2d7db12ea07dfc702 in / 
# Wed, 06 Feb 2019 09:58:12 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:58:17 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:f51cf4aa752b6c34f8eccc7f23d831ed282570318aa3ae4308b33403a2d27729`  
		Last Modified: Wed, 06 Feb 2019 10:05:23 GMT  
		Size: 38.0 MB (37992168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc9f6851bcf37cdad021d1ded98ce3e9dc5b3754e6180f49a4a26f5823af0f9b`  
		Last Modified: Wed, 06 Feb 2019 10:05:32 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:07c95e7fc49858519a9c5729fc7263b1f00371da131a4d90fb7fe6ab43a97a3b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36620228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ba573b8cd2adf6d27c676db9773d6f36fbcd2937d6a5626f0d7163a272b28f7`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:07:15 GMT
ADD file:7d9aad6f799a97cd501266efa4ab42054317783776b828b81c34db3db1e5e1bb in / 
# Wed, 23 Jan 2019 13:07:16 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:07:23 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:c65553b75dbe6d4ce3a95ea4c52c0cfe2e8c6ef00067b6527b4efece00329f55`  
		Last Modified: Wed, 23 Jan 2019 13:13:43 GMT  
		Size: 36.6 MB (36620004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210acdf7c5c675af3e31bedc775353365c9a1b5fde9d78d276e054d0dde1de51`  
		Last Modified: Wed, 23 Jan 2019 13:13:51 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; 386

```console
$ docker pull debian@sha256:96026461f358a3e7712d0751138b7845113c48d39cd3a85ded25bb495e7ef846
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40533501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61b49aeae3dc422dd75a80f711bc3f5ace841d5d757cf34c11e3209eb793f25c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 11:56:51 GMT
ADD file:6fb64a330e16c04281ff0d182cd3a933035277c01665b4dd09df1edb0e717c6f in / 
# Wed, 23 Jan 2019 11:56:52 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:56:58 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:ee259baed8684a3f7be46aeb2b4e464f70718300b1769fd30c56196bc0ce3050`  
		Last Modified: Wed, 23 Jan 2019 12:04:09 GMT  
		Size: 40.5 MB (40533275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99fd05f122c7eeed52568a55a522bcd77267606ee46d845c127f45583e912844`  
		Last Modified: Wed, 23 Jan 2019 12:04:23 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
