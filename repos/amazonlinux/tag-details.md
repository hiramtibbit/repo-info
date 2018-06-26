<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `amazonlinux`

-	[`amazonlinux:1`](#amazonlinux1)
-	[`amazonlinux:1-with-sources`](#amazonlinux1-with-sources)
-	[`amazonlinux:2`](#amazonlinux2)
-	[`amazonlinux:2018.03`](#amazonlinux201803)
-	[`amazonlinux:2018.03.0.20180622`](#amazonlinux201803020180622)
-	[`amazonlinux:2018.03.0.20180622-with-sources`](#amazonlinux201803020180622-with-sources)
-	[`amazonlinux:2018.03-with-sources`](#amazonlinux201803-with-sources)
-	[`amazonlinux:2.0.20180622.1`](#amazonlinux20201806221)
-	[`amazonlinux:2.0.20180622.1-with-sources`](#amazonlinux20201806221-with-sources)
-	[`amazonlinux:2-with-sources`](#amazonlinux2-with-sources)
-	[`amazonlinux:latest`](#amazonlinuxlatest)
-	[`amazonlinux:with-sources`](#amazonlinuxwith-sources)

## `amazonlinux:1`

```console
$ docker pull amazonlinux@sha256:4096960032ffc61c22c2328f2014b226937ccebbe7bca3c88bee46c7c4f6a595
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:1` - linux; amd64

```console
$ docker pull amazonlinux@sha256:814548a1b7b289722f5c7279b623aecca666c1680e3e172781fb9682104b7878
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.8 MB (61763897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2cc487dd20e7fd99905eee79880221e238d69aa020ac87d7d2f0b2bf826aa9c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 26 Jun 2018 20:22:57 GMT
ADD file:7692687159a4ccaa39cf388bf8c8fd8a6ef409079602a951e12601eba8146606 in / 
# Tue, 26 Jun 2018 20:22:57 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:28eb89314c9ec1667e99b2b7e999f7e6a4505685cb7c16aad2f4bb272a6c8f1b`  
		Last Modified: Tue, 26 Jun 2018 20:26:43 GMT  
		Size: 61.8 MB (61763897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:1-with-sources`

```console
$ docker pull amazonlinux@sha256:eb42658a166f60aedbebc5f242e932a81f96f3968d69101b6b408c26d48dc526
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:1-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:57bb20eed15648a52a85f2ba4f04f098262737c8adcc4a909c16697b3eba245a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.4 MB (353417136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5a4ea2ebf2e8cb9f3009ef6c2f1176ee0e27167a111e3154785c44bd608bd71`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 26 Jun 2018 20:22:57 GMT
ADD file:7692687159a4ccaa39cf388bf8c8fd8a6ef409079602a951e12601eba8146606 in / 
# Tue, 26 Jun 2018 20:22:57 GMT
CMD ["/bin/bash"]
# Tue, 26 Jun 2018 20:23:38 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle.tar.gz?versionId=TMSfeX5bVpqLoqjaGnsKXppJNyKOiXNz"  && echo "b673f0febfbf13a268de6561bfb24c7ab1018632b5d63879cb79a682b8752b36 /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:28eb89314c9ec1667e99b2b7e999f7e6a4505685cb7c16aad2f4bb272a6c8f1b`  
		Last Modified: Tue, 26 Jun 2018 20:26:43 GMT  
		Size: 61.8 MB (61763897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2caaf917ecfe3854d65befbfea158ee1e73e5f8a5ee7e4028017f31daf5fb4c`  
		Last Modified: Tue, 26 Jun 2018 20:27:53 GMT  
		Size: 291.7 MB (291653239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2`

```console
$ docker pull amazonlinux@sha256:802212e258f7b67b5754c795f17395937918b29629dd72af615b768f0fcb6cf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2` - linux; amd64

```console
$ docker pull amazonlinux@sha256:44eadbb7e7dd8123a74cc57c6dcc6412edeac8f1cc236f92f9cb668b78791d09
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61579417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:585cc50169e6e5998ab3b65f41ce05bc7cce84e5ed576fed6e5fcd561dddffa4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 26 Jun 2018 20:19:43 GMT
ADD file:ca0f640e054e97d91f8186edf6a867846f4abae5807a2cc2a1f77e5f327fbe68 in / 
# Tue, 26 Jun 2018 20:19:43 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:638b75f800bffbc01324705aed0754a00532dd051b57198af824d5e13ffb140b`  
		Last Modified: Tue, 26 Jun 2018 20:24:15 GMT  
		Size: 61.6 MB (61579417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2018.03`

```console
$ docker pull amazonlinux@sha256:4096960032ffc61c22c2328f2014b226937ccebbe7bca3c88bee46c7c4f6a595
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2018.03` - linux; amd64

```console
$ docker pull amazonlinux@sha256:814548a1b7b289722f5c7279b623aecca666c1680e3e172781fb9682104b7878
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.8 MB (61763897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2cc487dd20e7fd99905eee79880221e238d69aa020ac87d7d2f0b2bf826aa9c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 26 Jun 2018 20:22:57 GMT
ADD file:7692687159a4ccaa39cf388bf8c8fd8a6ef409079602a951e12601eba8146606 in / 
# Tue, 26 Jun 2018 20:22:57 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:28eb89314c9ec1667e99b2b7e999f7e6a4505685cb7c16aad2f4bb272a6c8f1b`  
		Last Modified: Tue, 26 Jun 2018 20:26:43 GMT  
		Size: 61.8 MB (61763897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2018.03.0.20180622`

```console
$ docker pull amazonlinux@sha256:4096960032ffc61c22c2328f2014b226937ccebbe7bca3c88bee46c7c4f6a595
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2018.03.0.20180622` - linux; amd64

```console
$ docker pull amazonlinux@sha256:814548a1b7b289722f5c7279b623aecca666c1680e3e172781fb9682104b7878
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.8 MB (61763897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2cc487dd20e7fd99905eee79880221e238d69aa020ac87d7d2f0b2bf826aa9c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 26 Jun 2018 20:22:57 GMT
ADD file:7692687159a4ccaa39cf388bf8c8fd8a6ef409079602a951e12601eba8146606 in / 
# Tue, 26 Jun 2018 20:22:57 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:28eb89314c9ec1667e99b2b7e999f7e6a4505685cb7c16aad2f4bb272a6c8f1b`  
		Last Modified: Tue, 26 Jun 2018 20:26:43 GMT  
		Size: 61.8 MB (61763897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2018.03.0.20180622-with-sources`

```console
$ docker pull amazonlinux@sha256:eb42658a166f60aedbebc5f242e932a81f96f3968d69101b6b408c26d48dc526
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2018.03.0.20180622-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:57bb20eed15648a52a85f2ba4f04f098262737c8adcc4a909c16697b3eba245a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.4 MB (353417136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5a4ea2ebf2e8cb9f3009ef6c2f1176ee0e27167a111e3154785c44bd608bd71`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 26 Jun 2018 20:22:57 GMT
ADD file:7692687159a4ccaa39cf388bf8c8fd8a6ef409079602a951e12601eba8146606 in / 
# Tue, 26 Jun 2018 20:22:57 GMT
CMD ["/bin/bash"]
# Tue, 26 Jun 2018 20:23:38 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle.tar.gz?versionId=TMSfeX5bVpqLoqjaGnsKXppJNyKOiXNz"  && echo "b673f0febfbf13a268de6561bfb24c7ab1018632b5d63879cb79a682b8752b36 /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:28eb89314c9ec1667e99b2b7e999f7e6a4505685cb7c16aad2f4bb272a6c8f1b`  
		Last Modified: Tue, 26 Jun 2018 20:26:43 GMT  
		Size: 61.8 MB (61763897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2caaf917ecfe3854d65befbfea158ee1e73e5f8a5ee7e4028017f31daf5fb4c`  
		Last Modified: Tue, 26 Jun 2018 20:27:53 GMT  
		Size: 291.7 MB (291653239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2018.03-with-sources`

```console
$ docker pull amazonlinux@sha256:eb42658a166f60aedbebc5f242e932a81f96f3968d69101b6b408c26d48dc526
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2018.03-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:57bb20eed15648a52a85f2ba4f04f098262737c8adcc4a909c16697b3eba245a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.4 MB (353417136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5a4ea2ebf2e8cb9f3009ef6c2f1176ee0e27167a111e3154785c44bd608bd71`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 26 Jun 2018 20:22:57 GMT
ADD file:7692687159a4ccaa39cf388bf8c8fd8a6ef409079602a951e12601eba8146606 in / 
# Tue, 26 Jun 2018 20:22:57 GMT
CMD ["/bin/bash"]
# Tue, 26 Jun 2018 20:23:38 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle.tar.gz?versionId=TMSfeX5bVpqLoqjaGnsKXppJNyKOiXNz"  && echo "b673f0febfbf13a268de6561bfb24c7ab1018632b5d63879cb79a682b8752b36 /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:28eb89314c9ec1667e99b2b7e999f7e6a4505685cb7c16aad2f4bb272a6c8f1b`  
		Last Modified: Tue, 26 Jun 2018 20:26:43 GMT  
		Size: 61.8 MB (61763897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2caaf917ecfe3854d65befbfea158ee1e73e5f8a5ee7e4028017f31daf5fb4c`  
		Last Modified: Tue, 26 Jun 2018 20:27:53 GMT  
		Size: 291.7 MB (291653239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2.0.20180622.1`

```console
$ docker pull amazonlinux@sha256:802212e258f7b67b5754c795f17395937918b29629dd72af615b768f0fcb6cf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2.0.20180622.1` - linux; amd64

```console
$ docker pull amazonlinux@sha256:44eadbb7e7dd8123a74cc57c6dcc6412edeac8f1cc236f92f9cb668b78791d09
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61579417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:585cc50169e6e5998ab3b65f41ce05bc7cce84e5ed576fed6e5fcd561dddffa4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 26 Jun 2018 20:19:43 GMT
ADD file:ca0f640e054e97d91f8186edf6a867846f4abae5807a2cc2a1f77e5f327fbe68 in / 
# Tue, 26 Jun 2018 20:19:43 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:638b75f800bffbc01324705aed0754a00532dd051b57198af824d5e13ffb140b`  
		Last Modified: Tue, 26 Jun 2018 20:24:15 GMT  
		Size: 61.6 MB (61579417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2.0.20180622.1-with-sources`

```console
$ docker pull amazonlinux@sha256:636996e81ff1cc9fb4d9767cb298ccc107968f8d1ae24c65779a2c9e01a3eff6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2.0.20180622.1-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:4bad794659849c762f3f38f4b23906835760a218775c8e153bf541ab8bcf0943
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **378.5 MB (378461573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a06c45f7e6d060f5c2891a89b131750bfaf9027a700665853aa55418ff635fe5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 26 Jun 2018 20:19:43 GMT
ADD file:ca0f640e054e97d91f8186edf6a867846f4abae5807a2cc2a1f77e5f327fbe68 in / 
# Tue, 26 Jun 2018 20:19:43 GMT
CMD ["/bin/bash"]
# Tue, 26 Jun 2018 20:20:09 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/amzn2/srpm-bundle.tar.gz?versionId=rQgURY_SYHqkLFRiaPqzhE7GEJw5liK."  && echo "58ddcb36c2bb04995ff9c40d3e102e9137871fc7f13b075c34cefaf0fc516e16 /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:638b75f800bffbc01324705aed0754a00532dd051b57198af824d5e13ffb140b`  
		Last Modified: Tue, 26 Jun 2018 20:24:15 GMT  
		Size: 61.6 MB (61579417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:962be92ee2d17e63edd1634b7312aab7818855929cc7358002953210598c3646`  
		Last Modified: Tue, 26 Jun 2018 20:25:30 GMT  
		Size: 316.9 MB (316882156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2-with-sources`

```console
$ docker pull amazonlinux@sha256:636996e81ff1cc9fb4d9767cb298ccc107968f8d1ae24c65779a2c9e01a3eff6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:4bad794659849c762f3f38f4b23906835760a218775c8e153bf541ab8bcf0943
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **378.5 MB (378461573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a06c45f7e6d060f5c2891a89b131750bfaf9027a700665853aa55418ff635fe5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 26 Jun 2018 20:19:43 GMT
ADD file:ca0f640e054e97d91f8186edf6a867846f4abae5807a2cc2a1f77e5f327fbe68 in / 
# Tue, 26 Jun 2018 20:19:43 GMT
CMD ["/bin/bash"]
# Tue, 26 Jun 2018 20:20:09 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/amzn2/srpm-bundle.tar.gz?versionId=rQgURY_SYHqkLFRiaPqzhE7GEJw5liK."  && echo "58ddcb36c2bb04995ff9c40d3e102e9137871fc7f13b075c34cefaf0fc516e16 /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:638b75f800bffbc01324705aed0754a00532dd051b57198af824d5e13ffb140b`  
		Last Modified: Tue, 26 Jun 2018 20:24:15 GMT  
		Size: 61.6 MB (61579417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:962be92ee2d17e63edd1634b7312aab7818855929cc7358002953210598c3646`  
		Last Modified: Tue, 26 Jun 2018 20:25:30 GMT  
		Size: 316.9 MB (316882156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:latest`

```console
$ docker pull amazonlinux@sha256:802212e258f7b67b5754c795f17395937918b29629dd72af615b768f0fcb6cf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:latest` - linux; amd64

```console
$ docker pull amazonlinux@sha256:44eadbb7e7dd8123a74cc57c6dcc6412edeac8f1cc236f92f9cb668b78791d09
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61579417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:585cc50169e6e5998ab3b65f41ce05bc7cce84e5ed576fed6e5fcd561dddffa4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 26 Jun 2018 20:19:43 GMT
ADD file:ca0f640e054e97d91f8186edf6a867846f4abae5807a2cc2a1f77e5f327fbe68 in / 
# Tue, 26 Jun 2018 20:19:43 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:638b75f800bffbc01324705aed0754a00532dd051b57198af824d5e13ffb140b`  
		Last Modified: Tue, 26 Jun 2018 20:24:15 GMT  
		Size: 61.6 MB (61579417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:with-sources`

```console
$ docker pull amazonlinux@sha256:636996e81ff1cc9fb4d9767cb298ccc107968f8d1ae24c65779a2c9e01a3eff6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:4bad794659849c762f3f38f4b23906835760a218775c8e153bf541ab8bcf0943
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **378.5 MB (378461573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a06c45f7e6d060f5c2891a89b131750bfaf9027a700665853aa55418ff635fe5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 26 Jun 2018 20:19:43 GMT
ADD file:ca0f640e054e97d91f8186edf6a867846f4abae5807a2cc2a1f77e5f327fbe68 in / 
# Tue, 26 Jun 2018 20:19:43 GMT
CMD ["/bin/bash"]
# Tue, 26 Jun 2018 20:20:09 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/amzn2/srpm-bundle.tar.gz?versionId=rQgURY_SYHqkLFRiaPqzhE7GEJw5liK."  && echo "58ddcb36c2bb04995ff9c40d3e102e9137871fc7f13b075c34cefaf0fc516e16 /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:638b75f800bffbc01324705aed0754a00532dd051b57198af824d5e13ffb140b`  
		Last Modified: Tue, 26 Jun 2018 20:24:15 GMT  
		Size: 61.6 MB (61579417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:962be92ee2d17e63edd1634b7312aab7818855929cc7358002953210598c3646`  
		Last Modified: Tue, 26 Jun 2018 20:25:30 GMT  
		Size: 316.9 MB (316882156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
