# Test Finder

### Intro and Usage

This is a vim plugin that will open your test file in a vertical or horizontal split when you are in the respective source file.

Suppose you are in `src/Handlers/Helpers/Utils.hs` and you want to quickly navigate to the tests for that file. You would have to either open your tree view, or use some fuzzy finder, to find the test file. 

Not anymore! With the following command which you can bind to whatever keys you desire, you will be able to open the corresponding test file in a matter of keystrokes.

```
:FindTest
```

In your `~/.vimrc`, or wherever you keep your (n)vim config, you could create the mapping:

```
nnoremap <leader>t :FindTest<CR>
```

### Install

```
Plug 'chris-bacon/test-finder'
```

### Supported Languages

- Haskell
- JavaScript

### MVP Caveat

At the moment this plugin is an MVP and only works when the structure of the src folder and the structure of the test folder are identical. This annoyance will be fixed in a future version.

### Contribtions

Very welcome, just submit a PR and I'll take a look.

