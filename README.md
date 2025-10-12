# LibGMOD - LuaCATS bindings for Garry's Mod

The [Garry's Mod Wiki][gmwiki] - now in Lua(CATS) form!

If you're using a modern IDE of some description, you're almost certainly using
sumneko's [Lua Language Server][lua-ls] which relies on [LuaCATS
Annotations][luacats] to provide type hinting and documentation.

This repository tries to provide consistent and useful annotations to help you
develop in GLua in vscode, neovim and so on.

## Usage

1. Clone this repo somewhere handy (I use a `projects` directory)
2. Add the path to the
   [`workspace.library`](https://luals.github.io/wiki/settings/#workspacelibrary)
   setting
3. Bonus: Add `["//", "/**/", "||", "&&", "!", "!=", "continue"]` to
   [`runtime.nonstandardSymbol`](https://luals.github.io/wiki/settings/#runtimenonstandardsymbol)

[gmwiki]: https://wiki.facepunch.com/gmod/
[lua-ls]: https://github.com/LuaLS/lua-language-server
[luacats]: https://luals.github.io/wiki/annotations/
