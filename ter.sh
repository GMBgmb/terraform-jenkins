sudo su - ansible
 sudo yum install wget unzip -y
  wget https://releases.hashicorp.com/terraform/0.12.26/terraform_0.12.26_linux_amd64.zip
   sudo unzip terraform_0.12.26_linux_amd64.zip -d /usr/local/bin/
   # Export terraform binary path temporally
    export PATH=$PATH:/usr/local/bin
    # Add path permanently for current user.By Exporting path in .bashrc file at end of file.
    $ vi .bashrc
       export PATH="$PATH:/usr/local/bin"
       # Source .bashrc to reflect for current session
        source ~/.bashrc   

	# terraform installation in ubuntu 
	$ curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -

	 sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

	  sudo apt-get update && sudo apt-get install terraform
