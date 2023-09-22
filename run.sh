#!/bin/sh

ansible-playbook -i inventory -u ansible --ask-become-pass --ask-pass playbook.yml

