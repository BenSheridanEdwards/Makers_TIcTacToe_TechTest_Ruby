[![Build Status](https://travis-ci.com/BenSheridanEdwards/Makers_TIcTacToc_TechTest_Ruby.svg?branch=master)](https://travis-ci.com/BenSheridanEdwards/Makers_TIcTacToc_TechTest_Ruby)
[![Test Coverage](https://api.codeclimate.com/v1/badges/5443c13de3611e1e7c7f/test_coverage)](https://codeclimate.com/github/BenSheridanEdwards/Makers_TIcTacToc_TechTest_Ruby/test_coverage)
[![Maintainability](https://api.codeclimate.com/v1/badges/5443c13de3611e1e7c7f/maintainability)](https://codeclimate.com/github/BenSheridanEdwards/Makers_TIcTacToc_TechTest_Ruby/maintainability)

### [Makers Academy](http://www.makersacademy.com) - Week 10 Solo Tech Test Practice
Tic-Tac-Toe
-

[Test Outline](#Outline) | [Specification](#Specification) | [User Stories](#Story) | [Approach & Code Structure](#Approach) | [Installation Instructions](#Installation) | [Feature Test](#Feature_Tests) | [Classes & Methods](#Methods) |


## <a name="Outline">Test Outline</a>



The rules of tic-tac-toe are as follows:

- There are two players in the game (X and O)
- Players take turns until the game is over
- A player can claim a field if it is not already taken
- A turn ends when a player claims a field
- A player wins if they claim all the fields in a row, column or diagonal
- A game is over if a player wins
- A game is over when all fields are taken

Build the business logic for a game of tic tac toe. It should be easy to implement a working game of tic tac toe by combining your code with any user interface, whether web or command line.

## <a name="Specification">Specification</a>

### Requirements

- Build a tic-tac-toe game with two players X and O
- Each player will take turns claiming empty fields
- When a player claims a column, horizonal row, or diagonal row with their respective shape, they win, and the game is over. 
- If all fields are claimed but no player has claimed a complete column, horizonal row, or diagonal row, the game is declared a draw, and is over.

### Edge Cases Info

- When a player tries to claim a field already in use, an error alerts them to choose an empty field
- Player One always chooses O or X first, and makes the first move.

### Expected Input


### Expected Output


## <a name="Story">User Stories</a>

```
As player one,
So I can play a game of Tic-Tac-Toe, 
I'd like to choose whether to be O or X.

As player two,
So I can play a game of Tic-Tac-Toe, 
I'd like to know whether I'm O or X, after player one has made their choice.

As a player,
So I can play a game of Tic-Tac-Toe, 
When it's my turn, I'd like to be able to choose an empty field to place my O or X.

As a player, 
So I can decide on my next move in a game of Tic-Tac-Toe, 
I'd like to be able to see all the fields taken by me and my opponent.

As a player,
So I can win a game of Tic-Tac-Toe, 
I'd like an winner alert when I form a complete horizontal, vertical, or diagonal row.

As a player, 
So I can lose a game of Tic-Tac-Toe, 
I'd like an lose alert when my opponent forms a complete horizontal, vertical, or diagonal row.

As a player,
So I can draw a game of Tic-Tac-Toe,
I'd like a draw alert when all available fields have been taken, and there is no winner.
```

## Technologies Used

### Development

```
ruby
```

### Testing and Code Quality

```
rspec
rubocop 0.71.0
simplecov
simplecov-console
Travis CI
```

## How To Run The Program

- Clone this repository
- `cd` into the directory
- run `bundle` to install any missing dependencies
- run `bundle exec rspec` to run the test suite
- run `bundle exec rubocop` to run the code linter
- run `rackup -p 4567` to launch the server

visit http://localhost.com/4567

### Using the program

## <a name="Feature_Tests">Feature Tests</a>

## <a name="Methods">Classes & Methods</a>

### Class

| Methods | Description |
| --- | --- |
| | |

## Further Improvements