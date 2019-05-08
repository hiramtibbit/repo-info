## `debian:stable-backports`

```console
$ docker pull debian@sha256:344d17997f94c34f3e09c9fca495a67c901573ea8d1ec14389ed66751f95cb7e
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

### `debian:stable-backports` - linux; amd64

```console
$ docker pull debian@sha256:245151d6e50f98cbe2255a25aab64070845d8053e16a7381717061f9cf29ef28
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.3 MB (45339572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07d1bb9275a53171b1ff4021c8a051b79ce3e6e7e360089f8b36aa323660ad7e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:32:26 GMT
ADD file:2df7fd78c2bc2cb44487290749fced9859323bd8b036620a504eeab95109245b in / 
# Wed, 08 May 2019 00:32:27 GMT
CMD ["bash"]
# Wed, 08 May 2019 00:32:34 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:4d30a878834e113184014ccb4019b773b3139e2d5bcec79a23c14e977d0c7d47`  
		Last Modified: Wed, 08 May 2019 00:37:19 GMT  
		Size: 45.3 MB (45339348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041ff73da20f6c5b25cea58bdcb0b1a93ff39772221963646e7352fe035a0033`  
		Last Modified: Wed, 08 May 2019 00:37:24 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:b2077c3173f7f193f8df98d4dd6673e00a55bba69c9e2774ece0e2497ceeaaf2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44045982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3be7c0f350b2c846020537061209b8ecd9f86ce56fc5fc9b13f8285dd2c150c0`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:52:29 GMT
ADD file:e4346b233f0cbae53995f9ffb99526f7121f885dc3a9b28a5259eb972d94c36f in / 
# Wed, 08 May 2019 08:52:30 GMT
CMD ["bash"]
# Wed, 08 May 2019 08:52:36 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:d8c493cbf5ae01a3b3d1c08bbb2ed6438ed7f3dbbdeec6adff0ab7af91db2a46`  
		Last Modified: Wed, 08 May 2019 08:58:36 GMT  
		Size: 44.0 MB (44045757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c09eeb904a4357743a84967fdbccfc01e675312c0b4adb56755b70c97b32825`  
		Last Modified: Wed, 08 May 2019 08:58:41 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:f11745d93f92d7690b1ca9756b1c75cf40d75d4a3b2b18ffa98c17a7f4094ae1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42082831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:102c83838c894114b9afa8b5aa6d3b342835f7dd1c77568956467b674c781bd8`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 12:02:28 GMT
ADD file:4da7954046dc6d8b454a462db1a3ddfbfd52545ba46388283fbd29bdf7aec006 in / 
# Wed, 08 May 2019 12:02:29 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:02:37 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:08d322e824d855eeb98972c32e12193d7435591486bddd0b851718d66c1df242`  
		Last Modified: Wed, 08 May 2019 12:09:01 GMT  
		Size: 42.1 MB (42082607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e025d8c81a0f54d8b9014ccbb3dbbe9e096ea5bdc59e21b36f073bb1201be46`  
		Last Modified: Wed, 08 May 2019 12:09:11 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:57ea576b26cb3c236bc91db48edef2ac9ff97e832d27cf97095215cdf20f6e72
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43142197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e74bf489a9ae67bfb8b04c08546767a04ea4407419fb9b208355602fc2892e8`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:47:10 GMT
ADD file:b1832344a3d157b09ae4693225c71d77e985833322c2801ec6fd24e56d4d17d6 in / 
# Wed, 08 May 2019 08:47:11 GMT
CMD ["bash"]
# Wed, 08 May 2019 08:47:23 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:a8a5ef7fd760f746164e00924d65359fd60388253e8d5664fe7f0c5a54dd9f71`  
		Last Modified: Wed, 08 May 2019 08:53:56 GMT  
		Size: 43.1 MB (43141972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685f253582f45d6e53ddd092e23bdc46138c904816bbf1b51c000266551d990e`  
		Last Modified: Wed, 08 May 2019 08:54:04 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; 386

```console
$ docker pull debian@sha256:b4f530a35f6b66fb396dcf987b4df798c740053747ba53453430b16b2125a6dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46063654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6737c822678b8432ccb5e88cb4b4ee0bb91f61deba3e44ba3f21eff0709a109`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 10:47:58 GMT
ADD file:f5e54be035309ef378f4f0dc67d8b28832b4096c0c29393877d825abde58ff90 in / 
# Wed, 08 May 2019 10:47:59 GMT
CMD ["bash"]
# Wed, 08 May 2019 10:48:05 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:7e6e7931f407a46ebdeab29f40fd4cc824da0ae010456f7a5d9590642cf63815`  
		Last Modified: Wed, 08 May 2019 10:56:35 GMT  
		Size: 46.1 MB (46063429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1456024f742f7c6a5c307bf839f123802d1575c9a16b260992a7742a352ca346`  
		Last Modified: Wed, 08 May 2019 10:56:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:172d1a9eaa1f9a6b0ba09bc6bc9c3c998c523a2c5fc113dcc5c9dffce6154118
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45603432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4df01b92af3fcf8eb26ec535f3222cbcfb0d9408c2274cb869135748e97a80a3`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:53:59 GMT
ADD file:267715d2340cb5350156ac5ba9a23399dc6a0f33b5775b3393229cf795929292 in / 
# Wed, 08 May 2019 08:54:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 08:54:11 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:66c3bd13d3921cfe599ba8de6968bc08f1397f5de019af950f00e162b09b2b09`  
		Last Modified: Wed, 08 May 2019 09:24:50 GMT  
		Size: 45.6 MB (45603208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144ab9f2245933519569b91860fb0bbf17238e089463e4bc4bb1d85c932e7605`  
		Last Modified: Wed, 08 May 2019 09:25:02 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; s390x

```console
$ docker pull debian@sha256:c5c90501dd311a5c29fffd315da3094f8463bde76bfb8cae101a7b87bfefb32d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45197841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96cec616c8bd943ffec22d43a127bd87eea27eb7811309b8bdd74070ca9f7523`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 11:45:27 GMT
ADD file:744bd11374791aca37c53ca4dcf35734e77d8c64bbd7ce116f42d1e83d265a38 in / 
# Wed, 08 May 2019 11:45:27 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:45:36 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:b8bd9c11c9c7f7c805dafaf590e37af37fe3d19f54054ed6742459fd2c87edea`  
		Last Modified: Wed, 08 May 2019 11:51:42 GMT  
		Size: 45.2 MB (45197616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8755b15caab3794d4c06aa64bd826a8fa0aba5459c6f5b96a34e3f01c3238e2`  
		Last Modified: Wed, 08 May 2019 11:51:48 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
