" Vim syntax file
" Language: Céu
" Maintainer: Rodrigo Costa
" Latest Revision: 29 September 2015

if exists("b:current_syntax")
  finish
endif

" Keywords
syn keyword ceuLangKeywords var input await class 
syn keyword ceuLangKeywords with end do finalize native
syn keyword ceuLangKeywords every loop escape 
syn keyword ceuLangKeywords if par or and

" Types
syn keyword ceuTypes bool byte char f32 f64
syn keyword ceuTypes float int s16 s32 s64
syn keyword ceuTypes s8 u16 u32 u64 u8
syn keyword ceuTypes uint void word 

" Match
syn match cFunc "\<_*"

" Regions
syn region ceuBlock start="do" end="end" fold transparent

" Comments
syn keyword ceuTodo contained TODO FIXME XXX NOTE
syn match ceuComment "//.*$" contains=ceuTodo

let b:current_syntax = "ceu"

hi def link ceuLangKeywords Statement
hi def link ceuTodo         Todo
hi def link ceuComment      Comment
hi def link ceuTypes        Type
hi def link cFunc           Special
