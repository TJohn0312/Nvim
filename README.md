# Install steps

    install npm
    install nodejs (maybe)

    ## install packer
    ```
        git clone --depth 1 https://github.com/wbthomason/packer.nvim\
     ~/.local/share/nvim/site/pack/packer/start/packer.nvim
    ```
    source ~/.config/nvim/lua/user/packer.lua
    run PackerSync

    ## treesitter needs a c compiler
    ```
        sudo pacman -S unzip clang
    ```
    ## clipboard
    ```
        sudo pacman -S xclip
    ```

# Plugins/maps
## autopairs
    - <A-e> = fast wrap

## colors
## comment
    - gc{move} = comment line
    - gb{move} = comment block
    - gcc = Line-comment toggle
    - gcb = Block-comment toggle
    - gcO = comment on line above
    - gco = comment on line below
    - gcA = comment at end of line

## fugitive
    - <leader>gs = vim.cmd.Git
        - :Git or :G

        <!-- fugitive -->
    - g? = help
    - = = veiw diffrences (inline)
    - dv = veiw diffrences (vertical)

    - - = toggle stage
    - s = stage
    - u = unstage
    - U = unstage everything
    - X = delete change
    - > & < = insert and remove inline diff

    - c? = commit help
    - cc = go to commit page
    - ca = Amend the last commit and edit the message
    - ce = Amend the last commit without editing the message
    - cw = Reword the last commit

    - coo = checkout the commit under the cursor.


## harpoon
    - <leader>a = switch to add file
    - <C-e> = switch to toggle menu
    - <C-h> = switch to file 1
    - <C-s> = switch to file 2
    - <C-n> = switch to file 3
    - <C-t> = switch to file 4

## lsp
        <!-- normal mode -->
    - <C-f> & <C-b> = Navigate snippet placeholder
        <!-- insert mode -->
    - <C-space> = force menu to appear
        - also <C-n> & <C-p>
        <!-- when cmp is active -->
    - <CR> = confirm selection
    - <C-y> = confirm selection
    - <C-e> = cancel selection
    - <C-n> = go to next selection
    - <C-p> = go to previous selection
    - <C-d> = scroll down window
    - <C-u> = scroll up window

## telescope
    - <C-p> = find files in project
    - <leader>pf = find all files
    - <leader>ps = GREP

        <!-- when in telescope -->
    - <C-n>/<Down> 	Next item
    - <C-p>/<Up> 	Previous item
    - j/k   	Next/previous (in normal mode)
    - H/M/L 	Select High/Middle/Low (in normal mode)
    - gg/G  	Select the first/last item (in normal mode)

    - <CR>  	Confirm selection
    - <C-x> 	Go to file selection as a split
    - <C-v> 	Go to file selection as a vsplit
    - <C-t> 	Go to a file in a new tab

    - <C-u> 	Scroll up in preview window
    - <C-d> 	Scroll down in preview window
    - <C-f> 	Scroll left in preview window
    - <C-k> 	Scroll right in preview window
    - <M-f> 	Scroll left in results window
    - <M-k> 	Scroll right in results window

    - <C-/> 	Show mappings for picker actions (insert mode)
    - ?      	Show mappings for picker actions (normal mode)
    - <C-c> 	Close telescope
    - <Esc> 	Close telescope (in normal mode)

    - <Tab> 	Toggle selection and move to next selection
    - <S-Tab> 	Toggle selection and move to prev selection
    - <C-q> 	Send all items not filtered to quickfixlist (qflist)
    - <M-q> 	Send all selected items to qflist

## treesitter
## undotree
    - <leader>u = toggle undotree

## Remaps
    - jk & kj = <ESC>
    - <leader>y & <leader>Y = Yank to system clipboard
    - <leader>d = delete without yanking
    - <leader>p = paste over somthing, but deletion doesn't get yanked
    - <leader><leader> = :so

    - <C-k> = <cmd>cnext<CR>zz
    - <C-j> = <cmd>cprev<CR>zz
    - <leader>k = <cmd>lnext<CR>zz
    - <leader>j = <cmd>lprev<CR>zz
    - <leader>s = [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
    - <leader>x = <cmd>!chmod +x %<CR>
    - <leader>vpp = <cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>
    - <leader>mr = <cmd>CellularAutomaton make_it_rain<CR>
    - <C-f> = <cmd>silent !tmux neww tmux-sessionizer<CR>
    - <leader>f =  vim.lsp.buf.format

        <!-- visiual mode -->
    - J & K = Move selection
