# kaliRice

Dotfiles for kali. YADM ready

# INDEX

- [Dependencies](##Dependencies)
- [Installation](##Installation)
- [Bootstrap](##Bootstrap)
- [Post-installation](##Post-installation)


## Dependencies

The only dependencie is YADM, install it running:
```
sudo apt-get update && sudo apt-get install yadm
```

## Installation

To clone the repo and use all of the configuration from the dotfiles, run:

``` 
sudo yadm clone https://github.com/0x0A-H0XT0N/kaliRice.git
```

## Bootstrap

After cloning, the bootstrap file will kick in, let it be.

It does a bunch of stuff, basically install and configures a lot of programs i use on a regular basis.

## Post-installation

Even after the bootstrap is done you still need to do a few things, these are:

1. run:

    ``` sudo apt update && sudo apt upgrade -y && sudo apt dist-upgrade -y && sudo apt -y full-upgrade -y && sudo apt autoremove -y && sudo apt update ```

2. configure timezones:

    ```sudo tzselect ```

3. edit sudoers, run: 
    
    ```sudo visudo```

    then paste:
    
    ```USER  ALL=(ALL) NOPASSWD:ALL```

    PS: change "USER" to your user

4. reboot

- The following programs still need to be configured manually:

    ```firefox-esr, redshitft-gtk, vscode, spotify, lscript, firefox-security-toolbox```