## `rust:1-slim-jessie`

```console
$ docker pull rust@sha256:87b5746be625e7695815f0bcda7c6b5d3e47b453398a5c97a9ed4acc486731ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `rust:1-slim-jessie` - linux; amd64

```console
$ docker pull rust@sha256:ae1ad15304768ea45c6c3671f09fe24aac4f570aca163617f71765bd32fffa01
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.3 MB (286286470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36d87de4c1c11452cfbf3f075a34d22fc29510e8ae17e884259c5c302e353958`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:21:17 GMT
ADD file:8108708c9ab961c9562c2171f4f594291dbaac0dc81dcb7bcbaf134f251f459e in / 
# Tue, 26 Jun 2018 21:21:18 GMT
CMD ["bash"]
# Tue, 10 Jul 2018 21:23:48 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Tue, 10 Jul 2018 21:26:02 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:2caa28db99eb312c788669036f0bf3914f73f5a27a30f69d2a7443fce10eb882`  
		Last Modified: Tue, 26 Jun 2018 21:31:00 GMT  
		Size: 30.1 MB (30119838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a80b29cac58dd8a2e80532fdf6a99d83952fef5684929816fc4440f3ffc825b4`  
		Last Modified: Tue, 10 Jul 2018 21:38:09 GMT  
		Size: 256.2 MB (256166632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-slim-jessie` - linux; arm variant v7

```console
$ docker pull rust@sha256:21e682b36a9ed6e56e0594a3e987bb3d300a1d03aea11c170e6d25406bd75177
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.8 MB (198766902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03b39fcd64ac60d0e4f0a64e8eb0aa62a2caf6ce3a2aff7f9c4ba87d3e95311a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 11:59:29 GMT
ADD file:139eb5c6629bcd898347ffb1d1f2b4a86c7ce74f0da7ef85fc58886baf3efb25 in / 
# Wed, 27 Jun 2018 11:59:29 GMT
CMD ["bash"]
# Wed, 11 Jul 2018 12:06:43 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 12:07:59 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:105c2fdbbcba2943a690f8b934af14483b01cb2fa01aa43b8ba23a69fe311f0a`  
		Last Modified: Wed, 27 Jun 2018 12:08:54 GMT  
		Size: 26.3 MB (26286807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:828710563bd73a941d286e42ff576bc69364e9750f9ddf6cf856e469ec30ce1b`  
		Last Modified: Wed, 11 Jul 2018 12:13:58 GMT  
		Size: 172.5 MB (172480095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-slim-jessie` - linux; 386

```console
$ docker pull rust@sha256:ff0891d4481486cfe61e448cc050f138778b77fac00ef6ceee965a436929cc88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.7 MB (285683333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:870397638800d7729d132e8b72ea51e1e50e8a5d93cb8430b4aaca5be5bd8d07`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:54 GMT
ADD file:cd5600a909bc1ec399c2dd64e2e0f8383e1029c2169b56e923349fff08a544a6 in / 
# Wed, 27 Jun 2018 10:40:55 GMT
CMD ["bash"]
# Wed, 11 Jul 2018 11:07:53 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.27.1
# Wed, 11 Jul 2018 11:10:25 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='4d382e77fd6760282912d2d9beec5e260ec919efd3cb9bdb64fe1207e84b9d91' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='0e606932b97b6d2a2ad494068ca9ba15962b98038e5f997779e3df1c9aa60b19' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='c665cbf04f1c12536245b2f01d42fdf9ea77def7e7d7a3e54c1ae55bcb4eb415' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='57b85f60702198431735b5f54b083956bc148449edc82147542521f75d5dbd13' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.12.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:754ff349eaaa3314a657ce6b24abe2a9d237430ab3b66d7bd2b21113499d68ff`  
		Last Modified: Wed, 27 Jun 2018 10:54:13 GMT  
		Size: 30.3 MB (30269679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dbc5e53d2e10a6d44df49c396746b414fe6e2919200f8854b5f6814bf55c004`  
		Last Modified: Wed, 11 Jul 2018 11:24:06 GMT  
		Size: 255.4 MB (255413654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
