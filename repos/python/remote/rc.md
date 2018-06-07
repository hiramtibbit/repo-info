## `python:rc`

```console
$ docker pull python@sha256:ea967bd6f8f042dec86beab8533b866230cd8ec771a67dcb23e01ab2f475d6d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.2248; amd64
	-	windows version 10.0.16299.431; amd64

### `python:rc` - linux; amd64

```console
$ docker pull python@sha256:6b08a0a8172ca1e98d1b977c7e62847ca78740a5ef1e41bc79edc569ecf1b574
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.4 MB (351424376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19c17b286cdffaa05c5eb1ff32cd499845c89cd77776ffb10aa9642ed31034f3`
-	Default Command: `["python3"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Jun 2018 23:14:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:16:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 02:36:54 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 02:36:54 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 02:37:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 02:37:02 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 06 Jun 2018 22:55:55 GMT
ENV PYTHON_VERSION=3.7.0b5
# Wed, 06 Jun 2018 22:59:11 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 06 Jun 2018 22:59:13 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 06 Jun 2018 22:59:13 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Wed, 06 Jun 2018 22:59:21 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 06 Jun 2018 22:59:22 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c05365ee2a2245bb9f6786bc88aa12bf64da676a52668424437826d0f0cb92`  
		Last Modified: Tue, 05 Jun 2018 23:41:58 GMT  
		Size: 10.8 MB (10774184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231cb0e216d30ea48044d44d37fba016eb67eca9b19b29a741d95775359d3533`  
		Last Modified: Tue, 05 Jun 2018 23:41:55 GMT  
		Size: 4.3 MB (4335886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2aa70286b89febc36370098220c9b2960cc67c03375c9df4e82736519f1e8a`  
		Last Modified: Tue, 05 Jun 2018 23:42:32 GMT  
		Size: 50.1 MB (50063911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e80dfb6a4adf7a00bab2a596e518acdf66c94fd2534023225f6e1a1861f72417`  
		Last Modified: Tue, 05 Jun 2018 23:44:16 GMT  
		Size: 213.2 MB (213162644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1deacb483e587576e592c4a2a86bc61480a8ac34de988479fc4e3b369d4ca4d6`  
		Last Modified: Wed, 06 Jun 2018 03:57:05 GMT  
		Size: 3.2 MB (3167055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74555dd99c330a3a728dde6cff3237845ad577499864f13265be84a8134eb1e9`  
		Last Modified: Wed, 06 Jun 2018 23:28:28 GMT  
		Size: 22.8 MB (22814899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a89ca1309c8447c6373d28255f98b3cba10e50211faee808eb209cd2137a2c`  
		Last Modified: Wed, 06 Jun 2018 23:24:17 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b5e9c7f9157382c9be747282dfb2a715b2c61443b336bfc3ee449d88c86746a`  
		Last Modified: Wed, 06 Jun 2018 23:25:07 GMT  
		Size: 1.8 MB (1787396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:rc` - windows version 10.0.14393.2248; amd64

```console
$ docker pull python@sha256:c89112cbacc8478bc40b83149b5657ced8bf646605843dad8c90b25ea98e78b9
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5528033648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ba96c586cb465d3ec27244db3a7a811c1142ea1028b7afdab5a24d868110a56`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 May 2018 18:12:28 GMT
RUN Install update 10.0.14393.2248
# Thu, 10 May 2018 09:39:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 07 Jun 2018 09:14:20 GMT
ENV PYTHON_VERSION=3.7.0b5
# Thu, 07 Jun 2018 09:14:21 GMT
ENV PYTHON_RELEASE=3.7.0
# Thu, 07 Jun 2018 09:18:38 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Thu, 07 Jun 2018 09:18:40 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Thu, 07 Jun 2018 09:20:21 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Thu, 07 Jun 2018 09:20:22 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ace98111594c5bc232640988045037489d2adc214b3a14e07a8a9e9d30442cef`  
		Last Modified: Mon, 07 May 2018 18:12:28 GMT  
		Size: 1.4 GB (1395367096 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3fef3bd83b7c0eb06ccae001ea0bfed47b7258d9a1c5d593913034b18f7fd8c0`  
		Last Modified: Thu, 10 May 2018 10:17:55 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c70bb0f6e8a644c68686344985fc0279d4c235e8764d3ac9e25678c1b5bea3`  
		Last Modified: Thu, 07 Jun 2018 09:25:22 GMT  
		Size: 1.2 KB (1177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:953abd149ec01d19474e9556dd03f0fafd9918e6072d2d3f7127658d25d6dfc3`  
		Last Modified: Thu, 07 Jun 2018 09:25:18 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe26d52765f767efaa8b288be866c9d6de165d239c728a5d6bed5603f021c78d`  
		Last Modified: Thu, 07 Jun 2018 09:25:43 GMT  
		Size: 52.9 MB (52924764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e4085b1c9ba08a12239f5f59adc358a6bfb7fbd8a5e5b4080fad1e6d34a7a2`  
		Last Modified: Thu, 07 Jun 2018 09:25:18 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c2cc06ec39aeebc7dbc0b3325546d638fe0873e25b17b4aa36dc854162ef5b`  
		Last Modified: Thu, 07 Jun 2018 09:25:28 GMT  
		Size: 9.7 MB (9749922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd294298f4c331e5d6be6c0fb8b8fb78c378daee4a29670d0c9a51ad2fb2a31`  
		Last Modified: Thu, 07 Jun 2018 09:25:19 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:rc` - windows version 10.0.16299.431; amd64

```console
$ docker pull python@sha256:6c0aee9520ae1204d33a8b65a81acfd3a30c9c24db374ec577b70ec84e7ed327
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3137829689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61b50ff6799698bf315cd0a487cef60d6f84519ebc2b6ddc965e8ea1951cce48`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 05 May 2018 14:37:10 GMT
RUN Install update 10.0.16299.431
# Thu, 10 May 2018 09:50:49 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 07 Jun 2018 09:20:32 GMT
ENV PYTHON_VERSION=3.7.0b5
# Thu, 07 Jun 2018 09:20:33 GMT
ENV PYTHON_RELEASE=3.7.0
# Thu, 07 Jun 2018 09:23:04 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Thu, 07 Jun 2018 09:23:05 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Thu, 07 Jun 2018 09:24:33 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Thu, 07 Jun 2018 09:24:35 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:af675e5054a0dfb3eb70b140f566a5dbe612b5212e4a4ef2a2991308740d1006`  
		Last Modified: Tue, 08 May 2018 18:45:22 GMT  
		Size: 805.9 MB (805944217 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b0d3f2c48ca5c41c53fe84071bb55725c2d6c36c8840dcef5297cc048ffe39aa`  
		Last Modified: Thu, 10 May 2018 10:18:48 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3e6ad204381048428447014f319818b49ab2951d0017773952bdba66171406`  
		Last Modified: Thu, 07 Jun 2018 09:26:02 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f2d8c7f984b7869b54e69f83e6a3504f8065269b4ba601493e7a1e01ec36ef`  
		Last Modified: Thu, 07 Jun 2018 09:26:00 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7928c54c82924333992c4669bd311d5ebc6735cfb2f2f18e29a5300de93790d`  
		Last Modified: Thu, 07 Jun 2018 09:26:23 GMT  
		Size: 48.1 MB (48148839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c48d52ca501f7706ffd8f63d5db0fe332e5f77c7999cbbd1d656cb5a0d0275`  
		Last Modified: Thu, 07 Jun 2018 09:25:58 GMT  
		Size: 1.2 KB (1177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:789aedc1037b7c0cb782d0667a3c8e07cc7bfe3fc6e0abfe12b976036acaf7ea`  
		Last Modified: Thu, 07 Jun 2018 09:26:09 GMT  
		Size: 9.4 MB (9430147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bdd83734abddf9ff823b8b90b29e171a5e1504a29f6d828edee7a2ec15a8dfe`  
		Last Modified: Thu, 07 Jun 2018 09:25:58 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
