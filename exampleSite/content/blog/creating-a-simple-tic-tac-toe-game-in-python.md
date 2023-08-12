--- 
title: "Creating a Simple Tic-Tac-Toe Game in Python"
date: 2022-06-15T09:00:00
draft: false
description: "Learn how to build a simple Tic-Tac-Toe game using Python"
categories: 
- "Programming"
tags: 
- "Python"
- "Game Development"
- "Source Code"
type: "featured"
---

# Creating a Simple Tic-Tac-Toe Game in Python

In this tutorial, we will learn how to create a simple Tic-Tac-Toe game using Python. Tic-Tac-Toe is a classic two-player game where the players take turns marking X or O on a 3x3 grid. The player who succeeds in placing three of their marks in a horizontal, vertical, or diagonal row wins the game.

Let's get started by writing the Python code that will allow us to play the game.

```python
def draw_board(board):
    for row in board:
        print("|".join(row))
        print("-"*5)

def check_winner(board, player):
    rows = any([all([cell == player for cell in row]) for row in board])
    cols = any([all([board[j][i] == player for j in range(3)]) for i in range(3)])
    diagonal1 = all([board[i][i] == player for i in range(3)])
    diagonal2 = all([board[i][2-i] == player for i in range(3)])
    
    return any([rows, cols, diagonal1, diagonal2])

def play_game():
    board = [[' ' for _ in range(3)] for _ in range(3)]
    current_player = 'X'
    game_over = False
    
    while not game_over:
        draw_board(board)
        print(f"Player {current_player}'s turn")
        row = int(input("Enter the row number (0-2): "))
        col = int(input("Enter the column number (0-2): "))
        
        if board[row][col] == ' ':
            board[row][col] = current_player
            if check_winner(board, current_player):
                draw_board(board)
                print(f"Player {current_player} wins!")
                game_over = True
            else:
                current_player = 'O' if current_player == 'X' else 'X'
        else:
            print("Invalid move. Try again.")
    
    print("Game over!")

play_game()
```

The above code defines three functions: `draw_board`, `check_winner`, and `play_game`. 

- `draw_board` takes a 2D list representing the Tic-Tac-Toe board and prints it in a nicely formatted way with pipes and dashes.
- `check_winner` checks if a player has won the game by checking all possible winning combinations: rows, columns, and diagonals.
- `play_game` initializes an empty Tic-Tac-Toe board, starts the game loop, and allows players to take turns by entering row and column numbers.

To play the game, simply run the `play_game` function. It will ask players for their moves and display the current state of the board until a player wins or the game ends in a draw.

Now that you have the complete source code, go ahead and run it. Enjoy playing Tic-Tac-Toe!
