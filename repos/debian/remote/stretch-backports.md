## `debian:stretch-backports`

```console
$ docker pull debian@sha256:15eb23bfade3fc591f0e9253be0a043f9afaad2c93a2961a0f2221b2e75b9bf0
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

### `debian:stretch-backports` - linux; amd64

```console
$ docker pull debian@sha256:da7f224e3aabce46478c87b640d45d3ee4d69bba74b7a235483d784ea0b8aa9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.3 MB (45310159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca61c40155d2876452723e2c9edc81e7579c661ab6384506ff58f22a69794fd4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Mon, 15 Oct 2018 23:24:30 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be7235309fbe8f668bfd1d2513037bcceafc591252b2f4f6af5767112fb0bed`  
		Last Modified: Mon, 15 Oct 2018 23:34:28 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:d57bdbf9954d1fdff41f02eec04c9a526b78f54f435c8597b181ce0df6684469
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44033225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3595f108518d45c93730ecf876eda75ea046b9ee7bd6e3ad4b343e4db7da037c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:54:58 GMT
ADD file:2301eb998a2cf644d62951808894ec7ace20df38ed4e82f7ab477d8a9043b67b in / 
# Wed, 05 Sep 2018 08:54:59 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 08:55:09 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:9cb1890a5e52c7c05eedad090ff39b863a62697e36cd9b3ff608dc0f832d5687`  
		Last Modified: Wed, 05 Sep 2018 09:03:55 GMT  
		Size: 44.0 MB (44033002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20b6183cb8c24e331f376dc2692720d0494cef47999d7f894f6f778603a32ed3`  
		Last Modified: Wed, 05 Sep 2018 09:04:29 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:78c8dc60a29c0802db3cd2b1c9c7eecefe4342d6a7906a07b30bd6ca7dc4a654
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42062895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:602f1eedb15a0f8ff25c6f032b609472c538cc4a9ba0caaab5b4b9829d5e9b97`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:11 GMT
ADD file:bacead0de46aaeea589aade1154ab29f7b53ba32ac884c84a950a3f42bbe2868 in / 
# Wed, 05 Sep 2018 12:04:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:04:21 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:b0e52c109d408e4b15451c236c7e463334a304fd078c535edbd687b22bfde52c`  
		Last Modified: Wed, 05 Sep 2018 12:12:54 GMT  
		Size: 42.1 MB (42062670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:353695d640419a11c9d1fdd03423136d59be66977e85a09dc7190ca290873e27`  
		Last Modified: Wed, 05 Sep 2018 12:13:28 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:9b8f65d0b13c976e6a13b3ad48d9b05291a6b9ba26229779231399c8179624f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43123846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e63cc670d0de82fb5e26caeb66ed3d768d5c6abed7d3b943eba361f4cd313c84`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 08:50:59 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78702fdd04233cc1a4b3a753a8eea20bef1b84599ef6ce164b0a9820ac76141`  
		Last Modified: Wed, 05 Sep 2018 09:08:51 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; 386

```console
$ docker pull debian@sha256:ca0488e04f643561ec77d4f2bc281bba0544b1c5c6291fe8b04a60a96cf03e1b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46039272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e49eac4532e47efbf921060c306c4e499ec73a93efbfeeb59187ab71b4931a5`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:36 GMT
ADD file:3712892f37687a2c2c5bbcb861ce5514725fe71d82c86a79fb1d1bcaa39b8989 in / 
# Wed, 05 Sep 2018 10:43:36 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:43:43 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:23bbbdd93c8977020ec67716d0cda1fe7a96e73c4c3a0aa6c42122459e2ba839`  
		Last Modified: Wed, 05 Sep 2018 10:51:53 GMT  
		Size: 46.0 MB (46039046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04db81b3b09ef8a55fb3704d6107048b0ef5f97ec0a5d6aa2be8b437c4b1d687`  
		Last Modified: Wed, 05 Sep 2018 10:52:04 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:d5c06b0bc40663b3d3b440f0d4f537c1274337ca4bc984cb77a1141a0f31bdec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45595620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80401c3709974f166198580ed982460233f1a7d73e36427b77b0dd758e03d5b4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:18 GMT
ADD file:f98c8d96684a432f8bb2cc0b184e5357631ed2431085de5814f32fe8eb28a4b9 in / 
# Wed, 05 Sep 2018 08:19:19 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 08:19:28 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:c931e468b38019a7817d974db9ed0b4ae9d1765d297590669406c18589ffae5e`  
		Last Modified: Wed, 05 Sep 2018 08:25:26 GMT  
		Size: 45.6 MB (45595396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313a5564e457c68b0ee194946751737041b9a3a82b24b354d47412793af663bf`  
		Last Modified: Wed, 05 Sep 2018 08:26:17 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; s390x

```console
$ docker pull debian@sha256:6b8aa619be33c85b15eb82a1c0e5170b4358f7c367127d083395f32a6cf403a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45199850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee940d73f1a7b436eaa2c1b484ac87ad3c7d87fdfb9d29d2fbf2bd55d926e411`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 11:43:59 GMT
ADD file:e8d7ae40251e43d792ae1b2a67f12263d8a7bbdb75e0b43b488b1e3a4beb6ad2 in / 
# Wed, 05 Sep 2018 11:44:00 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:44:10 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:0d67503d3ff96f2ecf56e6f53b6d10b562227891864b38cd82deb47291f67e4d`  
		Last Modified: Wed, 05 Sep 2018 11:48:33 GMT  
		Size: 45.2 MB (45199628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce8ea6d02d41c4de70ac0dc43181314e41eaf1237771384f2d721d37bb7d08b3`  
		Last Modified: Wed, 05 Sep 2018 11:49:05 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
