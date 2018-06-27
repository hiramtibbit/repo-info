<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `haskell`

-	[`haskell:8`](#haskell8)
-	[`haskell:8.2`](#haskell82)
-	[`haskell:8.2.2`](#haskell822)
-	[`haskell:8.4`](#haskell84)
-	[`haskell:8.4.3`](#haskell843)
-	[`haskell:latest`](#haskelllatest)

## `haskell:8`

```console
$ docker pull haskell@sha256:ab3ee82227cb5f3e8ecf2754d49b140ff6374a77b1d092e20376fddaf52fb391
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haskell:8` - linux; amd64

```console
$ docker pull haskell@sha256:43bfa7453e3a4bf32dd2ea49dd2ec74b259eb9795ddd6135c24a53d1166f0819
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.1 MB (308130590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed3faf137057f0ad64e794291d72fe4da971f60918651aa4b41b342b67b73d3c`
-	Default Command: `["ghci"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 02:34:45 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 02:36:15 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates dirmngr curl git &&     echo 'deb http://downloads.haskell.org/debian stretch main' > /etc/apt/sources.list.d/ghc.list &&     apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA3CBA3FFE22B574 &&     apt-get update &&     apt-get install -y --no-install-recommends ghc-8.4.3 cabal-install-2.2         zlib1g-dev libtinfo-dev libsqlite3-dev g++ netbase xz-utils make &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.7.1/stack-1.7.1-linux-x86_64.tar.gz -o stack.tar.gz &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.7.1/stack-1.7.1-linux-x86_64.tar.gz.asc -o stack.tar.gz.asc &&     apt-get purge -y --auto-remove curl &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys C5705533DA4F78D8664B5DC0575159689BEFB442 &&     gpg --batch --verify stack.tar.gz.asc stack.tar.gz &&     tar -xf stack.tar.gz -C /usr/local/bin --strip-components=1 &&     /usr/local/bin/stack config set system-ghc --global true &&     /usr/local/bin/stack config set install-ghc --global false &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* /stack.tar.gz.asc /stack.tar.gz
# Wed, 27 Jun 2018 02:36:16 GMT
ENV PATH=/root/.cabal/bin:/root/.local/bin:/opt/cabal/2.2/bin:/opt/ghc/8.4.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 02:36:16 GMT
CMD ["ghci"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:536cab44a7f07942a189e336272ecc8512a72c683de8cb497e7f8c4305913ee2`  
		Last Modified: Wed, 27 Jun 2018 02:40:06 GMT  
		Size: 262.8 MB (262811366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haskell:8.2`

```console
$ docker pull haskell@sha256:c7d63bead6ed0de981a66e839675ba8acaa1678ea4165fbc191af0b3fb94aa8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haskell:8.2` - linux; amd64

```console
$ docker pull haskell@sha256:a96664d5cb1d067bf4a67275111916d09908967432a46add5bb73d92e527d5f5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.0 MB (286997208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25e09f6c5b027cc01e45339ad36f55caf012c0baa83eac5d9e5109b50000295a`
-	Default Command: `["ghci"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 17:34:06 GMT
ENV LANG=C.UTF-8
# Tue, 05 Jun 2018 17:42:29 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates dirmngr curl git &&     echo 'deb http://downloads.haskell.org/debian stretch main' > /etc/apt/sources.list.d/ghc.list &&     apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA3CBA3FFE22B574 &&     apt-get update &&     apt-get install -y --no-install-recommends ghc-8.2.2 cabal-install-2.2         zlib1g-dev libtinfo-dev libsqlite3-dev g++ netbase xz-utils make &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.7.1/stack-1.7.1-linux-x86_64.tar.gz -o stack.tar.gz &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.7.1/stack-1.7.1-linux-x86_64.tar.gz.asc -o stack.tar.gz.asc &&     apt-get purge -y --auto-remove curl &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys C5705533DA4F78D8664B5DC0575159689BEFB442 &&     gpg --batch --verify stack.tar.gz.asc stack.tar.gz &&     tar -xf stack.tar.gz -C /usr/local/bin --strip-components=1 &&     /usr/local/bin/stack config set system-ghc --global true &&     /usr/local/bin/stack config set install-ghc --global false &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* /stack.tar.gz.asc /stack.tar.gz
# Tue, 05 Jun 2018 17:42:29 GMT
ENV PATH=/root/.cabal/bin:/root/.local/bin:/opt/cabal/2.2/bin:/opt/ghc/8.2.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Jun 2018 17:42:30 GMT
CMD ["ghci"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa439f9ed18acb2b0bed8c05abe448af7581885100af9cd0dcea102f331ef61e`  
		Last Modified: Tue, 05 Jun 2018 17:50:49 GMT  
		Size: 241.7 MB (241679049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haskell:8.2.2`

```console
$ docker pull haskell@sha256:c7d63bead6ed0de981a66e839675ba8acaa1678ea4165fbc191af0b3fb94aa8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haskell:8.2.2` - linux; amd64

```console
$ docker pull haskell@sha256:a96664d5cb1d067bf4a67275111916d09908967432a46add5bb73d92e527d5f5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.0 MB (286997208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25e09f6c5b027cc01e45339ad36f55caf012c0baa83eac5d9e5109b50000295a`
-	Default Command: `["ghci"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 17:34:06 GMT
ENV LANG=C.UTF-8
# Tue, 05 Jun 2018 17:42:29 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates dirmngr curl git &&     echo 'deb http://downloads.haskell.org/debian stretch main' > /etc/apt/sources.list.d/ghc.list &&     apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA3CBA3FFE22B574 &&     apt-get update &&     apt-get install -y --no-install-recommends ghc-8.2.2 cabal-install-2.2         zlib1g-dev libtinfo-dev libsqlite3-dev g++ netbase xz-utils make &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.7.1/stack-1.7.1-linux-x86_64.tar.gz -o stack.tar.gz &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.7.1/stack-1.7.1-linux-x86_64.tar.gz.asc -o stack.tar.gz.asc &&     apt-get purge -y --auto-remove curl &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys C5705533DA4F78D8664B5DC0575159689BEFB442 &&     gpg --batch --verify stack.tar.gz.asc stack.tar.gz &&     tar -xf stack.tar.gz -C /usr/local/bin --strip-components=1 &&     /usr/local/bin/stack config set system-ghc --global true &&     /usr/local/bin/stack config set install-ghc --global false &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* /stack.tar.gz.asc /stack.tar.gz
# Tue, 05 Jun 2018 17:42:29 GMT
ENV PATH=/root/.cabal/bin:/root/.local/bin:/opt/cabal/2.2/bin:/opt/ghc/8.2.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Jun 2018 17:42:30 GMT
CMD ["ghci"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa439f9ed18acb2b0bed8c05abe448af7581885100af9cd0dcea102f331ef61e`  
		Last Modified: Tue, 05 Jun 2018 17:50:49 GMT  
		Size: 241.7 MB (241679049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haskell:8.4`

```console
$ docker pull haskell@sha256:ab3ee82227cb5f3e8ecf2754d49b140ff6374a77b1d092e20376fddaf52fb391
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haskell:8.4` - linux; amd64

```console
$ docker pull haskell@sha256:43bfa7453e3a4bf32dd2ea49dd2ec74b259eb9795ddd6135c24a53d1166f0819
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.1 MB (308130590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed3faf137057f0ad64e794291d72fe4da971f60918651aa4b41b342b67b73d3c`
-	Default Command: `["ghci"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 02:34:45 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 02:36:15 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates dirmngr curl git &&     echo 'deb http://downloads.haskell.org/debian stretch main' > /etc/apt/sources.list.d/ghc.list &&     apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA3CBA3FFE22B574 &&     apt-get update &&     apt-get install -y --no-install-recommends ghc-8.4.3 cabal-install-2.2         zlib1g-dev libtinfo-dev libsqlite3-dev g++ netbase xz-utils make &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.7.1/stack-1.7.1-linux-x86_64.tar.gz -o stack.tar.gz &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.7.1/stack-1.7.1-linux-x86_64.tar.gz.asc -o stack.tar.gz.asc &&     apt-get purge -y --auto-remove curl &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys C5705533DA4F78D8664B5DC0575159689BEFB442 &&     gpg --batch --verify stack.tar.gz.asc stack.tar.gz &&     tar -xf stack.tar.gz -C /usr/local/bin --strip-components=1 &&     /usr/local/bin/stack config set system-ghc --global true &&     /usr/local/bin/stack config set install-ghc --global false &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* /stack.tar.gz.asc /stack.tar.gz
# Wed, 27 Jun 2018 02:36:16 GMT
ENV PATH=/root/.cabal/bin:/root/.local/bin:/opt/cabal/2.2/bin:/opt/ghc/8.4.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 02:36:16 GMT
CMD ["ghci"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:536cab44a7f07942a189e336272ecc8512a72c683de8cb497e7f8c4305913ee2`  
		Last Modified: Wed, 27 Jun 2018 02:40:06 GMT  
		Size: 262.8 MB (262811366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haskell:8.4.3`

```console
$ docker pull haskell@sha256:ab3ee82227cb5f3e8ecf2754d49b140ff6374a77b1d092e20376fddaf52fb391
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haskell:8.4.3` - linux; amd64

```console
$ docker pull haskell@sha256:43bfa7453e3a4bf32dd2ea49dd2ec74b259eb9795ddd6135c24a53d1166f0819
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.1 MB (308130590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed3faf137057f0ad64e794291d72fe4da971f60918651aa4b41b342b67b73d3c`
-	Default Command: `["ghci"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 02:34:45 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 02:36:15 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates dirmngr curl git &&     echo 'deb http://downloads.haskell.org/debian stretch main' > /etc/apt/sources.list.d/ghc.list &&     apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA3CBA3FFE22B574 &&     apt-get update &&     apt-get install -y --no-install-recommends ghc-8.4.3 cabal-install-2.2         zlib1g-dev libtinfo-dev libsqlite3-dev g++ netbase xz-utils make &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.7.1/stack-1.7.1-linux-x86_64.tar.gz -o stack.tar.gz &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.7.1/stack-1.7.1-linux-x86_64.tar.gz.asc -o stack.tar.gz.asc &&     apt-get purge -y --auto-remove curl &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys C5705533DA4F78D8664B5DC0575159689BEFB442 &&     gpg --batch --verify stack.tar.gz.asc stack.tar.gz &&     tar -xf stack.tar.gz -C /usr/local/bin --strip-components=1 &&     /usr/local/bin/stack config set system-ghc --global true &&     /usr/local/bin/stack config set install-ghc --global false &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* /stack.tar.gz.asc /stack.tar.gz
# Wed, 27 Jun 2018 02:36:16 GMT
ENV PATH=/root/.cabal/bin:/root/.local/bin:/opt/cabal/2.2/bin:/opt/ghc/8.4.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 02:36:16 GMT
CMD ["ghci"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:536cab44a7f07942a189e336272ecc8512a72c683de8cb497e7f8c4305913ee2`  
		Last Modified: Wed, 27 Jun 2018 02:40:06 GMT  
		Size: 262.8 MB (262811366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haskell:latest`

```console
$ docker pull haskell@sha256:ab3ee82227cb5f3e8ecf2754d49b140ff6374a77b1d092e20376fddaf52fb391
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haskell:latest` - linux; amd64

```console
$ docker pull haskell@sha256:43bfa7453e3a4bf32dd2ea49dd2ec74b259eb9795ddd6135c24a53d1166f0819
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.1 MB (308130590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed3faf137057f0ad64e794291d72fe4da971f60918651aa4b41b342b67b73d3c`
-	Default Command: `["ghci"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 02:34:45 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 02:36:15 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates dirmngr curl git &&     echo 'deb http://downloads.haskell.org/debian stretch main' > /etc/apt/sources.list.d/ghc.list &&     apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA3CBA3FFE22B574 &&     apt-get update &&     apt-get install -y --no-install-recommends ghc-8.4.3 cabal-install-2.2         zlib1g-dev libtinfo-dev libsqlite3-dev g++ netbase xz-utils make &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.7.1/stack-1.7.1-linux-x86_64.tar.gz -o stack.tar.gz &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.7.1/stack-1.7.1-linux-x86_64.tar.gz.asc -o stack.tar.gz.asc &&     apt-get purge -y --auto-remove curl &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys C5705533DA4F78D8664B5DC0575159689BEFB442 &&     gpg --batch --verify stack.tar.gz.asc stack.tar.gz &&     tar -xf stack.tar.gz -C /usr/local/bin --strip-components=1 &&     /usr/local/bin/stack config set system-ghc --global true &&     /usr/local/bin/stack config set install-ghc --global false &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* /stack.tar.gz.asc /stack.tar.gz
# Wed, 27 Jun 2018 02:36:16 GMT
ENV PATH=/root/.cabal/bin:/root/.local/bin:/opt/cabal/2.2/bin:/opt/ghc/8.4.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 02:36:16 GMT
CMD ["ghci"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:536cab44a7f07942a189e336272ecc8512a72c683de8cb497e7f8c4305913ee2`  
		Last Modified: Wed, 27 Jun 2018 02:40:06 GMT  
		Size: 262.8 MB (262811366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
