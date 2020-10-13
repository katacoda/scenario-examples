Katacoda supports inline interactive quiz elements that can be included as any step within the scenario. The Quiz format supports different question and answer styles. Users cannot proceed until they have answered all the questions correctly.

## Example Quiz

Within Q1, users are required to enter the exact string.

>>Q1: Enter the exact string test<<
=== test

For Q2, the question requires user to enter a string containing a certain keyword.

>>Q2: Enter the string containing test<<
=~= test

Q3 is multiple choice question, requiring users to select all the correct answers.

>>Q3: Multiple Choice <<
[*] Correct
[*] Correct
[ ] Incorrect

Q4 is a single choice where users must select the correct answer.

>>Q4: Single Choice <<
(*) Correct
( ) Incorrect

## Markdown

All of the above questions have been defined within Markdown. There is no official syntax for a Quiz within markdown, as such the syntax for the above quiz is as follows:

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

The ***** within single and multiple choice indicates the correct answer. The syntax **===** is exact match, while **=~=** is a string containing match.

**Note:** There should not be a blank line between the question and the possible answers.

## Correct and Incorrect Answers

When a user clicks **Check Answers**, the correct answers will appear with a Green tick! If they have entered anything incorrect they will be asked to check and try again.
