## `photon:latest`

```console
$ docker pull photon@sha256:4aa2dec936bb35126207549c06f4e319fda9290ec25051cde35568b489fac94d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `photon:latest` - linux; amd64

```console
$ docker pull photon@sha256:629e0ec9bd0dd4cc98a66c4c0f34295770a30db24aadc33ecf66ef02489da1f9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14602579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:275fac48dae5722b10f2a5d1b38d3e77a273e20f4129210a7e8709e4a241e7a1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 22 Mar 2019 00:20:08 GMT
ADD file:308c601e82437e29ae0c2a283369e7006854a4a912eed64fae47d58c0f784f5c in / 
# Fri, 22 Mar 2019 00:20:09 GMT
LABEL name=Photon OS x86_64/3.0 Base Image vendor=VMware build-date=20190320
# Fri, 22 Mar 2019 00:20:09 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:77c58ee2aadbba679cc74bc59e2e61f3a4a23f335900b91673aaab492c900c1a`  
		Last Modified: Fri, 22 Mar 2019 00:20:29 GMT  
		Size: 14.6 MB (14602579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `photon:latest` - linux; arm64 variant v8

```console
$ docker pull photon@sha256:4e7bdba8e0447def262cabbe28264e35e71dbccec1c1a8990e2d2ca605f89a4a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.5 MB (12475568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:410df4a8c31c56aaaa705fd6850801b1a61d943fb2c17378c55ef2a0da97b851`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 15 Mar 2019 10:06:33 GMT
ADD file:09fc4752fb71268e1de547f81dc3969cf4cf23d2d6f15afd72c5c77b1a74ad71 in / 
# Fri, 15 Mar 2019 10:06:33 GMT
LABEL name=Photon OS aarch64/3.0 Base Image vendor=VMware build-date=20190309
# Fri, 15 Mar 2019 10:06:34 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:36e5a4d856da97ccbd3ad5aad23c689369da289fdade4af4cf8827254646b0c3`  
		Last Modified: Fri, 15 Mar 2019 10:07:01 GMT  
		Size: 12.5 MB (12475568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
