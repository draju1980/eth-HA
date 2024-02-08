#!/bin/bash

# Read password from password.txt file
password=$(cat /root/ethdata/geth/config/password.txt)

# Execute clef newaccount command
echo "Executing clef newaccount command..."
clef newaccount --keystore /root/ethdata/geth/data/keystore <<EOF
ok
$password
EOF
echo "Clef newaccount command completed."

# Store output in a file
echo "Storing output in clef_output1.txt..."
clef_output=$(clef newaccount --keystore /root/ethdata/geth/data/keystore <<EOF
ok
$password
EOF
)
echo "$clef_output" > /root/ethdata/geth/config/clef_output1.txt
echo "Output stored in clef_output1.txt."

# Execute clef newaccount command
echo "Executing clef command..."
clef --keystore /root/ethdata/geth/config/keystore --configdir /root/ethdata/geth/config/clef --chainid 11155111 --nousb --http <<EOF
ok
EOF
echo "Clef command completed."
