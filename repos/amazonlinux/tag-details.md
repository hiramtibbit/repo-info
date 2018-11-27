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
$ docker pull amazonlinux@sha256:576fda22f46ec388dde3a54a31ba0624d409a10251d9b4e08792096a54fe2dc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2` - linux; amd64

```console
$ docker pull amazonlinux@sha256:fe1f25a3ebb2a736c04ea3a522b1eff9c315539604a534d519c787b277e94b9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.2 MB (61246625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2467e0b1e91745890aa0298126eef4f5edeca2998ec07e932b468b2fb23d11f7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Nov 2018 04:55:53 GMT
ADD file:9a858b436088fe47b75fb9a4a9548f06cbab01c8b69bca6c3ca52153eb31c81a in / 
# Tue, 27 Nov 2018 04:55:53 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:2cbe74538cb54cc9c69497b52b80f745cdf9360557e30d38f63906efdb6736b5`  
		Last Modified: Tue, 27 Nov 2018 04:58:23 GMT  
		Size: 61.2 MB (61246625 bytes)  
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

```console
$ docker pull amazonlinux@sha256:576fda22f46ec388dde3a54a31ba0624d409a10251d9b4e08792096a54fe2dc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2.0.20181114` - linux; amd64

```console
$ docker pull amazonlinux@sha256:fe1f25a3ebb2a736c04ea3a522b1eff9c315539604a534d519c787b277e94b9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.2 MB (61246625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2467e0b1e91745890aa0298126eef4f5edeca2998ec07e932b468b2fb23d11f7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Nov 2018 04:55:53 GMT
ADD file:9a858b436088fe47b75fb9a4a9548f06cbab01c8b69bca6c3ca52153eb31c81a in / 
# Tue, 27 Nov 2018 04:55:53 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:2cbe74538cb54cc9c69497b52b80f745cdf9360557e30d38f63906efdb6736b5`  
		Last Modified: Tue, 27 Nov 2018 04:58:23 GMT  
		Size: 61.2 MB (61246625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2.0.20181114-with-sources`

```console
$ docker pull amazonlinux@sha256:b49ec8d3b45624554db5d69f3e976ce177f046192e8f1c34e504d8591b1d5ecf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2.0.20181114-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:dfb183a6a0b7af7fa3a2af07be5e6ca0d0ce5bd75bca82685c3713ffbc667caa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.6 MB (410570066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:123b5b29930df53524de37ef1e84aee5a6a1a8ed922883b84d3cefe6c041f8e2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Nov 2018 04:55:53 GMT
ADD file:9a858b436088fe47b75fb9a4a9548f06cbab01c8b69bca6c3ca52153eb31c81a in / 
# Tue, 27 Nov 2018 04:55:53 GMT
CMD ["/bin/bash"]
# Tue, 27 Nov 2018 04:56:47 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/amzn2/srpm-bundle.20181114.tar.gz?versionId=nB5.4dIHFJSZqiKkbJWmAufA2zT96NtU"  && echo "9e69458ec7d3617a02584b64d77558c513253de6ef0d33b8efbd709430c6e14a /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:2cbe74538cb54cc9c69497b52b80f745cdf9360557e30d38f63906efdb6736b5`  
		Last Modified: Tue, 27 Nov 2018 04:58:23 GMT  
		Size: 61.2 MB (61246625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a9f987207cf9d259b636bbb1663acb54d8ce2e7554f3225b3227ee050321e5`  
		Last Modified: Tue, 27 Nov 2018 04:59:26 GMT  
		Size: 349.3 MB (349323441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2-with-sources`

```console
$ docker pull amazonlinux@sha256:b49ec8d3b45624554db5d69f3e976ce177f046192e8f1c34e504d8591b1d5ecf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:dfb183a6a0b7af7fa3a2af07be5e6ca0d0ce5bd75bca82685c3713ffbc667caa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.6 MB (410570066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:123b5b29930df53524de37ef1e84aee5a6a1a8ed922883b84d3cefe6c041f8e2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Nov 2018 04:55:53 GMT
ADD file:9a858b436088fe47b75fb9a4a9548f06cbab01c8b69bca6c3ca52153eb31c81a in / 
# Tue, 27 Nov 2018 04:55:53 GMT
CMD ["/bin/bash"]
# Tue, 27 Nov 2018 04:56:47 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/amzn2/srpm-bundle.20181114.tar.gz?versionId=nB5.4dIHFJSZqiKkbJWmAufA2zT96NtU"  && echo "9e69458ec7d3617a02584b64d77558c513253de6ef0d33b8efbd709430c6e14a /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:2cbe74538cb54cc9c69497b52b80f745cdf9360557e30d38f63906efdb6736b5`  
		Last Modified: Tue, 27 Nov 2018 04:58:23 GMT  
		Size: 61.2 MB (61246625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a9f987207cf9d259b636bbb1663acb54d8ce2e7554f3225b3227ee050321e5`  
		Last Modified: Tue, 27 Nov 2018 04:59:26 GMT  
		Size: 349.3 MB (349323441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:latest`

```console
$ docker pull amazonlinux@sha256:576fda22f46ec388dde3a54a31ba0624d409a10251d9b4e08792096a54fe2dc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:latest` - linux; amd64

```console
$ docker pull amazonlinux@sha256:fe1f25a3ebb2a736c04ea3a522b1eff9c315539604a534d519c787b277e94b9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.2 MB (61246625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2467e0b1e91745890aa0298126eef4f5edeca2998ec07e932b468b2fb23d11f7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Nov 2018 04:55:53 GMT
ADD file:9a858b436088fe47b75fb9a4a9548f06cbab01c8b69bca6c3ca52153eb31c81a in / 
# Tue, 27 Nov 2018 04:55:53 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:2cbe74538cb54cc9c69497b52b80f745cdf9360557e30d38f63906efdb6736b5`  
		Last Modified: Tue, 27 Nov 2018 04:58:23 GMT  
		Size: 61.2 MB (61246625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:with-sources`

```console
$ docker pull amazonlinux@sha256:b49ec8d3b45624554db5d69f3e976ce177f046192e8f1c34e504d8591b1d5ecf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:dfb183a6a0b7af7fa3a2af07be5e6ca0d0ce5bd75bca82685c3713ffbc667caa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.6 MB (410570066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:123b5b29930df53524de37ef1e84aee5a6a1a8ed922883b84d3cefe6c041f8e2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Nov 2018 04:55:53 GMT
ADD file:9a858b436088fe47b75fb9a4a9548f06cbab01c8b69bca6c3ca52153eb31c81a in / 
# Tue, 27 Nov 2018 04:55:53 GMT
CMD ["/bin/bash"]
# Tue, 27 Nov 2018 04:56:47 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/amzn2/srpm-bundle.20181114.tar.gz?versionId=nB5.4dIHFJSZqiKkbJWmAufA2zT96NtU"  && echo "9e69458ec7d3617a02584b64d77558c513253de6ef0d33b8efbd709430c6e14a /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:2cbe74538cb54cc9c69497b52b80f745cdf9360557e30d38f63906efdb6736b5`  
		Last Modified: Tue, 27 Nov 2018 04:58:23 GMT  
		Size: 61.2 MB (61246625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a9f987207cf9d259b636bbb1663acb54d8ce2e7554f3225b3227ee050321e5`  
		Last Modified: Tue, 27 Nov 2018 04:59:26 GMT  
		Size: 349.3 MB (349323441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
