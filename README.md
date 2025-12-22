# This is Personal .vimrc

- This .vimrc is created, so that when I'm away from my Personal device I can Easily get my vim configuration

```vim

Ctrl+P  "Fuzzy Find Git Files

<F5>    "Run the current Python File (Without Saving)
<S-F5>  "Run the current Python File (With Saving)
,<F5>   "Same as Above

,cpp    "Run the current C++ File (Compile and Run) (With Saving)
,CPP    "Run the current C++ File (Run only) (Without Saving)

<F6>    "Run the current C File (Without Saving)
,<F6>   "Run the current C File (With Saving)
<S-F6>  "Same as Above

,ap     "Run the current PHP File in Terminal with arguments (With Saving)
,aP     "Run the current PHP File on Web (PHP's Dev Server) with arguments (With Saving)
,P      "Run the current PHP File on Web (PHP's Dev Server) (With Saving)
,p      "Run the current PHP File in Terminal (With Saving)

,j      "Run the current JAVA File in Terminal (Clear all Existing .class files in current directory, Recompile and Run) (With Saving)
,aj     "Run the current JAVA File in Terminal (Clear all Existing .class files in current directory, Recompile, Take Command Line Argument and Run) (With Saving)

Ctrl+n  "Go to next Tab

,e      "Go to next Error (Using ALE Plugin)
,E      "Go to previous Error (Using ALE Plugin)

,<space> "Save all buffers

<F2>    "Toggle NERDTREE and also re-adjust windows Equally
<F3>    "Toggle NERDTREE

<F4>    "Open Terminal in pane above

Ctrl+[Arrow key] 
" Go to any pane using Ctrl + Arrow

,S      "Disable spell checking (Default - Disabled)
,s      "Enable spell checking

,<F12>  "Source ~/.vimrc

<leader>cd "change Current directory to directory containing currently focused File
<leader>cg "change Current directory to git's root directory

<leader>\\ " Change all / Slash in Current line and selected area to \ (Also Work for Visual Mode)
<leader>// " Change all \ Slash in Current line and selected area to / (Also Work for Visual Mode)

<leader>\; "Change the path of PHP file in to using it as namespace 'use' keyword

"Also, Q and W in Command mode will be converted to q and w, respectively.

```
