requirements.txt.vim
====================

[![Build Status](https://travis-ci.org/raimon49/requirements.txt.vim.svg?branch=master)](https://travis-ci.org/raimon49/requirements.txt.vim)
[![Dependency Status](https://gemnasium.com/raimon49/requirements.txt.vim.svg)](https://gemnasium.com/raimon49/requirements.txt.vim)
[![MIT License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE.txt)

[the Requirements File Format](http://pip.readthedocs.org/en/stable/reference/pip_install/#requirements-file-format) syntax support for Vim.

![requirements txt-sc](https://cloud.githubusercontent.com/assets/221802/11379923/5cbb4862-9336-11e5-8963-217b2d7df397.png)

Installation
------------

### Plugin manager (**recommended**)

e.g.) [NeoBundle](https://github.com/Shougo/neobundle.vim), [Vundle](https://github.com/VundleVim/Vundle.vim), [vim-plug](https://github.com/junegunn/vim-plug) [and more](https://dotfiles.github.io/)

```vim
" NeoBundle
NeoBundle 'raimon49/requirements.txt.vim'

" Vundle
Plugin 'raimon49/requirements.txt.vim'

" vim-plug
Plug 'raimon49/requirements.txt.vim'
```

### Pathogen (https://github.com/tpope/vim-pathogen)

```sh
$ git clone https://github.com/raimon49/requirements.txt.vim.git ~/.vim/bundle/requirements.txt.vim
```

### Manually

Deploy all files under `$VIMRUNTIME`.

File detection
--------------

`requirements.txt.vim` detects filename automatically.

* `*.pip`
* `requirements.txt`
* `dev-requirements.txt`
* `requirements/dev.txt`
* `requires/tests.txt`
* `requirements.in`
    * Use for [pip-tools](https://github.com/nvie/pip-tools) (a.k.a. Better dependency management tool).

### Customize

If you want to customize it.

```vim
" Add 'freeze' to your .vimrc as a detection pattern
let g:requirements#detect_filename_pattern = 'freeze'
```

```sh
$ pip freeze > my-freeze.txt
# You can edit it as a 'Requirements File Format'
$ vim my-freeze.txt
```

License
-------

[MIT License](LICENSE.txt)
