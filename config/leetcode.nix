{pkgs, ...}: {
  extraPlugins = with pkgs.vimPlugins; [
    leetcode-nvim
    nui-nvim
    plenary-nvim
  ];

  extraConfigLua = ''
    require("leetcode").setup({
      lang = "python3",

      plugins = {
        non_standalone = true,
      },

      picker = { provider = "telescope" },

      keys = {
        toggle = { "q" },
        confirm = { "<CR>" },
        reset_testcases = "r",
        use_testcase = "U",
        focus_testcases = "H",
        focus_result = "L",
      },
    })
  '';

  keymaps = [
    {
      mode = "n";
      key = "<leader>lm";
      action = "<cmd>Leet<CR>";
      options.desc = "LeetCode Menu";
    }
    {
      mode = "n";
      key = "<leader>ld";
      action = "<cmd>Leet daily<CR>";
      options.desc = "LeetCode Daily";
    }
    {
      mode = "n";
      key = "<leader>ll";
      action = "<cmd>Leet list<CR>";
      options.desc = "LeetCode Problem List";
    }
    {
      mode = "n";
      key = "<leader>lr";
      action = "<cmd>Leet run<CR>";
      options.desc = "LeetCode Run";
    }
    {
      mode = "n";
      key = "<leader>ls";
      action = "<cmd>Leet submit<CR>";
      options.desc = "LeetCode Submit";
    }
    {
      mode = "n";
      key = "<leader>lR";
      action = "<cmd>Leet random<CR>";
      options.desc = "LeetCode Random";
    }
    {
      mode = "n";
      key = "<leader>lc";
      action = "<cmd>Leet console<CR>";
      options.desc = "LeetCode Console";
    }
    {
      mode = "n";
      key = "<leader>li";
      action = "<cmd>Leet info<CR>";
      options.desc = "LeetCode Info";
    }
  ];
}
