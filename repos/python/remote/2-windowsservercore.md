## `python:2-windowsservercore`

```console
$ docker pull python@sha256:7e9ef9c38d0ce2911767413e9ff517583057ae317fc2eeb8cea9cde43843e35a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.3025; amd64
	-	windows version 10.0.17134.829; amd64
	-	windows version 10.0.17763.557; amd64

### `python:2-windowsservercore` - windows version 10.0.14393.3025; amd64

```console
$ docker pull python@sha256:866fcbbffae95de56d8ab2675a48d0f19415cce4e6f30fa739341b89e6fd0a26
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5766374202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:846d8da2e58e911f4be0b6d392341ce80bfe66f83d6418b49a24146db65c577d`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Thu, 06 Jun 2019 17:26:33 GMT
RUN Install update ltsc2016-amd64
# Wed, 12 Jun 2019 12:41:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 14:29:57 GMT
ENV PYTHON_VERSION=2.7.16
# Wed, 12 Jun 2019 14:29:58 GMT
ENV PYTHON_RELEASE=2.7.16
# Wed, 12 Jun 2019 14:32:09 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.msi'; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 14:32:11 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 12 Jun 2019 14:33:53 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 14:34:58 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 12 Jun 2019 14:35:00 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b39d5d9be066f0f1bd27e6ca44acdf71d85b81b878665ee46215ddcb7ded74a0`  
		Last Modified: Tue, 11 Jun 2019 17:20:14 GMT  
		Size: 1.6 GB (1639988840 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:57bc0501728e0596928517947d7b1c59a1010c84b5d54e534c0bad3109160d4c`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4295d2ab7590af23f03114c8b8499b36e70dca2e9042382eb6fda8657632ffe`  
		Last Modified: Wed, 12 Jun 2019 14:50:01 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6bf2cda79978e7361609d155d97d7691678a31e11c70420207421045200e78`  
		Last Modified: Wed, 12 Jun 2019 14:50:01 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1267a575885584f46cdce86d47a86ff079661e58dfc6e2bf54c993502e19a947`  
		Last Modified: Wed, 12 Jun 2019 14:50:20 GMT  
		Size: 39.3 MB (39264710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:988ec6b834c3ada6e71ff9be2265c2fb2fe2a0a490c85f685a8d2a7116e86901`  
		Last Modified: Wed, 12 Jun 2019 14:49:58 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9a3c046fd5fa625e1e3fe654020f18a5c05a7db692534f55cb73aa1aa582a8`  
		Last Modified: Wed, 12 Jun 2019 14:50:12 GMT  
		Size: 9.8 MB (9815548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820b021be358d35a2a626ff2f75e2208021a8437e8233c340066391d34d822aa`  
		Last Modified: Wed, 12 Jun 2019 14:50:01 GMT  
		Size: 7.3 MB (7313291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:125087425a819d9fa6f4ee35db822da9650dccea6fd1882045e0a88d8ae785be`  
		Last Modified: Wed, 12 Jun 2019 14:49:58 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-windowsservercore` - windows version 10.0.17134.829; amd64

```console
$ docker pull python@sha256:edea361fe6a7631c938c30536ca93a6251bf73a5d00da2d1a9112ffc4c709f52
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2354200961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d256916af599430e7cebc3f37ef69411226fd732c8666710543210aae334c35`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 08 Jun 2019 17:13:11 GMT
RUN Install update 1803-amd64
# Wed, 12 Jun 2019 12:50:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 14:35:11 GMT
ENV PYTHON_VERSION=2.7.16
# Wed, 12 Jun 2019 14:35:13 GMT
ENV PYTHON_RELEASE=2.7.16
# Wed, 12 Jun 2019 14:37:04 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.msi'; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 14:37:06 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 12 Jun 2019 14:38:09 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 14:38:40 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 12 Jun 2019 14:38:41 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2de32ee3b543cb2d1e3b6dd5d2578256c4bde975bc92e959325ff83ae8ed617b`  
		Last Modified: Tue, 11 Jun 2019 18:21:27 GMT  
		Size: 648.5 MB (648518427 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:206778a210152eae038ff9a90449b1070a39e0fb0f5ae857ae539e996315adec`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e13c83a94ea1164722d13b82a09c74f325dc8174f84127a5557ad75b5b6f8853`  
		Last Modified: Wed, 12 Jun 2019 14:50:45 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de2f9fcd437be539e0ef3239c8fa9ceaac2c8b1ede59b8d37b5c755c3eaa068`  
		Last Modified: Wed, 12 Jun 2019 14:50:44 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418f8fac34b027bdfb2f95d73de0c72ffa57d42259f6321370103d980ed393ad`  
		Last Modified: Wed, 12 Jun 2019 14:51:03 GMT  
		Size: 38.8 MB (38770624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad596b7cadcf0f29d29c426664ec4c0d93215569c385b1ddd4b600c2c750a691`  
		Last Modified: Wed, 12 Jun 2019 14:50:45 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:789a9a08b5e43a64255e7d007f6a0547aa478dc3c371a9404420c5ff980b90c4`  
		Last Modified: Wed, 12 Jun 2019 14:50:53 GMT  
		Size: 4.9 MB (4852618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ef21b7b268bddbcb6e69f0ae8cee0f2d863062b91af6544d64ca8421f6f14b`  
		Last Modified: Wed, 12 Jun 2019 14:50:43 GMT  
		Size: 2.4 MB (2365147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:387c72061c7e1b45d25fdd87e8f92c2a29f92354a7f4debeb0da96793a8744eb`  
		Last Modified: Wed, 12 Jun 2019 14:50:41 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-windowsservercore` - windows version 10.0.17763.557; amd64

```console
$ docker pull python@sha256:5871661b0e9461f7941566b9173252334424005f4614a682735fe7e742c8064d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2431646286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:826e8fbe90ad2a5c7e08b134dcab4d2bf761eb60cce959fb00074bd8e0a9c673`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 08 Jun 2019 04:13:36 GMT
RUN Install update 1809-amd64
# Wed, 12 Jun 2019 12:57:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 14:38:55 GMT
ENV PYTHON_VERSION=2.7.16
# Wed, 12 Jun 2019 14:38:56 GMT
ENV PYTHON_RELEASE=2.7.16
# Wed, 12 Jun 2019 14:40:43 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.msi'; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 14:40:44 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 12 Jun 2019 14:41:45 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 14:42:15 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 12 Jun 2019 14:42:17 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:266cffe9d908cf404f555fd6f60ff19167f6393ce6d42f4c9e6e4014cd04bccd`  
		Last Modified: Tue, 11 Jun 2019 18:25:33 GMT  
		Size: 851.4 MB (851381073 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c0c4ec7a15b931644ced0837c5a43642233d0cbdf67b1a3971033461576ee05`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:259a7bc6de02343ff5e143bba2b9cde6d9ac9dbadea69517c6bd5dbb9d1bc226`  
		Last Modified: Wed, 12 Jun 2019 14:51:25 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770a6b49aeb9f567643919151bccd17ddd0440b4523e5efa0bd9b3d26595cca0`  
		Last Modified: Wed, 12 Jun 2019 14:51:25 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef909845babd217e60367fd914696394b601b2e2e2fc629872e7ea8b8e51460`  
		Last Modified: Wed, 12 Jun 2019 14:51:46 GMT  
		Size: 38.4 MB (38364257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeeb8139fdeb5318ef6415502c19e75deb0c06394a86900d507395ba66e2c91d`  
		Last Modified: Wed, 12 Jun 2019 14:51:23 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b22704657bcfce4245db71f4cfb6b59a3ee4be04bd49d95e3f7e15e9ec200922`  
		Last Modified: Wed, 12 Jun 2019 14:51:34 GMT  
		Size: 4.8 MB (4846369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e65c6e7a84da2521544194cedc5c6044eb0f32981b898ed0ba675106110195`  
		Last Modified: Wed, 12 Jun 2019 14:51:24 GMT  
		Size: 2.4 MB (2363345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda1fefdf28762741738521f8af11492bcd438f70354b2e9ac6cab72a593b051`  
		Last Modified: Wed, 12 Jun 2019 14:51:22 GMT  
		Size: 1.2 KB (1151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
