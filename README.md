
# freebsd-h

## Introduction

freebsd-h is an [Ansible](https://www.ansible.com/) playbook which provides incremental security to [FreeBSD](https://www.freebsd.org/) systems including:

* Restricting cron configurations to root
* Making key files accessible only by root
* Network hardening including [blackhole](https://man.freebsd.org/cgi/man.cgi?query=blackhole)
* pf firewall
* Disabling inetd, NFS, and sendmail
* Clearing /tmp and /var/tmp on reboot
* Firewalling IP6
* ALSR, PIE and WX
* Kernel [securelevel](https://man.freebsd.org/cgi/man.cgi?query=securelevel&apropos=0&sektion=0&manpath=FreeBSD+13.2-RELEASE&arch=default&format=html) 2
* Blowfish password encryption
* [node_exporter](https://github.com/prometheus/node_exporter) enabled

## License

freebsd-h is licensed under the 3-clause BSD license.

## Disclaimer

freebsd-h is provided as-is. freebsd-h is intended as an example of configurations which may, or may not, improve the security posture of FreeBSD systems. The author does not accept any responsibility for damages caused by the use of these configurations. Any user using these configuration should do their own research and must take full accountability for potential risk and/or damages resulting from using them

## Acknowledgements

freebsd-h uses ideas from these sites:

* https://docs.freebsd.org/en/books/handbook/security/
* https://gist.github.com/jahil/4565d8dfa06254f0c11d
* https://www.unitedbsd.com/d/1093-freebsd-hardening-script
* https://bsdadventures.com/harden-freebsd/
* http://defcon1.org/html/Security/Secure-Guide/secure-guide.html
* https://fleximus.org/howto/secure-freebsd
* https://www.zenarmor.com/docs/freebsd-tutorials/best-practices-for-freebsd-security
* https://forums.freebsd.org/threads/my-freebsd-hardening-script.89523/
   
## Rerequsites (OS X)

`brew install ansible`

`brew tap esolitos/ipa`

`brew install esolitos/ipa/sshpass`

* A user account 'ansible' in the group 'wheel' is required.  Use a strong password and disable the account after the host is configured.
* Host IP's are in the file "inventory"
* FreeBSD host has python installed (`pkg install python`)

## Usage

`sh run.sh`.  Provide the login password for the account "ansible" and the root password.

