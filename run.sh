#!/bin/bash

ansible-playbook -i inventory -u ansible --ask-become-pass --ask-pass --limit $1 playbook.yml

