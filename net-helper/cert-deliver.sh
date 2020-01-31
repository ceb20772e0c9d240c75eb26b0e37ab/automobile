#!/bin/bash

cd ~/.mitmproxy/
cp mitmproxy-ca-cert.cer $(openssl x509 -inform PEM -subject_hash_old -in mitmproxy-ca-cert.cer | head -1)

#TODO export cert to attached devices
