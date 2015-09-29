" Vim syntax file
" Language: Céu
" Maintainer: Rodrigo Costa
" Latest Revision: 29 September 2015

if exists("b:current_syntax")
  finish
endif

" Keywords
syn keyword ceuLangKeywords var input await class in break
                          \ end do finalize native spawn
                          \ every loop escape NULL
                          \ if else par or and with

" Types
syn keyword ceuTypes bool byte char f32 f64
                    \ float int s16 s32 s64 
                    \ s8 u16 u32 u64 u8
                    \ uint void word short

" Match
syn match cBind "\<\(_[^ ()\*&?\,]*\)"
syn match ceuNumber '\d\+' 
syn match ceuNumber '[-+]\d\+' 

" Floating point number with decimal no E or e (+,-)
syn match ceuNumber '\d\+\.\d*'
syn match ceuNumber '[-+]\d\+\.\d*'
"
" Floating point like number with E and no decimal point (+,-)
syn match ceuNumber '[-+]\=\d[[:digit:]]*[eE][\-+]\=\d\+' 
syn match ceuNumber '\d[[:digit:]]*[eE][\-+]\=\d\+'
"
" Floating point like number with E and decimal point (+,-)
syn match ceuNumber '[-+]\=\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'
syn match ceuNumber '\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+' 

" Hexadecimal number
syn match ceuNumber "\<0[xX]\([0-9A-Fa-f]\)*\>"  

" Regions
syn region ceuBlock start="do" end="end" fold transparent
syn region ceuPreProc start="^\s*\(#\)" end=" "
syn region ceuString start="\"" end="\""
syn region ceuComment start="\/\*" end="\*\/" contains=ceuTodo

" Comments
syn keyword ceuTodo contained TODO FIXME NOTE
syn match ceuComment "//.*$" contains=ceuTodo

let b:current_syntax = "ceu"

hi def link ceuLangKeywords Statement
hi def link ceuTodo         Todo
hi def link ceuComment      Comment
hi def link ceuTypes        Type
hi def link cBind           Special
hi def link ceuPreProc      PreProc
hi def link ceuNumber       Number
hi def link ceuString       String
