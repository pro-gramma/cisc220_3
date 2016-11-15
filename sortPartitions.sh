#!/bin/bash
#James Neverson 10193581
lsblk --noheadings --raw | grep -e part | sort -h -k4 | tail -n2
