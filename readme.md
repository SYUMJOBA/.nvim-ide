# Nvim-config
## What is this
### My first attempt at writing an nvim RC, I want to get it as good as possible, so that I switch to a more productive IDE.

---

## Premise
I in no way believe that this is the best seetup, or the best method to setup what is included in this RC. Having said this, the colours rock, the editor is clean and there are several other themes included if you're unsatisfied with the default.
You can try `kanagawa` and `tokyonight`. the default is `cyberdream`. the default is `cyberdream`.

## OverView
> `<leader>` is the space key

This config is nothing special, but it is a feature complete one, in the sense that it has:
 - treesiter
 - LSP (rust, lua, C)
 - themes
 - file navigation+ (in the form on `neo-tree`, `harpoon` and `telescope`)

    - `<leader>t` for neo-tree window

    - `<leader>hv` to _View_ harpoon list
    - `<leader>ha` to _Add_ current file to harpoon list
    - `<leader>hr` to _Remove_ current file from harpoon list
    - use the `Ctrl` key to swtich between harpoon marks from 1 to 4
    
    - `<leader>f` to _fuzzy Find_
    - `<leader><S-f>` to _Search fuzzy Find_ (grep)
    
 - undo tree (with access to MASSIVE historic file)

    - `<leader>u` to open it

 - key discoverability (in the form of which-key)

    - `<leader><leader>` to open the keys

_there already are git integrations but I haven't tested them yet_

 - missing yet planned features:

    - tab menagement (unless harpoon becomes my gotoo), :tabnext, :tabclose :tabnew
    - making the neo tree-faster in file exploration, possibly adding adding and removing files from the neo-tree interface
    - switching the uncomfortable Ctrl key with CMD 
    - centering the code within the environment, as a single wide window with a page on it, with an ermetic twist to it, elevating your focus

 - improvements and explorations:

    - the zen plugin
    - calmer colour scheme (avoid reds, prioritize cold colours, better usage of colour language)
    - graphical aid in harpoon (keep at my right a small window with list of the harpoon marks)
    - better highlighting
        - markdown code in backticks `` does not have proper background colour change
        - colours are mixed and unrealiable, with little meaning

    - _I do also use Windows, so there is a chance of this becoming cross platform_

> I like my programming experience to be as **zen** as possible

It follows that the RC is very "single context-minded" at each and every moment. neo-tree isn't opened as a sidebar but as a temporary window _at the center_. Take it as a reflection of rust's "single ownership" model, `XD`.
The real purpose to only have what you need when you needed, with no extra fluffy clouds: as elegant, slim, and _direct-minded_ as possible

## Requirements
**requires a nerd font** to work with the neo-tree icons, you can get it with 
- `brew install --cask font-fira-code-nerd-font`
**requires fzf** and **fd**, the fuzzy finding is _coconut oily smooth **and** blazingly fast_ 
- `brew install fzf`
- `brew install fd`
**works on iTerm** but not on the default terminal app. Haven't tried on Warp
- `brew install iterm2`

> remember to set iTerm to properly use the nerd font!

What I did is use Jetbrains MONO NL as main font, then enable "_use different font for non ascii characters_" , and set that optional additional font to the nerd font

## Rmeaps and vim motions
There are no remaps, I'm learning how they work properly.
But <leader>y DOES yank straight to the system register, tho I will convert it to CMD+C.

Tho, as you've probably noticed I like rebuilding everyhting from the groundup with _simple_ and _minimalistic_ keystrokes.
The reason I like to do that is my genuine attention to simplicity and ease of learning, as well as just taste for a clean aesthetic that prioritized making the important parts more accessible and way, way less obscure.
