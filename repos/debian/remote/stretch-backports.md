## `debian:stretch-backports`

```console
$ docker pull debian@sha256:a340a9ebc3cd781405b2bec870eb13f5263c24cc543c2c780ea6ac7bf84b290e
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
$ docker pull debian@sha256:7fba3ce8755b58e165455038bd68f5afc6dd4f352796c02ac62ad771b3e5b58f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.3 MB (45318382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c894f79ef7af60b18460e96726539697382c03117b6627d26fd720e864143b2b`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 07:09:16 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa4141fc4fe8418030528c44fc782b36f5108462aa7dd18bec405b20eca681c`  
		Last Modified: Sat, 28 Apr 2018 09:30:48 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:d8b523bbd5067d6edd13777f23584d839b37d9ed443155ce38a8713001f5693e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44038805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83d564530072b2fdb92d4e0d70deacf00b1460e5440fa0cadf166384708c43c1`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:53:04 GMT
ADD file:bd77176b7f68cf66010ed7d5cd955387a1eb54726e5071bc42ddd831ac56de69 in / 
# Sat, 28 Apr 2018 08:53:04 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 08:53:14 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:c87e62b47a5d3031bbfc66d1b7c178e12dd4b62b36eaa44a879cebbbc558c33d`  
		Last Modified: Sat, 28 Apr 2018 09:01:28 GMT  
		Size: 44.0 MB (44038582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecfc8e341df8374539c41cef49cab61a0c04a9a453599425f10745772e1de19`  
		Last Modified: Sat, 28 Apr 2018 09:02:01 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:8b1485a61d94bbfb13e14179386e61f8682936bb00ab7862f7b28efbb187efb5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42063958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa651409f8b744e3a2f381c876706d7e91c30189ea5dc17fc299484f7d0de057`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:04:35 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38bdc02b8b1fe132b8d3966e710781888956a634b5b5479363c3e6958f473ecb`  
		Last Modified: Sat, 28 Apr 2018 12:15:54 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:e20116eb9a58f26d5994cf4876d4fe300076827b1295b448e3ffb1ccd2fb7516
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43109574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e38552cf113a7c4516aca56a2b38867ef540ccfa8393cae7927315e223802273`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 23:32:31 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a835714231c0e12459b4395f754da2aeeb7c7d7b24af0104f42ac445dc215388`  
		Last Modified: Mon, 30 Apr 2018 23:54:02 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; 386

```console
$ docker pull debian@sha256:18ce7c4c54f47d51296de29c8aa04e3455de132855466afa7a3026ce586b62bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46045108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30820097f6756e6ccfbd9b24fa1a2b6b9525a9533e9e8a32f26b2bbce3e8a982`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 10:41:40 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e113a9e17bc16c4cdaa139e2a14b9e11a1ea68fc15be8aa6f19e5ae074392e`  
		Last Modified: Sat, 28 Apr 2018 10:49:19 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:89e5f6e95215a67b64f5cc3c4230937a120517770e8e5b6ebabad9ab5d8b5268
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45591067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8c8725490d4cbb9d32f2c1fa90da5fd7615a5424ce34e69919310b5841b6500`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:30 GMT
ADD file:ae8b79396496eb2731c9fe7f159d6f3086ec59dd9c418c6d93780fc8cb685d2b in / 
# Sat, 28 Apr 2018 08:20:31 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 08:20:40 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:5c65288cd974eda27ef2a891c3b15c52c38c5a1c74befed7d569db78cbcb88b4`  
		Last Modified: Sat, 28 Apr 2018 08:29:36 GMT  
		Size: 45.6 MB (45590843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:452fc81925e4a82ce42ab0b97cbe4d32c51ee8398acdeac45647b49b3bd7ab58`  
		Last Modified: Sat, 28 Apr 2018 08:30:11 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; s390x

```console
$ docker pull debian@sha256:d77668db8b7b541e4e431c36b18201018e99d5c42a1620d4a3d74d7456c8fab3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45185489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41a8cc6cb38bcd5890c2c834552b3700ee4ef8e1306817daf84e1f0e614545d9`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:45:04 GMT
ADD file:cb13df185b5fc36710007c3b4ec6f239ac340ff9c69cbec1e38fcf974766179b in / 
# Sat, 28 Apr 2018 11:45:04 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:45:12 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:9793d586559922dfd1f10be65f3cabffaf1d31f81660ef474409da1f4f675fc7`  
		Last Modified: Sat, 28 Apr 2018 11:50:58 GMT  
		Size: 45.2 MB (45185265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c9adc5ffa40d70035e4f4c736eda7533ed5a30eed6c276f46900a57672a2567`  
		Last Modified: Sat, 28 Apr 2018 11:51:29 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
