#!/bin/bash
gksu rmmod mwifiex_pcie && sleep 2 && gksu modprobe mwifiex_pcie
