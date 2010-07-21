maintainer       "Zefiro Networks LLC"
maintainer_email "renes@zefironetworks.com"
license          "Apache 2.0"
description      "Installs/Configures ISC Bind"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "0.1"

%w{ ubuntu debian }.each do |os|
  supports os
end
