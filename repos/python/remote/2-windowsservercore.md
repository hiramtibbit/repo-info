## `python:2-windowsservercore`

```console
$ docker pull python@sha256:c6657b9b766119ca1787f167219c10d8c9392aa2673d16b1dd25a4adf52afef1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64
	-	windows version 10.0.16299.611; amd64

### `python:2-windowsservercore` - windows version 10.0.14393.2430; amd64

```console
$ docker pull python@sha256:e815aa5a2312d2fc06fb234417cc066fe2047510bf8be2a595c5847f19eb09d6
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5567356084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f43e8bd8791843350e98d1f38e4499fac99b3f663de584d444f1fc637a9f5e9`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:52:23 GMT
RUN Install update 10.0.14393.2430
# Wed, 15 Aug 2018 09:35:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 23 Aug 2018 10:12:33 GMT
ENV PYTHON_VERSION=2.7.15
# Thu, 23 Aug 2018 10:12:34 GMT
ENV PYTHON_RELEASE=2.7.15
# Thu, 23 Aug 2018 10:15:19 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.msi'; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Thu, 23 Aug 2018 10:15:20 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 23 Aug 2018 10:17:23 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Thu, 23 Aug 2018 10:18:48 GMT
RUN pip install --no-cache-dir virtualenv
# Thu, 23 Aug 2018 10:18:49 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6631c2d2a60cd7ee5b334c2725b03e4d4976abb9a19c8e8dc9b806b3752745a6`  
		Last Modified: Mon, 13 Aug 2018 17:52:23 GMT  
		Size: 1.4 GB (1441905067 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3e7b18583f4b1d198a1b0f222de8583f8565481a4b667be0863f398eaad783dd`  
		Last Modified: Wed, 15 Aug 2018 09:53:36 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86bf7db17bdd19bb3593e8ea9562ea31314522468d4df99ae41ce610d5f28d07`  
		Last Modified: Thu, 23 Aug 2018 10:27:55 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3461331e756762f88e9f3a154e7ab346ce4d8b49b8de378d4b58ef80301af707`  
		Last Modified: Thu, 23 Aug 2018 10:27:57 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15d482e2240613dcf6a00129b403d533d5a8af0c3eca8e2a1b15ccbc480bbc8e`  
		Last Modified: Thu, 23 Aug 2018 10:28:15 GMT  
		Size: 39.0 MB (38973466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8289803db918c76b3e2fff927c5bc9e9b4863da714c2a323695cbd7076a811a`  
		Last Modified: Thu, 23 Aug 2018 10:27:51 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd28c84c2371dd81fb2a471567bc371df194a809c3a2b39e4e2272d10fbecb36`  
		Last Modified: Thu, 23 Aug 2018 10:28:00 GMT  
		Size: 9.5 MB (9477970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e938d703262f611d8894e49956e1f2c41188dac2c1a2f5a7b09304b58a58df3`  
		Last Modified: Thu, 23 Aug 2018 10:27:55 GMT  
		Size: 7.0 MB (7007691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e01ff327da9a841bbccb35e4ce4b121dd14d5e4fe1fd3553676dfa65bb17a5`  
		Last Modified: Thu, 23 Aug 2018 10:27:51 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-windowsservercore` - windows version 10.0.16299.611; amd64

```console
$ docker pull python@sha256:2d465dbc084603d621583b53975496167d0120e9c9f94586524cee4b1b91bb50
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3166858360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:442eedbf7a99148651a4221e6ddadca4ca3a6b96fbf414ca7fc51de972bfc737`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 08 Aug 2018 23:20:54 GMT
RUN Install update 10.0.16299.611
# Wed, 15 Aug 2018 09:39:55 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 23 Aug 2018 10:19:02 GMT
ENV PYTHON_VERSION=2.7.15
# Thu, 23 Aug 2018 10:19:03 GMT
ENV PYTHON_RELEASE=2.7.15
# Thu, 23 Aug 2018 10:21:24 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.msi'; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Thu, 23 Aug 2018 10:21:25 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 23 Aug 2018 10:23:07 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Thu, 23 Aug 2018 10:24:19 GMT
RUN pip install --no-cache-dir virtualenv
# Thu, 23 Aug 2018 10:24:20 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c4047f78756c2319eb99557ec7139906cf11af6c91aefcc0e44ac49a5481d8e4`  
		Last Modified: Mon, 13 Aug 2018 18:28:41 GMT  
		Size: 837.8 MB (837835144 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ddd10e03dfdc774fc9b5f720df0030a8f59a8c2c78e843c72b45c30af480dc60`  
		Last Modified: Wed, 15 Aug 2018 09:54:44 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089cb9fe26277a6ff881e4cf6c51bd7011165ea0a5aabfeff8affcd6a7e5b41e`  
		Last Modified: Thu, 23 Aug 2018 10:28:33 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18096180ab444811c118d9d8940beca8acf59d61bd3518b318cc21a36aa5c3b7`  
		Last Modified: Thu, 23 Aug 2018 10:28:34 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c8b7fd86bca2c0889e6431bd20ede467c05b1b902d8c2c5d9d60c72e355305`  
		Last Modified: Thu, 23 Aug 2018 10:28:53 GMT  
		Size: 38.7 MB (38740347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc27036270a9b3b1d95c2d8800dd3f00c504c7aa7fc1768572c27eb645826bb6`  
		Last Modified: Thu, 23 Aug 2018 10:28:29 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7eaf3256502756107f2821fcd90c5fc2b458e97ba34152edcac11a521710d85`  
		Last Modified: Thu, 23 Aug 2018 10:28:40 GMT  
		Size: 9.2 MB (9214528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa48bad717025f8f95cccb57d8a93b754a6c6db0e3b826ed825d0e38f9fa9d27`  
		Last Modified: Thu, 23 Aug 2018 10:28:33 GMT  
		Size: 6.8 MB (6761776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b7d4e93a243151e13f435705245261d878c0cbd55192aadf337c340e99878a`  
		Last Modified: Thu, 23 Aug 2018 10:28:30 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
