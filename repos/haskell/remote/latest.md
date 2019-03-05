## `haskell:latest`

```console
$ docker pull haskell@sha256:1fcdd520f300f09dd3981cac9995028c4891760f57a00fa4827097e0fe09250d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haskell:latest` - linux; amd64

```console
$ docker pull haskell@sha256:dfa2626140ff7b160288f29b501d7a9471c462e33438b519f82b49eac9c8cff9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.3 MB (301344888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:432c9cd5baa16ba4825e630f3ddc2629d0d62167d5a1b6cc0882d6bdb5858374`
-	Default Command: `["ghci"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:41:03 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 03:41:59 GMT
RUN apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates dirmngr curl git &&     echo 'deb http://downloads.haskell.org/debian stretch main' > /etc/apt/sources.list.d/ghc.list &&     apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA3CBA3FFE22B574 &&     apt-get update &&     apt-get install -y --no-install-recommends ghc-8.6.3 cabal-install-2.4         zlib1g-dev libtinfo-dev libsqlite3-dev g++ netbase xz-utils make &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.9.1/stack-1.9.1-linux-x86_64.tar.gz -o stack.tar.gz &&     curl -fSL https://github.com/commercialhaskell/stack/releases/download/v1.9.1/stack-1.9.1-linux-x86_64.tar.gz.asc -o stack.tar.gz.asc &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys C5705533DA4F78D8664B5DC0575159689BEFB442 &&     gpg --batch --verify stack.tar.gz.asc stack.tar.gz &&     tar -xf stack.tar.gz -C /usr/local/bin --strip-components=1 &&     /usr/local/bin/stack config set system-ghc --global true &&     /usr/local/bin/stack config set install-ghc --global false &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* /stack.tar.gz.asc /stack.tar.gz
# Tue, 05 Mar 2019 03:42:00 GMT
ENV PATH=/root/.cabal/bin:/root/.local/bin:/opt/cabal/2.4/bin:/opt/ghc/8.6.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 03:42:00 GMT
CMD ["ghci"]
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c7a8ec80b7a98a1848ae81f6ff82f184a098365fda5bc9e5c01da6234ba2b7`  
		Last Modified: Tue, 05 Mar 2019 03:44:14 GMT  
		Size: 256.0 MB (256002360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
