name             'jenkins'
maintainer       'Peter'
maintainer_email 'test@test.com'
license          'Apache 2.0'
description      'Installs and configures Jenkins CI'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1'

recipe 'default', 'Installs Jenkins CI'