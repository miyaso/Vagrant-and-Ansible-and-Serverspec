# Vagrant-and-Ansible-and-Serverspec
Create VMs using Vagrant and Ansible. 
Furthermore, with Serverspec, we can check servers are configured correctly .
# Install
    brew install vagrant
    brew install ansible
    gem install serverspec
# setting

      git clone https://github.com/miyaso/Vagrant-and-Ansible-and-Serverspec.git
      cd Vagrant-and-Ansible-and-Serverspec
      
Write secret.yml

      ansible-vault create ansible/vars/secret.yml
      
Enter secret pass phrase. If open file, then write user and pass to file.

      mysql_root_passwd: hogehoge
      dbuser: hogehoge
      dbpasswd: fugafuga

Close file. Write secret pass phrase to ~/.vault_password.

      echo "ecret_pass_phrase" > ~/.vault_password
      
# example

      # vagrant up VMs
      vagrant up
      # add VMs config to ~/.ssh/config 
      vagrant ssh-config --host db-server >> ~/.ssh/config
      ︙
      # set up VMs using ansible
      vagrant provision
      # test using Serverspec
      rake
      rake
