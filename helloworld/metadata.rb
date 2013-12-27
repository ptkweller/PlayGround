name             'helloworld'
maintainer       'Peter'
maintainer_email 'test@test.com'
license          'Apache 2.0'
description      'Installs and configures HelloWorld.html'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.0.1'

recipe 'default', 'Installs HelloWorld.html file'

depends 'apache2'