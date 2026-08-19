-- "texto"
vim.keymap.set("v", '"', 'c"<C-r>""<Esc>', {
  desc = 'Envolver com ""',
})

-- 'texto'
vim.keymap.set("v", "'", "c'<C-r>\"'<Esc>", {
  desc = "Envolver com ''",
})

-- (texto)
vim.keymap.set("v", "(", 'c(<C-r>")<Esc>', {
  desc = "Envolver com ()",
})

-- [texto]
vim.keymap.set("v", "[", 'c[<C-r>"]<Esc>', {
  desc = "Envolver com []",
})

-- {texto}
vim.keymap.set("v", "{", 'c{<C-r>"}<Esc>', {
  desc = "Envolver com {}",
})
