#!/bin/bash
if [[ "$port_forward" == "true" ]]; then
    openvpn --config /etc/openvpn/conf/forword.ovpn &  # Start OpenVPN in the background
fi
sleep 5  # Wait for VPN to establish (adjust timing if needed)
ovpn_run # Replace with your actual command
