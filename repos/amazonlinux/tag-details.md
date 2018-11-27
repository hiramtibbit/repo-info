<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `amazonlinux`

-	[`amazonlinux:1`](#amazonlinux1)
-	[`amazonlinux:1-with-sources`](#amazonlinux1-with-sources)
-	[`amazonlinux:2`](#amazonlinux2)
-	[`amazonlinux:2018.03`](#amazonlinux201803)
-	[`amazonlinux:2018.03.0.20180827`](#amazonlinux201803020180827)
-	[`amazonlinux:2018.03.0.20180827-with-sources`](#amazonlinux201803020180827-with-sources)
-	[`amazonlinux:2018.03-with-sources`](#amazonlinux201803-with-sources)
-	[`amazonlinux:2.0.20181114`](#amazonlinux2020181114)
-	[`amazonlinux:2.0.20181114-with-sources`](#amazonlinux2020181114-with-sources)
-	[`amazonlinux:2-with-sources`](#amazonlinux2-with-sources)
-	[`amazonlinux:latest`](#amazonlinuxlatest)
-	[`amazonlinux:with-sources`](#amazonlinuxwith-sources)

## `amazonlinux:1`

```console
$ docker pull amazonlinux@sha256:a1bb862e989564554fb0fba91ab6da0b7e79682759a7dc3fd7231a0c414ebf7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:1` - linux; amd64

```console
$ docker pull amazonlinux@sha256:6f9ba4b379b3ff9edd4684fa6bd89f5f950c6a332b4db1494806403c0c0bb391
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.8 MB (61776229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f929d2604c7e504a568eac9a2523c1b9e9b15e1fcee4076e1411a552913d08e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 30 Aug 2018 21:43:40 GMT
ADD file:352b08a4b5ba06b2e22ec501352dfd7fb731f1173ee0e008a67f6be512ac3615 in / 
# Thu, 30 Aug 2018 21:43:40 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:5b90a54fcf20cd7bbbfaaa43d29e91bc689ffbaac82ba9aa216a59be0532f6e1`  
		Last Modified: Thu, 30 Aug 2018 21:45:00 GMT  
		Size: 61.8 MB (61776229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:1-with-sources`

```console
$ docker pull amazonlinux@sha256:9a7e7f76567c8e746859a6400d609290622ac5932dd16f24174e83c51b6bb489
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:1-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:eda241b8b449e6543df7c87c8c4e9459b2a3862dd7345135fbfeb0fa6d6f3537
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.5 MB (353452293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dc4e895e2192d949dae5b4a4e9d8aa4d38cf84c118aedf6e16897151a760731`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 30 Aug 2018 21:43:40 GMT
ADD file:352b08a4b5ba06b2e22ec501352dfd7fb731f1173ee0e008a67f6be512ac3615 in / 
# Thu, 30 Aug 2018 21:43:40 GMT
CMD ["/bin/bash"]
# Thu, 30 Aug 2018 21:43:51 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle.tar.gz?versionId=G7JV6l3amfK7ZI6vMX7naHgMkmf_uoNE"  && echo "ce4c3194cd8ed0137f80249be6e1cadd964102965926360d9bc8a58aef84e180 /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:5b90a54fcf20cd7bbbfaaa43d29e91bc689ffbaac82ba9aa216a59be0532f6e1`  
		Last Modified: Thu, 30 Aug 2018 21:45:00 GMT  
		Size: 61.8 MB (61776229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb4068d6e00fd4411de24f8cea5dfc8682651162fe3563f7126f7ad3fffb45d6`  
		Last Modified: Thu, 30 Aug 2018 21:45:24 GMT  
		Size: 291.7 MB (291676064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2`

```console
$ docker pull amazonlinux@sha256:5861d8f57c59b766f991a00d63affe08b5c87e348b7db5aa8819a1ffff58eb21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2` - linux; amd64

```console
$ docker pull amazonlinux@sha256:0d39d15ae2c5b444876e1d74bcd451d4417b2758a373c9c75d991a6eee69c175
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.2 MB (61249965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d656eea421ba4eb2dbceb4701f648edabff557803e614bce8054fba7575d581a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 18 Oct 2018 23:19:43 GMT
ADD file:3b2c4ec84fed31ca9967d038f2edda8bd933e68aad3ec2c64d1a1b05c34c5ab7 in / 
# Thu, 18 Oct 2018 23:19:47 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:20ccd029c3cdf66ab978c749b834432d7ffe74e40c6fb142e6bbcdaf420264fa`  
		Last Modified: Thu, 18 Oct 2018 23:21:05 GMT  
		Size: 61.2 MB (61249965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2018.03`

```console
$ docker pull amazonlinux@sha256:a1bb862e989564554fb0fba91ab6da0b7e79682759a7dc3fd7231a0c414ebf7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2018.03` - linux; amd64

```console
$ docker pull amazonlinux@sha256:6f9ba4b379b3ff9edd4684fa6bd89f5f950c6a332b4db1494806403c0c0bb391
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.8 MB (61776229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f929d2604c7e504a568eac9a2523c1b9e9b15e1fcee4076e1411a552913d08e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 30 Aug 2018 21:43:40 GMT
ADD file:352b08a4b5ba06b2e22ec501352dfd7fb731f1173ee0e008a67f6be512ac3615 in / 
# Thu, 30 Aug 2018 21:43:40 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:5b90a54fcf20cd7bbbfaaa43d29e91bc689ffbaac82ba9aa216a59be0532f6e1`  
		Last Modified: Thu, 30 Aug 2018 21:45:00 GMT  
		Size: 61.8 MB (61776229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2018.03.0.20180827`

```console
$ docker pull amazonlinux@sha256:a1bb862e989564554fb0fba91ab6da0b7e79682759a7dc3fd7231a0c414ebf7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2018.03.0.20180827` - linux; amd64

```console
$ docker pull amazonlinux@sha256:6f9ba4b379b3ff9edd4684fa6bd89f5f950c6a332b4db1494806403c0c0bb391
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.8 MB (61776229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f929d2604c7e504a568eac9a2523c1b9e9b15e1fcee4076e1411a552913d08e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 30 Aug 2018 21:43:40 GMT
ADD file:352b08a4b5ba06b2e22ec501352dfd7fb731f1173ee0e008a67f6be512ac3615 in / 
# Thu, 30 Aug 2018 21:43:40 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:5b90a54fcf20cd7bbbfaaa43d29e91bc689ffbaac82ba9aa216a59be0532f6e1`  
		Last Modified: Thu, 30 Aug 2018 21:45:00 GMT  
		Size: 61.8 MB (61776229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2018.03.0.20180827-with-sources`

```console
$ docker pull amazonlinux@sha256:9a7e7f76567c8e746859a6400d609290622ac5932dd16f24174e83c51b6bb489
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2018.03.0.20180827-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:eda241b8b449e6543df7c87c8c4e9459b2a3862dd7345135fbfeb0fa6d6f3537
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.5 MB (353452293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dc4e895e2192d949dae5b4a4e9d8aa4d38cf84c118aedf6e16897151a760731`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 30 Aug 2018 21:43:40 GMT
ADD file:352b08a4b5ba06b2e22ec501352dfd7fb731f1173ee0e008a67f6be512ac3615 in / 
# Thu, 30 Aug 2018 21:43:40 GMT
CMD ["/bin/bash"]
# Thu, 30 Aug 2018 21:43:51 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle.tar.gz?versionId=G7JV6l3amfK7ZI6vMX7naHgMkmf_uoNE"  && echo "ce4c3194cd8ed0137f80249be6e1cadd964102965926360d9bc8a58aef84e180 /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:5b90a54fcf20cd7bbbfaaa43d29e91bc689ffbaac82ba9aa216a59be0532f6e1`  
		Last Modified: Thu, 30 Aug 2018 21:45:00 GMT  
		Size: 61.8 MB (61776229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb4068d6e00fd4411de24f8cea5dfc8682651162fe3563f7126f7ad3fffb45d6`  
		Last Modified: Thu, 30 Aug 2018 21:45:24 GMT  
		Size: 291.7 MB (291676064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2018.03-with-sources`

```console
$ docker pull amazonlinux@sha256:9a7e7f76567c8e746859a6400d609290622ac5932dd16f24174e83c51b6bb489
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2018.03-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:eda241b8b449e6543df7c87c8c4e9459b2a3862dd7345135fbfeb0fa6d6f3537
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.5 MB (353452293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dc4e895e2192d949dae5b4a4e9d8aa4d38cf84c118aedf6e16897151a760731`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 30 Aug 2018 21:43:40 GMT
ADD file:352b08a4b5ba06b2e22ec501352dfd7fb731f1173ee0e008a67f6be512ac3615 in / 
# Thu, 30 Aug 2018 21:43:40 GMT
CMD ["/bin/bash"]
# Thu, 30 Aug 2018 21:43:51 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle.tar.gz?versionId=G7JV6l3amfK7ZI6vMX7naHgMkmf_uoNE"  && echo "ce4c3194cd8ed0137f80249be6e1cadd964102965926360d9bc8a58aef84e180 /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:5b90a54fcf20cd7bbbfaaa43d29e91bc689ffbaac82ba9aa216a59be0532f6e1`  
		Last Modified: Thu, 30 Aug 2018 21:45:00 GMT  
		Size: 61.8 MB (61776229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb4068d6e00fd4411de24f8cea5dfc8682651162fe3563f7126f7ad3fffb45d6`  
		Last Modified: Thu, 30 Aug 2018 21:45:24 GMT  
		Size: 291.7 MB (291676064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2.0.20181114`

**does not exist** (yet?)

## `amazonlinux:2.0.20181114-with-sources`

**does not exist** (yet?)

## `amazonlinux:2-with-sources`

```console
$ docker pull amazonlinux@sha256:05e78886ddabbcdaa1250d24ebc0a28ed0579912099419ed6d9e285d683b490c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:be3eb16e7149a5aa73b4bddce560ce2e4c8c3f9efa3ce1c4d6bd5e8bfbaf67ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.5 MB (410549970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c56aac920bd804c6fd6760d13d996a5e6359ab23e3e7ed6f17e4419dba1b720`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 18 Oct 2018 23:19:43 GMT
ADD file:3b2c4ec84fed31ca9967d038f2edda8bd933e68aad3ec2c64d1a1b05c34c5ab7 in / 
# Thu, 18 Oct 2018 23:19:47 GMT
CMD ["/bin/bash"]
# Thu, 18 Oct 2018 23:20:31 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/amzn2/srpm-bundle.tar.gz?versionId=_uFmafMKERILPq3MZ7xKNOyUR6wN_m9d"  && echo "8adebd309defad308f0d3216a73fdf90171657df951abc07630e6f4083d6d718 /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:20ccd029c3cdf66ab978c749b834432d7ffe74e40c6fb142e6bbcdaf420264fa`  
		Last Modified: Thu, 18 Oct 2018 23:21:05 GMT  
		Size: 61.2 MB (61249965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50b20ebaa76a594bf5cce9da0d2ee9555debea10689482ace2bbff29e5f7720a`  
		Last Modified: Thu, 18 Oct 2018 23:22:08 GMT  
		Size: 349.3 MB (349300005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:latest`

```console
$ docker pull amazonlinux@sha256:5861d8f57c59b766f991a00d63affe08b5c87e348b7db5aa8819a1ffff58eb21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:latest` - linux; amd64

```console
$ docker pull amazonlinux@sha256:0d39d15ae2c5b444876e1d74bcd451d4417b2758a373c9c75d991a6eee69c175
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.2 MB (61249965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d656eea421ba4eb2dbceb4701f648edabff557803e614bce8054fba7575d581a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 18 Oct 2018 23:19:43 GMT
ADD file:3b2c4ec84fed31ca9967d038f2edda8bd933e68aad3ec2c64d1a1b05c34c5ab7 in / 
# Thu, 18 Oct 2018 23:19:47 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:20ccd029c3cdf66ab978c749b834432d7ffe74e40c6fb142e6bbcdaf420264fa`  
		Last Modified: Thu, 18 Oct 2018 23:21:05 GMT  
		Size: 61.2 MB (61249965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:with-sources`

```console
$ docker pull amazonlinux@sha256:05e78886ddabbcdaa1250d24ebc0a28ed0579912099419ed6d9e285d683b490c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:be3eb16e7149a5aa73b4bddce560ce2e4c8c3f9efa3ce1c4d6bd5e8bfbaf67ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.5 MB (410549970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c56aac920bd804c6fd6760d13d996a5e6359ab23e3e7ed6f17e4419dba1b720`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 18 Oct 2018 23:19:43 GMT
ADD file:3b2c4ec84fed31ca9967d038f2edda8bd933e68aad3ec2c64d1a1b05c34c5ab7 in / 
# Thu, 18 Oct 2018 23:19:47 GMT
CMD ["/bin/bash"]
# Thu, 18 Oct 2018 23:20:31 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/amzn2/srpm-bundle.tar.gz?versionId=_uFmafMKERILPq3MZ7xKNOyUR6wN_m9d"  && echo "8adebd309defad308f0d3216a73fdf90171657df951abc07630e6f4083d6d718 /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:20ccd029c3cdf66ab978c749b834432d7ffe74e40c6fb142e6bbcdaf420264fa`  
		Last Modified: Thu, 18 Oct 2018 23:21:05 GMT  
		Size: 61.2 MB (61249965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50b20ebaa76a594bf5cce9da0d2ee9555debea10689482ace2bbff29e5f7720a`  
		Last Modified: Thu, 18 Oct 2018 23:22:08 GMT  
		Size: 349.3 MB (349300005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
