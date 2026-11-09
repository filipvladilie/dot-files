return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      -- main branch has no auto_install or configs.setup: install parsers explicitly
      -- (needs the tree-sitter CLI) and start highlighting/indent per filetype.
      require("nvim-treesitter").install({
        "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline",
        "go", "gomod", "swift", "ruby", "embedded_template",
        "javascript", "typescript", "html", "css", "json",
      })

      vim.api.nvim_create_autocmd("FileType", {
        callback = function(args)
          if pcall(vim.treesitter.start, args.buf) then
            vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
          end
        end,
      })
    end
  }
}
