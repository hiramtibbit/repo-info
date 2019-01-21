## `amazonlinux:with-sources`

```console
$ docker pull amazonlinux@sha256:924e494b898dbc67ba6ffd84f73bb6c32213b6c2cd131f1a5aef22559776cd96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:with-sources` - linux; amd64

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
