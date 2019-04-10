# `maven:3.6.0-ibmjava-8-alpine`

## Docker Metadata

- Image ID: `sha256:17e515e0818c8236bdeef017e3d873dc9542c69f845337dd1361d20df927badc`
- Created: `2019-04-02T23:03:29.692053332Z`
- Virtual Size: ~ 270.04 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["/usr/local/bin/mvn-entrypoint.sh"]`
- Command: `["mvn"]`
- Environment:
  - `PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `JAVA_VERSION=1.8.0_sr5fp31`
  - `JAVA_HOME=/opt/ibm/java/jre`
  - `IBM_JAVA_OPTIONS=-XX:+UseContainerSupport`
  - `MAVEN_HOME=/usr/share/maven`
  - `MAVEN_CONFIG=/root/.m2`

## `apk` (`.apk`-based packages)

### `apk` package: `alpine-baselayout`

```console
alpine-baselayout-3.0.5-r2 description:
Alpine base dir structure and init scripts

alpine-baselayout-3.0.5-r2 webpage:
http://git.alpinelinux.org/cgit/aports/tree/main/alpine-baselayout

alpine-baselayout-3.0.5-r2 installed size:
397312

alpine-baselayout-3.0.5-r2 license:
GPL2

```

### `apk` package: `alpine-keys`

```console
alpine-keys-2.1-r1 description:
Public keys for Alpine Linux packages

alpine-keys-2.1-r1 webpage:
http://alpinelinux.org

alpine-keys-2.1-r1 installed size:
98304

alpine-keys-2.1-r1 license:
MIT

```

### `apk` package: `apk-tools`

```console
apk-tools-2.10.1-r0 description:
Alpine Package Keeper - package manager for alpine

apk-tools-2.10.1-r0 webpage:
https://git.alpinelinux.org/cgit/apk-tools/

apk-tools-2.10.1-r0 installed size:
262144

apk-tools-2.10.1-r0 license:
GPL2

```

### `apk` package: `bash`

```console
bash-4.4.19-r1 description:
The GNU Bourne Again shell

bash-4.4.19-r1 webpage:
https://www.gnu.org/software/bash/bash.html

bash-4.4.19-r1 installed size:
1421312

bash-4.4.19-r1 license:
GPL3+

```

### `apk` package: `busybox`

```console
busybox-1.27.2-r11 description:
Size optimized toolbox of many common UNIX utilities

busybox-1.27.2-r11 webpage:
http://busybox.net

busybox-1.27.2-r11 installed size:
901120

busybox-1.27.2-r11 license:
GPL2

```

### `apk` package: `ca-certificates`

```console
ca-certificates-20171114-r0 description:
Common CA certificates PEM files

ca-certificates-20171114-r0 webpage:
https://www.mozilla.org/en-US/about/governance/policies/security-group/certs/

ca-certificates-20171114-r0 installed size:
741376

ca-certificates-20171114-r0 license:
MPL 2.0 GPL2+

```

### `apk` package: `curl`

```console
curl-7.61.1-r2 description:
URL retrival utility and library

curl-7.61.1-r2 webpage:
https://curl.haxx.se

curl-7.61.1-r2 installed size:
225280

curl-7.61.1-r2 license:
MIT

```

### `apk` package: `glibc`

```console
glibc-2.29-r0 description:
GNU C Library compatibility layer

glibc-2.29-r0 webpage:
https://github.com/sgerrand/alpine-pkg-glibc

glibc-2.29-r0 installed size:
4186112

glibc-2.29-r0 license:
LGPL

```

### `apk` package: `libc-utils`

```console
libc-utils-0.7.1-r0 description:
Meta package to pull in correct libc

libc-utils-0.7.1-r0 webpage:
http://alpinelinux.org

libc-utils-0.7.1-r0 installed size:
4096

libc-utils-0.7.1-r0 license:
BSD

```

### `apk` package: `libcrypto1.0`

```console
libcrypto1.0-1.0.2r-r0 description:
Crypto library from openssl

libcrypto1.0-1.0.2r-r0 webpage:
https://openssl.org

libcrypto1.0-1.0.2r-r0 installed size:
2523136

libcrypto1.0-1.0.2r-r0 license:
openssl

```

### `apk` package: `libcurl`

```console
libcurl-7.61.1-r2 description:
The multiprotocol file transfer library

libcurl-7.61.1-r2 webpage:
https://curl.haxx.se

libcurl-7.61.1-r2 installed size:
446464

libcurl-7.61.1-r2 license:
MIT

```

### `apk` package: `libintl`

```console
libintl-0.19.8.1-r1 description:
GNU gettext runtime library

libintl-0.19.8.1-r1 webpage:
http://www.gnu.org/software/gettext/gettext.html

libintl-0.19.8.1-r1 installed size:
69632

libintl-0.19.8.1-r1 license:
GPL

```

### `apk` package: `libproc`

```console
libproc-3.3.12-r3 description:
Library for monitoring system and processes

libproc-3.3.12-r3 webpage:
https://gitlab.com/procps-ng/procps

libproc-3.3.12-r3 installed size:
77824

libproc-3.3.12-r3 license:
GPL LGPL

```

### `apk` package: `libressl2.6-libcrypto`

```console
libressl2.6-libcrypto-2.6.5-r0 description:
libressl libcrypto library

libressl2.6-libcrypto-2.6.5-r0 webpage:
https://www.libressl.org/

libressl2.6-libcrypto-2.6.5-r0 installed size:
1953792

libressl2.6-libcrypto-2.6.5-r0 license:
custom

```

### `apk` package: `libressl2.6-libssl`

