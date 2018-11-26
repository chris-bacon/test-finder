let g:map = { 
            \".hs": "Spec.hs",
            \".js": ".test.js",
            \}

function! FindTest()
    let l:srcFilePath = @%
    let l:addedTestExtension = substitute(l:srcFilePath, ".hs", g:map[".hs"], "")
    " TODO: Assumes identical src and test structure at the moment which is
    " something to change
    let l:findTestPath = substitute(l:addedTestExtension, "src", "test", "")
    execute "botright vsplit" l:findTestPath
endfunction

command! -range -nargs=? FindTest call FindTest()

