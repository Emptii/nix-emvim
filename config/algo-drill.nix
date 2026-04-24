{pkgs, ...}: {
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "algo-drill";
      src = builtins.fetchGit {
        url = "git@github.com:Emptii/practice.git";
        rev = "fce50fc28c5abefbdf731aefad0779c69c43a54f";
      };
    })
  ];

  extraConfigLua = ''
    require("algo-drill").setup({
      dir = "/home/max/workspace/practice",
    })
  '';
}
