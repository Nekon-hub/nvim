# nvim
Neovim config files in lua without the clunky use of a "UserName" folder.
Feels more readable and the structure is simpler.
No random init.lua files or init.lua files that do nothing.

You may prefer the UserName folder, not judging, but this is what works for me.

NOTE the "." before "lazy" in my init.lua which will look inside the lua folder
```
require(".lazy")
```
This finds and loads /lua/lazy.lua .

Probably not as many plugins as many people. My Neovim is not an IDE, 
but takes the parts of an IDE that feel useful to me. 
Most plugins are pretty close to default in setup.
