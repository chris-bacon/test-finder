let g:map = { 
            \".hs": "Spec.hs",
            \".js": ".test.js",
            \}

function! GetFileType()
    :set ft?
endfunction

function! FindTest(split)
    let l:srcFilePath = @%
    let l:extension = ""
    if GetFileType() == "filetype=haskell"
        let l:extension = ".hs"
    elseif GetFileType() == "filetype=javscript"
        let l:extension = ".js"
    endif

    if l:extension == ".hs" || l:extension == ".js"
        let l:addedTestExtension = substitute(l:srcFilePath, l:extension, g:map[l:extension], "")
        " TODO: Assumes identical src and test structure at the moment which is
        " something to change
        let l:findTestPath = substitute(l:addedTestExtension, "src", "test", "")
        execute "botright" a:split l:findTestPath
    else 
        echo "Filetype not yet supported... consider submitting a PR"
    endif
endfunction

function! FindTestV()
        call FindTest(" vsplit")
endfunction

function! FindTestH()
        call FindTest("split")
endfunction

command! -range -nargs=? FindTest call FindTestV()
command! -range -nargs=? FindTestV call FindTestV()
command! -range -nargs=? FindTestH call FindTestH()
