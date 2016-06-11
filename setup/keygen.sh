#!/bin/sh
ssh-keygen -t ecdsa
cat ~/.ssh/id_ecdsa.pub | pbcopy
