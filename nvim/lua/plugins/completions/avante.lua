return {
    {
        "yetone/avante.nvim",
        event = "VeryLazy",
        version = "*", -- Set this to "*" to always pull the latest release version, or set it to false to update to the latest code changes.
        opts = {
            -- add any opts here
            -- for example
            provider = "claude",
            auto_suggestions_provider = "copilot"
            claude = {
                    endpoint = "https://api.anthropic.com",
    model = "claude-3-7-sonnet-20250222",
    temperature = 0,
    max_tokens = 4096,
            }
        },
        -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
        --build = "make",
        -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "stevearc/dressing.nvim",
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            "ibhagwan/fzf-lua",      -- for file_selector provider fzf
            "zbirenbaum/copilot.lua", -- for providers='copilot'
            {
                -- support for image pasting
                "HakonHarnes/img-clip.nvim",
                event = "VeryLazy",
                opts = {
                    -- recommended settings
                    default = {
                        embed_image_as_base64 = false,
                        prompt_for_file_name = false,
                        drag_and_drop = {
                            insert_mode = true,
                        },
                        -- required for Windows users
                        use_absolute_path = true,
                    },
                },
            },
            {
                -- Make sure to set this up properly if you have lazy=true
                'MeanderingProgrammer/render-markdown.nvim',
                opts = {
                    file_types = { "markdown", "Avante" },
                },
                ft = { "markdown", "Avante" },
            },
        },
    }
}
