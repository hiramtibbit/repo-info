<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `haskell`

-	[`haskell:8`](#haskell8)
-	[`haskell:8.4`](#haskell84)
-	[`haskell:8.4.4`](#haskell844)
-	[`haskell:8.6`](#haskell86)
-	[`haskell:8.6.2`](#haskell862)
-	[`haskell:latest`](#haskelllatest)

## `haskell:8`

```console
$ docker pull haskell@sha256:3b7b42c928433598fd4f18f310dc305c2db6a6434a9b1a96802c83a649f2bafb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haskell:8` - linux; amd64

```console
$ docker pull haskell@sha256:76492c46948944086d282647bb3c1651fb68dd4bc7eec8dc6fa49cc79f46dd95
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299095208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14ca52fda9f7d2dee8f4e58d0717db7aff0e4609d8f4c88f743d5bf3be56152d`
-	Default Command: `["ghci"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:44:58 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 01:46:03 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates dirmngr curl git &&     echo 'deb http://downloads.haskell.org/debian stretch main' > /etc/apt/sources.list.d/ghc.list &&     apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA3CBA3FFE22B574 &&     apt-get update &&     apt-get install -y --no-install-recommends ghc-8.6.2 cabal-install-2.4         zlib1g-dev libtinfo-dev libsqlite3-dev g++ netbase xz-utils make &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.9.1/stack-1.9.1-linux-x86_64.tar.gz -o stack.tar.gz &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.9.1/stack-1.9.1-linux-x86_64.tar.gz.asc -o stack.tar.gz.asc &&     apt-get purge -y --auto-remove curl &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys C5705533DA4F78D8664B5DC0575159689BEFB442 &&     gpg --batch --verify stack.tar.gz.asc stack.tar.gz &&     tar -xf stack.tar.gz -C /usr/local/bin --strip-components=1 &&     /usr/local/bin/stack config set system-ghc --global true &&     /usr/local/bin/stack config set install-ghc --global false &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* /stack.tar.gz.asc /stack.tar.gz
# Sat, 29 Dec 2018 01:46:04 GMT
ENV PATH=/root/.cabal/bin:/root/.local/bin:/opt/cabal/2.4/bin:/opt/ghc/8.6.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 01:46:05 GMT
CMD ["ghci"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241755f601115c7ac66da3788db679b3ba76f1dcf55d21a2786591a5bb6c32ac`  
		Last Modified: Sat, 29 Dec 2018 01:48:32 GMT  
		Size: 253.8 MB (253771416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haskell:8.4`

```console
$ docker pull haskell@sha256:2c8a0fa6d4874c0197c232b28b5098fe6ef507fa3757e4f1c4fa225f70ac5170
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haskell:8.4` - linux; amd64

```console
$ docker pull haskell@sha256:c11b7fe60ee8604af27c15f3d2a49fa3973ce388f8b75060981a3dc024de3baf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.8 MB (293766302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2add0a81eee47db535d0519955c77e00c895bed7382ee61d197ca8e97b23df4`
-	Default Command: `["ghci"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:44:58 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 01:47:14 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates dirmngr curl git &&     echo 'deb http://downloads.haskell.org/debian stretch main' > /etc/apt/sources.list.d/ghc.list &&     apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA3CBA3FFE22B574 &&     apt-get update &&     apt-get install -y --no-install-recommends ghc-8.4.4 cabal-install-2.4         zlib1g-dev libtinfo-dev libsqlite3-dev g++ netbase xz-utils make &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.9.1/stack-1.9.1-linux-x86_64.tar.gz -o stack.tar.gz &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.9.1/stack-1.9.1-linux-x86_64.tar.gz.asc -o stack.tar.gz.asc &&     apt-get purge -y --auto-remove curl &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys C5705533DA4F78D8664B5DC0575159689BEFB442 &&     gpg --batch --verify stack.tar.gz.asc stack.tar.gz &&     tar -xf stack.tar.gz -C /usr/local/bin --strip-components=1 &&     /usr/local/bin/stack config set system-ghc --global true &&     /usr/local/bin/stack config set install-ghc --global false &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* /stack.tar.gz.asc /stack.tar.gz
# Sat, 29 Dec 2018 01:47:15 GMT
ENV PATH=/root/.cabal/bin:/root/.local/bin:/opt/cabal/2.4/bin:/opt/ghc/8.4.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 01:47:16 GMT
CMD ["ghci"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de95198cd47bd934a662581314997852826f7796660a208ba275a74a414709d4`  
		Last Modified: Sat, 29 Dec 2018 01:49:41 GMT  
		Size: 248.4 MB (248442510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haskell:8.4.4`

```console
$ docker pull haskell@sha256:2c8a0fa6d4874c0197c232b28b5098fe6ef507fa3757e4f1c4fa225f70ac5170
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haskell:8.4.4` - linux; amd64

```console
$ docker pull haskell@sha256:c11b7fe60ee8604af27c15f3d2a49fa3973ce388f8b75060981a3dc024de3baf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.8 MB (293766302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2add0a81eee47db535d0519955c77e00c895bed7382ee61d197ca8e97b23df4`
-	Default Command: `["ghci"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:44:58 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 01:47:14 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates dirmngr curl git &&     echo 'deb http://downloads.haskell.org/debian stretch main' > /etc/apt/sources.list.d/ghc.list &&     apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA3CBA3FFE22B574 &&     apt-get update &&     apt-get install -y --no-install-recommends ghc-8.4.4 cabal-install-2.4         zlib1g-dev libtinfo-dev libsqlite3-dev g++ netbase xz-utils make &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.9.1/stack-1.9.1-linux-x86_64.tar.gz -o stack.tar.gz &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.9.1/stack-1.9.1-linux-x86_64.tar.gz.asc -o stack.tar.gz.asc &&     apt-get purge -y --auto-remove curl &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys C5705533DA4F78D8664B5DC0575159689BEFB442 &&     gpg --batch --verify stack.tar.gz.asc stack.tar.gz &&     tar -xf stack.tar.gz -C /usr/local/bin --strip-components=1 &&     /usr/local/bin/stack config set system-ghc --global true &&     /usr/local/bin/stack config set install-ghc --global false &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* /stack.tar.gz.asc /stack.tar.gz
# Sat, 29 Dec 2018 01:47:15 GMT
ENV PATH=/root/.cabal/bin:/root/.local/bin:/opt/cabal/2.4/bin:/opt/ghc/8.4.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 01:47:16 GMT
CMD ["ghci"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de95198cd47bd934a662581314997852826f7796660a208ba275a74a414709d4`  
		Last Modified: Sat, 29 Dec 2018 01:49:41 GMT  
		Size: 248.4 MB (248442510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haskell:8.6`

```console
$ docker pull haskell@sha256:3b7b42c928433598fd4f18f310dc305c2db6a6434a9b1a96802c83a649f2bafb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haskell:8.6` - linux; amd64

```console
$ docker pull haskell@sha256:76492c46948944086d282647bb3c1651fb68dd4bc7eec8dc6fa49cc79f46dd95
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299095208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14ca52fda9f7d2dee8f4e58d0717db7aff0e4609d8f4c88f743d5bf3be56152d`
-	Default Command: `["ghci"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:44:58 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 01:46:03 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates dirmngr curl git &&     echo 'deb http://downloads.haskell.org/debian stretch main' > /etc/apt/sources.list.d/ghc.list &&     apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA3CBA3FFE22B574 &&     apt-get update &&     apt-get install -y --no-install-recommends ghc-8.6.2 cabal-install-2.4         zlib1g-dev libtinfo-dev libsqlite3-dev g++ netbase xz-utils make &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.9.1/stack-1.9.1-linux-x86_64.tar.gz -o stack.tar.gz &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.9.1/stack-1.9.1-linux-x86_64.tar.gz.asc -o stack.tar.gz.asc &&     apt-get purge -y --auto-remove curl &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys C5705533DA4F78D8664B5DC0575159689BEFB442 &&     gpg --batch --verify stack.tar.gz.asc stack.tar.gz &&     tar -xf stack.tar.gz -C /usr/local/bin --strip-components=1 &&     /usr/local/bin/stack config set system-ghc --global true &&     /usr/local/bin/stack config set install-ghc --global false &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* /stack.tar.gz.asc /stack.tar.gz
# Sat, 29 Dec 2018 01:46:04 GMT
ENV PATH=/root/.cabal/bin:/root/.local/bin:/opt/cabal/2.4/bin:/opt/ghc/8.6.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 01:46:05 GMT
CMD ["ghci"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241755f601115c7ac66da3788db679b3ba76f1dcf55d21a2786591a5bb6c32ac`  
		Last Modified: Sat, 29 Dec 2018 01:48:32 GMT  
		Size: 253.8 MB (253771416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haskell:8.6.2`

```console
$ docker pull haskell@sha256:3b7b42c928433598fd4f18f310dc305c2db6a6434a9b1a96802c83a649f2bafb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haskell:8.6.2` - linux; amd64

```console
$ docker pull haskell@sha256:76492c46948944086d282647bb3c1651fb68dd4bc7eec8dc6fa49cc79f46dd95
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299095208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14ca52fda9f7d2dee8f4e58d0717db7aff0e4609d8f4c88f743d5bf3be56152d`
-	Default Command: `["ghci"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:44:58 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 01:46:03 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates dirmngr curl git &&     echo 'deb http://downloads.haskell.org/debian stretch main' > /etc/apt/sources.list.d/ghc.list &&     apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA3CBA3FFE22B574 &&     apt-get update &&     apt-get install -y --no-install-recommends ghc-8.6.2 cabal-install-2.4         zlib1g-dev libtinfo-dev libsqlite3-dev g++ netbase xz-utils make &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.9.1/stack-1.9.1-linux-x86_64.tar.gz -o stack.tar.gz &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.9.1/stack-1.9.1-linux-x86_64.tar.gz.asc -o stack.tar.gz.asc &&     apt-get purge -y --auto-remove curl &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys C5705533DA4F78D8664B5DC0575159689BEFB442 &&     gpg --batch --verify stack.tar.gz.asc stack.tar.gz &&     tar -xf stack.tar.gz -C /usr/local/bin --strip-components=1 &&     /usr/local/bin/stack config set system-ghc --global true &&     /usr/local/bin/stack config set install-ghc --global false &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* /stack.tar.gz.asc /stack.tar.gz
# Sat, 29 Dec 2018 01:46:04 GMT
ENV PATH=/root/.cabal/bin:/root/.local/bin:/opt/cabal/2.4/bin:/opt/ghc/8.6.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 01:46:05 GMT
CMD ["ghci"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241755f601115c7ac66da3788db679b3ba76f1dcf55d21a2786591a5bb6c32ac`  
		Last Modified: Sat, 29 Dec 2018 01:48:32 GMT  
		Size: 253.8 MB (253771416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haskell:latest`

```console
$ docker pull haskell@sha256:3b7b42c928433598fd4f18f310dc305c2db6a6434a9b1a96802c83a649f2bafb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haskell:latest` - linux; amd64

```console
$ docker pull haskell@sha256:76492c46948944086d282647bb3c1651fb68dd4bc7eec8dc6fa49cc79f46dd95
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299095208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14ca52fda9f7d2dee8f4e58d0717db7aff0e4609d8f4c88f743d5bf3be56152d`
-	Default Command: `["ghci"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:44:58 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 01:46:03 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates dirmngr curl git &&     echo 'deb http://downloads.haskell.org/debian stretch main' > /etc/apt/sources.list.d/ghc.list &&     apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA3CBA3FFE22B574 &&     apt-get update &&     apt-get install -y --no-install-recommends ghc-8.6.2 cabal-install-2.4         zlib1g-dev libtinfo-dev libsqlite3-dev g++ netbase xz-utils make &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.9.1/stack-1.9.1-linux-x86_64.tar.gz -o stack.tar.gz &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.9.1/stack-1.9.1-linux-x86_64.tar.gz.asc -o stack.tar.gz.asc &&     apt-get purge -y --auto-remove curl &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys C5705533DA4F78D8664B5DC0575159689BEFB442 &&     gpg --batch --verify stack.tar.gz.asc stack.tar.gz &&     tar -xf stack.tar.gz -C /usr/local/bin --strip-components=1 &&     /usr/local/bin/stack config set system-ghc --global true &&     /usr/local/bin/stack config set install-ghc --global false &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* /stack.tar.gz.asc /stack.tar.gz
# Sat, 29 Dec 2018 01:46:04 GMT
ENV PATH=/root/.cabal/bin:/root/.local/bin:/opt/cabal/2.4/bin:/opt/ghc/8.6.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 01:46:05 GMT
CMD ["ghci"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241755f601115c7ac66da3788db679b3ba76f1dcf55d21a2786591a5bb6c32ac`  
		Last Modified: Sat, 29 Dec 2018 01:48:32 GMT  
		Size: 253.8 MB (253771416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
