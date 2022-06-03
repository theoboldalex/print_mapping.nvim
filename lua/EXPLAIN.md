Files can be loaded by the plugin frm the lua folder as and when they are needed
via `lua require"<FILE_NAME>"`. It is a good idea to keep lesser used functionality 
here which can be loaded on an as needed basis.

Files can alos be loaded from a nested dir structure. For example we could create
`lua/<plugin-name>/init.lua` which could be reuired in the same way as above _or_
alternatively, we could create `lua/<plugin-name>/utils.lua` and require it with 
dot notaition as such `lua require"<plugin-name>.utlis"`

**IMPORTANT NOTE:** files loaded via require are executed once and stord in table.
If we call require again, a table lookup is executed rathert than executing the
code in the require again.
