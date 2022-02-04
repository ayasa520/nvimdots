# Install
`git clone --recursive git@github.com:ayasa520/nvimdots.git ~/.config/nvim`

# Introduction

![Dashboard](img/2022-01-29-11-50-37.png "Dashboard")
<p align="center" style="font-size:14px;color:#C0C0C0;text-decoration:underline">Dashboard</p>
<br>

![Telescope](img/2022-01-29-11-52-25.png)
<p align="center" style="font-size:14px;color:#C0C0C0;text-decoration:underline">Telescope</p>
<br>





![Coding](img/2022-01-29-11-55-39.png)
<p align="center" style="font-size:14px;color:#C0C0C0;text-decoration:underline">Coding</p>
<br>





![Debugging](img/2022-01-29-12-11-25.png)
<p align="center" style="font-size:14px;color:#C0C0C0;text-decoration:underline">Debugging</p>
<br>


![Async Quick Run](img/2022-01-29-12-16.gif)
<p align="center" style="font-size:14px;color:#C0C0C0;text-decoration:underline">Async Quick Run</p>
<br>


![Code completion](img/2022-01-29-12-46.gif)
<p align="center" style="font-size:14px;color:#C0C0C0;text-decoration:underline">Code completion</p>
<br>

![Packer](img/2022-01-29-11-57-19.png)
<p align="center" style="font-size:14px;color:#C0C0C0;text-decoration:underline">Packer</p>
<br>

This is my neovim's configuration, which contains four branch.

I use [packer.nvim](https://github.com/wbthomason/packer.nvim) to manage plugins.

| Branch |   Completion Solution   |
| :----: | :---------------------: |
|  main  | nvim-lspconfig+nvim-cmp |
|  coq   | nvim-lspconfig+coq_nvim |
|  coc   |        coc.nvim         |

Chinese introduction is [here](https://zhuanlan.zhihu.com/p/382092667).

**Pros**:

- Fast. Less than **50ms** to start(Depends on SSD, tested on Sumsung 970 evo).
- Simple. Run out of the box.
- Modern. Pure lua to config.
- Modular. Easy to customize.
- Powerful. Full functionality to code.


![startup time](img/2022-01-29-13-14-13.png)


(Tested with [rhysd/vim-startuptime](https://github.com/rhysd/vim-startuptime))

# Details

Please refer to [wiki](https://github.com/ayamir/nvimdots/wiki).

# Acknowledgement

- [glepnir/nvim](https://github.com/glepnir/nvim)
