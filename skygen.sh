#!/bin/bash
    cd ~/
    echo "We need some informational bits to do this properly.";
    echo "Please use a strong password for your SSHKey(RSA)!";
    #read -p "Whats your email?" email
    #echo "Your input: $email"
    read -p "What strength? (Default 4096)" strength
    echo "Your input: $strength"
    ssh-keygen -t rsa -b $strength # -C $email
    cat ~/.ssh/id_rsa.pub
    # Trying Exports of Types
    echo "Use this for standard SSH2 Public Key Input"
    ssh-keygen -e -f ~/.ssh/id_rsa
    echo "Use this for .ssh/authorized_keys file"
    ssh-keygen -i -f ~/.ssh/id_rsa.pub