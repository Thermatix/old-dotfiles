call dein#add('neomake/neomake')




autocmd! BufWritePost,BufEnter * Neomake
let g:neomake_open_list = 2

let g:neomake_warning_sign = {
  \ 'text': '⚠',
  \ 'texthl': 'WarningMsg',
  \ }

let g:neomake_error_sign = {
  \ 'text': '✗',
  \ 'texthl': 'ErrorMsg',
  \ }
" everything below here is for showing a spinner when neomake is doing
" somthing
let s:spinner_index = 0
let s:active_spinners = 0

let s:spinner_states = ['⣾ ', '⣷ ', '⣯ ', '⣟ ', '⡿ ', '⢿ ', '⣻ ', '⣽']

function! StartSpinner()
    let b:show_spinner = 1
    let s:active_spinners += 1
    if s:active_spinners == 1
        let s:spinner_timer = timer_start(1000 / len(s:spinner_states), 'SpinSpinner', {'repeat': -1})
    endif
endfunction

function! StopSpinner()
    let b:show_spinner = 0
    let s:active_spinners -= 1
    if s:active_spinners == 0
        :call timer_stop(s:spinner_timer)
    endif
endfunction

function! SpinSpinner(timer)
    let s:spinner_index = float2nr(fmod(s:spinner_index + 1, len(s:spinner_states)))
    redraw
endfunction

function! SpinnerText()
    if get(b:, 'show_spinner', 0) == 0
        return " "
    endif

    return s:spinner_states[s:spinner_index]
endfunction

augroup neomake_hooks
    au!
    autocmd User NeomakeJobInit :call StartSpinner()
    autocmd User NeomakeJobInit :echom "Build started"
    autocmd User NeomakeFinished :call StopSpinner()
    " autocmd User NeomakeFinished :echom "Build complete"
augroup END

call airline#parts#define_function('neomake_spinner', 'SpinnerText')
let g_airline_section_y=airline#section#create_left(['mode','neomake_spinner'])
