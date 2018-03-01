# Loan Calculator

A simple tech test completed using Ruby and RSpec to reintroduce myself to effective test driven development and ruby.

I'm focussing mostly on the logic and test driving for now but may include some more in depth tech later.


### User Stories

```
* = completed

As a borrower,
So I can borrow money,
I need to be able to take out a loan of a set amount *

As a borrower,
So I can payback my loan,
I need to be able to make payments to my bank *

As a borrower,
So I can ensure my loan is being paid off,
I need to know what the minimum montyly payment currently is *

---

As a bank,
So I can keep track of my borrowers,
I need to be able to see a list of all the borrowers I have *

As a bank,
So I can make money on the loan,
I need to be able to add interest to the balance *

As a bank,
So I can ensure the money will be paid back,
I need to know what the minimum monthly payment is *

As a bank,
So I can charge my customer for not making the monthly payment,
I want to be able to add a charge to the balance for late payment *

As a bank,
So I can lend as much money as possible,
I want to be able to do all these things with more than one user

---

Edge Cases:

Minimum payments never less than 50 *

Payments of less than the minimum are not accepted

Payments must be a numerical value

```