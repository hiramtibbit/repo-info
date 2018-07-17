## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:09e4802804704f64b50d8351c4e44590ff7b65e0e78155d96c288f32fe5baf2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:oldstable-backports` - linux; amd64

```console
$ docker pull debian@sha256:6966952fe3d9edf694ad21d2018de28d02edfb495feddc45b7fffc4da034ed22
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.3 MB (54252346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec1eb6745839a923bcdb5629dfb9a678169dd344f17759a3296f54a07f39df8a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:23:27 GMT
ADD file:85a75f7e7d0ec2cf59f1ef95d2de9cd4a0843c7da4fe42a8afc485459e6ab4fd in / 
# Tue, 17 Jul 2018 00:23:28 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 00:23:41 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:a0d3ff3dcf70e966dd299717aab7e922a88307385cc8d4d7cdd5227b5c800e83`  
		Last Modified: Tue, 17 Jul 2018 00:38:08 GMT  
		Size: 54.3 MB (54252123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed223d1c1d11feff5fa20ee44ea39915d815c219581bae755dce56997920cb5a`  
		Last Modified: Tue, 17 Jul 2018 00:38:42 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:775f1867c7f6112b039a22f7387183452b8b44ca6693e602a67abaeeec039319
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.4 MB (52448597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d28350c5d4cacf364574261415a71e320e1776dec3becb4c1a396c17f1f30f5d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:51:09 GMT
ADD file:28a4ce21620779cdf394a5012d9fa529a97bd05464f516cb6198534be5b19ac3 in / 
# Wed, 27 Jun 2018 08:51:10 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 08:51:17 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:fb572254f44e702beb04655f11106d32bce38cbe0e2fbb21299c95ef6c6cb471`  
		Last Modified: Wed, 27 Jun 2018 09:00:13 GMT  
		Size: 52.4 MB (52448370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f815c04cc6169afac9648a92c622c044ed71dd16ba917ee6fbde2e404eff127`  
		Last Modified: Wed, 27 Jun 2018 09:00:25 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:b151e821022fa3d3382a71df83433e403919c9f9ce7d970e2f12f856b25abf53
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50188320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e04bd419f4bc0c0bab9de83fdb8e2fa84ef00ce66fefee5d37a8ff3b88294f12`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 12:00:50 GMT
ADD file:f13350413c0b00524b3c1706b594cae2d5b1da60b8dede6be04e5d480392462c in / 
# Wed, 27 Jun 2018 12:00:52 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:01:08 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:02287f16772b36c8893b3cb92a11f8a6e6aad2e0038a4fa5e9f00c1d00c72d3a`  
		Last Modified: Wed, 27 Jun 2018 12:10:25 GMT  
		Size: 50.2 MB (50188094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:997a9556e870f3b62321f851548a1cb429a1580a91d8f4b9cb682068650cebd2`  
		Last Modified: Wed, 27 Jun 2018 12:10:38 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:5fad4952c5977e0ebd8c816f547eb76acee085753821d14444b2ce91079552f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54484063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f44d51cd78b7e9d60b3ae3523e8eced918b03285067cdca77d7cae245f674644`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:42:46 GMT
ADD file:d5e832c1b5e7ab5741c8762cbf0be7fd942b48e270b50311fd8c9d42a67cddfd in / 
# Wed, 27 Jun 2018 10:42:49 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:43:06 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:f546b53a6411b235bd43e15162009bf2e148fc2682a98e85e63ffb2ce8357dfe`  
		Last Modified: Wed, 27 Jun 2018 11:06:51 GMT  
		Size: 54.5 MB (54483837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5cf6c0752bb184d967ffadfe342d804d1f23b16d2435315914a8ba7425242d6`  
		Last Modified: Wed, 27 Jun 2018 11:07:11 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
