## `python:2-windowsservercore`

```console
$ docker pull python@sha256:37bed1fcaabb19a3300c37ec72b1a15b231451732566affeb68abd1d9a5fe595
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2189; amd64
	-	windows version 10.0.16299.371; amd64

### `python:2-windowsservercore` - windows version 10.0.14393.2189; amd64

```console
$ docker pull python@sha256:d1b6f0bd04c4298b4e2831a6b9037d982fdaad185a49406fe46c65f3df1d9d06
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5449782018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3013aad892ca3c91a9afd602cd9e3052deaa1f573b161886444256d05ad68930`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Fri, 06 Apr 2018 21:38:52 GMT
RUN Install update 10.0.14393.2189
# Fri, 27 Apr 2018 09:14:07 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 27 Apr 2018 09:44:41 GMT
ENV PYTHON_VERSION=2.7.14
# Fri, 27 Apr 2018 09:44:42 GMT
ENV PYTHON_RELEASE=2.7.14
# Fri, 27 Apr 2018 09:46:57 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.msi'; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Fri, 27 Apr 2018 09:46:58 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Fri, 27 Apr 2018 09:48:32 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Fri, 27 Apr 2018 09:49:34 GMT
RUN pip install --no-cache-dir virtualenv
# Fri, 27 Apr 2018 09:49:35 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8f3369c32b2e3183340664c2bd4babb9c71cedc116fba70fda326df3ef9e48cc`  
		Last Modified: Fri, 06 Apr 2018 21:38:52 GMT  
		Size: 1.3 GB (1324227515 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a34e69c38a84789216f85ca14f1cd2fd80f3bf47f351a2a3130f2b3241a8db39`  
		Last Modified: Fri, 27 Apr 2018 09:24:43 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f9be72ea87a7ae1b2b9bd4c39f5a35ac2aa83115818d3f4931ae57c60a64724`  
		Last Modified: Fri, 27 Apr 2018 09:57:16 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73181f65e2a5595ea972cfd8a12a66615de23c57d263238ad225fd74bcac10c9`  
		Last Modified: Fri, 27 Apr 2018 09:57:15 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c86964cda993a2ef8b0f8c19759987a14fce6f1eda914dd2aa3f60e710b514`  
		Last Modified: Fri, 27 Apr 2018 09:57:34 GMT  
		Size: 38.5 MB (38484784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9ffdccdf138ad8295e4861bfad57f71888a51da5875cc7eabda9829c75026`  
		Last Modified: Fri, 27 Apr 2018 09:57:12 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd8fa4a777ffdce887c6036131037e8872c1e322344006cf35a17b7562225cc`  
		Last Modified: Fri, 27 Apr 2018 09:57:21 GMT  
		Size: 9.4 MB (9448016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:828abf284b4f1e07a765dc5cf0a0cf3916ff7cdbf62c52f72293d03b3e5b6fe1`  
		Last Modified: Fri, 27 Apr 2018 09:57:15 GMT  
		Size: 7.6 MB (7629820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cecf37170fc9e78444ab68cb0f9cc6bc459f84d2c1cd063f184bfc4237c72f1`  
		Last Modified: Fri, 27 Apr 2018 09:57:12 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-windowsservercore` - windows version 10.0.16299.371; amd64

```console
$ docker pull python@sha256:ee97f2659691e3d43099e9077b58ae4e1630699393c65b11cfdd7aa72d64558b
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3090600484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97bcb1e9c67a626aef973c1bce0ace6abac79ea2d33566b74b332557bfab7649`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 02 Apr 2018 18:15:35 GMT
RUN Install update 10.0.16299.371
# Wed, 11 Apr 2018 09:40:22 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 27 Apr 2018 09:49:53 GMT
ENV PYTHON_VERSION=2.7.14
# Fri, 27 Apr 2018 09:49:53 GMT
ENV PYTHON_RELEASE=2.7.14
# Fri, 27 Apr 2018 09:51:43 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.msi'; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Fri, 27 Apr 2018 09:51:44 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Fri, 27 Apr 2018 09:53:02 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Fri, 27 Apr 2018 09:53:57 GMT
RUN pip install --no-cache-dir virtualenv
# Fri, 27 Apr 2018 09:53:58 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2dd7b93d509d5e7086ff08713d58180cc639adf9536c560a2dca5bf7139f5323`  
		Last Modified: Tue, 10 Apr 2018 16:34:04 GMT  
		Size: 761.5 MB (761549625 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c87bca28288a632bcbf4a2a60ebf89a3e996de2cd79edec70cde506458b9b16c`  
		Last Modified: Thu, 26 Apr 2018 17:18:06 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b430a13eed2625cb131306acdbd80b6921cc26934808405b39cf62baedb26efb`  
		Last Modified: Fri, 27 Apr 2018 09:57:52 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5a8df3ba6f85a065f85c1128c6d6506ee62156f44b232990350c4cd6ad3b8a`  
		Last Modified: Fri, 27 Apr 2018 09:57:51 GMT  
		Size: 1.2 KB (1169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db19d6b6bcd6efe7f13d113a37ce1fd2860b2c0eae9ad7d7784cf125c479e59f`  
		Last Modified: Fri, 27 Apr 2018 09:58:07 GMT  
		Size: 38.2 MB (38230244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f8f2b3b78243f137bcd8b643b8f8afcf33f8b884d9334cb646c10920bac164`  
		Last Modified: Fri, 27 Apr 2018 09:57:46 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a9f0ecd6979fc0aa6b5376a039c70f61881881924b049ea50cc395969b5ed2`  
		Last Modified: Fri, 27 Apr 2018 09:57:55 GMT  
		Size: 9.2 MB (9162903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0695789a103b66ac651b332b7bf7c1155302c2fcbae2a7611a97ddaf6f8d9d4d`  
		Last Modified: Fri, 27 Apr 2018 09:57:49 GMT  
		Size: 7.4 MB (7351185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10991425dc7e9eda0939ff8af8803ac7537bab1cd7585fccfba2579f76258ba8`  
		Last Modified: Fri, 27 Apr 2018 09:57:46 GMT  
		Size: 1.2 KB (1176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
