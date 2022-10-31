" Tiger Syntax File

if exists("b:current_syntax")
    finish
endif

syntax case match

syntax match tigerNumber /\d\+/
syntax region tigerString start='"' skip='\\"' end='"'
syntax match tigerTypeName /\a[\h\d]*/ nextgroup=tigerTypeName
syntax match tigerID /\a[\h\d]*/

highlight link tigerNumber Number
highlight link tigerString String
highlight link tigerID Identifier

syntax keyword tigerFunc function
highlight link tigerFunc Function

syntax keyword tigerType type
highlight link tigerType Type
syntax keyword tigerTypeName string int
highlight link tigerTypeName Type

syntax keyword tigerVar var
highlight link tigerVar Structure

syntax keyword tigerBreak break
highlight link tigerBreak Exception

syntax region tigerBlock start="let" end="end" transparent fold
syntax keyword tigerLet let
syntax keyword tigerIn in
syntax keyword tigerEnd end
highlight link tigerLet Keyword
highlight link tigerIn Keyword
highlight link tigerEnd Keyword

syntax keyword tigerNil nil
highlight link tigerNil Special

syntax keyword tigerDo do
syntax keyword tigerTo to
syntax keyword tigerFor for
syntax keyword tigerWhile while
highlight link tigerFor Repeat
highlight link tigerWhile Repeat
highlight link tigerDo Repeat
highlight link tigerTo Repeat

syntax keyword tigerElse else
syntax keyword tigerThen then
syntax keyword tigerIf if
highlight link tigerIf Conditional
highlight link tigerThen Conditional
highlight link tigerElse Conditional

syntax keyword tigerArray array
syntax keyword tigerOf of
highlight link tigerArray StorageClass
highlight link tigerOf StorageClass

syntax match tigerOper /:=/
syntax match tigerOper /|/
syntax match tigerOper /&/
syntax match tigerOper />=/
syntax match tigerOper />/
syntax match tigerOper /<=/
syntax match tigerOper /</
syntax match tigerOper /<>/
syntax match tigerOper /=/
syntax match tigerOper /\//
syntax match tigerOper /\*/
syntax match tigerOper /-/
syntax match tigerOper /+/
syntax match tigerOper /\./
syntax match tigerOper /:/ nextgroup=tigerTypeName skipwhite
syntax match tigerOper /;/
syntax match tigerOper /,/

syntax match tigerOper /(/
syntax match tigerOper /)/
syntax match tigerOper /{/
syntax match tigerOper /}/
syntax match tigerOper /\[/
syntax match tigerOper /]/

syntax region tigerParens start=/(/ end=/)/ transparent contains=ALL
syntax region tigerBracks start=/{/ end=/}/ transparent fold contains=ALL
syntax region tigerBraces start=/\[/ end=/]/ transparent contains=ALL

highlight link tigerOper Operator

syntax region tigerComment start=/\/\*/ end=/\*\// fold
highlight link tigerComment Comment

let b:current_syntax = "tiger"
