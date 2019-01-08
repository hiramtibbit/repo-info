<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `haskell`

-	[`haskell:8`](#haskell8)
-	[`haskell:8.4`](#haskell84)
-	[`haskell:8.4.4`](#haskell844)
-	[`haskell:8.6`](#haskell86)
-	[`haskell:8.6.3`](#haskell863)
-	[`haskell:latest`](#haskelllatest)

## `haskell:8`

```console
$ docker pull haskell@sha256:03aa833125216c59b4480bc400d6eba33082c2388f4218049deb5bcb3ad82dfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haskell:8` - linux; amd64

```console
$ docker pull haskell@sha256:580f7577ac2c896beac83b02bc5401e1dc5fa56178f2f76afb5f307830eff78d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.3 MB (301310609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:452ae7d0c5d2475ff2ef67b231b759131cb1d12554d1b24d7aa793ed4b4213aa`
-	Default Command: `["ghci"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:44:58 GMT
ENV LANG=C.UTF-8
# Mon, 07 Jan 2019 21:22:33 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates dirmngr curl git &&     echo 'deb http://downloads.haskell.org/debian stretch main' > /etc/apt/sources.list.d/ghc.list &&     apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA3CBA3FFE22B574 &&     apt-get update &&     apt-get install -y --no-install-recommends ghc-8.6.3 cabal-install-2.4         zlib1g-dev libtinfo-dev libsqlite3-dev g++ netbase xz-utils make &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.9.1/stack-1.9.1-linux-x86_64.tar.gz -o stack.tar.gz &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.9.1/stack-1.9.1-linux-x86_64.tar.gz.asc -o stack.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys C5705533DA4F78D8664B5DC0575159689BEFB442 &&     gpg --batch --verify stack.tar.gz.asc stack.tar.gz &&     tar -xf stack.tar.gz -C /usr/local/bin --strip-components=1 &&     /usr/local/bin/stack config set system-ghc --global true &&     /usr/local/bin/stack config set install-ghc --global false &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* /stack.tar.gz.asc /stack.tar.gz
# Mon, 07 Jan 2019 21:22:34 GMT
ENV PATH=/root/.cabal/bin:/root/.local/bin:/opt/cabal/2.4/bin:/opt/ghc/8.6.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 07 Jan 2019 21:22:34 GMT
CMD ["ghci"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770a9c2f82ce5f7d44ddcfef8c49e48e165593365474fded44380ce5958296b8`  
		Last Modified: Mon, 07 Jan 2019 21:24:42 GMT  
		Size: 256.0 MB (255986817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haskell:8.4`

```console
$ docker pull haskell@sha256:68d6725d50d9ee0eb1fc46b87ec3b6f7a21bf1fc89d9494512f6a0109a70ae58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haskell:8.4` - linux; amd64

```console
$ docker pull haskell@sha256:212c7a4569bba6386c06057dfacee4a71b70b8267cead32f08bb4b5dffa35acc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.9 MB (295935465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c46d5c45a46d2b12a8037787b4e1bdb11b3dae17b42b4b32c03805aaa557bb68`
-	Default Command: `["ghci"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:44:58 GMT
ENV LANG=C.UTF-8
# Mon, 07 Jan 2019 21:23:36 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates dirmngr curl git &&     echo 'deb http://downloads.haskell.org/debian stretch main' > /etc/apt/sources.list.d/ghc.list &&     apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA3CBA3FFE22B574 &&     apt-get update &&     apt-get install -y --no-install-recommends ghc-8.4.4 cabal-install-2.4         zlib1g-dev libtinfo-dev libsqlite3-dev g++ netbase xz-utils make &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.9.1/stack-1.9.1-linux-x86_64.tar.gz -o stack.tar.gz &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.9.1/stack-1.9.1-linux-x86_64.tar.gz.asc -o stack.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys C5705533DA4F78D8664B5DC0575159689BEFB442 &&     gpg --batch --verify stack.tar.gz.asc stack.tar.gz &&     tar -xf stack.tar.gz -C /usr/local/bin --strip-components=1 &&     /usr/local/bin/stack config set system-ghc --global true &&     /usr/local/bin/stack config set install-ghc --global false &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* /stack.tar.gz.asc /stack.tar.gz
# Mon, 07 Jan 2019 21:23:37 GMT
ENV PATH=/root/.cabal/bin:/root/.local/bin:/opt/cabal/2.4/bin:/opt/ghc/8.4.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 07 Jan 2019 21:23:37 GMT
CMD ["ghci"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9495e6b3a9a58c686fbe47b37a79ac40ff42092bfcd0831f77b0f1b21dc46ce8`  
		Last Modified: Mon, 07 Jan 2019 21:25:49 GMT  
		Size: 250.6 MB (250611673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haskell:8.4.4`

```console
$ docker pull haskell@sha256:68d6725d50d9ee0eb1fc46b87ec3b6f7a21bf1fc89d9494512f6a0109a70ae58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haskell:8.4.4` - linux; amd64

```console
$ docker pull haskell@sha256:212c7a4569bba6386c06057dfacee4a71b70b8267cead32f08bb4b5dffa35acc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.9 MB (295935465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c46d5c45a46d2b12a8037787b4e1bdb11b3dae17b42b4b32c03805aaa557bb68`
-	Default Command: `["ghci"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:44:58 GMT
ENV LANG=C.UTF-8
# Mon, 07 Jan 2019 21:23:36 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates dirmngr curl git &&     echo 'deb http://downloads.haskell.org/debian stretch main' > /etc/apt/sources.list.d/ghc.list &&     apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA3CBA3FFE22B574 &&     apt-get update &&     apt-get install -y --no-install-recommends ghc-8.4.4 cabal-install-2.4         zlib1g-dev libtinfo-dev libsqlite3-dev g++ netbase xz-utils make &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.9.1/stack-1.9.1-linux-x86_64.tar.gz -o stack.tar.gz &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.9.1/stack-1.9.1-linux-x86_64.tar.gz.asc -o stack.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys C5705533DA4F78D8664B5DC0575159689BEFB442 &&     gpg --batch --verify stack.tar.gz.asc stack.tar.gz &&     tar -xf stack.tar.gz -C /usr/local/bin --strip-components=1 &&     /usr/local/bin/stack config set system-ghc --global true &&     /usr/local/bin/stack config set install-ghc --global false &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* /stack.tar.gz.asc /stack.tar.gz
# Mon, 07 Jan 2019 21:23:37 GMT
ENV PATH=/root/.cabal/bin:/root/.local/bin:/opt/cabal/2.4/bin:/opt/ghc/8.4.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 07 Jan 2019 21:23:37 GMT
CMD ["ghci"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9495e6b3a9a58c686fbe47b37a79ac40ff42092bfcd0831f77b0f1b21dc46ce8`  
		Last Modified: Mon, 07 Jan 2019 21:25:49 GMT  
		Size: 250.6 MB (250611673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haskell:8.6`

```console
$ docker pull haskell@sha256:03aa833125216c59b4480bc400d6eba33082c2388f4218049deb5bcb3ad82dfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haskell:8.6` - linux; amd64

```console
$ docker pull haskell@sha256:580f7577ac2c896beac83b02bc5401e1dc5fa56178f2f76afb5f307830eff78d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.3 MB (301310609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:452ae7d0c5d2475ff2ef67b231b759131cb1d12554d1b24d7aa793ed4b4213aa`
-	Default Command: `["ghci"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:44:58 GMT
ENV LANG=C.UTF-8
# Mon, 07 Jan 2019 21:22:33 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates dirmngr curl git &&     echo 'deb http://downloads.haskell.org/debian stretch main' > /etc/apt/sources.list.d/ghc.list &&     apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA3CBA3FFE22B574 &&     apt-get update &&     apt-get install -y --no-install-recommends ghc-8.6.3 cabal-install-2.4         zlib1g-dev libtinfo-dev libsqlite3-dev g++ netbase xz-utils make &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.9.1/stack-1.9.1-linux-x86_64.tar.gz -o stack.tar.gz &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.9.1/stack-1.9.1-linux-x86_64.tar.gz.asc -o stack.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys C5705533DA4F78D8664B5DC0575159689BEFB442 &&     gpg --batch --verify stack.tar.gz.asc stack.tar.gz &&     tar -xf stack.tar.gz -C /usr/local/bin --strip-components=1 &&     /usr/local/bin/stack config set system-ghc --global true &&     /usr/local/bin/stack config set install-ghc --global false &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* /stack.tar.gz.asc /stack.tar.gz
# Mon, 07 Jan 2019 21:22:34 GMT
ENV PATH=/root/.cabal/bin:/root/.local/bin:/opt/cabal/2.4/bin:/opt/ghc/8.6.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 07 Jan 2019 21:22:34 GMT
CMD ["ghci"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770a9c2f82ce5f7d44ddcfef8c49e48e165593365474fded44380ce5958296b8`  
		Last Modified: Mon, 07 Jan 2019 21:24:42 GMT  
		Size: 256.0 MB (255986817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haskell:8.6.3`

```console
$ docker pull haskell@sha256:03aa833125216c59b4480bc400d6eba33082c2388f4218049deb5bcb3ad82dfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haskell:8.6.3` - linux; amd64

```console
$ docker pull haskell@sha256:580f7577ac2c896beac83b02bc5401e1dc5fa56178f2f76afb5f307830eff78d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.3 MB (301310609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:452ae7d0c5d2475ff2ef67b231b759131cb1d12554d1b24d7aa793ed4b4213aa`
-	Default Command: `["ghci"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:44:58 GMT
ENV LANG=C.UTF-8
# Mon, 07 Jan 2019 21:22:33 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates dirmngr curl git &&     echo 'deb http://downloads.haskell.org/debian stretch main' > /etc/apt/sources.list.d/ghc.list &&     apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA3CBA3FFE22B574 &&     apt-get update &&     apt-get install -y --no-install-recommends ghc-8.6.3 cabal-install-2.4         zlib1g-dev libtinfo-dev libsqlite3-dev g++ netbase xz-utils make &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.9.1/stack-1.9.1-linux-x86_64.tar.gz -o stack.tar.gz &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.9.1/stack-1.9.1-linux-x86_64.tar.gz.asc -o stack.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys C5705533DA4F78D8664B5DC0575159689BEFB442 &&     gpg --batch --verify stack.tar.gz.asc stack.tar.gz &&     tar -xf stack.tar.gz -C /usr/local/bin --strip-components=1 &&     /usr/local/bin/stack config set system-ghc --global true &&     /usr/local/bin/stack config set install-ghc --global false &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* /stack.tar.gz.asc /stack.tar.gz
# Mon, 07 Jan 2019 21:22:34 GMT
ENV PATH=/root/.cabal/bin:/root/.local/bin:/opt/cabal/2.4/bin:/opt/ghc/8.6.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 07 Jan 2019 21:22:34 GMT
CMD ["ghci"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770a9c2f82ce5f7d44ddcfef8c49e48e165593365474fded44380ce5958296b8`  
		Last Modified: Mon, 07 Jan 2019 21:24:42 GMT  
		Size: 256.0 MB (255986817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haskell:latest`

```console
$ docker pull haskell@sha256:03aa833125216c59b4480bc400d6eba33082c2388f4218049deb5bcb3ad82dfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haskell:latest` - linux; amd64

```console
$ docker pull haskell@sha256:580f7577ac2c896beac83b02bc5401e1dc5fa56178f2f76afb5f307830eff78d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.3 MB (301310609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:452ae7d0c5d2475ff2ef67b231b759131cb1d12554d1b24d7aa793ed4b4213aa`
-	Default Command: `["ghci"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:44:58 GMT
ENV LANG=C.UTF-8
# Mon, 07 Jan 2019 21:22:33 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates dirmngr curl git &&     echo 'deb http://downloads.haskell.org/debian stretch main' > /etc/apt/sources.list.d/ghc.list &&     apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA3CBA3FFE22B574 &&     apt-get update &&     apt-get install -y --no-install-recommends ghc-8.6.3 cabal-install-2.4         zlib1g-dev libtinfo-dev libsqlite3-dev g++ netbase xz-utils make &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.9.1/stack-1.9.1-linux-x86_64.tar.gz -o stack.tar.gz &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.9.1/stack-1.9.1-linux-x86_64.tar.gz.asc -o stack.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys C5705533DA4F78D8664B5DC0575159689BEFB442 &&     gpg --batch --verify stack.tar.gz.asc stack.tar.gz &&     tar -xf stack.tar.gz -C /usr/local/bin --strip-components=1 &&     /usr/local/bin/stack config set system-ghc --global true &&     /usr/local/bin/stack config set install-ghc --global false &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* /stack.tar.gz.asc /stack.tar.gz
# Mon, 07 Jan 2019 21:22:34 GMT
ENV PATH=/root/.cabal/bin:/root/.local/bin:/opt/cabal/2.4/bin:/opt/ghc/8.6.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 07 Jan 2019 21:22:34 GMT
CMD ["ghci"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770a9c2f82ce5f7d44ddcfef8c49e48e165593365474fded44380ce5958296b8`  
		Last Modified: Mon, 07 Jan 2019 21:24:42 GMT  
		Size: 256.0 MB (255986817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
