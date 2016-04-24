Vagrant.configure(2) do |config|
  config.vm.provision "shell", inline: <<-SHELL
     sudo apt update
     gem install --no-ri --no-rdoc deep_merge
     SSH="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDFMsAx63e3lUtDof6kEMy3FxtUNHwkGpeULNffkqkQx21PPTk5v4+uwMeT9zosdllM9OnA3N63PiMUTOhmVYwsKXx+LOIFhdqnAGj/wwR1+V07ypJcF+Wvie1IGTjtaVjaABRBhqOcG2T82j1Zu26QJSpax831j/cEDFTKaw4uX0TuS3PAVg2gu3dtLeF78AXoqqQp057k3LVs8MZ13t4z76LmEohQRjcxZ9XlRyQ9L0/o92M5MeMOd+OkrSRgbRyfqTNrPwEMuLJrM/kKWvz0Ho99lcLX265KGGu0wSGMBc8ou125sAY/tGjA8e1A2XwUVq7myRcvqd4hWWPftQ995ETFA8LaqbR5waGJ9ESIcefpG6TV7fSK2jD1Hs17KljVwfL/k42G3Rcp8H5OUKw87DrjkKjDp0so1gst/L05eeP0D11sO9NToe4/p7PfLMyrXUMjOjKjbPQwrZ14XABxj4IdrANcpZcSUdrdWGNIUsS4bTn0q+UrKCVUWZUdE8QfR+ttvCEvFpoO4GxmayswNCPStvaWSp+BDGj9WWOa+Vh1JpylJ/4xsDqBZNEBnCkMfI3/STZ03dvnAN+Xx299hfvN58yW5eVt2BGHtgwOTVx48FVFwSaIuC00GDJzsS/1rbTNDaLPu4dfuQlvnDlQ7iQuxx6PbxrCYvQYthGlnw== d@nube"
     echo $SSH >> /home/vagrant/.ssh/authorized_keys
  SHELL
end
