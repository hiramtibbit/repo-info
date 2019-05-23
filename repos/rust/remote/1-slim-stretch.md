## `rust:1-slim-stretch`

```console
$ docker pull rust@sha256:6b57d6b817ae8c4443b6a2d0e0a32c3cbc1912a327c471286babf8bc5b177ed9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `rust:1-slim-stretch` - linux; amd64

```console
$ docker pull rust@sha256:38a81efebe5555940964fa4393a39ddcdb25a19bff4a7523d00bca7f2bd8e5a4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.3 MB (304303191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83bc2690e29ff4278dcb7356530e0655af01da3c97a20cd0a9406afe445ce016`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 15 May 2019 00:20:35 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.34.2
# Wed, 15 May 2019 00:21:56 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='31c0581e3af128f7374d8439068475d11be60ce7b2301684a4cab81a39c76cb6' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='7fff409910faa28dc846547102a0a912020c357eb483b5b74e2740864b290896' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='168191448a932e13147686565e46803cca6b8d2b016a8761375c4d3ee3d2ac87' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='a6c7e20f71e13abd40917d76c023253501a35daacdeed31f9eaf8ecfd5d78286' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.18.2/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4221833a935f0cf9e3c43fc072d81bec993c98fc2b1735de102330ecff17772`  
		Last Modified: Wed, 15 May 2019 00:24:35 GMT  
		Size: 281.8 MB (281813841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-slim-stretch` - linux; arm variant v7

```console
$ docker pull rust@sha256:cfe588e5f398a4f2ffcea21ee1612da8e11406368778e39482d03d545069e796
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.8 MB (226797356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0de8c91bb80ea2e277f90f17a4fe40462329af1f30f76f7acfc1a65f6ac2acb`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 15 May 2019 00:00:08 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.34.2
# Wed, 15 May 2019 00:01:11 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='31c0581e3af128f7374d8439068475d11be60ce7b2301684a4cab81a39c76cb6' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='7fff409910faa28dc846547102a0a912020c357eb483b5b74e2740864b290896' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='168191448a932e13147686565e46803cca6b8d2b016a8761375c4d3ee3d2ac87' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='a6c7e20f71e13abd40917d76c023253501a35daacdeed31f9eaf8ecfd5d78286' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.18.2/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba0cfd5df9b19596f7cde2dc7b378782ee4e741817bcebc41019177b091b0223`  
		Last Modified: Wed, 15 May 2019 00:03:34 GMT  
		Size: 207.5 MB (207521140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-slim-stretch` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:b4f5bd6ca65d10a3918fc4344a589150a1c48f707386f2e5fc868c1893999747
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.7 MB (228656987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd9cc3c08a11f5594947b334661763d62a414ff2ab822d50910d2f1594852e09`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 15 May 2019 21:53:27 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.34.2
# Wed, 15 May 2019 21:54:16 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='31c0581e3af128f7374d8439068475d11be60ce7b2301684a4cab81a39c76cb6' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='7fff409910faa28dc846547102a0a912020c357eb483b5b74e2740864b290896' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='168191448a932e13147686565e46803cca6b8d2b016a8761375c4d3ee3d2ac87' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='a6c7e20f71e13abd40917d76c023253501a35daacdeed31f9eaf8ecfd5d78286' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.18.2/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb302a7b9a48e93b5657d498d0103a73afb39d6f1a96b7c65031d960421a50b5`  
		Last Modified: Wed, 15 May 2019 21:56:41 GMT  
		Size: 208.3 MB (208323172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rust:1-slim-stretch` - linux; 386

```console
$ docker pull rust@sha256:9d61d63863d42ee5d60739aeb2c16e6c36a9daddc26298219532238598d40301
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.0 MB (333996303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e15b00711780d2a3417ef91f0f139240eb83f4fe12df314023e88cc3c48d8377`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Thu, 23 May 2019 22:42:40 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.35.0
# Thu, 23 May 2019 22:43:42 GMT
RUN set -eux;     apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;     dpkgArch="$(dpkg --print-architecture)";     case "${dpkgArch##*-}" in         amd64) rustArch='x86_64-unknown-linux-gnu'; rustupSha256='a46fe67199b7bcbbde2dcbc23ae08db6f29883e260e23899a88b9073effc9076' ;;         armhf) rustArch='armv7-unknown-linux-gnueabihf'; rustupSha256='6af5abbbae02e13a9acae29593ec58116ab0e3eb893fa0381991e8b0934caea1' ;;         arm64) rustArch='aarch64-unknown-linux-gnu'; rustupSha256='51862e576f064d859546cca5f3d32297092a850861e567327422e65b60877a1b' ;;         i386) rustArch='i686-unknown-linux-gnu'; rustupSha256='91456c3e6b2a3067914b3327f07bc182e2a27c44bff473263ba81174884182be' ;;         *) echo >&2 "unsupported architecture: ${dpkgArch}"; exit 1 ;;     esac;     url="https://static.rust-lang.org/rustup/archive/1.18.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;     chmod +x rustup-init;     ./rustup-init -y --no-modify-path --default-toolchain $RUST_VERSION;     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;     rustup --version;     cargo --version;     rustc --version;     apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08594745cd3cac9abf596736a03f465ee44c407b5fb18562b20aa0047dca0e99`  
		Last Modified: Thu, 23 May 2019 22:46:18 GMT  
		Size: 310.9 MB (310875460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
