# String Calculator – TDD Kata (Ruby on Rails)

This is a test-driven implementation of the **String Calculator Kata** as part of a coding exercise, developed using Ruby and RSpec. 
---

## Problem Statement
Create a method `add(string)` that takes a string of numbers separated by delimiters and returns their sum, with the following rules:

### ✅ Features Implemented
1. Empty string returns `0`.
2. Single number returns the number.
3. Two numbers, comma-delimited, returns the sum.
4. Multiple numbers are supported.
5. Newlines `\n` are accepted as delimiters.
6. A custom delimiter can be specified using `//<delimiter>\n`.
7. Negative numbers throw an exception with a list of all negatives in the message.

---

## Tech Stack

# Install
- Ruby (ruby 3.2.2)
- Rails (rails 7.2.2.1)

# run --> 'bundle inatall'
# run --> 'bundle exec rspec' (This will evaluate the complete test cases)

---

# To verify code and test cases:
Code --> lib/tasks/string_calculator.rb
Test Cases --> spec/string_calculator_spec.rb

---
