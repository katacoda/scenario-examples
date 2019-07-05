## Creating Custom Environments on Katacoda

NOTE: This is only available with a Katacoda Subscription.

## Creating a new Environment

1) Create a directory. This will be the name of the environment.

2) Within the directory, create a new directory called build

3) Within the build directory, create a series of bash scripts, prefixed with a number to indicate order. For example:

        1_installpackages.sh

        2_pulldockerimages.sh

        3_pulldemos.sh
