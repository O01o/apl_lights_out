#!/usr/bin/dyalog -script

⍝ load csv data
X ← (⎕CSV './src/test_data/1/5x5-middle/x.csv' '' 4) = 1
Y ← (⎕CSV './src/test_data/1/5x5-middle/y.csv' '' 4) = 1
S ← (⎕CSV './src/test_data/1/5x5-middle/s.csv' '' 4) = 1

⍝ check matrix dimentions
:If 1 ≠ ≢ ∪ ⍴¨ X Y S
    ⎕ ← 'Error: MatriX dimensions do not match!'
    ⎕ ← 'X:', (⍕⍴X), ', Y:', (⍕⍴Y), ', S:', (⍕⍴S) 
    ⎕OFF 1 
:EndIf

:Namespace Utils
    X
    Y
    S
:EndNamespace
