## `debian:buster-backports`

```console
$ docker pull debian@sha256:62e1df0133c85e5dd99e5cf1c7da1045b400c1d3bab21e2a2ac0318f7b6f6fac
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

### `debian:buster-backports` - linux; amd64

```console
$ docker pull debian@sha256:59de288cdf8dac19e0045522791c2cb76725b5a9149fe13f9a0e1c02b14975df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.4 MB (50379368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e91b0f7c671b36784606e7d89ce2bcd7c72ed1760059afc0bbbf4a97278f52b9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:21:37 GMT
ADD file:e7b0b4ed23ac0ce3e8c4d65daa6a8896533c92b2dd167ba2c15c7181354d64b6 in / 
# Mon, 10 Jun 2019 23:21:37 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:21:42 GMT
RUN echo 'deb http://deb.debian.org/debian buster-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:478cd0aa93c0da2489a29b95d43a21a942cece28ecb0ba0f99770f52eb8ee3dc`  
		Last Modified: Mon, 10 Jun 2019 23:25:52 GMT  
		Size: 50.4 MB (50379147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94d6a239eb0e7a7fd6f6e0c75fe5c369eb7747cec3739c9972e5afa4e09b7153`  
		Last Modified: Mon, 10 Jun 2019 23:25:56 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:buster-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:10d53c8c456ffd50ba6b28fa3643870467cbb918732a071e9535fe4f5745db54
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.0 MB (47991560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0e395f8e5df94ca3f8551ac9cc2bcff267cdb7d783edd7984faf697c47c46ca`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:49:07 GMT
ADD file:32322c35d043b12b15eabfa71c7e1f7ee0a9aa0da843563ae0071b2734f64e02 in / 
# Wed, 08 May 2019 08:49:08 GMT
CMD ["bash"]
# Wed, 08 May 2019 08:49:15 GMT
RUN echo 'deb http://deb.debian.org/debian buster-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:ec2a6987ecd7db01af5a6962ce511e10d30c11c3ec6500e3c2b48150bb874308`  
		Last Modified: Wed, 08 May 2019 08:56:06 GMT  
		Size: 48.0 MB (47991337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1db50b17f5e63d4c8fb469dc35444a0dea9e134cf55f78039cd2ae66131863f8`  
		Last Modified: Wed, 08 May 2019 08:56:12 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:buster-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:8b1fde0b7f56ec91a0bc1ea7ef1185fab0aca08df49095ec9a63f7d9daff10a1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45766060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01ad3d09fff00842aa98056b99f123e41163be3d263648e918864be3f4584a47`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 11:58:30 GMT
ADD file:6ffb4993194911c9b6eb9f7613327267f4909ffb0d9547630bc4c9d682fe9b36 in / 
# Wed, 08 May 2019 11:58:31 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:58:41 GMT
RUN echo 'deb http://deb.debian.org/debian buster-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:b5e4574086db630513c13564425e55ae79c102666c529caa0e77849238dd0fbd`  
		Last Modified: Wed, 08 May 2019 12:06:41 GMT  
		Size: 45.8 MB (45765836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d341a9e5765697169549eff0e70a2bd5519e70461b5ece85a7a614ff10179826`  
		Last Modified: Wed, 08 May 2019 12:06:48 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:buster-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:faf2b6f31e425165e113f96a2602c490c0fbdd17f12ddda53221a63b020a236c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49159083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dac616ce1556b8e8975f9d962b3014eb7c0eb815ce1e54301217f568e5e063bc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:40:03 GMT
ADD file:d4ed38275e26cfea6aa8a3f6b394ee5f2b0fa641d0630a3d468e28e28ac1884a in / 
# Mon, 10 Jun 2019 23:40:06 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:40:13 GMT
RUN echo 'deb http://deb.debian.org/debian buster-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:8689d9294ba4ec1f0c65b9d464daf20e7a8f23953891113e97383cfe25accb70`  
		Last Modified: Mon, 10 Jun 2019 23:43:20 GMT  
		Size: 49.2 MB (49158860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924b94ef415578204d732314b6f8dac77c1844e15000a60c25a577ee77551d31`  
		Last Modified: Mon, 10 Jun 2019 23:43:26 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:buster-backports` - linux; 386

```console
$ docker pull debian@sha256:fc957da872d03422f4b8f8e0a36b5916cf6a98687ebddb65013cdfeffcd9fbb0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.1 MB (51138695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13a0fe4a597b47f83250d62b319cbd3a04c55f8c12e9a73407da11eb0cd8a2e7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:39:00 GMT
ADD file:8099e0f2099a6ff14323cbb04efb8dd47edfdb270e990aa60e452a3da3356e13 in / 
# Mon, 10 Jun 2019 23:39:00 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:39:05 GMT
RUN echo 'deb http://deb.debian.org/debian buster-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:e5a6d4b67a8a57652c10b2598a7c16a4a584c8c7ba82ae32f396af13dc1d9f26`  
		Last Modified: Mon, 10 Jun 2019 23:43:06 GMT  
		Size: 51.1 MB (51138475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfb68b36be13f75628bfce7951be60fa3df06ffd2cc412e9297b72bb52eac2e3`  
		Last Modified: Mon, 10 Jun 2019 23:43:10 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:buster-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:30bf575012dff58807adb8e090f947fe7016dca8db5cf38e66cfff59fe3819de
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.1 MB (54121901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f601e6ef872ea715ebf6acece315a883736492d810302e2e36404ad50c3f6659`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:17:03 GMT
ADD file:f644ad961f6c2192550d5b0142404f3839fd950b933183534fa7df274aa50a8a in / 
# Mon, 10 Jun 2019 23:17:06 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:17:21 GMT
RUN echo 'deb http://deb.debian.org/debian buster-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:decba7e128fed3715df7927e807908c2c45f9a9d72775dc83425f0f7c77be5af`  
		Last Modified: Mon, 10 Jun 2019 23:21:16 GMT  
		Size: 54.1 MB (54121677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ea5908eefec6fed2c93f3c31fbdbabc2d4050638d501de023b12acf924bcd8`  
		Last Modified: Mon, 10 Jun 2019 23:21:29 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:buster-backports` - linux; s390x

```console
$ docker pull debian@sha256:b6a1af2fadbd61ef125d1e22a815a9b3de7d6604ccc6af4bbba0bd7f74225a5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 MB (48949111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2459ef5f198b778c1f85dfbb63e5b0319f94d00397821d749bd60d567cb4e615`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:42:10 GMT
ADD file:cbda21300f44d484eac1946e33249ae3c8f18773d5d93d8c4855f52598d3050a in / 
# Mon, 10 Jun 2019 23:42:11 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:42:18 GMT
RUN echo 'deb http://deb.debian.org/debian buster-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:88d986d403805e24ab0796e7f62c434170153c30560aef3173415aa30db65340`  
		Last Modified: Mon, 10 Jun 2019 23:45:17 GMT  
		Size: 48.9 MB (48948887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbac94e0188bb01e9051948440175220d98ac2478a0059b234c7c5b4450a9f36`  
		Last Modified: Mon, 10 Jun 2019 23:45:21 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
