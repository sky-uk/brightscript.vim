function! BrightScriptFolds()
  let thisline = getline(v:lnum)
  if match(thisline, '^function') >= 0
    return ">1"
  else
    return "="
  endif
endfunction

setlocal foldmethod=expr
setlocal foldexpr=BrightScriptFolds()

function! BrightScriptFoldText()
  let foldsize = (v:foldend-v:foldstart)
  return getline(v:foldstart).' ('.foldsize.' lines)'
endfunction

setlocal foldtext=BrightScriptFoldText()

