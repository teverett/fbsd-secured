
# fbsd-secured

## Introduction

fbsd-secured is an [Ansible](https://www.ansible.com/) playbook which provides incremental security to [FreeBSD](https://www.freebsd.org/) systems including:

* Making key files accessible only by root
* Network hardening including [blackhole](https://man.freebsd.org/cgi/man.cgi?query=blackhole)
* pf firewall
* Disabling inetd and NFS
* sendmail in queue mode
* Clearing /tmp on reboot
* Firewalling IP6
* ALSR, PIE and WX
* Restricting cron configurations to root
* Kernel [securelevel](https://man.freebsd.org/cgi/man.cgi?query=securelevel&apropos=0&sektion=0&manpath=FreeBSD+13.2-RELEASE&arch=default&format=html) 2
* Blowfish password encryption
* [node_exporter](https://github.com/prometheus/node_exporter) enabled

## License

fbsd-secured is licensed under the 3-clause BSD license.

## Disclaimer

fbsd-secured is provided as-is. fbsd-secured is intended as an example of configurations which may, or may not, improve the security posture of FreeBSD systems. The author does not accept any responsibility for damages caused by the use of these configurations. Any user using these configuration should do their own research and must take full accountability for potential risk and/or damages resulting from using them

## Acknowledgements

fbsd-secured uses ideas from these sites:

* https://docs.freebsd.org/en/books/handbook/security/
* https://gist.github.com/jahil/4565d8dfa06254f0c11d
* https://www.unitedbsd.com/d/1093-fbsd-securedardening-script
* https://bsdadventures.com/harden-freebsd/
* http://defcon1.org/html/Security/Secure-Guide/secure-guide.html
* https://fleximus.org/howto/secure-freebsd
* https://www.zenarmor.com/docs/freebsd-tutorials/best-practices-for-freebsd-security
* https://forums.freebsd.org/threads/my-fbsd-securedardening-script.89523/
* https://forums.freebsd.org/threads/correct-way-of-securing-tmp-and-var-tmp-in-freebsd.30864/
   
## Prererequsites

### Client (OS X)

* `brew install ansible`
* `brew tap esolitos/ipa`
* `brew install esolitos/ipa/sshpass`

### Host (FreeBSD)

* A user account 'ansible' in the group 'wheel' is required.  Use a strong password and disable the account after the host is configured.  A one-time ssh login to this account is required before running ansible, to accept the host key
* Host IP's are in the file "inventory"

## Usage

`sh run.sh`.  Provide the login password for the account "ansible" and the root password.