```console
libressl2.6-libssl-2.6.5-r0 description:
libressl libssl library

libressl2.6-libssl-2.6.5-r0 webpage:
https://www.libressl.org/

libressl2.6-libssl-2.6.5-r0 installed size:
327680

libressl2.6-libssl-2.6.5-r0 license:
custom

```

### `apk` package: `libressl2.6-libtls`

```console
libressl2.6-libtls-2.6.5-r0 description:
libressl libtls library

libressl2.6-libtls-2.6.5-r0 webpage:
https://www.libressl.org/

libressl2.6-libtls-2.6.5-r0 installed size:
73728

libressl2.6-libtls-2.6.5-r0 license:
custom

```

### `apk` package: `libssh2`

```console
libssh2-1.8.2-r0 description:
library for accessing ssh1/ssh2 protocol servers

libssh2-1.8.2-r0 webpage:
https://libssh2.org/

libssh2-1.8.2-r0 installed size:
180224

libssh2-1.8.2-r0 license:
BSD

```

### `apk` package: `libssl1.0`

```console
libssl1.0-1.0.2r-r0 description:
SSL shared libraries

libssl1.0-1.0.2r-r0 webpage:
https://openssl.org

libssl1.0-1.0.2r-r0 installed size:
446464

libssl1.0-1.0.2r-r0 license:
openssl

```

### `apk` package: `musl`

```console
musl-1.1.18-r3 description:
the musl c library (libc) implementation

musl-1.1.18-r3 webpage:
http://www.musl-libc.org/

musl-1.1.18-r3 installed size:
581632

musl-1.1.18-r3 license:
MIT

```

### `apk` package: `musl-utils`

```console
musl-utils-1.1.18-r3 description:
the musl c library (libc) implementation

musl-utils-1.1.18-r3 webpage:
http://www.musl-libc.org/

musl-utils-1.1.18-r3 installed size:
122880

musl-utils-1.1.18-r3 license:
MIT BSD GPL2+

```

### `apk` package: `ncurses-libs`

```console
ncurses-libs-6.0_p20171125-r1 description:
Ncurses libraries

ncurses-libs-6.0_p20171125-r1 webpage:
https://www.gnu.org/software/ncurses/

ncurses-libs-6.0_p20171125-r1 installed size:
479232

ncurses-libs-6.0_p20171125-r1 license:
MIT

```

### `apk` package: `ncurses-terminfo`

```console
ncurses-terminfo-6.0_p20171125-r1 description:
Console display library

ncurses-terminfo-6.0_p20171125-r1 webpage:
https://www.gnu.org/software/ncurses/

ncurses-terminfo-6.0_p20171125-r1 installed size:
7163904

ncurses-terminfo-6.0_p20171125-r1 license:
MIT

```

### `apk` package: `ncurses-terminfo-base`

```console
ncurses-terminfo-base-6.0_p20171125-r1 description:
Descriptions of common terminals

ncurses-terminfo-base-6.0_p20171125-r1 webpage:
https://www.gnu.org/software/ncurses/

ncurses-terminfo-base-6.0_p20171125-r1 installed size:
94208

ncurses-terminfo-base-6.0_p20171125-r1 license:
MIT

```

### `apk` package: `openssl`

```console
openssl-1.0.2r-r0 description:
Toolkit for SSL v2/v3 and TLS v1

openssl-1.0.2r-r0 webpage:
https://openssl.org

openssl-1.0.2r-r0 installed size:
606208

openssl-1.0.2r-r0 license:
openssl

```

### `apk` package: `pkgconf`

```console
pkgconf-1.3.10-r0 description:
development framework configuration tools

pkgconf-1.3.10-r0 webpage:
https://github.com/pkgconf/pkgconf

pkgconf-1.3.10-r0 installed size:
122880

pkgconf-1.3.10-r0 license:
ISC

```

### `apk` package: `procps`

```console
procps-3.3.12-r3 description:
Utilities for monitoring your system and processes on your system

procps-3.3.12-r3 webpage:
https://gitlab.com/procps-ng/procps

procps-3.3.12-r3 installed size:
987136

procps-3.3.12-r3 license:
GPL LGPL

```

### `apk` package: `readline`

```console
readline-7.0.003-r0 description:
GNU readline library

readline-7.0.003-r0 webpage:
https://cnswww.cns.cwru.edu/php/chet/readline/rltop.html

readline-7.0.003-r0 installed size:
282624

readline-7.0.003-r0 license:
GPL

```

### `apk` package: `scanelf`

```console
scanelf-1.2.2-r1 description:
Scan ELF binaries for stuff

scanelf-1.2.2-r1 webpage:
https://wiki.gentoo.org/wiki/Hardened/PaX_Utilities

scanelf-1.2.2-r1 installed size:
90112

scanelf-1.2.2-r1 license:
GPL2

```

### `apk` package: `ssl_client`

```console
ssl_client-1.27.2-r11 description:
EXternal ssl_client for busybox wget

ssl_client-1.27.2-r11 webpage:
http://busybox.net

ssl_client-1.27.2-r11 installed size:
24576

ssl_client-1.27.2-r11 license:
GPL2

```

### `apk` package: `tar`

```console
tar-1.32-r0 description:
Utility used to store, backup, and transport files

tar-1.32-r0 webpage:
https://www.gnu.org

tar-1.32-r0 installed size:
495616

tar-1.32-r0 license:
GPL

```

### `apk` package: `zlib`

```console
zlib-1.2.11-r1 description:
A compression/decompression Library

zlib-1.2.11-r1 webpage:
http://zlib.net

zlib-1.2.11-r1 installed size:
102400

zlib-1.2.11-r1 license:
zlib

```
