_:
{
  opts = {
    enable = true;
    settings = {
      mapping = {
        "<CR>" = "cmp.mapping.confirm({ select = false })";
        "<C-u>" = ''cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" })'';
        "<C-d>" = ''cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" })'';
        "<C-Space>" = "cmp.mapping.complete()";
        "<S-Tab>" = ''
          function(fallback)
            local luasnip=require("luasnip")
            if cmp.visible() then
              cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end 
        '';
        "<Tab>" = ''
          function(fallback)
              local luasnip=require("luasnip")
              if cmp.visible() then
                cmp.select_next_item()
              elseif luasnip.expandable() then
                luasnip.expand()
              elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
              else
                fallback()
              end
            end
        '';
      };
      snippet.expand =
        "function(args) require('luasnip').lsp_expand(args.body) end";
      sources = [
        {
          name = "nvim_lsp";
          priority = 1000;
        }
        {
          name = "luasnip";
          priority = 750;
        }
        {
          name = "buffer";
          priority = 500;
          option.get_bufnrs.__raw = "vim.api.nvim_list_bufs";
        }
        {
          name = "path";
          priority = 250;
        }
      ];
      window = {
        completion = {
          border = "rounded";
          winhighlight =
            "Normal:NormalFloat,FloatBorder:FloatBorder,CursorLine:PmenuSel,Search:None";
          scrolloff = 0;
          colOffset = 0;
          sidePadding = 1;
          scrollbar = true;
        };
        documentation = {
          maxHeight = "math.floor(40 * (40 / vim.o.lines))";
          maxWidth =
            "math.floor((40 * 2) * (vim.o.columns / (40 * 2 * 16 / 9)))";
          border = "rounded";
          winhighlight =
            "Normal:NormalFloat,FloatBorder:FloatBorder,CursorLine:PmenuSel,Search:None";
        };
      };
    };
  }
}
