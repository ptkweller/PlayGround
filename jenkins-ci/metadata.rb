name             'jenkins-ci'
maintainer       'Peter'
maintainer_email 'test@test.com'
license          'Apache 2.0'
description      'Installs and configures Jenkins CI'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1'

recipe 'default', 'Downloads Jenkins CI war and copies to Tomcat instance.'

depends 'java'
depends 'apt'
depends 'yum'