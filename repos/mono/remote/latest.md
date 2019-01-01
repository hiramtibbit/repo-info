## `mono:latest`

```console
$ docker pull mono@sha256:408adf590bab7a54fba22ecb2cbc6593197184ba983150641a3594792147e6e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:latest` - linux; amd64

```console
$ docker pull mono@sha256:19fbb5f251793c735161f1a9276e565fb1f8bb166f477f96d42757eb581af76b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.0 MB (223989373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a86c59def407a97fb1fe6a12b372873ab4bc3781cb0942a8e0d094a5a7b901a5`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Mon, 31 Dec 2018 21:19:47 GMT
ENV MONO_VERSION=5.18.0.225
# Mon, 31 Dec 2018 21:19:59 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Mon, 31 Dec 2018 21:20:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Mon, 31 Dec 2018 21:29:40 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cd7abdf58a11c2b85b4c6c610dfb7d5c825b1829162b0f99938aecc736ab46`  
		Last Modified: Mon, 31 Dec 2018 21:35:09 GMT  
		Size: 244.4 KB (244440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4720eb7d76dc07f11ffed25c898580f9a8c17b2d224c59a7c893d6c6052677`  
		Last Modified: Mon, 31 Dec 2018 21:35:21 GMT  
		Size: 61.1 MB (61149484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6e34b2a5917a8b7cbb9ee98f94247e43b9cfdcb9f04b23c456279b7c1f5f7e`  
		Last Modified: Mon, 31 Dec 2018 21:36:12 GMT  
		Size: 140.1 MB (140102533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; arm variant v7

```console
$ docker pull mono@sha256:c2c19f108ff61d8831f4e784389e010bd39a6174a402e815dc4d64d813a80282
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167321177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5da922fbfd3b3cb8880c79f977b52edc2dddac0bc883b919b8fc091ffe13024`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 13:12:37 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 01 Jan 2019 13:12:56 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 13:13:37 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 01 Jan 2019 13:17:15 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0518efed8ece651030fe5b135124ba11d5271181d82013965d0b223a662d23d1`  
		Last Modified: Tue, 01 Jan 2019 13:27:33 GMT  
		Size: 244.5 KB (244473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dbdcedc0e567de24d9033d88e9cd2c95570cf94f385d9de8481b793153e475f`  
		Last Modified: Tue, 01 Jan 2019 13:27:41 GMT  
		Size: 23.6 MB (23566660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2757b5941fa1c481e5a5f51b61d8ce6ff0084e991de14cf3ec4c0090ea4ea9ca`  
		Last Modified: Tue, 01 Jan 2019 13:28:58 GMT  
		Size: 124.2 MB (124232289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:4fdd7e156f21becd6c7398446b120474082d1658d1745fe5eeea3c392e805f06
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.1 MB (188146501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbabe1bdc16e55f66168e1339105fb94f04012f431cb97cde89f827d8837a5ea`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 10:42:11 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 01 Jan 2019 10:43:18 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 10:45:03 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 01 Jan 2019 10:59:43 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:728705b49f341a57eb07e2c58fd16a7fbf4b8b85f538c38112364bf25e9476d0`  
		Last Modified: Tue, 01 Jan 2019 11:19:13 GMT  
		Size: 244.5 KB (244473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7737325de54b02a74d0dc3c9caa4ac36cb01229b12bb9e45282c8fe871d82e49`  
		Last Modified: Tue, 01 Jan 2019 11:19:26 GMT  
		Size: 28.2 MB (28223032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dad49b13b612f416c00e97656612136e36aed3815f62bf3f4d78da24e43429b`  
		Last Modified: Tue, 01 Jan 2019 11:21:02 GMT  
		Size: 139.3 MB (139341485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; 386

```console
$ docker pull mono@sha256:3eb53c6ec633e2b3021aa13517a1936983b774f069c6854136c37b545d7542b7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (233023712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7819bbb4752b32a441969a4079e9b0d6b072de2108786ce8500e0edfd13024c6`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 13:02:06 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 01 Jan 2019 13:02:18 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 13:02:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 01 Jan 2019 13:05:23 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a3439e6a87a8ed6cb0d0dc299a309565268f3c6ef0a6849aad53a217788e21`  
		Last Modified: Tue, 01 Jan 2019 13:07:43 GMT  
		Size: 244.5 KB (244454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142b0528f5b86a8d02656ed8f3f8aa53131ce2e9b813329be2fc36b8dff9da3b`  
		Last Modified: Tue, 01 Jan 2019 13:08:02 GMT  
		Size: 64.0 MB (63955301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84741bc12abf64510e0cdd8eaef8a9680f83ff24a7035b99c593f62551cee128`  
		Last Modified: Tue, 01 Jan 2019 13:09:07 GMT  
		Size: 145.7 MB (145690802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
