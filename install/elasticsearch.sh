#!/usr/bin/env bash

version='7.15.0'

wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-${version}-linux-x86_64.tar.gz
tar -xzf elasticsearch-${version}-linux-x86_64.tar.gz
mv elasticsearch-${version} elasticsearch
rm elasticsearch-${version}-linux-x86_64.tar.gz
