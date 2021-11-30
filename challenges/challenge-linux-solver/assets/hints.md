# Task Hints Authoring Guidelines

When authoring this collection of hints, mark each hint with the double pound (##) markdown header and title the header with Task n, Hint n. Capital T and H. Tasks and Hints nymbers start at 1. The delay period before hints are offered is defined and exported as `HINTS_DELAY` at the top of the `verifications.sh` script. See this [Challenge Hints](https://www.katacoda.community/challenges.html#ui-example) in the authoring guide on how to provide hints for your challenge scenarios. The [Katacoda markdown extensions](https://www.katacoda.community/scenario-syntax.html#katacoda-s-markdown-extensions) can be applied in this markdown. An optional horizontal divider (`---`) can be added before each Task section.

---

## Task 1, Hint 1

The latest version of `cowsay` may be herded into this challenge using apt-get. The package manager is not reporting cowsay is installed.

## Task 1, Hint 2

The `cowsay` utility is not appearing in the `whereis` $PATH.

## Task 1, Hint 3

The expected `cowsay.txt` file has not been created yet.

## Task 1, Hint 4

The `cowsay.txt` file is present but does not contain the expected message formatted to the bovine culture as outputted by the cowsay utility.

---

## Task 2, Hint 1

The expected `kinder-passwd.txt` file has not been created yet.

## Task 2, Hint 2

The `kinder-passwd.txt` file does container the passwd data in its expected columnar form. Have you discovered the ['column'](https://man7.org/linux/man-pages/man1/column.1.html) utility yet?

---

## Task 3, Hint 1

The apt package manager is not reporting poppler-utils is installed.

## Task 3, Hint 2

The `pdf2text` utility is not appearing in the `whereis` $PATH.

## Task 3, Hint 3

The expected `streetcar.txt` file has not been created yet.

## Task 3, Hint 4

The `streetcar.txt` file does not contain the expect text from the script found in the PDF. Did you use pdf2text to fill the text file?

## Task 3, Hint 5

The expected `stella.properties` file has not been created yet.

## Task 3, Hint 6

The `stella.properties` file does not have a setting for `stella=`.

## Task 3, Hint 7

The `stella.properties` file does not have a setting for `stella_exclamation=`.

## Task 3, Hint 8

The `stella.properties` file does not have the correct value for `stella=?`.

## Task 3, Hint 9

The `stella.properties` file does not have the correct value for `stella_exclamation=?`.
---

## Task 4, Hint 1

The expected `my-xargs.sh` file has not been created yet.

## Task 4, Hint 2

The `my-xargs.sh` should just have one usage of `xargs` in a single line.

## Task 4, Hint 3

There should be 5 files present called 1.txt, 2.txt, 3.txt, 4.txt, and 5.txt.

## Task 4, Hint 4

Each one of the 5 text files should contain the line "I am n", where n is the matching number in the file name. Did you consider this form `echo -n '1 2 3 4 5' | xargs -d ' ' -i sh -c "touch {}.txt ; echo 'I am {}' > {}.txt"`?
