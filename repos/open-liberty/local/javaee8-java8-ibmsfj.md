# `open-liberty:javaee8-java8-ibmsfj`

## Docker Metadata

- Image ID: `sha256:40d71eca68483e1845e35e1cf3a076310d860491af1b946da9865ad9015348d0`
- Created: `2019-04-29T17:58:56.539201372Z`
- Virtual Size: ~ 324.37 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["/opt/ol/helpers/runtime/docker-server.sh"]`
- Command: `["/opt/ol/wlp/bin/server","run","defaultServer"]`
- Environment:
  - `PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `JAVA_VERSION=1.8.0_sr5fp35`
  - `JAVA_HOME=/opt/ibm/java/jre`
  - `IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport`
  - `LOG_DIR=/logs`
  - `WLP_OUTPUT_DIR=/opt/ol/wlp/output`
  - `WLP_SKIP_MAXPERMSIZE=true`
  - `RANDFILE=/tmp/.rnd`
  - `KEYSTORE_REQUIRED=true`
- Labels:
  - `github=https://github.com/OpenLiberty/ci.docker`
  - `maintainer=Arthur De Magalhaes`
  - `url=https://openliberty.io/`
  - `vendor=Open Liberty`

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

### `apk` package: `wget`

```console
wget-1.20.3-r0 description:
A network utility to retrieve files from the Web

wget-1.20.3-r0 webpage:
https://www.gnu.org/software/wget/wget.html

wget-1.20.3-r0 installed size:
479232

wget-1.20.3-r0 license:
GPL3+

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
