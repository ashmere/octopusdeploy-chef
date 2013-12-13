name             'octopusdeploy'
maintainer       'Mathew Davies'
maintainer_email 'ashmere@gmail.com'
license          'All rights reserved'
description      'Installs/Configures octopusdeploy using chocolatey'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends "chocolatey"
depends "webpi", ">= 1.0.0"
supports "windows"
