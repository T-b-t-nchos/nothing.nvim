<div align="center">
    <h1>nothing.nvim</h1>
    <sub>Just one color. Nothing else. (Joke.)</sub>
</div>

## 概要
nothing.nvim は、コードを「無（nothing）」に染める Neovim プラグインです。
<sub>このプラグインはジョークであり、実用を目的としたものではありません。</sub>

## 機能
- シンプルなカラースキーム
- ダークモード、ライトモードに対応
- 全言語対応
- TreeSitter 対応
- 悟りを開くことができる
- 見えないものが見えるようになる

## スクリーンショット
![nothing.nvim/dark](./assets/screenshots/dark.png)
![nothing.nvim/light](./assets/screenshots/light.png)

## インストール
### Lazy.nvim
```lua
{
    "T-b-t-Nchos/nothing.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("nothing").setup()
    end
}
```

## 設定
```lua
require("nothing").setup({
    mode = "dark", -- "dark"/"light"

    -- Add custom highlights
    -- You can use the colors and options in the function.
    -- Also, you can use the simpler table if you don't need the colors and options.
    custom_highlights = function(c, opts)
        return {
        }
    end,
})
```

## その他
- このプラグインはジョークです。
- このプラグインは、いかなる用途にも使用することを意図していません。
- もし「何か」を見つけた場合はお知らせください。
- もし誰かから要望があれば、Vim版も作成します。

## ライセンス
MIT License
