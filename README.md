## Local provisioning

- Make sure that Ansible is installed running the following command:
``./bootstrap.sh``

- Run ``make``for local provisioning.

## Remote provisioning

Copy your public key on your remote machine as an authorized key. Its purpose is to provision access without requiring a password for each login:

  ``ssh-copy-id -i ~/.ssh/id_rsa.pub <USERNAME>@<REMOTE-IP>``

Add your user to sudoers file so there is no need to request any root password to install any app during the provisioning:

  ``sudo visudo``

Add the following lines to your sudoers file:

  ``<USERNAME>  ALL=(ALL) NOPASSWD: ALL``
