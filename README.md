# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

Lab Summary:

In this lab we learned how a half subtractor works. It works by the difference being A ^ B and the burrow being A * B. We first built a 4 bit ones complement adder which implement the full adder from the previous lab. We had to handle end around carry by adding carry out in seperate set of full adder so there wasnt a loop. Then we made a 8 bit twos complement converter. The way we did that was we inverted all the bits and then simply added 1 to it. 

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.

A half adder adds two bits (A + B) which produces a sum = A ^ B and the carry being A * B. The substractor does a similar logic where the difference = A ^ B and the borrow is ~A*B.

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?

The reason why the use of ones complement gets hard is that the end around carry needs to be added to the least significant bit after the main addition. This also requires second stage addition which can cause an accidental loop to run which can cause timing issues to occur.

### 3 - What is the edge case and problem with Two’s Complement number representation?

Twos compliment has an edge case, to get twos complement you get it by negating/ getting the ones complement and then adding one. Although the edge case can be for eg in 4-bit scenario 1000, the one complement of this is 0111 and the twos complement would be 1000 again. So the smallest number cant be negated because it overflows to itself.

