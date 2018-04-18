## `rust:1-slim-jessie`

```console
$ docker pull rust@sha256:3f5c016c0be6b644f2757525e2a9c30e97d53303428de56a4379d4e8da314324
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:1-slim-jessie` - linux; amd64

```console
$ docker pull rust@sha256:f66361d44570cd52b838fab77f93fbea278b957a2fff9db5eb3952c6f19c17a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.5 MB (233518689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d3c478284ebab739fd911b6a08d48c9f775a61641dd06b7e96704ea18514986`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 18 Apr 2018 00:30:30 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.25.0
# Wed, 18 Apr 2018 00:31:25 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='c9837990bce0faab4f6f52604311a19bb8d2cde989bea6a7b605c8e526db6f02' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='297661e121048db3906f8c964999f765b4f6848632c0c2cfb6a1e93d99440732' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='a68ac2d400409f485cb22756f0b3217b95449884e1ea6fd9b70522b3c0a929b2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='27e6109c7b537b92a6c2d45ac941d959606ca26ec501d86085d651892a55d849' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.11.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7fe3dbc3fe325029e023c048823d398a2be6223b9aaa777e54b1821a68b25a`  
		Last Modified: Wed, 18 Apr 2018 00:47:11 GMT  
		Size: 203.4 MB (203396287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-slim-jessie` - linux; arm variant v7

```console
$ docker pull rust@sha256:500d44f627f681ab8e08412bef94f0d37b993ec4d7e0aad8b9d3f93396dbe0c5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.4 MB (194394588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77c1c3515585f4754d53b7182fda36377d4f3bba8bd0a59853f043a19b72f97c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 12:27:28 GMT
ADD file:901c5a711f269a7dd8f11eff27131cd2f6d2aee98d68f1e19b4ed954798e5d3f in / 
# Wed, 14 Mar 2018 12:27:29 GMT
CMD ["bash"]
# Wed, 18 Apr 2018 11:59:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.25.0
# Wed, 18 Apr 2018 12:00:23 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='c9837990bce0faab4f6f52604311a19bb8d2cde989bea6a7b605c8e526db6f02' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='297661e121048db3906f8c964999f765b4f6848632c0c2cfb6a1e93d99440732' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='a68ac2d400409f485cb22756f0b3217b95449884e1ea6fd9b70522b3c0a929b2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='27e6109c7b537b92a6c2d45ac941d959606ca26ec501d86085d651892a55d849' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.11.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:b8c016a755ce56e2fbb5a9f179c7bde3f0742c21b2727356a1658fc7d973f46a`  
		Last Modified: Wed, 14 Mar 2018 12:39:21 GMT  
		Size: 26.3 MB (26290283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e943461571d1e50c4e03524772f8b226fcced0ce634abb0213105103817841f7`  
		Last Modified: Wed, 18 Apr 2018 12:03:00 GMT  
		Size: 168.1 MB (168104305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-slim-jessie` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:d31f6192d9d66f555c03bc9fdc039f39fa7d3f012f249a60ffecd9c1cdee29b6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.1 MB (192138387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c26cae7704c4b1015a993e601c58758abf587407752ed1861f6d47a77e69167`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:25:26 GMT
ADD file:0012468f66c7e5b0efd7217a1f29f5044d4dce5a19dcd39786aa7573bc927763 in / 
# Wed, 14 Mar 2018 17:25:26 GMT
CMD ["bash"]
# Wed, 18 Apr 2018 08:43:54 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.25.0
# Wed, 18 Apr 2018 08:45:35 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='c9837990bce0faab4f6f52604311a19bb8d2cde989bea6a7b605c8e526db6f02' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='297661e121048db3906f8c964999f765b4f6848632c0c2cfb6a1e93d99440732' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='a68ac2d400409f485cb22756f0b3217b95449884e1ea6fd9b70522b3c0a929b2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='27e6109c7b537b92a6c2d45ac941d959606ca26ec501d86085d651892a55d849' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.11.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:784b6f32f75d9222c618727f66027b44ffa35120fc128790dfce4d1070befc90`  
		Last Modified: Wed, 14 Mar 2018 17:39:37 GMT  
		Size: 27.5 MB (27488177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eafe086d2b0099fb6ea74ab29ec4bb19c7c0b89ad345db3a23dfd69568986eed`  
		Last Modified: Wed, 18 Apr 2018 08:51:44 GMT  
		Size: 164.7 MB (164650210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-slim-jessie` - linux; 386

```console
$ docker pull rust@sha256:ea26ca4554049e7abb3255b2134620e33c3068a5cac72c5a19c5a8a62a9b2225
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229337389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7d4ba6b8effdf9b24339136108d669c0f800c8b32d9f14b5a831efe08bfa994`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Mar 2018 14:24:52 GMT
ADD file:4e79b8dd98596d0354ef30e136278a257e021a36d6d6271ec4c1dafaf07889ae in / 
# Tue, 27 Mar 2018 14:24:53 GMT
CMD ["bash"]
# Wed, 18 Apr 2018 10:40:43 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.25.0
# Wed, 18 Apr 2018 10:42:00 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='c9837990bce0faab4f6f52604311a19bb8d2cde989bea6a7b605c8e526db6f02' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='297661e121048db3906f8c964999f765b4f6848632c0c2cfb6a1e93d99440732' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='a68ac2d400409f485cb22756f0b3217b95449884e1ea6fd9b70522b3c0a929b2' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='27e6109c7b537b92a6c2d45ac941d959606ca26ec501d86085d651892a55d849' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.11.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:ec7b1998b022b3eb218010907097139cebc6fb8b1aaab342d847d1f283ef3967`  
		Last Modified: Thu, 15 Mar 2018 01:00:27 GMT  
		Size: 30.3 MB (30273196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41c3679f2c6199ea43c18de203e07f5948d4f75b283397d347c6e241f8495628`  
		Last Modified: Wed, 18 Apr 2018 10:45:22 GMT  
		Size: 199.1 MB (199064193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
