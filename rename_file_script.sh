#!/bin/bash
find ./image_vneck_train -name '*.jpg' | awk 'BEGIN{ a=0 }{ printf "mv \"%s\" vneck.%04d.jpg\n", $0, a++ }' | bash

