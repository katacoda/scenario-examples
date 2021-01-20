This scenario contains a explicit reference to host01 in the background script (init-env.sh)

```
sleep 2
ssh root@host01 "chmod 755 /tmp/load-quiz.sh; /tmp/load-quiz.sh > /tmp/load-quiz.out"
```
