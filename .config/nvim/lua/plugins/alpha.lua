return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.startify")

    dashboard.section.header.val = {
      [[                                                                      ]],
      [[                                                                      ]],
      [[                                                                      ]],
      [[    ██████╗ ███████╗ █████╗ ███████╗████████╗██╗   ██╗██╗███╗   ███╗  ]],
      [[    ██╔══██╗██╔════╝██╔══██╗██╔════╝╚══██╔══╝██║   ██║██║████╗ ████║  ]],
      [[    ██████╔╝█████╗  ███████║███████╗   ██║   ██║   ██║██║██╔████╔██║  ]],
      [[    ██╔══██╗██╔══╝  ██╔══██║╚════██║   ██║   ╚██╗ ██╔╝██║██║╚██╔╝██║  ]],
      [[    ██████╔╝███████╗██║  ██║███████║   ██║    ╚████╔╝ ██║██║ ╚═╝ ██║  ]],
      [[    ╚═════╝ ╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝     ╚═══╝  ╚═╝╚═╝     ╚═╝  ]],
      [[                            Vlad Ilie Filip                           ]],
      [[                                                                      ]],
      [[                                                                      ]],
    }

    alpha.setup(dashboard.opts)
  end,
}

