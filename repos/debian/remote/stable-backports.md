## `debian:stable-backports`

```console
$ docker pull debian@sha256:c4bf2c700afa60cec2d5aa79fcf44c11eb1db21c2c2fa418de55dbf2e8d64e08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `debian:stable-backports` - linux; amd64

```console
$ docker pull debian@sha256:e6d1f9597a57924d6b6aac00ccb188ffc2e73b0d8174dc9eddb1675994bdbe29
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.3 MB (45342774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5d6b0600c60138d49ea1ea81e156c7c126c4f70e72e3149dc95e174001769f2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:21:47 GMT
ADD file:f368d8508c6a941eb852687bd0835004e711b64d10d755117d16b5cccbcc4aae in / 
# Mon, 04 Mar 2019 23:21:47 GMT
CMD ["bash"]
# Mon, 04 Mar 2019 23:21:50 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:aac617f8dc583a7a96948daf1003f9442355ca335206ccea3d1bc37b17c39fdd`  
		Last Modified: Mon, 04 Mar 2019 23:25:58 GMT  
		Size: 45.3 MB (45342551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5ab6c71d68fa7542bd4ebd5daef80d884d57aa6f75d1dfd0dff91e49181508`  
		Last Modified: Mon, 04 Mar 2019 23:26:01 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:6e102e20f31a2ef26ddeb3c9db3dbc58442ed9b029471bcd3a2eddc4573ca27c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44030001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfebffe44e6ba2ba6485d49e5f72a88ca49bbc6cfcb8141db3e30cd6bbd2e608`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:53:48 GMT
ADD file:fb58dab16e1ab9da56506494d7f0adc744816daa7b210d80df7ac4673e64b212 in / 
# Tue, 05 Mar 2019 09:53:49 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 09:53:57 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:6193ab9c89019e38f437ef1834d624e2a3423293eecf1ab1d559bee258a06e0b`  
		Last Modified: Tue, 05 Mar 2019 10:01:53 GMT  
		Size: 44.0 MB (44029779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f56c70bec73dfaee07abdabaa1b2c36c97e4bac233a0848ab09dc8456e1571`  
		Last Modified: Tue, 05 Mar 2019 10:01:59 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:2b967e8e111d6bb2a4d40f4164453b44f3d4062bf2be825062d8831def1f2ef6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42075347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3320fa513c4149cf8aea0c2972d7fb8f8ef35cbe97b37b47abfa7e0d9649c8a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:09:35 GMT
ADD file:bfa5476772288e48cfdcdd2f155f04e207ae78911db1658c36dc92dba53af538 in / 
# Tue, 05 Mar 2019 13:09:37 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:09:45 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:85cf2586b97b21d4dd91003d24f80168b6abc1bf61fcc889dba5dba1d2090cd5`  
		Last Modified: Tue, 05 Mar 2019 13:17:48 GMT  
		Size: 42.1 MB (42075122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afbadf5f58ba193a5b81620a720ff94e623e1973e6d29e47faec218b036299e`  
		Last Modified: Tue, 05 Mar 2019 13:17:54 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:24401af3d6593e165a053c54ca1f4c1b66c68381408a534cb93c88e614be0894
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43132095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93b7b9755cc0c7b0ed75485a4b9428fce1d3dde1b7ecb24fe5b80f3b760ad684`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:59:18 GMT
ADD file:7b5703bc14521bea04327acf3890bd2a7ac200630eb6ef2a7f906e0d84174252 in / 
# Tue, 05 Mar 2019 09:59:21 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 09:59:33 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:1661b82991c46820c2f1014ba2c7a6a33202cda8f5f8cac6bf205fe94c19dcaf`  
		Last Modified: Tue, 05 Mar 2019 10:05:22 GMT  
		Size: 43.1 MB (43131869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49c9187d9d46ca4e9ac8279efa1d11caaa7543baa515f402cce634737f3fd13`  
		Last Modified: Tue, 05 Mar 2019 10:05:30 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; 386

```console
$ docker pull debian@sha256:0a39be54d41b58d465afa0190513a0ec6e9abe1f43afabf65db34f0fd797c8fa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46064651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14dda557d47ba65d347da53a297654cc21f0aa80725ecf3cd2da55d8f1cd7e0b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:44:28 GMT
ADD file:f562dd1eb81a4f25cf4336a4c572a55e28e9913bf7bc8909d09d13472246017b in / 
# Tue, 05 Mar 2019 11:44:28 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:44:36 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:3645dafc97e779d62cfaa464cfa96a948e82a47cdb6c934b881a62d17a7934db`  
		Last Modified: Tue, 05 Mar 2019 11:54:11 GMT  
		Size: 46.1 MB (46064427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2291b6b69fd10fddce449bc919816312485d488918cb5d76c8a4ff0f59fd839`  
		Last Modified: Tue, 05 Mar 2019 11:54:15 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:97f15719fdabd0d97ad56a594933fb7cc1fb7675401687fb6da14ae0e7d42f97
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45610662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5186fd1cdc7c7afecb0e046ae801e430bebcd88ceda429e05a871bf747dc515b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:24:37 GMT
ADD file:2837eb19b808f560c1b5aa7d7accfdecc848966fc3c2e5b9bb7200a279229960 in / 
# Tue, 05 Mar 2019 09:24:40 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 09:24:48 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:9bb1da8b470114d701a8135f74b2f0f19805f84a733a5a4d1b134d1845f4358e`  
		Last Modified: Tue, 05 Mar 2019 09:30:32 GMT  
		Size: 45.6 MB (45610437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b62af724945163b4e1b55f994026bea8bb002361c745d79796ef443b4136ee2`  
		Last Modified: Tue, 05 Mar 2019 09:30:43 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; s390x

```console
$ docker pull debian@sha256:d3f44e1c57e8fd0b2da39276bc1bd6d351d8a10e436293496478af44d7315ca1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45199492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13714d41f189d3e138007c3968f6220804acdaca052dc1f004ff348401ec5e89`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 12:42:35 GMT
ADD file:becaf4447097eb6220c65f114105698e313a4b8b8cfebb100ba826166c47e279 in / 
# Tue, 05 Mar 2019 12:42:35 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 12:42:40 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:9ee6b58caa55795a69beb115b4518de3bcecfb7921297f7f20d33ee67660e893`  
		Last Modified: Tue, 05 Mar 2019 12:45:05 GMT  
		Size: 45.2 MB (45199266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda98bb1f1004f2fab9992dd170d375b0dfdbb7810289b216a7dc7286bd68ea7`  
		Last Modified: Tue, 05 Mar 2019 12:45:09 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
