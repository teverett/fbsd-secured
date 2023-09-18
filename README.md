
# freebsd-h

## Introduction

freebsd-h is an [Ansible](https://www.ansible.com/) playbook which provides incremental security to [FreeBSD](https://www.freebsd.org/) systems including:

* Restricting cron configurations to root
* Making key files accessible only by root
* Network hardening including blackhole
* pfsense firewall
* Disabling inetd, NFS, and sendmail
* clearing /tmp and /var/tmp on reboot
* firewalling IP6

## License

freebsd-h is licensed under the 3-clause BSD license.

## Disclaimer

freebsd-h is provided as-is. freebsd-h is intended as an example of configurations which may, or may not, improve the security posture of FreeBSD systems. The author does not accept any responsibility for damages caused by the use of these configurations. Any user using these configuration should do their own research and must take full accountability for potential risk and/or damages resulting from using them

## Acknowledgements

freebsd-h uses ideas from these sites:

* https://gist.github.com/jahil/4565d8dfa06254f0c11d
* https://docs.freebsd.org/en/books/handbook/security/  


## Rerequsites (OS X)

`brew install ansible`

`brew tap esolitos/ipa`

`brew install esolitos/ipa/sshpass`

A user account 'ansible' in the group 'wheel' is required.  Use a strong password and disable the account after the host is configured.

host IP's are in the file "inventory"

## Usage

`sh run.sh`.  Provide the login password for the account "ansible" and the root password.

