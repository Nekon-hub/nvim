# nvim
Neovim config files in lua without the clunky use of a "UserName" folder.
Feels more readable and the structure is simpler.
No random init.lua files or init.lua files that do nothing.

You may prefer the UserName folder, not judging, but this is what works for me.

NOTE the "." before loading lazy.lua in my init.lua 
which will look inside the lua folder
```
require(".lazy")
```

