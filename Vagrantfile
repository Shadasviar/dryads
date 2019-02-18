# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "debian/stretch64"

  config.vm.provision :docker, type: :shell, preserve_order: true, inline: <<-SHELL
    export DEBIAN_FRONTEND=noninteractive
    apt update
    apt install --assume-yes apt-transport-https ca-certificates curl gnupg2 software-properties-common
    curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
    add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
    apt update
    apt-get install --assume-yes --quiet git docker-ce
    systemctl start docker
    systemctl enable docker
  SHELL

  config.vm.provision :weles, type: :shell, preserve_order: true, inline: <<-SHELL
    git clone https://github.com/SamsungSLAV/weles
    cd weles
    make
    mv bin/weles /usr/bin/weles
  SHELL

  config.vm.provision :boruta, type: :shell, preserve_order: true, inline: <<-SHELL
    git clone https://github.com/SamsungSLAV/boruta
    cd boruta
    make
    mv bin/boruta /usr/bin/boruta
  SHELL

  config.vm.provision :boruta_service, type: :shell, preserve_order: true, inline: <<-SHELL
    cat > /etc/systemd/system/boruta.service <<EOL
    [Unit]
    Description=Boruta device manager
    
    [Service]
    Type=simple
    ExecStart=/usr/bin/boruta
    
    [Install]
    WantedBy=default.target
EOL

    systemctl enable boruta
    systemctl start boruta
  SHELL

  config.vm.provision :weles_service, type: :shell, preserve_order: true, inline: <<-SHELL
    cat > /etc/systemd/system/weles.service <<EOL
    [Unit]
    Description=Weles testing server
    
    [Service]
    Type=simple
    ExecStart=/usr/bin/weles --port 5010 --host 0.0.0.0
    
    [Install]
    WantedBy=default.target
EOL

    systemctl enable weles
    systemctl start weles
  SHELL

  config.vm.network "forwarded_port", guest: 8487, host: 8888
  config.vm.network "forwarded_port", guest: 5010, host: 8887
  config.vm.network "forwarded_port", guest: 7175, host: 8889

end
