## `python:2-windowsservercore`

```console
$ docker pull python@sha256:0a93d75e8c384af2ea96bad82672122824255b065cc01d8f6691b30b860be856
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2791; amd64
	-	windows version 10.0.16299.967; amd64
	-	windows version 10.0.17134.590; amd64
	-	windows version 10.0.17763.316; amd64

### `python:2-windowsservercore` - windows version 10.0.14393.2791; amd64

```console
$ docker pull python@sha256:58df268aafc2f339c0d7e73eb804385ef9fd8e29c22da26220df7c60806ef16c
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5696071490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccbc27463dc1225e95ca9400f8eef9ab29b48f53bb6f618e08e05173ae8ae152`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Feb 2019 20:08:57 GMT
RUN Install update 10.0.14393.2791
# Wed, 13 Feb 2019 10:35:06 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 13 Feb 2019 10:54:01 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 13 Feb 2019 10:54:02 GMT
ENV PYTHON_RELEASE=2.7.15
# Wed, 13 Feb 2019 10:56:20 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.msi'; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Fri, 22 Feb 2019 11:27:23 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Fri, 22 Feb 2019 11:29:11 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Fri, 22 Feb 2019 11:30:14 GMT
RUN pip install --no-cache-dir virtualenv
# Fri, 22 Feb 2019 11:30:16 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b479a92ce115faf181c1196d762b00f05ec9aa83dc2fec2b7ca094c8d6e1bfff`  
		Last Modified: Mon, 11 Feb 2019 20:08:57 GMT  
		Size: 1.6 GB (1570061102 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d6be0e7f96b74f68be8ae9cde286b6108d09d939d8cb130d00bfb8519a6b7fbc`  
		Last Modified: Wed, 13 Feb 2019 11:04:46 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46adcd8d0d772d59ce133c3a4745ed1c7f813562b84330de01542e1036d4e3b7`  
		Last Modified: Wed, 13 Feb 2019 11:07:26 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa43bc5f43d38b9f68306ae2b6e651d9747814648e3c8cac89de28f3245da119`  
		Last Modified: Wed, 13 Feb 2019 11:07:26 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf673fa08557b7cad2080ef49ad14c829f4f3a28aff2914868f21c1c4c63ca7f`  
		Last Modified: Wed, 13 Feb 2019 11:07:46 GMT  
		Size: 39.1 MB (39108190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de15b98fa719c52cbf429703f7ae3c6feb03c3b8f01bcd6aba78ffdcb6cb809`  
		Last Modified: Fri, 22 Feb 2019 12:20:52 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a92efb54decfa8cf7b0658308134ee672365dbeba91dfe12bad54912d815755`  
		Last Modified: Fri, 22 Feb 2019 12:21:02 GMT  
		Size: 9.7 MB (9709818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:183a11186c4285067604df927f1e73ad00df2fc0b68c236600de2c9a4a213add`  
		Last Modified: Fri, 22 Feb 2019 12:20:55 GMT  
		Size: 7.2 MB (7200430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f175301b4acd3099d76c59ecca35463b294474b520a65e87e1155b41eee38fd`  
		Last Modified: Fri, 22 Feb 2019 12:20:52 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-windowsservercore` - windows version 10.0.16299.967; amd64

```console
$ docker pull python@sha256:d3add0bb5e5eb9016a7a68598c50d645b60d184311598948da0dde8a47a2065e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3203035762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e87c0156fa5466597b6200d8bf78db8564cef9194541e985a40d3ed41591942`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Fri, 08 Feb 2019 07:16:29 GMT
RUN Install update 10.0.16299.967
# Wed, 13 Feb 2019 10:40:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 13 Feb 2019 10:59:29 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 13 Feb 2019 10:59:31 GMT
ENV PYTHON_RELEASE=2.7.15
# Wed, 13 Feb 2019 11:01:35 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.msi'; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Fri, 22 Feb 2019 11:30:35 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Fri, 22 Feb 2019 11:32:04 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Fri, 22 Feb 2019 11:32:55 GMT
RUN pip install --no-cache-dir virtualenv
# Fri, 22 Feb 2019 11:32:57 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:effca3ebc3a86f19a139eb7047c6e97d2fe4c941737e8d9698820d0491ccf530`  
		Last Modified: Mon, 11 Feb 2019 21:05:02 GMT  
		Size: 873.9 MB (873894336 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:731ba2742afc105cbc6ca69724a36a1b3dd4199873953d6581f5339a67939b09`  
		Last Modified: Wed, 13 Feb 2019 11:05:29 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f0de240a71718df908c74aff2694a1552e5539c252d915e4d8776375a57760`  
		Last Modified: Wed, 13 Feb 2019 11:08:05 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc6568ccb339c698fa7f37710cb55fbadb4f38323655ca12c067f078aadcbcc5`  
		Last Modified: Wed, 13 Feb 2019 11:08:04 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d012b0e410f2cb42323f84b6fe12092ac31de58f9c825d875353a74c20356be`  
		Last Modified: Wed, 13 Feb 2019 11:08:28 GMT  
		Size: 38.7 MB (38731625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da348e8cecd49cb79aed22e2d49739910e2a8e22364552a9627f18877321d893`  
		Last Modified: Fri, 22 Feb 2019 12:21:16 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67b085b98c2f337f390d26eb64316f6a1bea1f99022c6251ae8a7eda899e6e76`  
		Last Modified: Fri, 22 Feb 2019 12:21:25 GMT  
		Size: 9.3 MB (9292831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab62c19dfa048fb6fc3a57f36f02d30edf82c722a8ddb0861c69e85a06c4e9fc`  
		Last Modified: Fri, 22 Feb 2019 12:21:19 GMT  
		Size: 6.8 MB (6810373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a1e86d869b951713aaf12f10a87e732c9577b3e188e94e28a9c442dab88fbc`  
		Last Modified: Fri, 22 Feb 2019 12:21:17 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-windowsservercore` - windows version 10.0.17134.590; amd64

```console
$ docker pull python@sha256:c6cd3a4398e4da8ec80914007050cad0df07d4cba40354ab48722909766261d3
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2293572392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bdb66e3fbef38dcd47a61049e31421a6f2dfc3ec55ab284f63060bfd936506d`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Thu, 07 Feb 2019 23:00:02 GMT
RUN Install update 10.0.17134.590
# Wed, 13 Feb 2019 11:38:10 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 22 Feb 2019 11:33:04 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 22 Feb 2019 11:33:05 GMT
ENV PYTHON_RELEASE=2.7.15
# Fri, 22 Feb 2019 11:35:08 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.msi'; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Fri, 22 Feb 2019 11:35:09 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Fri, 22 Feb 2019 11:36:24 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Fri, 22 Feb 2019 11:37:01 GMT
RUN pip install --no-cache-dir virtualenv
# Fri, 22 Feb 2019 11:37:03 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5e94f7b83ce20c90f9f1b0323c3f9c3c791163e44e7069e47cd76cf50a3a07ef`  
		Last Modified: Mon, 11 Feb 2019 21:11:29 GMT  
		Size: 588.0 MB (587983329 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f0f56eeb2940f5c3391f320574c551c5f84072a3baaee150b165407a99cfba06`  
		Last Modified: Wed, 13 Feb 2019 12:50:23 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d2b26ae3a67f21599408380806748fd402ea152e4e3e137f97576d1b37b88f`  
		Last Modified: Fri, 22 Feb 2019 12:21:42 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f09c757bec2f56cbf08459c1acc818cf4605b3e9a8eebfd53757b53a3f0b806e`  
		Last Modified: Fri, 22 Feb 2019 12:21:42 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb5712d1a767fd6d207f03c36d8e65c157c3a76fbf174c25865cad90cffdaff1`  
		Last Modified: Fri, 22 Feb 2019 12:22:02 GMT  
		Size: 38.7 MB (38682464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c35ef2059d028075f2ea6184a307d85297c9d357c60eb115f4a4e63cef4ea9`  
		Last Modified: Fri, 22 Feb 2019 12:21:39 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac93e4926b626a12938cfbc131f86986ae22289471913c2044a1e23a07e22eb`  
		Last Modified: Fri, 22 Feb 2019 12:21:52 GMT  
		Size: 4.8 MB (4842277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a86b79dceb50b52bd37366e1183a270225566a11760f0d0c3886503554af45a5`  
		Last Modified: Fri, 22 Feb 2019 12:21:40 GMT  
		Size: 2.4 MB (2369999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bb2db4ae9d78a968801e33fb600298f022c3c2ef8ca7b3fce6b209c8926f23f`  
		Last Modified: Fri, 22 Feb 2019 12:21:39 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-windowsservercore` - windows version 10.0.17763.316; amd64

```console
$ docker pull python@sha256:3bed80b49f2a86bd1b3757612161c2f18d7264f055eda3c63135fdfe68f01def
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 GB (1950783136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4077d7c127ec9608b55c1093889d25cb69447f4a5f7721feadfc8b22ee0fa7c8`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Fri, 08 Feb 2019 00:24:24 GMT
RUN Install update 1809-amd64
# Wed, 13 Feb 2019 11:45:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 22 Feb 2019 11:37:17 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 22 Feb 2019 11:37:18 GMT
ENV PYTHON_RELEASE=2.7.15
# Fri, 22 Feb 2019 12:09:22 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.msi'; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Fri, 22 Feb 2019 12:09:24 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Fri, 22 Feb 2019 12:10:32 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Fri, 22 Feb 2019 12:11:01 GMT
RUN pip install --no-cache-dir virtualenv
# Fri, 22 Feb 2019 12:11:02 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9e2f2b17be7207dce6730ad64c630dc10b5b3f61a74545c7c1628d605e381297`  
		Last Modified: Tue, 12 Feb 2019 20:42:21 GMT  
		Size: 370.7 MB (370687536 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cd3ade6fc2a72f217b4055dbb0d08b2a25d881d592aeba426cc097b18d9795f7`  
		Last Modified: Wed, 13 Feb 2019 12:52:13 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c11a1d0cff3f40ab20dfe101c6f4bb685ad011883820637b1720815c6d217e`  
		Last Modified: Fri, 22 Feb 2019 12:22:20 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221057961e27af974034a067fba62a3f4e8b397e9342666911078fca10ebcacf`  
		Last Modified: Fri, 22 Feb 2019 12:22:20 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18eadef47e5701f19a442a3980a2f0607ea0ed723cef1e3f57ef9e3d691a9d7c`  
		Last Modified: Fri, 22 Feb 2019 12:23:11 GMT  
		Size: 38.2 MB (38181881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edfedef60fb74a3ae815ce80938caef1f691c62cf28e50711a6692e649d7a3fa`  
		Last Modified: Fri, 22 Feb 2019 12:22:18 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d357d6cfb262ceb60db2b5e5ee76963c87b9627bff728713612d521fc770c0`  
		Last Modified: Fri, 22 Feb 2019 12:22:28 GMT  
		Size: 4.8 MB (4845078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:267545599e9fc50830ca29608ec27d11111977c81feaa0e3acc4ea8c92138186`  
		Last Modified: Fri, 22 Feb 2019 12:22:21 GMT  
		Size: 2.4 MB (2377281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5baa3da48e3556c7d45be0befb36dad9bf636f4953b1a622b2bd40d9b69882c9`  
		Last Modified: Fri, 22 Feb 2019 12:22:18 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
