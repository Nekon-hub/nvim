# nvim
Neovim config files in lua without the clunky use of a "UserName" folder.
Feels more readable and the structure is simpler.
No random init.lua files or init.lua files that do nothing.

Others may prefer the UserName folder, not judging, but this is what works for me.

NOTE the "." before "lazy" in my init.lua which will look inside the lua folder
```
require(".lazy")
```
This finds and loads /lua/lazy.lua .

My Neovim is not an IDE, but takes the parts of an IDE that feel useful to me. 
Most plugins are pretty close to default in setup.

Kudos to @cosmicboots for [unicode_picker.nvim](https://github.com/cosmicboots/unicode_picker.nvim) which gives me "CTRL U" to find that elusive "°C" which will never stick in my head, ever.
