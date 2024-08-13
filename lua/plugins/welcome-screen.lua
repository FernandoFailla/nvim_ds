return {
  -- dashboard to greet
  {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      local alpha = require 'alpha'
      local dashboard = require 'alpha.themes.dashboard'

      -- Set header
      dashboard.section.header.val = {
        '######################################################################################',
        '#                                                                                    #',
        '#                            ,.--------._                                            #',
        "#                           /            ''.                                         #",
        '#                         ,\'                     |"\\                /\\          /\\  #',
        '#                /"|     /                   \\    |__"              ( \\\\        // ) #',
        '#               "_|    /           z#####z   \\  //                  \\ \\\\      // /  #',
        '#                 \\\\  #####        ##------".  \\//                    \\_\\\\||||//_/   #',
        '#                  \\/-----\\     /          ".  \\                      \\/ _  _ \\     #',
        '#                   \\|      \\   |   ,,--..       \\                    \\/|(O)(O)|     #',
        '#                   | ,.--._ \\  (  | ##   \\)      \\                  \\/ |      |     #',
        '#                   |(  ##  )/   \\ `-....-//       |///////////////_\\/  \\      /     #',
        "#                     '--'.\"      \\                \\              //     |____|      #",
        "#                  /'    /         ) --.            \\            ||     /      \\     #",
        '#               ,..|     \\.________/    `-..         \\   \\       \\|     \\ 0  0 /     #',
        '#            _,##/ |   ,/   /   \\           \\         \\   \\       U    / \\_//_/      #',
        '#          :###.-  |  ,/   /     \\        /\' ""\\      .\\        (     /              #',
        "#         /####|   |   (.___________,---',/    |       |\\=._____|  |_/               #",
        '#        /#####|   |     \\__|__|__|__|_,/             |####\\    |  ||                #',
        '#       /######\\   \\      \\__________/                /#####|   \\  ||                #',
        '#      /|#######`. `\\                                /#######\\   | ||                #',
        "#     /++\\#########\\  \\                      _,'    _/#########\\ | ||                #",
        "#    /++++|#########|  \\      .---..       ,/      ,'##########.\\|_||  Donkey By     #",
        "#   //++++|#########.  \\.              ,-      ,'########,+++++\\\\_\\\\ Hard'96       #",
        "#  /++++++|##########\\.   '._        _,/       ,'######,''++++++++\\                  #",
        "# |+++++++|###########|       -----.\"        _'#######' +++++++++++\\                 #",
        '# |+++++++|############\\.     \\\\     //      /#######/++++ S@yaN +++\\                #',
        '#      ________________________\\\\___//______________________________________         #',
        '#     / ____________________________________________________________________)        #',
        '#    / /              _                                             _                #',
        '#    | |             | |                                           | |               #',
        '#     \\ \\            | | _           ____           ____           | |  _            #',
        '#      \\ \\           | || \\         / ___)         / _  )          | | / )           #',
        '#  _____) )          | | | |        | |           (  __ /          | |< (            #',
        '# (______/           |_| |_|        |_|            \\_____)         |_| \\_)           #',
        '#                                                                           19.08.02 #',
        '######################################################################################',
      }

      -- Set menu
      dashboard.section.buttons.val = {
        dashboard.button('e', '  > New file', ':ene <BAR> startinsert <CR>'),
        dashboard.button('f', '󰈞  > Find file', ':Telescope find_files<CR>'),
        dashboard.button('r', '  > Recent', ':Telescope oldfiles<CR>'),
        dashboard.button('s', '  > Settings', ':e $MYVIMRC | :cd %:p:h<cr>'),
        dashboard.button('q', '󰅚  > Quit NVIM', ':qa<CR>'),
      }

      local fortune = require 'alpha.fortune'
      dashboard.section.footer.val = fortune {
        fortune_list = {
          { 'You otter be proud of yourself!', '', '— 🦦' },
          { 'Hello from the otter slide!', '', '— Otterdele' },
          { 'To otter space!', '', '— 🦦' },
          { "What if I say I'm not like the otters?", '', '— Foo Fighters' },
          { 'Nothing is im-paw-sible 🐾', '', '— 🐕' },
          { 'Don don Don don Don don DOn, tava aqui no baile escutando aquele som.' },
        },
      }

      -- Send config to alpha
      alpha.setup(dashboard.opts)
    end,
  },
}
