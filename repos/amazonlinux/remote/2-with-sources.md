## `amazonlinux:2-with-sources`

```console
$ docker pull amazonlinux@sha256:c59482fa1a34eac0145adc80e22428029ab8cff86244b9e7bf620734f8f1975a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `amazonlinux:2-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:9bff3426d4f1b156f9d130378d8faf7cfdd1fb7ab93c9dd922e292a9a158ded3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.7 MB (410743064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dea8b13cef0221bd61601ff46e36338ffd6fd9fb4cf31ed824a0efdc6b0f6493`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 21 Jan 2019 20:20:55 GMT
ADD file:d4a81b79ca9de0a2c33b9adb925cd6b676889f3f89203e2cf76d9bf7796e11e0 in / 
# Mon, 21 Jan 2019 20:20:55 GMT
CMD ["/bin/bash"]
# Mon, 21 Jan 2019 20:22:33 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-1ebf88f40e981f5f4912729108bed51e41acc1677187a0a5534ea27b7a2e049f.tar.gz"  && echo "1ebf88f40e981f5f4912729108bed51e41acc1677187a0a5534ea27b7a2e049f  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:6c5ec16d4336267317a706197dd28a35e68dc1528c8838f2357acf6a3cb97359`  
		Last Modified: Mon, 21 Jan 2019 20:24:30 GMT  
		Size: 61.3 MB (61281937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2843ab8f1636ee0594785aba989f940e5f874cb5c185418a6da33391617a5ec7`  
		Last Modified: Mon, 21 Jan 2019 20:24:51 GMT  
		Size: 349.5 MB (349461127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `amazonlinux:2-with-sources` - linux; arm64 variant v8

```console
$ docker pull amazonlinux@sha256:dfe7539a3e4104598b204658f2f8924ad75439881649fd64c0f3b2bd4fb47c26
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **432.1 MB (432111017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fe2dec8e5f5e05fe2f533ce9a58a7624b22eec7544957cd4014bbc6d2bab4f0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 22 Jan 2019 09:48:19 GMT
ADD file:325be172ad6266a0c51c7f10293146e9983eb6bb369053284bc1dc1bc3bbe169 in / 
# Tue, 22 Jan 2019 09:48:20 GMT
CMD ["/bin/bash"]
# Tue, 22 Jan 2019 09:49:23 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-1ebf88f40e981f5f4912729108bed51e41acc1677187a0a5534ea27b7a2e049f.tar.gz"  && echo "1ebf88f40e981f5f4912729108bed51e41acc1677187a0a5534ea27b7a2e049f  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:a2362d2020fd728bf29f000166d08d67fba91b06a697f55012c375ce17f25132`  
		Last Modified: Tue, 22 Jan 2019 09:50:08 GMT  
		Size: 82.6 MB (82649891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f6def0b851c6dcf4fcc174b5d62cb9c68c980d58c31143fa909b0f41ac64ecc`  
		Last Modified: Tue, 22 Jan 2019 09:51:00 GMT  
		Size: 349.5 MB (349461126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
