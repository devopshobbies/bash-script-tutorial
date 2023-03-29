# Session10

## Challenge nine description

- Create a Bash script that presents the user with a menu of arithmetic operations to choose from. The script should use the select command to display the options and the case statement to perform the selected operation. The available operations should be "add", "subtract", "multiply", "divide", and "quit".

- For each operation, the script should prompt the user to enter two numbers and then display the result of the operation in the format "number1 operator number2 = result". The script should handle division by zero gracefully by displaying an appropriate error message.

- The script should continue to display the menu and perform operations until the user chooses "quit".

## sample output:

```
Select the operation:

1. add
2. subtract
3. multiply
4. divide
5. quit
   #? 1
   Enter the first number: 10
   Enter the second number: 20
   10 + 20 = 30
   #? 3
   Enter the first number: 5
   Enter the second number: 7
   5 \* 7 = 35
   #? 4
   Enter the first number: 20
   Enter the second number: 0
   Error: division by zero
   #? 5
```

### Hints to remember

- Always modify `PS3` variable to customize your menu prompt

# bash-script-tutorial

Bash scripts related to every session of this tutorial will be stored in isolated branches named after their session name.

## How to use

You can access the main code and the challenge answer key related to every session at their own branch.
