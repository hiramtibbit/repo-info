<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `registry`

-	[`registry:2`](#registry2)
-	[`registry:2.5`](#registry25)
-	[`registry:2.5.2`](#registry252)
-	[`registry:2.6`](#registry26)
-	[`registry:2.6.2`](#registry262)
-	[`registry:latest`](#registrylatest)

## `registry:2`

```console
$ docker pull registry@sha256:5a156ff125e5a12ac7fdec2b90b7e2ae5120fa249cf62248337b6d04abc574c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `registry:2` - linux; amd64

```console
$ docker pull registry@sha256:a25e4660ed5226bdb59a5e555083e08ded157b1218282840e55d25add0223390
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10688384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e2f252f3c88679f1207d87d57c07af6819a1a17e22573bcef32804122d2f305`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Tue, 11 Sep 2018 22:20:45 GMT
ADD file:4b806a0c031f19a4609ebde02464b2139efebfdf9f5d1bba13cf1c316938530d in / 
# Tue, 11 Sep 2018 22:20:45 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:24:50 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Wed, 12 Sep 2018 03:24:51 GMT
COPY file:b99d4fe47ad1addf0e8f244236e05177f3bfe9eb3ddd59f08b67b2612d77c621 in /bin/registry 
# Wed, 12 Sep 2018 03:24:51 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Wed, 12 Sep 2018 03:24:51 GMT
VOLUME [/var/lib/registry]
# Wed, 12 Sep 2018 03:24:51 GMT
EXPOSE 5000/tcp
# Wed, 12 Sep 2018 03:24:51 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Wed, 12 Sep 2018 03:24:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 12 Sep 2018 03:24:52 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:d6a5679aa3cfc52503fac8e2345790783537564df5af43355ec662d7703aacbf`  
		Last Modified: Tue, 11 Sep 2018 22:22:09 GMT  
		Size: 2.4 MB (2387846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0eac849f8f2014e20df11d611e4453c94a365a71eb3a90f02d8500391e1787`  
		Last Modified: Wed, 12 Sep 2018 03:25:16 GMT  
		Size: 2.0 MB (2034577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2261ba058a15e3f21a467b1b02ea206d40cf0632d6b1aeee2ad200b662ed4aff`  
		Last Modified: Wed, 12 Sep 2018 03:25:17 GMT  
		Size: 6.3 MB (6265380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f296fda86f10cfcb81d60d5bcb47a7784a8ec4876d6eac7fabd51f2a7e8694aa`  
		Last Modified: Wed, 12 Sep 2018 03:25:15 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd4a541795bb9981999ce8f6e2e1c92e55b0041256153d2458ff35fb9381063`  
		Last Modified: Wed, 12 Sep 2018 03:25:15 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:2.5`

```console
$ docker pull registry@sha256:0b65251ef8c94a615811d0aad6860541fc1ebf5b2ab4818c8f73cfd46ce70845
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `registry:2.5` - linux; amd64

```console
$ docker pull registry@sha256:639e8347f25b81bcd81e86a8732b583f0bd8f86e815e2caabbf6537f3881e1b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11214689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96ca477b7e56df37d45f02024f95abfd949a0d200e8c750f011d661bd74f5999`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Tue, 11 Sep 2018 22:20:45 GMT
ADD file:4b806a0c031f19a4609ebde02464b2139efebfdf9f5d1bba13cf1c316938530d in / 
# Tue, 11 Sep 2018 22:20:45 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:24:50 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Wed, 12 Sep 2018 03:24:59 GMT
COPY file:364dadf6b930d66cd0070df853eb93466796bc507fdba9bcba04e82476f55687 in /bin/registry 
# Wed, 12 Sep 2018 03:25:00 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Wed, 12 Sep 2018 03:25:00 GMT
VOLUME [/var/lib/registry]
# Wed, 12 Sep 2018 03:25:00 GMT
EXPOSE 5000/tcp
# Wed, 12 Sep 2018 03:25:00 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Wed, 12 Sep 2018 03:25:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 12 Sep 2018 03:25:01 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:d6a5679aa3cfc52503fac8e2345790783537564df5af43355ec662d7703aacbf`  
		Last Modified: Tue, 11 Sep 2018 22:22:09 GMT  
		Size: 2.4 MB (2387846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0eac849f8f2014e20df11d611e4453c94a365a71eb3a90f02d8500391e1787`  
		Last Modified: Wed, 12 Sep 2018 03:25:16 GMT  
		Size: 2.0 MB (2034577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f5386a102d125596bfd0bf24ef9a4dc99977cc6d12a01bcd25470398a999a3`  
		Last Modified: Wed, 12 Sep 2018 03:25:42 GMT  
		Size: 6.8 MB (6791683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2ef3cf42bec2fe034fa4e470dffc745cc8710d538f24ec04c7ddeb7102dc9d`  
		Last Modified: Wed, 12 Sep 2018 03:25:40 GMT  
		Size: 370.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a52e70d7550df3fa38f5a0ff6eeebdd03aa22a88a633388b79a48fa03260c3`  
		Last Modified: Wed, 12 Sep 2018 03:25:39 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:2.5.2`

```console
$ docker pull registry@sha256:0b65251ef8c94a615811d0aad6860541fc1ebf5b2ab4818c8f73cfd46ce70845
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `registry:2.5.2` - linux; amd64

```console
$ docker pull registry@sha256:639e8347f25b81bcd81e86a8732b583f0bd8f86e815e2caabbf6537f3881e1b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11214689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96ca477b7e56df37d45f02024f95abfd949a0d200e8c750f011d661bd74f5999`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Tue, 11 Sep 2018 22:20:45 GMT
ADD file:4b806a0c031f19a4609ebde02464b2139efebfdf9f5d1bba13cf1c316938530d in / 
# Tue, 11 Sep 2018 22:20:45 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:24:50 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Wed, 12 Sep 2018 03:24:59 GMT
COPY file:364dadf6b930d66cd0070df853eb93466796bc507fdba9bcba04e82476f55687 in /bin/registry 
# Wed, 12 Sep 2018 03:25:00 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Wed, 12 Sep 2018 03:25:00 GMT
VOLUME [/var/lib/registry]
# Wed, 12 Sep 2018 03:25:00 GMT
EXPOSE 5000/tcp
# Wed, 12 Sep 2018 03:25:00 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Wed, 12 Sep 2018 03:25:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 12 Sep 2018 03:25:01 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:d6a5679aa3cfc52503fac8e2345790783537564df5af43355ec662d7703aacbf`  
		Last Modified: Tue, 11 Sep 2018 22:22:09 GMT  
		Size: 2.4 MB (2387846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0eac849f8f2014e20df11d611e4453c94a365a71eb3a90f02d8500391e1787`  
		Last Modified: Wed, 12 Sep 2018 03:25:16 GMT  
		Size: 2.0 MB (2034577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f5386a102d125596bfd0bf24ef9a4dc99977cc6d12a01bcd25470398a999a3`  
		Last Modified: Wed, 12 Sep 2018 03:25:42 GMT  
		Size: 6.8 MB (6791683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2ef3cf42bec2fe034fa4e470dffc745cc8710d538f24ec04c7ddeb7102dc9d`  
		Last Modified: Wed, 12 Sep 2018 03:25:40 GMT  
		Size: 370.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a52e70d7550df3fa38f5a0ff6eeebdd03aa22a88a633388b79a48fa03260c3`  
		Last Modified: Wed, 12 Sep 2018 03:25:39 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:2.6`

```console
$ docker pull registry@sha256:5a156ff125e5a12ac7fdec2b90b7e2ae5120fa249cf62248337b6d04abc574c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `registry:2.6` - linux; amd64

```console
$ docker pull registry@sha256:a25e4660ed5226bdb59a5e555083e08ded157b1218282840e55d25add0223390
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10688384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e2f252f3c88679f1207d87d57c07af6819a1a17e22573bcef32804122d2f305`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Tue, 11 Sep 2018 22:20:45 GMT
ADD file:4b806a0c031f19a4609ebde02464b2139efebfdf9f5d1bba13cf1c316938530d in / 
# Tue, 11 Sep 2018 22:20:45 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:24:50 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Wed, 12 Sep 2018 03:24:51 GMT
COPY file:b99d4fe47ad1addf0e8f244236e05177f3bfe9eb3ddd59f08b67b2612d77c621 in /bin/registry 
# Wed, 12 Sep 2018 03:24:51 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Wed, 12 Sep 2018 03:24:51 GMT
VOLUME [/var/lib/registry]
# Wed, 12 Sep 2018 03:24:51 GMT
EXPOSE 5000/tcp
# Wed, 12 Sep 2018 03:24:51 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Wed, 12 Sep 2018 03:24:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 12 Sep 2018 03:24:52 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:d6a5679aa3cfc52503fac8e2345790783537564df5af43355ec662d7703aacbf`  
		Last Modified: Tue, 11 Sep 2018 22:22:09 GMT  
		Size: 2.4 MB (2387846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0eac849f8f2014e20df11d611e4453c94a365a71eb3a90f02d8500391e1787`  
		Last Modified: Wed, 12 Sep 2018 03:25:16 GMT  
		Size: 2.0 MB (2034577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2261ba058a15e3f21a467b1b02ea206d40cf0632d6b1aeee2ad200b662ed4aff`  
		Last Modified: Wed, 12 Sep 2018 03:25:17 GMT  
		Size: 6.3 MB (6265380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f296fda86f10cfcb81d60d5bcb47a7784a8ec4876d6eac7fabd51f2a7e8694aa`  
		Last Modified: Wed, 12 Sep 2018 03:25:15 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd4a541795bb9981999ce8f6e2e1c92e55b0041256153d2458ff35fb9381063`  
		Last Modified: Wed, 12 Sep 2018 03:25:15 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:2.6.2`

```console
$ docker pull registry@sha256:5a156ff125e5a12ac7fdec2b90b7e2ae5120fa249cf62248337b6d04abc574c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `registry:2.6.2` - linux; amd64

```console
$ docker pull registry@sha256:a25e4660ed5226bdb59a5e555083e08ded157b1218282840e55d25add0223390
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10688384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e2f252f3c88679f1207d87d57c07af6819a1a17e22573bcef32804122d2f305`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Tue, 11 Sep 2018 22:20:45 GMT
ADD file:4b806a0c031f19a4609ebde02464b2139efebfdf9f5d1bba13cf1c316938530d in / 
# Tue, 11 Sep 2018 22:20:45 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:24:50 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Wed, 12 Sep 2018 03:24:51 GMT
COPY file:b99d4fe47ad1addf0e8f244236e05177f3bfe9eb3ddd59f08b67b2612d77c621 in /bin/registry 
# Wed, 12 Sep 2018 03:24:51 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Wed, 12 Sep 2018 03:24:51 GMT
VOLUME [/var/lib/registry]
# Wed, 12 Sep 2018 03:24:51 GMT
EXPOSE 5000/tcp
# Wed, 12 Sep 2018 03:24:51 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Wed, 12 Sep 2018 03:24:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 12 Sep 2018 03:24:52 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:d6a5679aa3cfc52503fac8e2345790783537564df5af43355ec662d7703aacbf`  
		Last Modified: Tue, 11 Sep 2018 22:22:09 GMT  
		Size: 2.4 MB (2387846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0eac849f8f2014e20df11d611e4453c94a365a71eb3a90f02d8500391e1787`  
		Last Modified: Wed, 12 Sep 2018 03:25:16 GMT  
		Size: 2.0 MB (2034577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2261ba058a15e3f21a467b1b02ea206d40cf0632d6b1aeee2ad200b662ed4aff`  
		Last Modified: Wed, 12 Sep 2018 03:25:17 GMT  
		Size: 6.3 MB (6265380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f296fda86f10cfcb81d60d5bcb47a7784a8ec4876d6eac7fabd51f2a7e8694aa`  
		Last Modified: Wed, 12 Sep 2018 03:25:15 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd4a541795bb9981999ce8f6e2e1c92e55b0041256153d2458ff35fb9381063`  
		Last Modified: Wed, 12 Sep 2018 03:25:15 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:latest`

```console
$ docker pull registry@sha256:51bb55f23ef7e25ac9b8313b139a8dd45baa832943c8ad8f7da2ddad6355b3c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `registry:latest` - linux; amd64

```console
$ docker pull registry@sha256:003a106b827ab7f5bd7140d08020b16c87cd6bcac024b01fe6247f87632f2978
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10688122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2b03e9146e1c7197e63f67d0d48b87b2b18a6e40660f9d89e6d0b450b6bfa38`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Fri, 06 Jul 2018 14:15:48 GMT
ADD file:3861bd6a79d134647f9f78098d7f8a3612e6e848284806eea9b3ca4ca23d8686 in / 
# Fri, 06 Jul 2018 14:15:49 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 17:33:32 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Fri, 06 Jul 2018 17:33:33 GMT
COPY file:b99d4fe47ad1addf0e8f244236e05177f3bfe9eb3ddd59f08b67b2612d77c621 in /bin/registry 
# Fri, 06 Jul 2018 17:33:33 GMT
COPY file:6c4758d509045dc45381fa2df2e7ffcc661afcaa29805c75f8f1976f2b016db8 in /etc/docker/registry/config.yml 
# Fri, 06 Jul 2018 17:33:33 GMT
VOLUME [/var/lib/registry]
# Fri, 06 Jul 2018 17:33:33 GMT
EXPOSE 5000/tcp
# Fri, 06 Jul 2018 17:33:34 GMT
COPY file:7b57f7ab1a8cf85c00768560fffc926543a60c9c9f7a2b172767dcc9a3203394 in /entrypoint.sh 
# Fri, 06 Jul 2018 17:33:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 06 Jul 2018 17:33:34 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:4064ffdc82fe2f815e6146dcdb37e8ca22376aea17a5ec58d123fe7070377fb6`  
		Last Modified: Fri, 06 Jul 2018 14:18:31 GMT  
		Size: 2.4 MB (2387548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12c92d1c5a2fec5b403f1d5ec99581ba59ce8a02c70dc33c99fc9942dd3cdf4`  
		Last Modified: Fri, 06 Jul 2018 17:34:04 GMT  
		Size: 2.0 MB (2034613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fbc9b6835ccfc8e16ee295fc638252837ff1d632334cdcfa30260f6a04b3a8d`  
		Last Modified: Fri, 06 Jul 2018 17:34:04 GMT  
		Size: 6.3 MB (6265381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:765973b0f65f59c7bc3139003337264d9f6c69938b94a05035a2c4e64f41d5fb`  
		Last Modified: Fri, 06 Jul 2018 17:34:01 GMT  
		Size: 367.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3968771a7c3a46c6125f63e8ce2a5a627d2c6fc4e4dc7eb4a9590fc53bd0b072`  
		Last Modified: Fri, 06 Jul 2018 17:34:02 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
