function! FindTest()
    let l:srcFilePath = @%
    let l:addedTestExtension = substitute(l:srcFilePath, ".hs", "Spec.hs", "")
    let l:findTestPath = substitute(l:addedTestExtension, "src", "test", "")
    execute "botright vsplit" l:findTestPath
endfunction

command! -range -nargs=? FindTest call FindTest()

