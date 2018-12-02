Katacoda supports inline interactive quiz elements that can be included in any step of the scenario. The Quiz format supports different question and answer styles.

Users cannot proceed until they have answered all the questions correctly.

Q1 requires users to enter the extract string.

>>Q1: Enter the extract string test<<
=== test

Q2 requires user to enter a string containing a certain keyword.

>>Q2: Enter the string containing test<<
=~= test

Q3 is multiple choice, requiring users to select all the correct answers.

>>Q3: Multiple Choice <<
[*] Correct
[*] Correct
[ ] Incorrect

Q4 is a single choice that users must select.

>>Q4: Single Choice <<
(*) Correct
( ) Incorrect

## Markdown

The markdown syntax for the above quiz is as follows:

<pre>
>>Q1: Enter the extract string test<<
=== test

>>Q2: Enter the string containing test<<
=~= test

>>Q3: Multiple Choice <<
[*] Correct
[*] Correct
[ ] Incorrect

>>Q4: Single Choice <<
(*) Correct
( ) Incorrect
</pre>

**Note:** There should not be a blank line between the question and the possible answers.