return {
  "mfussenegger/nvim-jdtls",
  ft = { "java" },
  config = function()
    local jdtls = require("jdtls")

    -- find root of project
    local root_dir = require("jdtls.setup").find_root({ "gradlew", "mvnw", ".git" })

    -- workspace dir per project
    local workspace_dir = vim.fn.stdpath("data") .. "/jdtls-workspace/" .. vim.fn.fnamemodify(root_dir, ":p:h:t")

    local config = {
      cmd = { "jdtls", "-data", workspace_dir },
      settings = {
        java = {
            project = {
                referencedLibraries = {
                    vim.fn.getcwd() .. "/po-uilib.jar",   -- or "lib/po-uilib.jar"
                },
            },
        },
      },
      root_dir = root_dir,
    }

    jdtls.start_or_attach(config)
  end,
}
