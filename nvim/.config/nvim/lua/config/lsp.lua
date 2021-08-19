local lspconfig = require("lspconfig")
lspconfig.solargraph.setup{
  settings = {
    solargraph = {
      diagnostics = true,
      completion = true
    }
  }
}
