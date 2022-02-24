# Encryption Instructions

The assets/solutions.sh has been encrypted to `assets/solutions.sh.enc` with the passcode:

`BMXI8P7F20N7Q4XW`

The passcode is written to `assets/solutions.sh.md` and should be stored in version control. This passcode is for authors and other testers and should never be revealed to learners. Never copy `solutions.sh.md` or the key as an asset to the Challenge. When in the Challenge, asan author or tester, refer to this key to install the solutions file with `solver solutions --decrypt <key>`. Manual decryption can be done with `openssl enc -aes-128-ecb -d -in /opt/solutions.sh.enc -out /usr/local/bin/solutions.sh -K $(echo -n BMXI8P7F20N7Q4XW | hexdump -ve '1/1 "%.2x"')`When the `/usr/local/bin/solutions.sh` script is decrypted the solver testing commands`next`, `all`, and `until` will help solve each Challenge task.