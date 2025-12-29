#!/usr/bin/dyalog -script

⍝ load csv data
X ← ⎕CSV './src/test_data/1/5x5-middle/x.csv' '' 4
X ← X = 1
Y ← ⎕CSV './src/test_data/1/5x5-middle/y.csv' '' 4
Y ← Y = 1
S ← ⎕CSV './src/test_data/1/5x5-middle/s.csv' '' 4
S ← S = 1

⍝ check matrix dimentions
:If 1 ≠ ≢ ∪ ⍴¨ X Y S
    ⎕ ← 'Error: MatriX dimensions do not match!'
    ⎕ ← 'X:', (⍕⍴X), ', Y:', (⍕⍴Y), ', S:', (⍕⍴S) 
    ⎕OFF 1 
:EndIf

⍝ print lights out board
⎕ ← 'X:' X ' Y:' Y ' S:' S

⍝ funcion: neighborhood extractor
NE ← {
    r c ← ⍵
    Nbr ← ¯1 0 1
    ⍺[(⍳5)∩Nbr+r;(⍳5)∩Nbr+c]
}

⍝ reverse cell from input
PS ← { ≠/≠/ S NE ⍵ } ¨ ⍳ ⍴ S
⎕ ← 'P(S):' PS ' Y:' Y ' Result:' (Y ≡ PS)
