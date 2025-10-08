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

In this lab we learned how a half subtractor works. It works by the difference being A ^ B and the borrow being A * B.

After that, we built a 4 bit ones complement adder which implemented the full adder from the previous lab. We had to handle end around carry by adding a carry out in seperate set of full adder so there wasnt a loop. Functionally, this second set of addition looked like A + 0 with a carry in of 0 or 1, whatever the value of the msb carry from the first set of addition was.

Then we made an 8 bit twos complement converter. The way we did that was we inverted all the bits from whatever number was passed in to make the ones complement and then simply added 1 to it. 

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.

A half adder adds two bits (A + B) which produces a sum = A ^ B and the carry being A * B. The substractor does a similar logic where the difference = A ^ B and the borrow is ~A*B.

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?

The reason why the use of ones complement gets hard is that the end around carry needs to be added to the least significant bit after the main addition. This requires second stage of addition which can cause an accidental loop to run which can cause timing issues to occur and additionally just adds unnecessary executions to a simple program.

### 3 - What is the edge case and problem with Two’s Complement number representation?

Twos compliment has an edge case: to get twos complement you get it by finding the ones complement of whatever number is negative and then adding one. Although the edge case can be for eg in 4-bit scenario 1000, the one complement of this is 0111 and the twos complement would be 1000 again. So the smallest number cant be negated because it overflows back to itself. The edge cases occur when the number being subtracted falls outside of the valid range for that bit size.

