# vim-code-sniffer
vim 插件，生成适应 PHP_CodeSniffer 规范的注释，修改自Doxygen。

## 安装

可以通过配置vundle来安装，在 .vimrc 添加

```
Plugin 'jixiaod/vim-code-sniffer'

:PluginInstall
```
    
## 配置

配置自己的注释信息，添加到.vimrc

```
"vim-code-sniffer {
let g:SnifferToolkit_brief_string       = "Description"
let g:SnifferToolkit_phpversion_string  = "PHP version 5"
let g:SnifferToolkit_category_string    = "PHP"
let g:SnifferToolkit_package_string     = "Mojimall"
let g:SnifferToolkit_version_string     = "Release: @package_version@"
let g:SnifferToolkit_author_string      = "Gang Ji <gang.ji@moji.com>"
let g:SnifferToolkit_copyright_string   = "2014-2016 Moji Fengyun Software Technology Development Co., Ltd."
let g:SnifferToolkit_license_string     = "license from Moji Fengyun Software Technology Development Co., Ltd."
let g:SnifferToolkit_link_string        = "http://www.moji.com"
"}
```
