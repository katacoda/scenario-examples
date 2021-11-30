The [xargs](https://man7.org/linux/man-pages/man1/xargs.1.html) command is powerful in Linux. Given the set of "1 2 3 4 5", with just one line add the string "I am [n]" to each file [n].txt. For instance file `2.txt` should contain a single line with "I am 2", file `5.txt` will contain "I am 5". This challenge needs to see your command, so place it in the provided script file `my-xargs.sh`.

💡 Tip: do not use a `for` or `while` loop, just xargs.
