<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `fsharp`

-	[`fsharp:10`](#fsharp10)
-	[`fsharp:10.2`](#fsharp102)
-	[`fsharp:10.2.1`](#fsharp1021)
-	[`fsharp:10.2.1-netcore`](#fsharp1021-netcore)
-	[`fsharp:10.2-netcore`](#fsharp102-netcore)
-	[`fsharp:10-netcore`](#fsharp10-netcore)
-	[`fsharp:4`](#fsharp4)
-	[`fsharp:4.0`](#fsharp40)
-	[`fsharp:4.0.1`](#fsharp401)
-	[`fsharp:4.0.1.1`](#fsharp4011)
-	[`fsharp:4.1`](#fsharp41)
-	[`fsharp:4.1.34`](#fsharp4134)
-	[`fsharp:latest`](#fsharplatest)
-	[`fsharp:netcore`](#fsharpnetcore)

## `fsharp:10`

```console
$ docker pull fsharp@sha256:0e73e2eaf4ba8817ab1ab0c58feadf9f32537307d2f717ea4de06a9df6ce4d9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `fsharp:10` - linux; amd64

```console
$ docker pull fsharp@sha256:8208dd592db34b6ad875c926f86ecb013911933c289f31069c9617d5d063c5c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.5 MB (167490845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92499d5a932aaf90e7bf90c068e31f4483f4d5d8f7542576a95273cd20ecce2c`
-	Default Command: `["fsharpi"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:20:45 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Wed, 27 Mar 2019 00:20:45 GMT
ENV MONO_THREADS_PER_CPU=50
# Wed, 27 Mar 2019 00:30:03 GMT
RUN MONO_VERSION=5.14.0.177 &&     FSHARP_VERSION=10.2.1 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Wed, 27 Mar 2019 00:30:04 GMT
WORKDIR /root
# Wed, 27 Mar 2019 00:30:04 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756239268d58f5787c01a67519a18b28c0fb3bd47b41a847f162ffe73ab8e670`  
		Last Modified: Wed, 27 Mar 2019 00:45:38 GMT  
		Size: 145.0 MB (144994797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fsharp:10` - linux; arm64 variant v8

```console
$ docker pull fsharp@sha256:c49311c05f0d9d5fdef2df838de5be9a2404fbe19c0089870202b9e79b9b6b4c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.3 MB (162281702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0bcc8424d35d26514095b169e90d691ec01403c87df52ba453c0af88a52cb78`
-	Default Command: `["fsharpi"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:55:51 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Wed, 27 Mar 2019 10:55:52 GMT
ENV MONO_THREADS_PER_CPU=50
# Wed, 27 Mar 2019 11:28:04 GMT
RUN MONO_VERSION=5.14.0.177 &&     FSHARP_VERSION=10.2.1 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Wed, 27 Mar 2019 11:28:07 GMT
WORKDIR /root
# Wed, 27 Mar 2019 11:28:09 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11872c8a162d598ca28517472d031ddc1882f6f335202f58842c1b83091203f1`  
		Last Modified: Wed, 27 Mar 2019 11:29:33 GMT  
		Size: 141.9 MB (141941523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:10.2`

```console
$ docker pull fsharp@sha256:0e73e2eaf4ba8817ab1ab0c58feadf9f32537307d2f717ea4de06a9df6ce4d9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `fsharp:10.2` - linux; amd64

```console
$ docker pull fsharp@sha256:8208dd592db34b6ad875c926f86ecb013911933c289f31069c9617d5d063c5c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.5 MB (167490845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92499d5a932aaf90e7bf90c068e31f4483f4d5d8f7542576a95273cd20ecce2c`
-	Default Command: `["fsharpi"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:20:45 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Wed, 27 Mar 2019 00:20:45 GMT
ENV MONO_THREADS_PER_CPU=50
# Wed, 27 Mar 2019 00:30:03 GMT
RUN MONO_VERSION=5.14.0.177 &&     FSHARP_VERSION=10.2.1 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Wed, 27 Mar 2019 00:30:04 GMT
WORKDIR /root
# Wed, 27 Mar 2019 00:30:04 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756239268d58f5787c01a67519a18b28c0fb3bd47b41a847f162ffe73ab8e670`  
		Last Modified: Wed, 27 Mar 2019 00:45:38 GMT  
		Size: 145.0 MB (144994797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fsharp:10.2` - linux; arm64 variant v8

```console
$ docker pull fsharp@sha256:c49311c05f0d9d5fdef2df838de5be9a2404fbe19c0089870202b9e79b9b6b4c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.3 MB (162281702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0bcc8424d35d26514095b169e90d691ec01403c87df52ba453c0af88a52cb78`
-	Default Command: `["fsharpi"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:55:51 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Wed, 27 Mar 2019 10:55:52 GMT
ENV MONO_THREADS_PER_CPU=50
# Wed, 27 Mar 2019 11:28:04 GMT
RUN MONO_VERSION=5.14.0.177 &&     FSHARP_VERSION=10.2.1 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Wed, 27 Mar 2019 11:28:07 GMT
WORKDIR /root
# Wed, 27 Mar 2019 11:28:09 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11872c8a162d598ca28517472d031ddc1882f6f335202f58842c1b83091203f1`  
		Last Modified: Wed, 27 Mar 2019 11:29:33 GMT  
		Size: 141.9 MB (141941523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:10.2.1`

```console
$ docker pull fsharp@sha256:0e73e2eaf4ba8817ab1ab0c58feadf9f32537307d2f717ea4de06a9df6ce4d9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `fsharp:10.2.1` - linux; amd64

```console
$ docker pull fsharp@sha256:8208dd592db34b6ad875c926f86ecb013911933c289f31069c9617d5d063c5c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.5 MB (167490845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92499d5a932aaf90e7bf90c068e31f4483f4d5d8f7542576a95273cd20ecce2c`
-	Default Command: `["fsharpi"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:20:45 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Wed, 27 Mar 2019 00:20:45 GMT
ENV MONO_THREADS_PER_CPU=50
# Wed, 27 Mar 2019 00:30:03 GMT
RUN MONO_VERSION=5.14.0.177 &&     FSHARP_VERSION=10.2.1 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Wed, 27 Mar 2019 00:30:04 GMT
WORKDIR /root
# Wed, 27 Mar 2019 00:30:04 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756239268d58f5787c01a67519a18b28c0fb3bd47b41a847f162ffe73ab8e670`  
		Last Modified: Wed, 27 Mar 2019 00:45:38 GMT  
		Size: 145.0 MB (144994797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fsharp:10.2.1` - linux; arm64 variant v8

```console
$ docker pull fsharp@sha256:c49311c05f0d9d5fdef2df838de5be9a2404fbe19c0089870202b9e79b9b6b4c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.3 MB (162281702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0bcc8424d35d26514095b169e90d691ec01403c87df52ba453c0af88a52cb78`
-	Default Command: `["fsharpi"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:55:51 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Wed, 27 Mar 2019 10:55:52 GMT
ENV MONO_THREADS_PER_CPU=50
# Wed, 27 Mar 2019 11:28:04 GMT
RUN MONO_VERSION=5.14.0.177 &&     FSHARP_VERSION=10.2.1 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Wed, 27 Mar 2019 11:28:07 GMT
WORKDIR /root
# Wed, 27 Mar 2019 11:28:09 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11872c8a162d598ca28517472d031ddc1882f6f335202f58842c1b83091203f1`  
		Last Modified: Wed, 27 Mar 2019 11:29:33 GMT  
		Size: 141.9 MB (141941523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:10.2.1-netcore`

```console
$ docker pull fsharp@sha256:ae34cdefdf909d63d6553f50ff61524bec2fe77e0ec8157614ddee464a3aca19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:10.2.1-netcore` - linux; amd64

```console
$ docker pull fsharp@sha256:a3e515fdbce8c3463d964d766130637c08f0396381a74658758c7b65d2c45a70
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **657.5 MB (657544173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a51d9141afb2ca9c132dbbec30fd1574700cb70ca4a5c56c3ce192d74c750b01`
-	Default Command: `["fsharpi"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:20:45 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Wed, 27 Mar 2019 00:20:45 GMT
ENV MONO_THREADS_PER_CPU=50
# Wed, 27 Mar 2019 00:30:03 GMT
RUN MONO_VERSION=5.14.0.177 &&     FSHARP_VERSION=10.2.1 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Wed, 27 Mar 2019 00:30:04 GMT
WORKDIR /root
# Wed, 27 Mar 2019 00:30:04 GMT
CMD ["fsharpi"]
# Wed, 27 Mar 2019 00:43:27 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Wed, 27 Mar 2019 00:43:28 GMT
ENV FrameworkPathOverride=/usr/lib/mono/4.7.1-api/
# Wed, 27 Mar 2019 00:43:28 GMT
ENV NUGET_XMLDOC_MODE=skip
# Wed, 27 Mar 2019 00:43:36 GMT
RUN apt-get update &&     apt-get --no-install-recommends install -y     curl     libunwind8     gettext     apt-transport-https     libc6     libcurl3     libgcc1     libgssapi-krb5-2     libicu57     liblttng-ust0     libssl1.0.2     libstdc++6     libunwind8     libuuid1     zlib1g &&     rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:43:56 GMT
RUN DOTNET_SDK_VERSION=2.1.401 &&     DOTNET_SDK_DOWNLOAD_URL=https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-linux-x64.tar.gz &&     DOTNET_SDK_DOWNLOAD_SHA=639f9f68f225246d9cce798d72d011f65c7eda0d775914d1394df050bddf93e2886555f5eed85a75d6c72e9063a54d8aa053c64c326c683b94e9e0a0570e5654 &&     curl -SL $DOTNET_SDK_DOWNLOAD_URL --output dotnet.tar.gz &&     echo "$DOTNET_SDK_DOWNLOAD_SHA dotnet.tar.gz" | sha512sum -c - &&     mkdir -p /usr/share/dotnet &&     tar -zxf dotnet.tar.gz -C /usr/share/dotnet &&     rm dotnet.tar.gz &&     ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet
# Wed, 27 Mar 2019 00:43:57 GMT
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1
# Wed, 27 Mar 2019 00:44:49 GMT
RUN mkdir warmup &&     cd warmup &&     dotnet new &&     cd - &&     rm -rf warmup /tmp/NuGetScratch
# Wed, 27 Mar 2019 00:44:50 GMT
WORKDIR /root
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756239268d58f5787c01a67519a18b28c0fb3bd47b41a847f162ffe73ab8e670`  
		Last Modified: Wed, 27 Mar 2019 00:45:38 GMT  
		Size: 145.0 MB (144994797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca431a95ba05a476e87ac4a7954cb3778e7aceacf249280f1942fe5070caebf`  
		Last Modified: Wed, 27 Mar 2019 00:46:21 GMT  
		Size: 18.0 MB (18025889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad15ae52df8ee19978747a37ef58a2e02e0420ba64c400d7cec1224221e3143`  
		Last Modified: Wed, 27 Mar 2019 00:46:46 GMT  
		Size: 167.3 MB (167286694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf618cd501d54fa4e66d549e75898e4a69829a6d7a99bdd3bbee578d6496346`  
		Last Modified: Wed, 27 Mar 2019 00:47:06 GMT  
		Size: 304.7 MB (304740745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:10.2-netcore`

```console
$ docker pull fsharp@sha256:ae34cdefdf909d63d6553f50ff61524bec2fe77e0ec8157614ddee464a3aca19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:10.2-netcore` - linux; amd64

```console
$ docker pull fsharp@sha256:a3e515fdbce8c3463d964d766130637c08f0396381a74658758c7b65d2c45a70
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **657.5 MB (657544173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a51d9141afb2ca9c132dbbec30fd1574700cb70ca4a5c56c3ce192d74c750b01`
-	Default Command: `["fsharpi"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:20:45 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Wed, 27 Mar 2019 00:20:45 GMT
ENV MONO_THREADS_PER_CPU=50
# Wed, 27 Mar 2019 00:30:03 GMT
RUN MONO_VERSION=5.14.0.177 &&     FSHARP_VERSION=10.2.1 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Wed, 27 Mar 2019 00:30:04 GMT
WORKDIR /root
# Wed, 27 Mar 2019 00:30:04 GMT
CMD ["fsharpi"]
# Wed, 27 Mar 2019 00:43:27 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Wed, 27 Mar 2019 00:43:28 GMT
ENV FrameworkPathOverride=/usr/lib/mono/4.7.1-api/
# Wed, 27 Mar 2019 00:43:28 GMT
ENV NUGET_XMLDOC_MODE=skip
# Wed, 27 Mar 2019 00:43:36 GMT
RUN apt-get update &&     apt-get --no-install-recommends install -y     curl     libunwind8     gettext     apt-transport-https     libc6     libcurl3     libgcc1     libgssapi-krb5-2     libicu57     liblttng-ust0     libssl1.0.2     libstdc++6     libunwind8     libuuid1     zlib1g &&     rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:43:56 GMT
RUN DOTNET_SDK_VERSION=2.1.401 &&     DOTNET_SDK_DOWNLOAD_URL=https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-linux-x64.tar.gz &&     DOTNET_SDK_DOWNLOAD_SHA=639f9f68f225246d9cce798d72d011f65c7eda0d775914d1394df050bddf93e2886555f5eed85a75d6c72e9063a54d8aa053c64c326c683b94e9e0a0570e5654 &&     curl -SL $DOTNET_SDK_DOWNLOAD_URL --output dotnet.tar.gz &&     echo "$DOTNET_SDK_DOWNLOAD_SHA dotnet.tar.gz" | sha512sum -c - &&     mkdir -p /usr/share/dotnet &&     tar -zxf dotnet.tar.gz -C /usr/share/dotnet &&     rm dotnet.tar.gz &&     ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet
# Wed, 27 Mar 2019 00:43:57 GMT
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1
# Wed, 27 Mar 2019 00:44:49 GMT
RUN mkdir warmup &&     cd warmup &&     dotnet new &&     cd - &&     rm -rf warmup /tmp/NuGetScratch
# Wed, 27 Mar 2019 00:44:50 GMT
WORKDIR /root
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756239268d58f5787c01a67519a18b28c0fb3bd47b41a847f162ffe73ab8e670`  
		Last Modified: Wed, 27 Mar 2019 00:45:38 GMT  
		Size: 145.0 MB (144994797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca431a95ba05a476e87ac4a7954cb3778e7aceacf249280f1942fe5070caebf`  
		Last Modified: Wed, 27 Mar 2019 00:46:21 GMT  
		Size: 18.0 MB (18025889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad15ae52df8ee19978747a37ef58a2e02e0420ba64c400d7cec1224221e3143`  
		Last Modified: Wed, 27 Mar 2019 00:46:46 GMT  
		Size: 167.3 MB (167286694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf618cd501d54fa4e66d549e75898e4a69829a6d7a99bdd3bbee578d6496346`  
		Last Modified: Wed, 27 Mar 2019 00:47:06 GMT  
		Size: 304.7 MB (304740745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:10-netcore`

```console
$ docker pull fsharp@sha256:ae34cdefdf909d63d6553f50ff61524bec2fe77e0ec8157614ddee464a3aca19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:10-netcore` - linux; amd64

```console
$ docker pull fsharp@sha256:a3e515fdbce8c3463d964d766130637c08f0396381a74658758c7b65d2c45a70
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **657.5 MB (657544173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a51d9141afb2ca9c132dbbec30fd1574700cb70ca4a5c56c3ce192d74c750b01`
-	Default Command: `["fsharpi"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:20:45 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Wed, 27 Mar 2019 00:20:45 GMT
ENV MONO_THREADS_PER_CPU=50
# Wed, 27 Mar 2019 00:30:03 GMT
RUN MONO_VERSION=5.14.0.177 &&     FSHARP_VERSION=10.2.1 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Wed, 27 Mar 2019 00:30:04 GMT
WORKDIR /root
# Wed, 27 Mar 2019 00:30:04 GMT
CMD ["fsharpi"]
# Wed, 27 Mar 2019 00:43:27 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Wed, 27 Mar 2019 00:43:28 GMT
ENV FrameworkPathOverride=/usr/lib/mono/4.7.1-api/
# Wed, 27 Mar 2019 00:43:28 GMT
ENV NUGET_XMLDOC_MODE=skip
# Wed, 27 Mar 2019 00:43:36 GMT
RUN apt-get update &&     apt-get --no-install-recommends install -y     curl     libunwind8     gettext     apt-transport-https     libc6     libcurl3     libgcc1     libgssapi-krb5-2     libicu57     liblttng-ust0     libssl1.0.2     libstdc++6     libunwind8     libuuid1     zlib1g &&     rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:43:56 GMT
RUN DOTNET_SDK_VERSION=2.1.401 &&     DOTNET_SDK_DOWNLOAD_URL=https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-linux-x64.tar.gz &&     DOTNET_SDK_DOWNLOAD_SHA=639f9f68f225246d9cce798d72d011f65c7eda0d775914d1394df050bddf93e2886555f5eed85a75d6c72e9063a54d8aa053c64c326c683b94e9e0a0570e5654 &&     curl -SL $DOTNET_SDK_DOWNLOAD_URL --output dotnet.tar.gz &&     echo "$DOTNET_SDK_DOWNLOAD_SHA dotnet.tar.gz" | sha512sum -c - &&     mkdir -p /usr/share/dotnet &&     tar -zxf dotnet.tar.gz -C /usr/share/dotnet &&     rm dotnet.tar.gz &&     ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet
# Wed, 27 Mar 2019 00:43:57 GMT
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1
# Wed, 27 Mar 2019 00:44:49 GMT
RUN mkdir warmup &&     cd warmup &&     dotnet new &&     cd - &&     rm -rf warmup /tmp/NuGetScratch
# Wed, 27 Mar 2019 00:44:50 GMT
WORKDIR /root
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756239268d58f5787c01a67519a18b28c0fb3bd47b41a847f162ffe73ab8e670`  
		Last Modified: Wed, 27 Mar 2019 00:45:38 GMT  
		Size: 145.0 MB (144994797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca431a95ba05a476e87ac4a7954cb3778e7aceacf249280f1942fe5070caebf`  
		Last Modified: Wed, 27 Mar 2019 00:46:21 GMT  
		Size: 18.0 MB (18025889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad15ae52df8ee19978747a37ef58a2e02e0420ba64c400d7cec1224221e3143`  
		Last Modified: Wed, 27 Mar 2019 00:46:46 GMT  
		Size: 167.3 MB (167286694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf618cd501d54fa4e66d549e75898e4a69829a6d7a99bdd3bbee578d6496346`  
		Last Modified: Wed, 27 Mar 2019 00:47:06 GMT  
		Size: 304.7 MB (304740745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4`

```console
$ docker pull fsharp@sha256:0cfbdc6f60d92e5d4b7fce166bf09e852bd5e3470e7999593b571fb53974f1e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:4` - linux; amd64

```console
$ docker pull fsharp@sha256:7c9a045da05bcce11f7db751b41e58907386824dc781785801ae04120dbb4e34
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.3 MB (176291308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3518a584f08ca3e18bf4bb3ce408c3ccc8401132c846a491146749890004dc22`
-	Default Command: `["fsharpi"]`

```dockerfile
# Tue, 26 Mar 2019 22:39:48 GMT
ADD file:7e1c64289e566a098e45fa330e3fe3be4fb94df824f0287a0317dbadf8c643fd in / 
# Tue, 26 Mar 2019 22:39:48 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:30:19 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Wed, 27 Mar 2019 00:30:19 GMT
ENV MONO_THREADS_PER_CPU=50
# Wed, 27 Mar 2019 00:43:07 GMT
RUN MONO_VERSION=5.8.0.108 &&     FSHARP_VERSION=4.1.34 &&     FSHARP_PREFIX=/usr &&     FSHARP_GACDIR=/usr/lib/mono/gac &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list &&     apt-get update -y &&     apt-get --no-install-recommends install -y autoconf libtool pkg-config make automake nuget mono-devel msbuild ca-certificates-mono &&     rm -rf /var/lib/apt/lists/* &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local &&     apt-get purge -y autoconf libtool make automake &&     apt-get clean
# Wed, 27 Mar 2019 00:43:08 GMT
WORKDIR /root
# Wed, 27 Mar 2019 00:43:08 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:2a639da97f77795f2f0ebe3bb2c9fc94b4eee47bd41faaf216118e7a8fa65dd6`  
		Last Modified: Tue, 26 Mar 2019 22:43:17 GMT  
		Size: 30.2 MB (30154581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e38ae266feefab6233583ac834405c17323e7590e8cf2fe77b8e24e518a297a`  
		Last Modified: Wed, 27 Mar 2019 00:46:12 GMT  
		Size: 146.1 MB (146136727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4.0`

```console
$ docker pull fsharp@sha256:24006d58dc24e2ddbcf834a631e26f569938fb61025a9ba2e5d57ad68f987c61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:4.0` - linux; amd64

```console
$ docker pull fsharp@sha256:000941a64c367a7d400099385682c413af9e6dc14cac86d45cd970dc132e1c9c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.6 MB (274647093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09ce4c0be6597933197072ea1a9961a3039280c4883f44d47c98e10d3988ada8`
-	Default Command: `["fsharpi"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:54 GMT
ADD file:4a03a167b06c4f47e20544d8e421dc0ebd8c1eadb24f0855f11b5759910e8674 in / 
# Tue, 12 Mar 2019 00:20:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:57 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:48:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:48:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Mar 2019 00:49:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:50:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 02:18:51 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 12 Mar 2019 02:18:51 GMT
ENV MONO_VERSION=4.8.0.495
# Tue, 12 Mar 2019 02:18:52 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list
# Tue, 12 Mar 2019 02:18:52 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 12 Mar 2019 02:19:56 GMT
RUN apt-get -y update &&     apt-get -y --no-install-recommends install nuget mono-devel ca-certificates-mono &&     rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 02:19:56 GMT
ENV FSHARP_VERSION=4.0.1.1
# Tue, 12 Mar 2019 02:19:57 GMT
ENV FSHARP_PREFIX=/usr FSHARP_GACDIR=/usr/lib/mono/gac FSHARP_BASENAME=fsharp-4.0.1.1 FSHARP_ARCHIVE=4.0.1.1.tar.gz FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/4.0.1.1.tar.gz
# Tue, 12 Mar 2019 02:28:06 GMT
RUN mkdir -p /tmp/src &&     cd /tmp/src &&     wget $FSHARP_ARCHIVE_URL &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src
# Tue, 12 Mar 2019 02:28:07 GMT
WORKDIR /root
# Tue, 12 Mar 2019 02:28:07 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:e082d449913058b0a86fef6c0208e5769b2d024c3bb465b13e53cc0da09e3c4c`  
		Last Modified: Tue, 05 Mar 2019 13:24:44 GMT  
		Size: 67.1 MB (67148830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371450624c9ee7ed9a89fe50488f5f03060a16a4bead015e11a423bd46f553c2`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a555b3a57ca08b00da3b695d8e5188503fbfed6f740bb9f5601e68c8497d4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1456d810d42e722e565c11020aaeb756ee536ec1f5f799f528eeea2cb0306f4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5e258c1a312bb5aa823bd20cf51f52c8d660b86c3b636c143cf7e9475fd077`  
		Last Modified: Tue, 12 Mar 2019 00:57:44 GMT  
		Size: 4.7 MB (4659342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e3f0a4ffd60a8a0a5ae9f82d98109972d897f2a035d6b62cc69f6db35d33075`  
		Last Modified: Tue, 12 Mar 2019 00:57:53 GMT  
		Size: 29.6 MB (29606141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20ed6e15bf0192e001a8d957afebe1b99b43a13c129adc1be47b44e2c72a7ac8`  
		Last Modified: Tue, 12 Mar 2019 00:58:19 GMT  
		Size: 107.3 MB (107266409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b0a8a7c77e1c84a9452cc8e5358f68c54505fd71fdad4bc5dfa3f11095810b9`  
		Last Modified: Tue, 12 Mar 2019 02:28:19 GMT  
		Size: 13.8 KB (13824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90c7ee983fdf5262e559996a6936527b8671a08b7dbf72ec88ebf8afa687085b`  
		Last Modified: Tue, 12 Mar 2019 02:28:33 GMT  
		Size: 55.3 MB (55273065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c7dc0ef9f4cc4d73ae0de9d24d7f7c233d9836b35bf0ef24c2bdd03a822430a`  
		Last Modified: Tue, 12 Mar 2019 02:28:21 GMT  
		Size: 10.6 MB (10606307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4.0.1`

```console
$ docker pull fsharp@sha256:24006d58dc24e2ddbcf834a631e26f569938fb61025a9ba2e5d57ad68f987c61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:4.0.1` - linux; amd64

```console
$ docker pull fsharp@sha256:000941a64c367a7d400099385682c413af9e6dc14cac86d45cd970dc132e1c9c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.6 MB (274647093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09ce4c0be6597933197072ea1a9961a3039280c4883f44d47c98e10d3988ada8`
-	Default Command: `["fsharpi"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:54 GMT
ADD file:4a03a167b06c4f47e20544d8e421dc0ebd8c1eadb24f0855f11b5759910e8674 in / 
# Tue, 12 Mar 2019 00:20:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:57 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:48:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:48:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Mar 2019 00:49:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:50:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 02:18:51 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 12 Mar 2019 02:18:51 GMT
ENV MONO_VERSION=4.8.0.495
# Tue, 12 Mar 2019 02:18:52 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list
# Tue, 12 Mar 2019 02:18:52 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 12 Mar 2019 02:19:56 GMT
RUN apt-get -y update &&     apt-get -y --no-install-recommends install nuget mono-devel ca-certificates-mono &&     rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 02:19:56 GMT
ENV FSHARP_VERSION=4.0.1.1
# Tue, 12 Mar 2019 02:19:57 GMT
ENV FSHARP_PREFIX=/usr FSHARP_GACDIR=/usr/lib/mono/gac FSHARP_BASENAME=fsharp-4.0.1.1 FSHARP_ARCHIVE=4.0.1.1.tar.gz FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/4.0.1.1.tar.gz
# Tue, 12 Mar 2019 02:28:06 GMT
RUN mkdir -p /tmp/src &&     cd /tmp/src &&     wget $FSHARP_ARCHIVE_URL &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src
# Tue, 12 Mar 2019 02:28:07 GMT
WORKDIR /root
# Tue, 12 Mar 2019 02:28:07 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:e082d449913058b0a86fef6c0208e5769b2d024c3bb465b13e53cc0da09e3c4c`  
		Last Modified: Tue, 05 Mar 2019 13:24:44 GMT  
		Size: 67.1 MB (67148830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371450624c9ee7ed9a89fe50488f5f03060a16a4bead015e11a423bd46f553c2`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a555b3a57ca08b00da3b695d8e5188503fbfed6f740bb9f5601e68c8497d4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1456d810d42e722e565c11020aaeb756ee536ec1f5f799f528eeea2cb0306f4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5e258c1a312bb5aa823bd20cf51f52c8d660b86c3b636c143cf7e9475fd077`  
		Last Modified: Tue, 12 Mar 2019 00:57:44 GMT  
		Size: 4.7 MB (4659342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e3f0a4ffd60a8a0a5ae9f82d98109972d897f2a035d6b62cc69f6db35d33075`  
		Last Modified: Tue, 12 Mar 2019 00:57:53 GMT  
		Size: 29.6 MB (29606141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20ed6e15bf0192e001a8d957afebe1b99b43a13c129adc1be47b44e2c72a7ac8`  
		Last Modified: Tue, 12 Mar 2019 00:58:19 GMT  
		Size: 107.3 MB (107266409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b0a8a7c77e1c84a9452cc8e5358f68c54505fd71fdad4bc5dfa3f11095810b9`  
		Last Modified: Tue, 12 Mar 2019 02:28:19 GMT  
		Size: 13.8 KB (13824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90c7ee983fdf5262e559996a6936527b8671a08b7dbf72ec88ebf8afa687085b`  
		Last Modified: Tue, 12 Mar 2019 02:28:33 GMT  
		Size: 55.3 MB (55273065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c7dc0ef9f4cc4d73ae0de9d24d7f7c233d9836b35bf0ef24c2bdd03a822430a`  
		Last Modified: Tue, 12 Mar 2019 02:28:21 GMT  
		Size: 10.6 MB (10606307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4.0.1.1`

```console
$ docker pull fsharp@sha256:24006d58dc24e2ddbcf834a631e26f569938fb61025a9ba2e5d57ad68f987c61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:4.0.1.1` - linux; amd64

```console
$ docker pull fsharp@sha256:000941a64c367a7d400099385682c413af9e6dc14cac86d45cd970dc132e1c9c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.6 MB (274647093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09ce4c0be6597933197072ea1a9961a3039280c4883f44d47c98e10d3988ada8`
-	Default Command: `["fsharpi"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:54 GMT
ADD file:4a03a167b06c4f47e20544d8e421dc0ebd8c1eadb24f0855f11b5759910e8674 in / 
# Tue, 12 Mar 2019 00:20:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:57 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:48:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:48:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Mar 2019 00:49:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:50:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 02:18:51 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 12 Mar 2019 02:18:51 GMT
ENV MONO_VERSION=4.8.0.495
# Tue, 12 Mar 2019 02:18:52 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list
# Tue, 12 Mar 2019 02:18:52 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 12 Mar 2019 02:19:56 GMT
RUN apt-get -y update &&     apt-get -y --no-install-recommends install nuget mono-devel ca-certificates-mono &&     rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 02:19:56 GMT
ENV FSHARP_VERSION=4.0.1.1
# Tue, 12 Mar 2019 02:19:57 GMT
ENV FSHARP_PREFIX=/usr FSHARP_GACDIR=/usr/lib/mono/gac FSHARP_BASENAME=fsharp-4.0.1.1 FSHARP_ARCHIVE=4.0.1.1.tar.gz FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/4.0.1.1.tar.gz
# Tue, 12 Mar 2019 02:28:06 GMT
RUN mkdir -p /tmp/src &&     cd /tmp/src &&     wget $FSHARP_ARCHIVE_URL &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src
# Tue, 12 Mar 2019 02:28:07 GMT
WORKDIR /root
# Tue, 12 Mar 2019 02:28:07 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:e082d449913058b0a86fef6c0208e5769b2d024c3bb465b13e53cc0da09e3c4c`  
		Last Modified: Tue, 05 Mar 2019 13:24:44 GMT  
		Size: 67.1 MB (67148830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371450624c9ee7ed9a89fe50488f5f03060a16a4bead015e11a423bd46f553c2`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a555b3a57ca08b00da3b695d8e5188503fbfed6f740bb9f5601e68c8497d4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1456d810d42e722e565c11020aaeb756ee536ec1f5f799f528eeea2cb0306f4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5e258c1a312bb5aa823bd20cf51f52c8d660b86c3b636c143cf7e9475fd077`  
		Last Modified: Tue, 12 Mar 2019 00:57:44 GMT  
		Size: 4.7 MB (4659342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e3f0a4ffd60a8a0a5ae9f82d98109972d897f2a035d6b62cc69f6db35d33075`  
		Last Modified: Tue, 12 Mar 2019 00:57:53 GMT  
		Size: 29.6 MB (29606141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20ed6e15bf0192e001a8d957afebe1b99b43a13c129adc1be47b44e2c72a7ac8`  
		Last Modified: Tue, 12 Mar 2019 00:58:19 GMT  
		Size: 107.3 MB (107266409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b0a8a7c77e1c84a9452cc8e5358f68c54505fd71fdad4bc5dfa3f11095810b9`  
		Last Modified: Tue, 12 Mar 2019 02:28:19 GMT  
		Size: 13.8 KB (13824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90c7ee983fdf5262e559996a6936527b8671a08b7dbf72ec88ebf8afa687085b`  
		Last Modified: Tue, 12 Mar 2019 02:28:33 GMT  
		Size: 55.3 MB (55273065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c7dc0ef9f4cc4d73ae0de9d24d7f7c233d9836b35bf0ef24c2bdd03a822430a`  
		Last Modified: Tue, 12 Mar 2019 02:28:21 GMT  
		Size: 10.6 MB (10606307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4.1`

```console
$ docker pull fsharp@sha256:0cfbdc6f60d92e5d4b7fce166bf09e852bd5e3470e7999593b571fb53974f1e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:4.1` - linux; amd64

```console
$ docker pull fsharp@sha256:7c9a045da05bcce11f7db751b41e58907386824dc781785801ae04120dbb4e34
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.3 MB (176291308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3518a584f08ca3e18bf4bb3ce408c3ccc8401132c846a491146749890004dc22`
-	Default Command: `["fsharpi"]`

```dockerfile
# Tue, 26 Mar 2019 22:39:48 GMT
ADD file:7e1c64289e566a098e45fa330e3fe3be4fb94df824f0287a0317dbadf8c643fd in / 
# Tue, 26 Mar 2019 22:39:48 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:30:19 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Wed, 27 Mar 2019 00:30:19 GMT
ENV MONO_THREADS_PER_CPU=50
# Wed, 27 Mar 2019 00:43:07 GMT
RUN MONO_VERSION=5.8.0.108 &&     FSHARP_VERSION=4.1.34 &&     FSHARP_PREFIX=/usr &&     FSHARP_GACDIR=/usr/lib/mono/gac &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list &&     apt-get update -y &&     apt-get --no-install-recommends install -y autoconf libtool pkg-config make automake nuget mono-devel msbuild ca-certificates-mono &&     rm -rf /var/lib/apt/lists/* &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local &&     apt-get purge -y autoconf libtool make automake &&     apt-get clean
# Wed, 27 Mar 2019 00:43:08 GMT
WORKDIR /root
# Wed, 27 Mar 2019 00:43:08 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:2a639da97f77795f2f0ebe3bb2c9fc94b4eee47bd41faaf216118e7a8fa65dd6`  
		Last Modified: Tue, 26 Mar 2019 22:43:17 GMT  
		Size: 30.2 MB (30154581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e38ae266feefab6233583ac834405c17323e7590e8cf2fe77b8e24e518a297a`  
		Last Modified: Wed, 27 Mar 2019 00:46:12 GMT  
		Size: 146.1 MB (146136727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4.1.34`

```console
$ docker pull fsharp@sha256:0cfbdc6f60d92e5d4b7fce166bf09e852bd5e3470e7999593b571fb53974f1e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:4.1.34` - linux; amd64

```console
$ docker pull fsharp@sha256:7c9a045da05bcce11f7db751b41e58907386824dc781785801ae04120dbb4e34
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.3 MB (176291308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3518a584f08ca3e18bf4bb3ce408c3ccc8401132c846a491146749890004dc22`
-	Default Command: `["fsharpi"]`

```dockerfile
# Tue, 26 Mar 2019 22:39:48 GMT
ADD file:7e1c64289e566a098e45fa330e3fe3be4fb94df824f0287a0317dbadf8c643fd in / 
# Tue, 26 Mar 2019 22:39:48 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:30:19 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Wed, 27 Mar 2019 00:30:19 GMT
ENV MONO_THREADS_PER_CPU=50
# Wed, 27 Mar 2019 00:43:07 GMT
RUN MONO_VERSION=5.8.0.108 &&     FSHARP_VERSION=4.1.34 &&     FSHARP_PREFIX=/usr &&     FSHARP_GACDIR=/usr/lib/mono/gac &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list &&     apt-get update -y &&     apt-get --no-install-recommends install -y autoconf libtool pkg-config make automake nuget mono-devel msbuild ca-certificates-mono &&     rm -rf /var/lib/apt/lists/* &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local &&     apt-get purge -y autoconf libtool make automake &&     apt-get clean
# Wed, 27 Mar 2019 00:43:08 GMT
WORKDIR /root
# Wed, 27 Mar 2019 00:43:08 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:2a639da97f77795f2f0ebe3bb2c9fc94b4eee47bd41faaf216118e7a8fa65dd6`  
		Last Modified: Tue, 26 Mar 2019 22:43:17 GMT  
		Size: 30.2 MB (30154581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e38ae266feefab6233583ac834405c17323e7590e8cf2fe77b8e24e518a297a`  
		Last Modified: Wed, 27 Mar 2019 00:46:12 GMT  
		Size: 146.1 MB (146136727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:latest`

```console
$ docker pull fsharp@sha256:0e73e2eaf4ba8817ab1ab0c58feadf9f32537307d2f717ea4de06a9df6ce4d9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `fsharp:latest` - linux; amd64

```console
$ docker pull fsharp@sha256:8208dd592db34b6ad875c926f86ecb013911933c289f31069c9617d5d063c5c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.5 MB (167490845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92499d5a932aaf90e7bf90c068e31f4483f4d5d8f7542576a95273cd20ecce2c`
-	Default Command: `["fsharpi"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:20:45 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Wed, 27 Mar 2019 00:20:45 GMT
ENV MONO_THREADS_PER_CPU=50
# Wed, 27 Mar 2019 00:30:03 GMT
RUN MONO_VERSION=5.14.0.177 &&     FSHARP_VERSION=10.2.1 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Wed, 27 Mar 2019 00:30:04 GMT
WORKDIR /root
# Wed, 27 Mar 2019 00:30:04 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756239268d58f5787c01a67519a18b28c0fb3bd47b41a847f162ffe73ab8e670`  
		Last Modified: Wed, 27 Mar 2019 00:45:38 GMT  
		Size: 145.0 MB (144994797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fsharp:latest` - linux; arm64 variant v8

```console
$ docker pull fsharp@sha256:c49311c05f0d9d5fdef2df838de5be9a2404fbe19c0089870202b9e79b9b6b4c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.3 MB (162281702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0bcc8424d35d26514095b169e90d691ec01403c87df52ba453c0af88a52cb78`
-	Default Command: `["fsharpi"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:55:51 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Wed, 27 Mar 2019 10:55:52 GMT
ENV MONO_THREADS_PER_CPU=50
# Wed, 27 Mar 2019 11:28:04 GMT
RUN MONO_VERSION=5.14.0.177 &&     FSHARP_VERSION=10.2.1 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Wed, 27 Mar 2019 11:28:07 GMT
WORKDIR /root
# Wed, 27 Mar 2019 11:28:09 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11872c8a162d598ca28517472d031ddc1882f6f335202f58842c1b83091203f1`  
		Last Modified: Wed, 27 Mar 2019 11:29:33 GMT  
		Size: 141.9 MB (141941523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:netcore`

```console
$ docker pull fsharp@sha256:ae34cdefdf909d63d6553f50ff61524bec2fe77e0ec8157614ddee464a3aca19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:netcore` - linux; amd64

```console
$ docker pull fsharp@sha256:a3e515fdbce8c3463d964d766130637c08f0396381a74658758c7b65d2c45a70
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **657.5 MB (657544173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a51d9141afb2ca9c132dbbec30fd1574700cb70ca4a5c56c3ce192d74c750b01`
-	Default Command: `["fsharpi"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:20:45 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Wed, 27 Mar 2019 00:20:45 GMT
ENV MONO_THREADS_PER_CPU=50
# Wed, 27 Mar 2019 00:30:03 GMT
RUN MONO_VERSION=5.14.0.177 &&     FSHARP_VERSION=10.2.1 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Wed, 27 Mar 2019 00:30:04 GMT
WORKDIR /root
# Wed, 27 Mar 2019 00:30:04 GMT
CMD ["fsharpi"]
# Wed, 27 Mar 2019 00:43:27 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Wed, 27 Mar 2019 00:43:28 GMT
ENV FrameworkPathOverride=/usr/lib/mono/4.7.1-api/
# Wed, 27 Mar 2019 00:43:28 GMT
ENV NUGET_XMLDOC_MODE=skip
# Wed, 27 Mar 2019 00:43:36 GMT
RUN apt-get update &&     apt-get --no-install-recommends install -y     curl     libunwind8     gettext     apt-transport-https     libc6     libcurl3     libgcc1     libgssapi-krb5-2     libicu57     liblttng-ust0     libssl1.0.2     libstdc++6     libunwind8     libuuid1     zlib1g &&     rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:43:56 GMT
RUN DOTNET_SDK_VERSION=2.1.401 &&     DOTNET_SDK_DOWNLOAD_URL=https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-linux-x64.tar.gz &&     DOTNET_SDK_DOWNLOAD_SHA=639f9f68f225246d9cce798d72d011f65c7eda0d775914d1394df050bddf93e2886555f5eed85a75d6c72e9063a54d8aa053c64c326c683b94e9e0a0570e5654 &&     curl -SL $DOTNET_SDK_DOWNLOAD_URL --output dotnet.tar.gz &&     echo "$DOTNET_SDK_DOWNLOAD_SHA dotnet.tar.gz" | sha512sum -c - &&     mkdir -p /usr/share/dotnet &&     tar -zxf dotnet.tar.gz -C /usr/share/dotnet &&     rm dotnet.tar.gz &&     ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet
# Wed, 27 Mar 2019 00:43:57 GMT
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1
# Wed, 27 Mar 2019 00:44:49 GMT
RUN mkdir warmup &&     cd warmup &&     dotnet new &&     cd - &&     rm -rf warmup /tmp/NuGetScratch
# Wed, 27 Mar 2019 00:44:50 GMT
WORKDIR /root
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756239268d58f5787c01a67519a18b28c0fb3bd47b41a847f162ffe73ab8e670`  
		Last Modified: Wed, 27 Mar 2019 00:45:38 GMT  
		Size: 145.0 MB (144994797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca431a95ba05a476e87ac4a7954cb3778e7aceacf249280f1942fe5070caebf`  
		Last Modified: Wed, 27 Mar 2019 00:46:21 GMT  
		Size: 18.0 MB (18025889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad15ae52df8ee19978747a37ef58a2e02e0420ba64c400d7cec1224221e3143`  
		Last Modified: Wed, 27 Mar 2019 00:46:46 GMT  
		Size: 167.3 MB (167286694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf618cd501d54fa4e66d549e75898e4a69829a6d7a99bdd3bbee578d6496346`  
		Last Modified: Wed, 27 Mar 2019 00:47:06 GMT  
		Size: 304.7 MB (304740745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
