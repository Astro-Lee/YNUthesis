%%
%% This is file `YNUthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% YNUthesis.dtx  (with options: `class')
%% 
%% Copyright (C) 2023 by Rui-Zhi Li <liruizhi0871@gmail.com>
%% ---------------------------------------------------------------------
%% 
%%     This work may be distributed and/or modified under the
%%     conditions of the LaTeX Project Public License, either
%%     version 1.3c of this license or (at your option) any later
%%     version. This version of this license is in
%%       http://www.latex-project.org/lppl/lppl-1-3c.txt
%%     and the latest version of this license is in
%%       http://www.latex-project.org/lppl.txt
%%     and version 1.3 or later is part of all distributions of
%%     LaTeX version 2005/12/01 or later.
%% 
%%     This work has the LPPL maintenance status "maintained".
%% 
%%     The Current Maintainer of this work is Rui-Zhi Li.
%% 
%%     This work consists of the files YNUthesis.dtx,
%%                                     YNUthesis-logo.dtx,
%%               and the derived files YNUthesis.ins,
%%                                     YNUthesis.cls,
%%                                 and README.md.
%% ---------------------------------------------------------------------
%% 
\NeedsTeXFormat{LaTeX2e}[2022/11/01]
\RequirePackage{expl3}
\GetIdInfo $Id: YNUthesis.dtx 0.0.1 2023-02-01 12:00:00Z Rui-Zhi Li <liruizhi0871@gmail.com> $
  {Thesis template for Yunnan University}
\ProvidesExplClass{\ExplFileName}
  {\ExplFileDate}{\ExplFileVersion}{\ExplFileDescription}
\RequirePackage { xtemplate, l3keys2e }
\msg_new:nnnn { YNUthesis } { l3-too-old }
  { Support~ package~ `#1'~ too~ old. }
  {
    Please~ update~ an~ up-to-date~ version~ of~ the~ bundles\\\\
    `l3kernel'~ and~` l3packages'\\\\
    using~ your~ TeX~ package~ manager~ or~ from~ CTAN.
  }
\@ifpackagelater { expl3 } { 2023/02/01 } { }
  { \msg_error:nnn { YNUthesis } { l3-too-old } { expl3 } }
\msg_new:nnn { YNUthesis } { unsupported-engine }
  {
    The~ YNUthesis~ class~ requires~ either~ XeTeX~ or~ LuaTeX. \\\\
    "#1"~ is~ not~ supported~ at~ present.~ You~ must~ change \\
    your~ typesetting~ engine~ to~ "xelatex"~ or~ "lualatex".
  }
\sys_if_engine_xetex:F
  {
    \sys_if_engine_luatex:F
      {
        \msg_fatal:nnx { YNUthesis } { unsupported-engine }
          { \c_sys_engine_str }
      }
  }
\box_new:N   \l__YNU_tmpa_box
\clist_new:N \l__YNU_tmpa_clist
\clist_new:N \l__YNU_tmpb_clist
\dim_new:N   \l__YNU_tmpa_dim
\dim_new:N   \l__YNU_tmpb_dim
\skip_new:N  \l__YNU_tmpa_skip
\tl_new:N    \l__YNU_tmpa_tl
\tl_new:N    \l__YNU_tmpb_tl
\int_new:N \g__YNU_thesis_type_int
\clist_new:N \g__YNU_to_ctexbook_clist
\clist_new:N \g__YNU_to_hyperref_clist
\bool_new:N \g__YNU_twoside_bool
\bool_set_true:N \g__YNU_twoside_bool
\bool_new:N \g__YNU_draft_bool
\tl_new:N \g__YNU_config_tl
\cs_generate_variant:Nn \file_input:n     { V  }
\cs_generate_variant:Nn \int_to_arabic:n  { v  }
\cs_generate_variant:Nn \keys_define:nn   { nx }
\cs_generate_variant:Nn \tl_map_inline:nn { xn }
\prg_generate_conditional_variant:Nnn \tl_if_eq:nn { Vn } { T, TF }
\cs_new:Npn \__YNU_quad:  { \skip_horizontal:n { 1 em } }
  \cs_new:Npn \__YNU_qquad: { \skip_horizontal:n { 2 em } }
\cs_new_protected:Npn \__YNU_vspace:N #1
  {
    \dim_set_eq:NN \l__YNU_tmpa_dim \prevdepth
    \hrule height \c_zero_dim
    \nobreak
    \skip_vertical:N #1
    \skip_vertical:N \c_zero_skip
    \dim_set_eq:NN \prevdepth \l__YNU_tmpa_dim
  }
\cs_new_protected:Npn \__YNU_vspace:n #1
  {
    \skip_set:Nn \l__YNU_tmpa_skip {#1}
    \__YNU_vspace:N \l__YNU_tmpa_skip
  }
\cs_generate_variant:Nn \__YNU_vspace:N { c }
\cs_new:Npn \__YNU_arabic:n #1
  { \int_to_arabic:v { c@ #1 } }
\cs_new_protected:Npn \__YNU_gadd_ltxhook:nn #1#2
  { \hook_gput_code:nnn {#1} { . } {#2} }
\hook_gset_rule:nnnn { begindocument/before } { . } { < } { xeCJK }
\cs_new_protected:Npn \__YNU_patch_cmd:Nnn #1#2#3
  {
    \ctex_patch_cmd_once:NnnnTF #1 { } {#2} {#3}
      { } { \ctex_patch_failure:N #1 }
  }
\cs_new_protected:Npn \__YNU_appto_cmd:Nn #1#2
  {
    \ctex_appto_cmd:NnnTF #1 { } {#2}
      { } { \ctex_patch_failure:N #1 }
  }
\cs_new_protected:Npn \__YNU_define_fn_style:nn #1#2
  { \tl_const:cn { c__YNU_fn_style_ #1 _tl } {#2} }
\cs_new_protected:Npn \__YNU_define_punct:nn #1#2
  { \tl_const:cn { c__YNU_ #1 _tl } {#2} }
\cs_new_protected:Npn \__YNU_define_sep:nn #1#2
  { \tl_const:cn { c__YNU_ #1 _sep_tl } {#2} }
\cs_new_protected:Npn \__YNU_define_format:nn #1#2
  { \tl_const:cn { c__YNU_ #1 _format_tl } {#2} }
\cs_new_protected:Npn \__YNU_define_name:nn #1#2
  { \tl_const:cn { c__YNU_name_ #1 _tl } {#2} }
\cs_new_protected:Npn \__YNU_define_name:nnn #1#2#3
  {
    \tl_const:cn { c__YNU_name_ #1    _tl } {#2}
    \tl_const:cn { c__YNU_name_ #1 _en_tl } {#3}
  }
\cs_new:Npn \__YNU_msg_new:nn  { \msg_new:nnn      { YNUthesis } }
\cs_new:Npn \__YNU_error:n     { \msg_error:nn     { YNUthesis } }
\cs_new:Npn \__YNU_error:nn    { \msg_error:nnn    { YNUthesis } }
\cs_new:Npn \__YNU_error:nx    { \msg_error:nnx    { YNUthesis } }
\cs_new:Npn \__YNU_error:nnn   { \msg_error:nnnn   { YNUthesis } }
\cs_new:Npn \__YNU_error:nnnn  { \msg_error:nnnnn  { YNUthesis } }
\cs_new:Npn \__YNU_warning:n   { \msg_warning:nn   { YNUthesis } }
\cs_new:Npn \__YNU_warning:nn  { \msg_warning:nnn  { YNUthesis } }
\cs_new:Npn \__YNU_warning:nxx { \msg_warning:nnxx { YNUthesis } }
\cs_new:Npn \__YNU_info:nx     { \msg_info:nnx     { YNUthesis } }
\keys_define:nn { YNU / option }
  {
    type .choice:,
    type .value_required:n = true,
    type .choices:nn =
      { doctor, master, bachelor }
      { \int_set_eq:NN \g__YNU_thesis_type_int \l_keys_choice_int },
    type .initial:n = master,
    oneside .value_forbidden:n = true,
    twoside .value_forbidden:n = true,
    oneside .code:n =
      {
        \clist_gput_right:Nn \g__YNU_to_ctexbook_clist { oneside }
        \bool_set_false:N    \g__YNU_twoside_bool
      },
    twoside .code:n =
      {
        \clist_gput_right:Nn \g__YNU_to_ctexbook_clist { twoside }
        \bool_set_true:N     \g__YNU_twoside_bool
      },
    draft .choice:,
    draft / true  .code:n =
      {
        \bool_set_true:N     \g__YNU_draft_bool
        \clist_gput_right:Nn \g__YNU_to_ctexbook_clist { draft }
      },
    draft / false .code:n =
      { \bool_set_false:N    \g__YNU_draft_bool },
    draft .default:n = true,
    draft .initial:n = false,
    config .tl_set:N = \g__YNU_config_tl,
    unknown .code:n = { \__YNU_error:n { unknown-option } }
  }
\__YNU_msg_new:nn { unknown-option }
  { Class~ option~ "\l_keys_key_str"~ is~ unknown. }
\ProcessKeysOptions { YNU / option }
\file_input:n { YNUthesis.def }
\__YNU_msg_new:nn { load-config-file }
  { You~ are~ loading~ config~ file~ "#1". }
\tl_if_empty:NF \g__YNU_config_tl
  {
    \__YNU_info:nx { load-config-file } { \g__YNU_config_tl }
    \file_input:V \g__YNU_config_tl
  }
\PassOptionsToClass
  {
    UTF8,
    heading    = true,
    zihao      = -4,
    fontset    = none,
    linespread = \c__YNU_line_spread_fp,
    \g__YNU_to_ctexbook_clist
  }
  { ctexbook }
\clist_map_inline:nn
  {
    { no-math           } { fontspec },
    { perpage           } { footmisc },
    { amsmath, thmmarks } { ntheorem }
  }
  { \PassOptionsToPackage #1 }
\LoadClass { ctexbook }
\RequirePackage
  {
    amsmath,
    unicode-math,
    geometry,
    fancyhdr,
    footmisc,
    ntheorem,
    graphicx,
    longtable,
    caption,
    xcolor,
    adjustbox,
    tabularray
  }
\cs_new_protected:Npn \__YNU_check_package:nnn #1#2#3
  {
    \@ifpackagelater {#1} {#2}
      { } { \__YNU_error:nnnn { package-too-old } { Package } {#1} {#3} }
  }
\cs_new_protected:Npn \__YNU_check_class:nnn #1#2#3
  {
    \@ifclasslater {#1} {#2}
      { } { \__YNU_error:nnnn { package-too-old } { Class } {#1} {#3} }
  }
\__YNU_msg_new:nn { package-too-old }
  {
    #1~ "#2"~ is~ too~ old. \\
    The~ YNUthesis~ class~ only~ supports~ "#2" \\
    with~ a~ version~ higher~ than~ v#3. \\\\
    Please~ update~ an~ up-to-date~ version~ of~ it \\
    using~ your~ TeX~ package~ manager~ or~ from~ CTAN.
  }
\__YNU_check_class:nnn { ctexbook } { 2022/07/14 } { 2.5.10 }
\sys_if_engine_xetex:T
  { \__YNU_check_package:nnn { xeCJK } { 2022/08/05 } { 3.9.1 } }
\geometry
  {
    paper         = a4paper,
    top           = 3cm,
    bottom        = 2.5cm,
    left          = 2.5cm,
    right         = 2.5cm,
    bindingoffset = 1.0cm,
    head          = 1.6cm,
    foot          = 1.5cm
  }
\bool_if:NT \g__YNU_draft_bool { \geometry { showframe } }
\tl_new:N \g__YNU_fontset_tl
\tl_new:N \g__YNU_cjk_fontset_tl
\keys_define:nn { YNU / style }
  {
    font .choices:nn =
      { garamond, libertinus, lm, palatino, times, times*, none }
      { \tl_set_eq:NN \g__YNU_fontset_tl \l_keys_choice_tl }
  }
\keys_define:nn { YNU / style }
  {
    cjk-font .choices:nn =
      { adobe, fandol, founder, mac, sinotype, sourcehan, windows, none }
      { \tl_set_eq:NN \g__YNU_cjk_fontset_tl \l_keys_choice_tl }
  }
\cs_new_protected:Npn \__YNU_setmainfont:nn #1#2
  { \__fontspec_main_setmainfont:nn {#2} {#1} }
\cs_new_protected:Npn \__YNU_setsansfont:nn #1#2
  { \__fontspec_main_setsansfont:nn {#2} {#1} }
\cs_new_protected:Npn \__YNU_setmonofont:nn #1#2
  { \__fontspec_main_setmonofont:nn {#2} {#1} }
\cs_new_protected:Npn \__YNU_setmathfont:nn #1#2
  { \__um_setmathfont:nn {#2} {#1} }
\cs_new_protected:Npn \__YNU_setCJKmainfont:nn #1#2
  { \__YNU_set_family:xnn { \CJKrmdefault } {#2} {#1} }
\cs_new_protected:Npn \__YNU_setCJKsansfont:nn #1#2
  { \__YNU_set_family:xnn { \CJKsfdefault } {#2} {#1} }
\cs_new_protected:Npn \__YNU_setCJKmonofont:nn #1#2
  { \__YNU_set_family:xnn { \CJKttdefault } {#2} {#1} }
\cs_new_protected:Npn \__YNU_set_cjk_font_kai:nn #1#2
  { \__YNU_set_family:nnn { YNU@kai } {#2} {#1} }
\cs_new_protected:Npn \YNU@kai
  { \__YNU_switch_family:n { YNU@kai } }
  \cs_new_protected:Npn \__YNU_set_cjk_font_xingkai:nn #1#2
  { \__YNU_set_family:nnn { YNU@xingkai } {#2} {#1} }
\cs_new_protected:Npn \YNU@xingkai
  { \__YNU_switch_family:n { YNU@xingkai } }
\tl_const:Nn \__YNU_cjk_font_options:
 { UprightFont = *, ItalicFont = *, AutoFakeBold = true }
\cs_new_protected:Npx \__YNU_setCJKmainfont:n   #1
  { \__YNU_setCJKmainfont:nn   {#1} { \__YNU_cjk_font_options: } }
\cs_new_protected:Npx \__YNU_setCJKsansfont:n   #1
  { \__YNU_setCJKsansfont:nn   {#1} { \__YNU_cjk_font_options: } }
\cs_new_protected:Npx \__YNU_setCJKmonofont:n   #1
  { \__YNU_setCJKmonofont:nn   {#1} { \__YNU_cjk_font_options: } }
\cs_new_protected:Npx \__YNU_set_cjk_font_kai:n #1
  { \__YNU_set_cjk_font_kai:nn {#1} { \__YNU_cjk_font_options: } }
\cs_new_protected:Npx \__YNU_set_cjk_font_xingkai:n #1
  { \__YNU_set_cjk_font_xingkai:nn {#1} { \__YNU_cjk_font_options: } }
\sys_if_engine_xetex:TF
  {
    \cs_new_eq:NN \__YNU_set_family:nnn  \xeCJK_set_family:nnn
    \cs_new_eq:NN \__YNU_switch_family:n \xeCJK_switch_family:n
  }
  {
    \cs_new_eq:NN \__YNU_set_family:nnn  \ctex_ltj_set_family:nnn
    \cs_new_eq:NN \__YNU_switch_family:n \ctex_ltj_switch_family:n
  }
\cs_generate_variant:Nn \__YNU_set_family:nnn { x }
\cs_new_protected:Npn \__YNU_set_font_helper:n #1
  {
    \exp_args:Nc \RenewDocumentCommand { set #1 font } { O { } m O { } }
      {
        \ctex_at_end_preamble:n
          { \use:c { __YNU_set #1 font:nn } {##2} { ##1, ##3 } }
      }
  }
\clist_map_inline:nn { main, sans, mono, math } { \__YNU_set_font_helper:n {#1} }
\clist_map_inline:nn { CJKmain, CJKsans, CJKmono } { \__YNU_set_font_helper:n {#1} }
\tl_new:N \g__YNU_font_family_libertinus_serif_tl
\tl_new:N \g__YNU_font_family_libertinus_sans_tl
\tl_new:N \g__YNU_font_style_libertinus_rm_tl
\tl_new:N \g__YNU_font_style_libertinus_bf_tl
\tl_new:N \g__YNU_font_style_libertinus_it_tl
\tl_new:N \g__YNU_font_style_libertinus_bfit_tl
\tl_new:N \g__YNU_font_style_libertinus_bfsl_tl
\tl_new:N \g__YNU_font_family_xits_tl
\tl_new:N \g__YNU_font_style_xits_rm_tl
\tl_new:N \g__YNU_font_style_xits_bf_tl
\tl_new:N \g__YNU_font_style_xits_it_tl
\tl_new:N \g__YNU_font_style_xits_bfit_tl
\tl_new:N \g__YNU_font_name_libertinus_serif_tl
\tl_new:N \g__YNU_font_name_libertinus_sans_tl
\tl_new:N \g__YNU_font_name_libertinus_math_tl
\tl_new:N \g__YNU_font_name_xits_tl
\tl_new:N \g__YNU_font_name_xits_math_rm_tl
\tl_new:N \g__YNU_font_name_xits_math_bf_tl
\fontspec_font_if_exist:nTF { LibertinusSerif-Regular.otf }
  {
    \tl_set:Nn \g__YNU_font_family_libertinus_serif_tl { LibertinusSerif }
    \tl_set:Nn \g__YNU_font_family_libertinus_sans_tl  { LibertinusSans  }
    \tl_set:Nn \g__YNU_font_family_libertinus_math_tl  { LibertinusMath  }
    \tl_set:Nn \g__YNU_font_style_libertinus_rm_tl     { Regular         }
    \tl_set:Nn \g__YNU_font_style_libertinus_bf_tl     { Bold            }
    \tl_set:Nn \g__YNU_font_style_libertinus_it_tl     { Italic          }
    \tl_set:Nn \g__YNU_font_style_libertinus_bfit_tl   { BoldItalic      }
    \fontspec_font_if_exist:nTF { LibertinusSans-BoldOblique.otf }
      { \tl_set:Nn \g__YNU_font_style_libertinus_bfsl_tl { BoldOblique } }
      { \tl_set:Nn \g__YNU_font_style_libertinus_bfsl_tl { Bold        } }
  }
  {
    \tl_set:Nn \g__YNU_font_family_libertinus_serif_tl { libertinusserif }
    \tl_set:Nn \g__YNU_font_family_libertinus_sans_tl  { libertinussans  }
    \tl_set:Nn \g__YNU_font_family_libertinus_math_tl  { libertinusmath  }
    \tl_set:Nn \g__YNU_font_style_libertinus_rm_tl     { regular         }
    \tl_set:Nn \g__YNU_font_style_libertinus_bf_tl     { bold            }
    \tl_set:Nn \g__YNU_font_style_libertinus_it_tl     { italic          }
    \tl_set:Nn \g__YNU_font_style_libertinus_bfit_tl   { bolditalic      }
    \tl_set:Nn \g__YNU_font_style_libertinus_bfsl_tl   { bolditalic      }
  }
\fontspec_font_if_exist:nTF { XITS-Regular.otf }
  {
    \tl_set:Nn \g__YNU_font_family_xits_tl        { XITS             }
    \tl_set:Nn \g__YNU_font_style_xits_rm_tl      { Regular          }
    \tl_set:Nn \g__YNU_font_style_xits_bf_tl      { Bold             }
    \tl_set:Nn \g__YNU_font_style_xits_it_tl      { Italic           }
    \tl_set:Nn \g__YNU_font_style_xits_bfit_tl    { BoldItalic       }
    \tl_set:Nn \g__YNU_font_name_xits_math_rm_tl  { XITSMath-Regular }
    \tl_set:Nn \g__YNU_font_name_xits_math_bf_tl  { XITSMath-Bold    }
  }
  {
    \tl_set:Nn \g__YNU_font_family_xits_tl        { xits          }
    \tl_set:Nn \g__YNU_font_style_xits_rm_tl      { regular       }
    \tl_set:Nn \g__YNU_font_style_xits_bf_tl      { bold          }
    \tl_set:Nn \g__YNU_font_style_xits_it_tl      { italic        }
    \tl_set:Nn \g__YNU_font_style_xits_bfit_tl    { bolditalic    }
    \tl_set:Nn \g__YNU_font_name_xits_math_rm_tl  { xits-math     }
    \tl_set:Nn \g__YNU_font_name_xits_math_bf_tl  { xits-mathbold }
  }
\tl_set:Nx \g__YNU_font_name_libertinus_serif_tl
  { \g__YNU_font_family_libertinus_serif_tl - \g__YNU_font_style_libertinus_rm_tl }
\tl_set:Nx \g__YNU_font_name_libertinus_sans_tl
  { \g__YNU_font_family_libertinus_sans_tl  - \g__YNU_font_style_libertinus_rm_tl }
\tl_set:Nx \g__YNU_font_name_libertinus_math_tl
  { \g__YNU_font_family_libertinus_math_tl  - \g__YNU_font_style_libertinus_rm_tl }
\tl_set:Nx \g__YNU_font_name_xits_tl
  { \g__YNU_font_family_xits_tl - \g__YNU_font_style_xits_rm_tl }
\cs_new_protected:Npn \__YNU_load_font_garamond:
  {
    \__YNU_setmainfont:nn { EBGaramond }
      {
        Extension      = .otf,
        UprightFont    = *-Regular,
        BoldFont       = *-Bold,
        ItalicFont     = *-Italic,
        BoldItalicFont = *-BoldItalic
      }
    \__YNU_setsansfont:nn { \g__YNU_font_family_libertinus_sans_tl }
      {
        Extension      = .otf,
        UprightFont    = *-\g__YNU_font_style_libertinus_rm_tl,
        BoldFont       = *-\g__YNU_font_style_libertinus_bf_tl,
        ItalicFont     = *-\g__YNU_font_style_libertinus_it_tl,
        BoldItalicFont = *-\g__YNU_font_style_libertinus_bfsl_tl
      }
    \__YNU_setmonofont:nn { lmmonolt10 }
      {
        Extension      = .otf,
        UprightFont    = *-regular,
        BoldFont       = *-bold,
        ItalicFont     = *-oblique,
        BoldItalicFont = *-boldoblique
      }
    \__YNU_setmathfont:nn { Garamond-Math.otf } { }
  }
\cs_new_protected:Npn \__YNU_load_font_libertinus:
  {
    \__YNU_setmainfont:nn { \g__YNU_font_family_libertinus_serif_tl }
      {
        Extension      = .otf,
        UprightFont    = *-\g__YNU_font_style_libertinus_rm_tl,
        BoldFont       = *-\g__YNU_font_style_libertinus_bf_tl,
        ItalicFont     = *-\g__YNU_font_style_libertinus_it_tl,
        BoldItalicFont = *-\g__YNU_font_style_libertinus_bfit_tl
      }
    \__YNU_setsansfont:nn { \g__YNU_font_family_libertinus_sans_tl }
      {
        Extension      = .otf,
        UprightFont    = *-\g__YNU_font_style_libertinus_rm_tl,
        BoldFont       = *-\g__YNU_font_style_libertinus_bf_tl,
        ItalicFont     = *-\g__YNU_font_style_libertinus_it_tl,
        BoldItalicFont = *-\g__YNU_font_style_libertinus_bfsl_tl
      }
    \__YNU_setmonofont:nn { lmmonolt10 }
      {
        Extension      = .otf,
        UprightFont    = *-regular,
        BoldFont       = *-bold,
        ItalicFont     = *-oblique,
        BoldItalicFont = *-boldoblique
      }
    \__YNU_setmathfont:nn { \g__YNU_font_name_libertinus_math_tl .otf } { }
  }
\cs_new_protected:Npn \__YNU_load_font_lm:
  { \__YNU_setmathfont:nn { latinmodern-math.otf } { } }
\cs_new_protected:Npn \__YNU_load_font_palatino:
  {
    \__YNU_setmainfont:nn { texgyrepagella }
      {
        Extension      = .otf,
        UprightFont    = *-regular,
        BoldFont       = *-bold,
        ItalicFont     = *-italic,
        BoldItalicFont = *-bolditalic
      }
    \__YNU_setsansfont:nn { \g__YNU_font_family_libertinus_sans_tl }
      {
        Extension      = .otf,
        UprightFont    = *-\g__YNU_font_style_libertinus_rm_tl,
        BoldFont       = *-\g__YNU_font_style_libertinus_bf_tl,
        ItalicFont     = *-\g__YNU_font_style_libertinus_it_tl,
        BoldItalicFont = *-\g__YNU_font_style_libertinus_bfsl_tl,
        Scale          = MatchUppercase
      }
    \__YNU_setmonofont:nn { lmmonolt10 }
      {
        Extension      = .otf,
        UprightFont    = *-regular,
        BoldFont       = *-bold,
        ItalicFont     = *-oblique,
        BoldItalicFont = *-boldoblique
      }
    \__YNU_setmathfont:nn { texgyrepagella-math.otf } { }
  }
\cs_new_protected:Npn \__YNU_load_font_times:
  {
    \__YNU_setmainfont:nn { \g__YNU_font_family_xits_tl }
      {
        Extension          = .otf,
        UprightFont        = *-\g__YNU_font_style_xits_rm_tl,
        BoldFont           = *-\g__YNU_font_style_xits_bf_tl,
        ItalicFont         = *-\g__YNU_font_style_xits_it_tl,
        BoldItalicFont     = *-\g__YNU_font_style_xits_bfit_tl
      }
    \__YNU_setsansfont:nn { texgyreheros }
      {
        Extension      = .otf,
        UprightFont    = *-regular,
        BoldFont       = *-bold,
        ItalicFont     = *-italic,
        BoldItalicFont = *-bolditalic
      }
    \__YNU_setmonofont:nn { texgyrecursor }
      {
        Extension      = .otf,
        UprightFont    = *-regular,
        BoldFont       = *-bold,
        ItalicFont     = *-italic,
        BoldItalicFont = *-bolditalic,
        Ligatures      = CommonOff
      }
    \__YNU_setmathfont:nn { \g__YNU_font_name_xits_math_rm_tl .otf }
      { BoldFont = \g__YNU_font_name_xits_math_bf_tl .otf }
  }
\cs_new_protected:cpn { __YNU_load_font_ times* : }
  {
    \__YNU_setmainfont:nn { Times~ New~ Roman } { }
    \__YNU_setsansfont:nn { Arial             } { }
    \__YNU_setmonofont:nn { Courier~ New      } { }
    \__YNU_setmathfont:nn { \g__YNU_font_name_xits_math_rm_tl .otf }
      { BoldFont = \g__YNU_font_name_xits_math_bf_tl .otf }
  }
\cs_new_protected:Npn \__YNU_load_cjk_font_adobe:
  {
    \__YNU_setCJKmainfont:n   { AdobeSongStd-Light       }
    \__YNU_setCJKsansfont:n   { AdobeHeitiStd-Regular    }
    \__YNU_setCJKmonofont:n   { AdobeFangsongStd-Regular }
    \__YNU_set_cjk_font_kai:n { AdobeKaitiStd-Regular    }
  }
\cs_new_protected:Npn \__YNU_load_cjk_font_fandol:
  {
    \__YNU_setCJKmainfont:nn   { FandolSong }
      {
        Extension      = .otf,
        UprightFont    = *-Regular,
        BoldFont       = *-Bold,
        ItalicFont     = *-Regular,
        BoldItalicFont = *-Bold
      }
    \__YNU_setCJKsansfont:nn   { FandolHei }
      {
        Extension      = .otf,
        UprightFont    = *-Regular,
        BoldFont       = *-Bold,
        ItalicFont     = *-Regular,
        BoldItalicFont = *-Bold
      }
    \__YNU_setCJKmonofont:nn   { FandolFang }
      {
        Extension      = .otf,
        UprightFont    = *-Regular,
        BoldFont       = *-Regular,
        ItalicFont     = *-Regular,
        BoldItalicFont = *-Regular
      }
    \__YNU_set_cjk_font_kai:nn { FandolKai }
      {
        Extension      = .otf,
        UprightFont    = *-Regular,
        BoldFont       = *-Regular,
        ItalicFont     = *-Regular,
        BoldItalicFont = *-Regular
      }
  }
\cs_new_protected:Npn \__YNU_load_cjk_font_founder:
  {
    \__YNU_setCJKmainfont:n   { FZShuSong-Z01  }
    \__YNU_setCJKsansfont:n   { FZHei-B01      }
    \__YNU_setCJKmonofont:n   { FZFangSong-Z02 }
    \__YNU_set_cjk_font_kai:n { FZKai-Z03      }
  }
\cs_new_protected:Npn \__YNU_load_cjk_font_mac:
  {
    \__YNU_setCJKmainfont:nn   { STSongti-SC }
      {
        UprightFont    = *-Light,
        BoldFont       = *-Bold,
        ItalicFont     = *-Light,
        BoldItalicFont = *-Bold
      }
    \__YNU_setCJKsansfont:nn   { STHeitiSC   }
      {
        UprightFont    = *-Medium,
        BoldFont       = *-Medium,
        ItalicFont     = *-Medium,
        BoldItalicFont = *-Medium
      }
    \__YNU_setCJKmonofont:n    { STFangsong  }
    \__YNU_set_cjk_font_kai:nn { STKaitiSC   }
      {
        UprightFont    = *-Regular,
        BoldFont       = *-Bold,
        ItalicFont     = *-Regular,
        BoldItalicFont = *-Bold
      }
  }
\cs_new_protected:Npn \__YNU_load_cjk_font_sinotype:
  {
    \__YNU_setCJKmainfont:n       { STSong     }
    \__YNU_setCJKsansfont:n       { STHeiti    }
    \__YNU_setCJKmonofont:n       { STFangsong }
    \__YNU_set_cjk_font_kai:n     { STKaiti    }
    \__YNU_set_cjk_font_xingkai:n { STXingkai  }
  }
\cs_new_protected:Npn \__YNU_load_cjk_font_sourcehan:
  {
    \__YNU_setCJKmainfont:nn { SourceHanSerifSC }
      {
        UprightFont    = *-Regular,
        BoldFont       = *-Bold,
        ItalicFont     = *-Regular,
        BoldItalicFont = *-Bold
      }
    \__YNU_setCJKsansfont:nn { SourceHanSansSC  }
      {
        UprightFont    = *-Regular,
        BoldFont       = *-Bold,
        ItalicFont     = *-Regular,
        BoldItalicFont = *-Bold
      }
    \__YNU_warning:n { source-han }
  }
\__YNU_msg_new:nn { source-han }
  { Font~ set~ "sourcehan"~ does~ not~ contain~ kaiti~ and~ fangsong. }
\cs_new_protected:Npn \__YNU_load_cjk_font_windows:
  {
    \__YNU_setCJKmainfont:n       { SimSun     }
    \__YNU_setCJKsansfont:n       { SimHei     }
    \__YNU_setCJKmonofont:n       { FangSong   }
    \__YNU_set_cjk_font_kai:n     { KaiTi      }
    \__YNU_set_cjk_font_xingkai:n { STXingkai  }
  }
\cs_new_protected:Npn \__YNU_load_font:
  {
    \use:c { __YNU_load_font_     \g__YNU_fontset_tl     : }
    \use:c { __YNU_load_cjk_font_ \g__YNU_cjk_fontset_tl : }
  }
\ctex_at_end_preamble:n { \__YNU_load_font: }
\keys_set:nn { unicode-math }
  {
    math-style = ISO,
    bold-style = ISO,
  }
\keys_define:nn { YNU / style }
  {
    font-size .choice:,
    font-size .value_required:n = true,
    font-size / -4 .code:n = { },
    font-size /  5 .code:n =
      {
        \RenewDocumentCommand \tiny         { } { \zihao {  7 } }
        \RenewDocumentCommand \scriptsize   { } { \zihao { -6 } }
        \RenewDocumentCommand \footnotesize { } { \zihao {  6 } }
        \RenewDocumentCommand \small        { } { \zihao { -5 } }
        \RenewDocumentCommand \normalsize   { } { \zihao {  5 } }
        \RenewDocumentCommand \large        { } { \zihao { -4 } }
        \RenewDocumentCommand \Large        { } { \zihao { -3 } }
        \RenewDocumentCommand \LARGE        { } { \zihao { -2 } }
        \RenewDocumentCommand \huge         { } { \zihao {  2 } }
        \RenewDocumentCommand \Huge         { } { \zihao {  1 } }
      },

    fullwidth-stop .choice:,
    fullwidth-stop .value_required:n = true,
    fullwidth-stop / catcode .code:n =
      { \__YNU_set_fullwidth_stop_catcode: },
    fullwidth-stop / mapping .code:n =
      {
        \sys_if_engine_xetex:TF
          {
            \clist_gset:Nn \g__xeCJK_default_features_clist
              { Mapping = fullwidth-stop }
          }
          {
            \sys_if_engine_luatex:T
              {
                \__YNU_warning:n { mapping-not-available }
                \__YNU_set_fullwidth_stop_catcode:
              }
          }
      },
    fullwidth-stop / false .code:n = { }
  }
\__YNU_msg_new:nn { mapping-not-available }
  {
    Option~ "fullwidth-stop = mapping"~ is~ not~ available~ in~ LuaTeX. \\
    "fullwidth-stop = catcode"~ will~ be~ set~ instead.
  }
\cs_new:Npn \__YNU_set_fullwidth_stop_catcode:
  {
    \char_set_active_eq:NN ^^^^3002 \c__YNU_fwid_full_stop_tl
    \char_set_catcode_active:N ^^^^3002
    \clist_map_inline:nn
      { \c__YNU_orig_auth_text_a_tl }
      { \tl_set_rescan:Nno ##1 { } {##1} }
  }
\DeclareEmphSequence
  {
    \itshape \YNU@kai,
    \upshape \CJKfamily { \CJKfamilydefault },
  }
\RequirePackage{xpatch}
\xpatchcmd\@floatboxreset
  {\normalsize}
  {\expandafter\ifstrequal\expandafter{\@captype}{table}
      % if inside "table" env
      {\small}
      % otherwise
      {\normalsize}}
  {}{\fail}
\RequirePackage{etoolbox}
\AtBeginEnvironment{tabular}{\small}
\AtBeginEnvironment{longtable}{\small}
\AtBeginEnvironment{tblr}{\small}
\fancyhf { }
\cs_new_protected:Npn \__YNU_fancy_head:nn #1#2
  {
    \fancyhead [#1]
    { \small \YNU@kai \nouppercase {#2} }
  }
\bool_if:NTF \g__YNU_twoside_bool
  {
    \__YNU_fancy_head:nn { OR } { \leftmark }
    \int_case:nn { \g__YNU_thesis_type_int }
      {
        { 1 } { \__YNU_fancy_head:nn { EL } { 云南大学博士学位论文  } }
        { 2 } { \__YNU_fancy_head:nn { EL } { 云南大学（专业）硕士学位论文  } }
      }
  }
  {
    \__YNU_fancy_head:nn { C } {
      \int_if_odd:nTF \c@page
        { \leftmark }
        {
          \int_case:nn { \g__YNU_thesis_type_int }
          {
            { 1 } { \tl_set:Nn \l_tmpa_tl { 云南大学博士学位论文        } }
            { 2 } { \tl_set:Nn \l_tmpa_tl { 云南大学（专业）硕士学位论文 } }
          }
          \l_tmpa_tl
        }
    }
  }
\fancyfoot [ C ] { \small \thepage }
\RenewDocumentCommand \cleardoublepage { }
  {
    \clearpage
    \bool_if:NT \g__YNU_twoside_bool
      {
        \int_if_odd:nF \c@page
          { \hbox:n { } \thispagestyle { empty } \newpage }
      }
  }
\pagestyle { fancy }
\keys_set:nn { ctex }
  {
    chapter =
      {
        format      = \large \normalfont \sffamily \centering,
        beforeskip  = 19 pt,
        afterskip   = 17 pt,
        number      = \__YNU_arabic:n { chapter },
        fixskip     = true
      },
    section =
      {
        format      = \zihao{ 4 } \normalfont \sffamily \raggedright,
        beforeskip  = 3.5 ex plus 1.0 ex minus 0.2 ex,
        afterskip   = 2.7 ex plus 0.5 ex,
        fixskip     = true
      },
    subsection =
      {
        format      = \normalfont \sffamily \raggedright,
        beforeskip  = 3.25 ex plus 1.0 ex minus 0.2 ex,
        afterskip   = 2.5  ex plus 0.3 ex,
        fixskip     = true
      },
    subsubsection =
      {
        format      = \normalfont \sffamily \raggedright,
        beforeskip  = 3.25 ex plus 1.0 ex minus 0.2 ex,
        afterskip   = 2.5  ex plus 0.3 ex,
        fixskip     = true
      }
  }
\cs_new_protected:Npn \__YNU_sanitize_chapter_title:n #1
  {
    \tl_clear:N \l__YNU_tmpa_tl
    \tl_set:No \l__YNU_tmpa_tl {#1}
    \tl_remove_all:Nn \l__YNU_tmpa_tl { \quad }
  }
\cs_new_protected:Npn \__YNU_chapter:n #1
  {
    \__YNU_sanitize_chapter_title:n {#1}
    \group_begin:
      \ctexset { chapter / numbering = false }
      \chapter [ \l__YNU_tmpa_tl ] {#1}
    \group_end:
    \__YNU_chapter_header:n {#1}
  }
\cs_generate_variant:Nn \__YNU_chapter:n { V }
\cs_new_protected:Npn \__YNU_chapter_no_toc:n #1
  {
    \chapter * {#1}
    \__YNU_sanitize_chapter_title:n {#1}
    \pdfbookmark [0] { \l__YNU_tmpa_tl } { toc }
    \__YNU_chapter_header:n {#1}
  }
\cs_generate_variant:Nn \__YNU_chapter_no_toc:n { V }
\cs_new_protected:Npn \__YNU_chapter_header:n #1
  {
    \bool_if:NTF \g__YNU_twoside_bool
      { \markboth {#1} {#1} }
      { \markboth { \hfill #1 \hfill } { } }
  }
\clist_map_inline:nn
  {
    { plain           } { plain           },
    { libertinus      } { libertinus      },
    { libertinus_neg  } { libertinus*     },
    { libertinus_sans } { libertinus-sans },
    { pifont          } { pifont          },
    { pifont_neg      } { pifont*         },
    { pifont_sans     } { pifont-sans     },
    { pifont_sans_neg } { pifont-sans*    },
    { xits            } { xits            },
    { xits_sans       } { xits-sans       },
    { xits_sans_neg   } { xits-sans*      }
  }
  { \__YNU_define_fn_style:nn #1 }
\tl_new:N \l__YNU_fn_style_tl
\keys_define:nn { YNU / style }
  {
    footnote-style .choices:nn =
      {
        plain,
        libertinus, libertinus*, libertinus-sans,
        pifont,     pifont*,     pifont-sans,     pifont-sans*,
        xits,                    xits-sans,       xits-sans*
      }
      {
        \tl_gset_eq:NN \l__YNU_fn_style_tl \l_keys_choice_tl
        \int_compare:nT { 5 <= \l_keys_choice_int <= 8 }
          { \RequirePackage { pifont } }
      },
    footnote-style .value_required:n = true
  }
\cs_new:Npn \__YNU_fn_symbol_libertinus:n #1
  {
    \int_compare:nTF { #1 >= 21 }
      {
        \int_compare:nTF { #1 >= 47 }
          { \__YNU_symbol:n { \int_eval:n { "24B6 - 47 + #1 } } }
          { \__YNU_symbol:n { \int_eval:n { "24D0 - 21 + #1 } } }
      }
      { \__YNU_symbol:n { \int_eval:n { "2460 - 1 + #1 } } }
  }
\cs_new:Npn \__YNU_fn_symbol_libertinus_neg:n #1
  {
    \int_compare:nTF { #1 >= 11 }
      { \__YNU_symbol:n { \int_eval:n { "24EB - 11 + #1 } } }
      { \__YNU_symbol:n { \int_eval:n { "2776 -  1 + #1 } } }
  }
\cs_new_eq:NN \__YNU_fn_symbol_libertinus_sans:n \__YNU_fn_symbol_libertinus:n
\cs_new:Npn \__YNU_fn_symbol_pifont:n #1
  { \ding { \int_eval:n { 171 + #1 } } }
\cs_new:Npn \__YNU_fn_symbol_pifont_neg:n #1
  { \ding { \int_eval:n { 181 + #1 } } }
\cs_new:Npn \__YNU_fn_symbol_pifont_sans:n #1
  { \ding { \int_eval:n { 191 + #1 } } }
\cs_new:Npn \__YNU_fn_symbol_pifont_sans_neg:n #1
  { \ding { \int_eval:n { 201 + #1 } } }
\cs_new:Npn \__YNU_fn_symbol_xits:n #1
  {
    \int_compare:nTF { #1 >= 10 }
      {
        \int_compare:nTF { #1 >= 36 }
          { \__YNU_symbol:n { \int_eval:n { "24B6 - 36 + #1 } } }
          { \__YNU_symbol:n { \int_eval:n { "24D0 - 10 + #1 } } }
      }
      { \__YNU_symbol:n { \int_eval:n { "2460 - 1 + #1 } } }
  }
\cs_new:Npn \__YNU_fn_symbol_xits_sans:n #1
  { \__YNU_symbol:n { \int_eval:n { "2780 - 1 + #1 } } }
\cs_new:Npn \__YNU_fn_symbol_xits_sans_neg:n #1
  { \__YNU_symbol:n { \int_eval:n { "278A - 1 + #1 } } }
\cs_set:Npn \thefootnote { \YNU_footnote_number:N \c@footnote }
\cs_new:Npn \YNU_footnote_number:N #1
  {
    \tl_case:NnF \l__YNU_fn_style_tl
      {
        \c__YNU_fn_style_plain_tl
          { \int_use:N #1 }
        \c__YNU_fn_style_libertinus_tl
          {
            \fontspec { \g__YNU_font_name_libertinus_serif_tl .otf }
            \__YNU_fn_symbol_libertinus:n {#1}
          }
        \c__YNU_fn_style_libertinus_neg_tl
          {
            \fontspec { \g__YNU_font_name_libertinus_serif_tl .otf }
            \__YNU_fn_symbol_libertinus_neg:n {#1}
          }
        \c__YNU_fn_style_libertinus_sans_tl
          {
            \fontspec { \g__YNU_font_name_libertinus_sans_tl .otf }
            \__YNU_fn_symbol_libertinus_sans:n {#1}
          }
        \c__YNU_fn_style_pifont_tl
          { \__YNU_fn_symbol_pifont:n {#1} }
        \c__YNU_fn_style_pifont_neg_tl
          { \__YNU_fn_symbol_pifont_neg:n {#1} }
        \c__YNU_fn_style_pifont_sans_tl
          { \__YNU_fn_symbol_pifont_sans:n {#1} }
        \c__YNU_fn_style_pifont_sans_neg_tl
          { \__YNU_fn_symbol_pifont_sans_neg:n {#1} }
        \c__YNU_fn_style_xits_tl
          {
            \fontspec { \g__YNU_font_name_xits_tl .otf }
            \__YNU_fn_symbol_xits:n {#1}
          }
        \c__YNU_fn_style_xits_sans_tl
          {
            \fontspec { \g__YNU_font_name_xits_tl .otf }
            \__YNU_fn_symbol_xits_sans:n {#1}
          }
        \c__YNU_fn_style_xits_sans_neg_tl
          {
            \fontspec { \g__YNU_font_name_xits_tl .otf }
            \__YNU_fn_symbol_xits_sans_neg:n {#1}
          }
      }
      { \int_use:N #1 }
  }
\cs_set:Npn \@makefntext #1
  {
    \mode_leave_vertical:
    \hbox_to_wd:nn { 1.5 em } { \@thefnmark \hfil }
    #1
  }
\clist_const:Nn \c__YNU_thm_style_plain_clist
  { plain, margin, change }
\clist_const:Nn \c__YNU_thm_style_break_clist
  { break, marginbreak, changebreak }
\tl_new:N \l__YNU_thm_style_tl
\tl_new:N \l__YNU_thm_header_font_tl
\tl_new:N \l__YNU_thm_body_font_tl
\tl_new:N \l__YNU_thm_qed_tl
\tl_new:N \l__YNU_thm_counter_tl
\keys_define:nn { YNU / theorem }
  {
    style       .tl_set:N  = \l__YNU_thm_style_tl,
    header-font .tl_set:N  = \l__YNU_thm_header_font_tl,
    body-font   .tl_set:N  = \l__YNU_thm_body_font_tl,
    qed         .tl_set:N  = \l__YNU_thm_qed_tl,
    counter     .tl_set:N  = \l__YNU_thm_counter_tl
  }
\cs_new_eq:NN \__YNU_thm_ntheorem_style:n \theoremstyle
\cs_new_eq:NN \__YNU_thm_ntheorem_new:w   \newtheorem
\RenewDocumentCommand \newtheorem { s o m m }
  {
    \IfBooleanTF {#1}
      { \tl_set:Nn \l__YNU_thm_qed_tl { \ensuremath { \QED } } }
      { \tl_set:Nn \l__YNU_thm_qed_tl { } }
\tl_set:Nn \l__YNU_thm_style_tl { plain }
    \IfValueT {#2} { \keys_set:nn { YNU / theorem } {#2} }
    \YNU_thm_set_header_font:V \l__YNU_thm_header_font_tl
    \YNU_thm_set_body_font:V   \l__YNU_thm_body_font_tl
    \YNU_thm_set_qed:V         \l__YNU_thm_qed_tl
    \IfBooleanTF {#1}
      {
        \clist_if_in:nVF { plain, break } \l__YNU_thm_style_tl
          {
            \clist_if_in:NVTF
              \c__YNU_thm_style_plain_clist \l__YNU_thm_style_tl
              { \__YNU_thm_redefine_style:n { plain } }
              {
                \clist_if_in:NVTF
                  \c__YNU_thm_style_break_clist \l__YNU_thm_style_tl
                  { \__YNU_thm_redefine_style:n { break } }
                  {
                    \__YNU_error:nx { unknown-theorem-style }
                      { \l__YNU_thm_style_tl }
                  }
              }
          }
        \tl_put_left:Nn \l__YNU_thm_style_tl { nonumber }
        \YNU_thm_new_no_number:Vxx \l__YNU_thm_style_tl {#3} {#4}
      }
      {
        \clist_clear:N \l__YNU_tmpa_clist
        \clist_concat:NNN \l__YNU_tmpa_clist
          \c__YNU_thm_style_plain_clist \c__YNU_thm_style_break_clist
        \clist_if_in:NVF \l__YNU_tmpa_clist \l__YNU_thm_style_tl
          {
            \__YNU_error:nx { unknown-theorem-style }
              { \l__YNU_thm_style_tl }
          }
        \YNU_thm_new:VVxx \l__YNU_thm_style_tl \l__YNU_thm_counter_tl
          {#3} {#4}
      }
  }
\cs_new:Npn \__YNU_thm_redefine_style:n #1
  {
    \__YNU_warning:nxx { redefine-theorem-style }
      {#1} { \l__YNU_thm_style_tl }
    \tl_set:Nn \l__YNU_thm_style_tl {#1}
  }
\__YNU_msg_new:nn { redefine-theorem-style }
  { Theorem~ style~ "#2"~ will~ be~ redefined~ as~ "#1". }
\__YNU_msg_new:nn { unknown-theorem-style }
  { Theorem~ style~ "#1"~ is~ unknown. }
\cs_new:Npn \YNU_thm_new:nnnn #1#2#3#4
  {
    \__YNU_thm_ntheorem_style:n {#1}
    \__YNU_thm_ntheorem_new:w   {#3} {#4} [#2]
  }
\cs_generate_variant:Nn \YNU_thm_new:nnnn { VVxx }
\cs_new:Npn \YNU_thm_new_no_number:nnn #1#2#3
  {
    \__YNU_thm_ntheorem_style:n {#1}
    \__YNU_thm_ntheorem_new:w   {#2} {#3}
  }
\cs_generate_variant:Nn \YNU_thm_new_no_number:nnn { Vxx }
\cs_new:Npn \YNU_thm_set_qed:n         #1 { \theoremsymbol     {#1} }
\cs_new:Npn \YNU_thm_set_header_font:n #1 { \theoremheaderfont {#1} }
\cs_new:Npn \YNU_thm_set_body_font:n   #1 { \theorembodyfont   {#1} }
\cs_generate_variant:Nn \YNU_thm_set_qed:n         { V }
\cs_generate_variant:Nn \YNU_thm_set_header_font:n { V }
\cs_generate_variant:Nn \YNU_thm_set_body_font:n   { V }
\captionsetup [ figure ]
  {
    font      = small,
    labelfont = bf,
    textfont  = bf,
    labelsep  = quad,
    position  = top
  }
\captionsetup [ table  ]
  {
    font      = small,
    labelfont = bf,
    textfont  = bf,
    labelsep  = quad,
    position  = bottom
  }
\cs_set:Npn \thefigure
  { \thechapter - \__YNU_arabic:n { figure } }
\cs_set:Npn \thetable
  { \thechapter - \__YNU_arabic:n { table  } }
\clist_map_inline:nn
  {
    title, date, author, supervisor, professional_title, department, major, major_professional, student_id, UDC, number, clc, jel
  }
  { \tl_new:c { l__YNU_info_ #1 _tl } }
\clist_map_inline:nn
  {
    instructors, supervisor, keywords, pre_approval, pre_defense, submission,defense
  }
  { \clist_new:c { l__YNU_info_ #1 _clist } }
\clist_map_inline:nn
  { title, author, supervisor, department, major }
  { \tl_new:c { l__YNU_info_ #1 _en_tl } }
\clist_new:N \l__YNU_info_keywords_en_clist
\int_new:N \l__YNU_info_degree_type_int
\keys_define:nn { YNU / info }
  {
    degree      .choices:nn  =
      { academic, professional }
      { \int_set_eq:NN \l__YNU_info_degree_type_int \l_keys_choice_int },
    title       .tl_set:N    = \l__YNU_info_title_tl,
    title*      .tl_set:N    = \l__YNU_info_title_en_tl,
    date        .tl_set:N    = \l__YNU_info_date_tl,
    author      .tl_set:N    = \l__YNU_info_author_tl,
    author*     .tl_set:N    = \l__YNU_info_author_en_tl,
    supervisor  .clist_set:N = \l__YNU_info_supervisor_clist,
    pre-approval .clist_set:N = \l__YNU_info_pre_approval_clist,
    pre-defense  .clist_set:N = \l__YNU_info_pre_defense_clist,
    submission   .clist_set:N = \l__YNU_info_submission_clist,
    defense      .clist_set:N = \l__YNU_info_defense_clist,
    department  .tl_set:N    = \l__YNU_info_department_tl,
    major       .tl_set:N    = \l__YNU_info_major_tl,
    major_professional       .tl_set:N    = \l__YNU_info_major_professional_tl,
    student-id  .tl_set:N    = \l__YNU_info_student_id_tl,
    school-id   .tl_set:N    = \l__YNU_info_school_id_tl,
    keywords    .clist_set:N = \l__YNU_info_keywords_clist,
    keywords*   .clist_set:N = \l__YNU_info_keywords_en_clist,
    clc         .tl_set:N    = \l__YNU_info_clc_tl,
  }
\tl_new:N    \l__YNU_cover_logo_tl
\clist_new:N \l__YNU_cover_logo_size_clist
\keys_define:nn { YNU / style }
  {
    logo      .tl_set:N    = \l__YNU_cover_logo_tl,
    logo-size .clist_set:N = \l__YNU_cover_logo_size_clist
  }
\tl_new:N \l__YNU_info_secret_level_tl
\int_new:N \l__YNU_secret_level_item_int
\keys_define:nn { YNU / info }
  {
    secret-level .choices:nn  =
      { none, i, ii, iii, iv }
      {
        \int_set_eq:NN \l__YNU_secret_level_item_int \l_keys_choice_int
        \tl_set:Nn \l__YNU_info_secret_level_tl
          {
            \clist_item:Nn \c__YNU_secret_clist
              { \l__YNU_secret_level_item_int }
          }
      },
    secret-level .value_required:n = true,
  }
\cs_new_protected:Npn \__YNU_spread_box:nn #1#2
  {
    \mode_leave_vertical:
    \hbox_to_wd:nn {#1}
      { \tl_map_inline:xn {#2} { ##1 \hfil } \unskip }
  }
\cs_new_protected:Npn \__YNU_center_box:nn #1#2
  {
    \mode_leave_vertical:
    \hbox_to_wd:nn {#1} { \hfil #2 \hfil }
  }
\cs_generate_variant:Nn \__YNU_center_box:nn  { Vn }
\cs_new:Npn \__YNU_fixed_width_box:nn #1#2
  { \parbox[t][0cm][l] {#1} {#2} }
\cs_new:Npn \__YNU_fixed_width_center_box:nn #1#2
  { \parbox {#1} { \centering #2 } }
\cs_new:Npn \__YNU_get_text_width:Nn #1#2
  {
    \hbox_set:Nn \l__YNU_tmpa_box {#2}
    \dim_set:Nn #1 { \box_wd:N \l__YNU_tmpa_box }
  }
\cs_generate_variant:Nn \__YNU_get_text_width:Nn { NV }
\cs_new:Npn \__YNU_get_max_text_width:NN #1#2
  {
    \group_begin:
      \clist_set_eq:NN \l__YNU_tmpa_clist #2
      \bool_until_do:nn { \clist_if_empty_p:N \l__YNU_tmpa_clist }
        {
          \clist_pop:NN \l__YNU_tmpa_clist \l__YNU_tmpa_tl
          \__YNU_get_text_width:NV \l__YNU_tmpa_dim \l__YNU_tmpa_tl
          \dim_gset:Nn #1 { \dim_max:nn {#1} { \l__YNU_tmpa_dim } }
        }
    \group_end:
  }
\cs_new:Npn \__YNU_blank_underline:n #1
  { \rule [ -0.5 ex ] {#1} { 0.4 pt } }
\cs_new:Npn \__YNU_line_spread:N #1
  { \linespread { \fp_use:N #1 } \selectfont }
\cs_new:Npn \__YNU_line_spread:n #1
  { \linespread {#1} \selectfont }
\__YNU_line_spread:n {1.5}
\newcommand\reduline{\bgroup 是\markoverwith
{\textcolor{red}{\rule[-0.5ex]{2pt}{0.4pt}}}\ULon}
\cs_new_protected:Npn \__YNU_cover_id:
  {
    \__YNU_fixed_width_box:nn { \textwidth }
      {
        \__YNU_cover_aux_a:nnnn { 3em }{ clc          }{ 6em }{ 1mm } \hskip 1em
        \__YNU_cover_aux_a:nnnn { 2em }{ secret_level }{ 6em }{ 1mm } \par
        \__YNU_cover_aux_a:nnnn { 3em }{ UDC          }{ 6em }{ 1mm } \hskip 1em
        \__YNU_cover_aux_a:nnnn { 2em }{ number       }{ 6em }{ 1mm } \par
      }
  }
\cs_new:Npn \__YNU_cover_aux:nnnn #1#2#3#4
  {
    \__YNU_spread_box:nn { #1 } { \tl_use:c { c__YNU_name_ #2 _tl } }
    \UnderlineCentered{ #3 } { #4 } { \tl_use:c { l__YNU_info_ #2 _tl } }
  }
\cs_new:Npn \__YNU_cover_aux_a:nnnn #1#2#3#4
  {
    \__YNU_center_box:nn { #1 } { \tl_use:c { c__YNU_name_ #2 _tl } }
    \c__YNU_fwid_colon_tl
    \UnderlineCentered{ #3 } { #4 } { \tl_use:c { l__YNU_info_ #2 _tl } }
  }
\cs_new_protected:Npn \__YNU_cover_logo:
  {
    \__YNU_fixed_width_center_box:nn
        { \textwidth               }
        { \YNUnameTwo[scale=0.045] }
  }
\cs_new_protected:Npn \__YNU_cover_type:
  {
    \tl_set:Nx \l__YNU_tmpa_tl
      {
        \clist_item:Nn \c__YNU_thesis_type_clist
          { \g__YNU_thesis_type_int }
      }
      \__YNU_spread_box:nn { \textwidth } { \l__YNU_tmpa_tl }
  }
\cs_new_protected:Npn \__YNU_cover_degree:
  {
  }
\cs_new_protected:Npn \__YNU_cover_title:
  {
    \__YNU_fixed_width_center_box:nn
        { \textwidth }
        { 题目 \hskip 1\ccwd
          \__YNU_fixed_width_box:nn
          { 16\ccwd }
          { \UnderlineCentered{16\ccwd}{1.5mm}{ \l__YNU_info_title_tl } }
        }
  }
\cs_new_protected:Npn \__YNU_cover_title_en:
  {
    \__YNU_fixed_width_center_box:nn
        { \textwidth }
        { Title \hskip 1\ccwd
          \__YNU_fixed_width_box:nn
          { 16\ccwd }
          { \UnderlineCentered{16\ccwd}{1.7mm}{ \l__YNU_info_title_en_tl } }
        }
  }

\cs_new_protected:Npn \__YNU_cover_info:
  {
    \__YNU_fixed_width_box:nn { 22.5em }
      {
        \__YNU_cover_aux:nnnn
          { 8em  }{ department }
          { 14.5em }{ 1.5mm      } \par
        \__YNU_cover_aux:nnnn
          { 5em  }{ major }
          { 17.5em }{ 1.5mm } \par
        \__YNU_cover_aux:nnnn
          { 5em  }{ major_professional }
          { 17.5em }{ 1.5mm              } \par
        \__YNU_cover_aux:nnnn
          { 5em }{ author }
          { 6.5em }{ 1.5mm  } \hskip 1em
        \__YNU_cover_aux:nnnn
          { 2em }{ student_id }
          { 8em }{ 1.5mm      } \par
        \int_case:nn {\g__YNU_thesis_type_int}
        {
          { 1 }{
            \bool_until_do:nn { \clist_if_empty_p:N \l__YNU_info_supervisor_clist }{
              \clist_pop:NN \l__YNU_info_supervisor_clist \l__YNU_info_supervisor_tl
              \clist_pop:NN \l__YNU_info_supervisor_clist \l__YNU_info_professional_title_tl
              \__YNU_cover_aux:nnnn
                { 5em }{ supervisor }
                { 6.5em }{ 1.5mm      } \hskip 1em
              \__YNU_cover_aux:nnnn
                { 2em }{ professional_title }
                { 8em }{ 1.5mm              } \par
            }
          }
          { 2 }{
            \clist_pop:NN \l__YNU_info_supervisor_clist \l__YNU_info_supervisor_tl
            \clist_pop:NN \l__YNU_info_supervisor_clist \l__YNU_info_professional_title_tl
            \__YNU_cover_aux:nnnn
              { 5em }{ supervisor }
              { 6.5em }{ 1.5mm      } \hskip 1em
            \__YNU_cover_aux:nnnn
              { 2em }{ professional_title }
              { 8em }{ 1.5mm              } \par
          }
        }
      }
  }
\cs_new_protected:Npn \__YNU_cover_date:
  {
    \__YNU_fixed_width_center_box:nn
      { \textwidth         }
      { \number\year 年 \number\month 月 }
  }
\cs_new_protected:Npn \table_content:n #1
  {
    \clist_set:Nn \l_tmpa_clist {a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p}
    \clist_map_inline:Nn \l_tmpa_clist
      {\tl_new:c { l__YNU_info_ #1 _ ##1 _tl } }

    \bool_until_do:nn {\clist_if_empty_p:c { l__YNU_info_ #1 _clist } }{
      \clist_pop:NN \l_tmpa_clist \l_tmpa_tl
      \clist_pop:cN { l__YNU_info_ #1 _clist } \l_tmpb_tl
      \tl_set:cx { l__YNU_info_ #1 _ \l_tmpa_tl _tl } \l_tmpb_tl
    }
  }
\cs_new_protected:Npn \__YNU_cover_table:
  {
    \table_content:n {pre_approval}
    \table_content:n {pre_defense}
    \table_content:n {submission}
    \table_content:n {defense}

    \int_case:nn { \g__YNU_thesis_type_int }
    {
      {1}{ % 博士
        \begin{tblr}{%
          width=\textwidth,
          colspec={|c|c|c|c|c|c|},
          column{1} = {wd=1.5em},
          cells={valign=m,halign=c},%垂直居中
          hlines = {wd=0.5pt},vlines={wd=0.5pt},%表内边框线宽度
          hline{1,8,15,20,Z} = {wd=1.5pt},vline{1,2,Z} = {wd=1.5pt},%表外边框线宽度
          cell{1}{1} = {r=26,c=1}{c,cmd={\bfseries 云\\南\\大\\学\\博\\士\\研\\究\\生\\学\\位\\申\\请\\简\\况\\表}},%云南大学博士研究生学位申请简况表
          cell{1}{2} = {r=7,c=1}{c,cmd={\bfseries 论\\文\\预\\审}},%论文预审
          cell{8}{2} = {r=7,c=1}{c,cmd={\bfseries 论\\文\\预\\答\\辩}},%论文预答辩
          cell{15}{2} = {r=5,c=1}{c,cmd={\bfseries 论\\文\\送\\审}},%论文送审
          cell{20}{2} = {r=7,c=1}{c,cmd={\bfseries 论\\文\\答\\辩}},%论文答辩
          cell{1}{3} = {r=1,c=4}{l,cmd={论文预审结果：}},%论文预审结果：
          cell{8}{3} = {r=1,c=4}{l,cmd={预答辩结果：}},%预答辩结果：
          cell{20}{3} = {r=1,c=4}{l,cmd={答辩结果：}},%答辩结果：
          cell{2,9,21}{5} = {r=1,c=2}{c,cmd={所在单位（校内：学院/校外：所在单位）}},%所在单位（校内：学院/校外：所在单位）
          cell{2,9,15}{3} = {cmd={专家姓名}},
          cell{21}{3} = {cmd={答辩专家}},
          cell{2,9,15,21}{4} = {cmd={职称}},
          cell{15}{5} = {cmd={所在单位（校内：学院/校外：所在单位）}},
          cell{15}{6} = {cmd={结果}},
          cell{3-7,10-14,22-26}{5} = {r=1,c=2}{c},%填写单位
          }
          % 预审
          & & \l__YNU_info_pre_approval_a_tl \\
          & & & & \\
          & & \l__YNU_info_pre_approval_b_tl & \l__YNU_info_pre_approval_c_tl & \l__YNU_info_pre_approval_d_tl \\
          & & \l__YNU_info_pre_approval_e_tl & \l__YNU_info_pre_approval_f_tl & \l__YNU_info_pre_approval_g_tl \\
          & & \l__YNU_info_pre_approval_h_tl & \l__YNU_info_pre_approval_i_tl & \l__YNU_info_pre_approval_j_tl \\
          & & \l__YNU_info_pre_approval_k_tl & \l__YNU_info_pre_approval_l_tl & \l__YNU_info_pre_approval_m_tl \\
          & & \l__YNU_info_pre_approval_n_tl & \l__YNU_info_pre_approval_o_tl & \l__YNU_info_pre_approval_p_tl \\
          % 预答辩, 仅博士
          & & \l__YNU_info_pre_defense_a_tl \\
          & & & & \\
          & & \l__YNU_info_pre_defense_b_tl & \l__YNU_info_pre_defense_c_tl & \l__YNU_info_pre_defense_d_tl \\
          & & \l__YNU_info_pre_defense_e_tl & \l__YNU_info_pre_defense_f_tl & \l__YNU_info_pre_defense_g_tl \\
          & & \l__YNU_info_pre_defense_h_tl & \l__YNU_info_pre_defense_i_tl & \l__YNU_info_pre_defense_j_tl \\
          & & \l__YNU_info_pre_defense_k_tl & \l__YNU_info_pre_defense_l_tl & \l__YNU_info_pre_defense_m_tl \\
          & & \l__YNU_info_pre_defense_n_tl & \l__YNU_info_pre_defense_o_tl & \l__YNU_info_pre_defense_p_tl \\
          % 送审
          & & & & &\\
          & & \l__YNU_info_submission_a_tl & \l__YNU_info_submission_b_tl & \l__YNU_info_submission_c_tl & \l__YNU_info_submission_d_tl \\
          & & \l__YNU_info_submission_e_tl & \l__YNU_info_submission_f_tl & \l__YNU_info_submission_g_tl & \l__YNU_info_submission_h_tl \\
          & & \l__YNU_info_submission_i_tl & \l__YNU_info_submission_j_tl & \l__YNU_info_submission_k_tl & \l__YNU_info_submission_l_tl \\
          & & \l__YNU_info_submission_m_tl & \l__YNU_info_submission_n_tl & \l__YNU_info_submission_o_tl & \l__YNU_info_submission_p_tl \\
          % 答辩
          & & \l__YNU_info_defense_a_tl \\
          & & & & \\
          & & \l__YNU_info_defense_b_tl & \l__YNU_info_defense_c_tl & \l__YNU_info_defense_d_tl \\
          & & \l__YNU_info_defense_e_tl & \l__YNU_info_defense_f_tl & \l__YNU_info_defense_g_tl \\
          & & \l__YNU_info_defense_h_tl & \l__YNU_info_defense_i_tl & \l__YNU_info_defense_j_tl \\
          & & \l__YNU_info_defense_k_tl & \l__YNU_info_defense_l_tl & \l__YNU_info_defense_m_tl \\
          & & \l__YNU_info_defense_n_tl & \l__YNU_info_defense_o_tl & \l__YNU_info_defense_p_tl \\
        \end{tblr}
      }
      {2}{ % 硕士
         \begin{tblr}{%
          width=\textwidth,
          colspec={|c|c|c|c|c|c|},
          column{1} = {wd=1.5em},
          cells={valign=m,halign=c},%垂直居中
          hlines = {wd=0.5pt},vlines={wd=0.5pt},%表内边框线宽度
          hline{1,8,13,Z} = {wd=1.5pt},vline{1,2,Z} = {wd=1.5pt},%表外边框线宽度
          cell{1}{1} = {r=19,c=1}{c,cmd={\bfseries 云\\南\\大\\学\\硕\\士\\研\\究\\生\\学\\位\\申\\请\\简\\况\\表}},%云南大学硕士研究生学位申请简况表
          cell{1}{2} = {r=7,c=1}{c,cmd={\bfseries 论\\文\\预\\审}},%论文预审
          cell{8}{2} = {r=5,c=1}{c,cmd={\bfseries 论\\文\\送\\审}},%论文送审
          cell{13}{2} = {r=7,c=1}{c,cmd={\bfseries 论\\文\\答\\辩}},%论文答辩
          cell{1}{3} = {r=1,c=4}{l,cmd={论文预审结果：}},%论文预审结果：
          cell{13}{3} = {r=1,c=4}{l,cmd={答辩结果：}},%答辩结果：
          cell{2,14}{5} = {r=1,c=2}{c,cmd={所在单位（校内：学院/校外：所在单位）}},%所在单位（校内：学院/校外：所在单位）
          cell{2,8}{3} = {cmd={专家姓名}},
          cell{14}{3} = {cmd={答辩专家}},
          cell{2,8,14}{4} = {cmd={职称}},
          cell{8}{5} = {cmd={所在单位（校内：学院/校外：所在单位）}},
          cell{8}{6} = {cmd={结果}},
          cell{3-7,15-19}{5} = {r=1,c=2}{c},%填写单位
          rows = {ht=2.5em}
          }
          % 预审
          & & \l__YNU_info_pre_approval_a_tl \\
          & & & & \\
          & & \l__YNU_info_pre_approval_b_tl & \l__YNU_info_pre_approval_c_tl & \l__YNU_info_pre_approval_d_tl \\
          & & \l__YNU_info_pre_approval_e_tl & \l__YNU_info_pre_approval_f_tl & \l__YNU_info_pre_approval_g_tl \\
          & & \l__YNU_info_pre_approval_h_tl & \l__YNU_info_pre_approval_i_tl & \l__YNU_info_pre_approval_j_tl \\
          & & \l__YNU_info_pre_approval_k_tl & \l__YNU_info_pre_approval_l_tl & \l__YNU_info_pre_approval_m_tl \\
          & & \l__YNU_info_pre_approval_n_tl & \l__YNU_info_pre_approval_o_tl & \l__YNU_info_pre_approval_p_tl \\
          % 送审
          & & & & &\\
          & & \l__YNU_info_submission_a_tl & \l__YNU_info_submission_b_tl & \l__YNU_info_submission_c_tl & \l__YNU_info_submission_d_tl \\
          & & \l__YNU_info_submission_e_tl & \l__YNU_info_submission_f_tl & \l__YNU_info_submission_g_tl & \l__YNU_info_submission_h_tl \\
          & & \l__YNU_info_submission_i_tl & \l__YNU_info_submission_j_tl & \l__YNU_info_submission_k_tl & \l__YNU_info_submission_l_tl \\
          & & \l__YNU_info_submission_m_tl & \l__YNU_info_submission_n_tl & \l__YNU_info_submission_o_tl & \l__YNU_info_submission_p_tl \\
          % 答辩
          & & \l__YNU_info_defense_a_tl \\
          & & & & \\
          & & \l__YNU_info_defense_b_tl & \l__YNU_info_defense_c_tl & \l__YNU_info_defense_d_tl \\
          & & \l__YNU_info_defense_e_tl & \l__YNU_info_defense_f_tl & \l__YNU_info_defense_g_tl \\
          & & \l__YNU_info_defense_h_tl & \l__YNU_info_defense_i_tl & \l__YNU_info_defense_j_tl \\
          & & \l__YNU_info_defense_k_tl & \l__YNU_info_defense_l_tl & \l__YNU_info_defense_m_tl \\
          & & \l__YNU_info_defense_n_tl & \l__YNU_info_defense_o_tl & \l__YNU_info_defense_p_tl \\
        \end{tblr}
      }
    }
  }
\cs_new_protected:Npn \__YNU_cover_signature:N #1
  {
    \clist_map_inline:Nn #1
      {
        ##1 \c__YNU_fwid_colon_tl
        \__YNU_blank_underline:n { 6.5 em }
        \__YNU_quad:
      }
  }
\DeclareObjectType { YNU / cover } { \c_zero_int }
\NewDocumentCommand \DeclareCoverTemplate { m m }
  { \YNU_cover_declare_template:nn {#1} {#2} }
\cs_new_protected:Npn \YNU_cover_declare_template:nn #1#2
  {
    \tl_set:Nn \l__YNU_cover_template_tl {#1}
    \__YNU_cover_declare_template_interface:nx {#1}
      {
        format      : tokenlist,
        top-skip    : skip,
        bottom-skip : skip,
        \clist_map_function:nN {#2} \__YNU_cover_key_type:n
      }
    \tl_new:c   { l__YNU_cover / #1 / format_tl   }
    \skip_new:c { l__YNU_cover / #1 / top_skip    }
    \skip_new:c { l__YNU_cover / #1 / bottom_skip }
    \clist_map_inline:nn {#2}
      {
        \tl_new:c   { l__YNU_cover / #1 / ##1 / content_tl  }
        \tl_new:c   { l__YNU_cover / #1 / ##1 / format_tl   }
        \skip_new:c { l__YNU_cover / #1 / ##1 / bottom_skip }
      }
    \__YNU_cover_declare_template_code:nxn {#1}
      {
        format      = \exp_not:c { l__YNU_cover / #1 / format_tl   },
        top-skip    = \use:c     { l__YNU_cover / #1 / top_skip    },
        bottom-skip = \use:c     { l__YNU_cover / #1 / bottom_skip },
        \clist_map_function:nN {#2} \__YNU_cover_key_binding:n
      }
      {
        \AssignTemplateKeys
        \tl_use:c       { l__YNU_cover / #1 / format_tl }
        \__YNU_vspace:c { l__YNU_cover / #1 / top_skip  }
        \clist_map_inline:nn {#2}
          {
            \use:c { __YNU_cover / #1 / ####1 / align:n }
              {
                \tl_use:c { l__YNU_cover / #1 / ####1 / format_tl  }
                \tl_use:c { l__YNU_cover / #1 / ####1 / content_tl }
                \par
              }
            \__YNU_vspace:c { l__YNU_cover / #1 / ####1 / bottom_skip }
          }
        \__YNU_vspace:c { l__YNU_cover / #1 / bottom_skip }
      }
  }
\tl_new:N \l__YNU_cover_template_tl
\cs_new_protected:Npn \__YNU_cover_declare_template_interface:nn #1#2
  { \DeclareTemplateInterface { YNU / cover } {#1} { \c_zero_int } {#2} }
\cs_new_protected:Npn \__YNU_cover_declare_template_code:nnn #1#2#3
  { \DeclareTemplateCode { YNU / cover } {#1} { \c_zero_int } {#2} {#3} }
\cs_generate_variant:Nn \__YNU_cover_declare_template_interface:nn { nx  }
\cs_generate_variant:Nn \__YNU_cover_declare_template_code:nnn     { nxn }
\cs_new:Npn \__YNU_cover_key_type:n #1
  {
    #1 / content     : tokenlist,
    #1 / format      : tokenlist,
    #1 / bottom-skip : skip,
    #1 / align       : choice { left, right, center, normal } = normal,
  }
\cs_new:Npn \__YNU_cover_key_binding:n #1
  {
    #1 / content     =
      \exp_not:c
        { l__YNU_cover / \l__YNU_cover_template_tl / #1 / content_tl  },
    #1 / format      =
      \exp_not:c
        { l__YNU_cover / \l__YNU_cover_template_tl / #1 / format_tl   },
    #1 / bottom-skip =
      \exp_not:c
        { l__YNU_cover / \l__YNU_cover_template_tl / #1 / bottom_skip },
    #1 / align       =
      {
        left   =
          \exp_not:N \cs_set_protected:cpn
            { __YNU_cover / \l__YNU_cover_template_tl / #1 / align:n }
            \exp_not:n {##1}
            {
              \exp_not:n
                {
                  \group_begin:
                    \flushleft ##1 \endflushleft
                  \group_end:
                }
            },
        right  =
          \exp_not:N \cs_set_protected:cpn
            { __YNU_cover / \l__YNU_cover_template_tl / #1 / align:n }
            \exp_not:n {##1}
            {
              \exp_not:n
                {
                  \group_begin:
                    \flushright ##1 \endflushright
                  \group_end:
                }
            },
        center =
          \exp_not:N \cs_set_protected:cpn
            { __YNU_cover / \l__YNU_cover_template_tl / #1 / align:n }
            \exp_not:n {##1}
            {
              \exp_not:n
                {
                  \group_begin:
                    \center ##1 \endcenter
                  \group_end:
                }
            },
        normal =
          \exp_not:N \cs_set_protected:cpn
            { __YNU_cover / \l__YNU_cover_template_tl / #1 / align:n }
            \exp_not:n {##1}
            { \exp_not:n { \group_begin: ##1 \group_end: } }
      },
  }
\NewDocumentCommand \makecoveri { }
  {
    \thispagestyle { empty }
    \UseInstance { YNU / cover } { cover-i-default }
  }
\NewDocumentCommand \makecoverii { }
  {
    \cleardoublepage
    \thispagestyle { empty }
    \clist_if_empty:NF \l__YNU_info_pre_approval_clist
      { \UseInstance { YNU / cover } { cover-ii-default } }
  }
\NewDocumentCommand \makecoveriii { }
  {
    \cleardoublepage
    \tl_if_empty:NTF \l__YNU_declaration_page_tl
      {
        \thispagestyle { empty }
        \UseInstance { YNU / cover } { cover-iii-default }
      }
      { \includepdf { \l__YNU_declaration_page_tl } }
  }
\DeclareCoverTemplate { cover-i   }
  { id, logo, type, degree, title, title-en, info, date }
\DeclareCoverTemplate { cover-ii  } { table }
\DeclareCoverTemplate { cover-iii }
  {
    orig-auth-decl-name,
    orig-auth-decl-text-a,
    orig-auth-decl-text-b,
    orig-auth-decl-sig,
  }
\newlength\myheight%可以重构为LaTeX3代码
\newcommand\Mysavedprevdepth{}%
\newcommand\UnderlineCentered[3]{%
  \begin{adjustbox}{minipage=[t]{\dimexpr#1\relax},gstore~ totalheight=\myheight,margin=0pt}%
    \centering\leavevmode#3\par\xdef\Mysavedprevdepth{\the\prevdepth}%
  \end{adjustbox}%
  \hspace*{-\dimexpr#1\relax}%
  \begin{adjustbox}{minipage=[t][\myheight]{\dimexpr#1\relax},margin=0pt}%
    \vphantom{Eg}\lower\dimexpr#2\relax\hbox to\hsize{\leaders\hrule\hfill\kern0pt}\par
    \kern-\dimexpr#2\relax
    \xleaders\vbox to\baselineskip {\vfill\hbox{\lower\dimexpr#2\relax\hbox to\hsize{\leaders\hrule\hfill\kern0pt}}\kern-\dimexpr#2\relax}\vfill
    \kern\Mysavedprevdepth
  \end{adjustbox}%
}%
\DeclareInstance { YNU / cover } { cover-i-default } { cover-i }
  {
    bottom-skip            = 0 pt plus 0.0 fill,
    id       / content     = \__YNU_cover_id:,
    logo     / content     = \__YNU_cover_logo:,
    type     / content     = \__YNU_cover_type:,
    title    / content     = \__YNU_cover_title:,
    title-en / content     = \__YNU_cover_title_en:,
    info     / content     = \__YNU_cover_info:,
    date     / content     = \__YNU_cover_date:,
    id       / format      = \zihao { 5 },
    type     / format      = \zihao { 0 } \YNU@xingkai,
    degree   / format      = \zihao { 4 },
    title    / format      = \__YNU_line_spread:n { 1 } \sffamily \zihao { 2 } \bfseries,
    title-en / format      = \__YNU_line_spread:n { 1 } \zihao { 2 } \bfseries,
    info     / format      = \__YNU_line_spread:n { 2 } \sffamily \zihao { 3 },
    date     / format      = \__YNU_line_spread:n { 2 } \sffamily \zihao { 3 },
    id       / bottom-skip = 0 pt plus 1 fill,
    logo     / bottom-skip = -15 pt,%0 pt plus 0.5 fill,
    type     / bottom-skip = -25 pt,
    title / bottom-skip = 5 pt plus 0.5 fill,
    title-en / bottom-skip = 30 pt plus 2 fill,
    info / bottom-skip = 40 pt plus 10 fill,
    date / bottom-skip = -20 pt plus 0 fill,
    id       / align       = left,
    logo     / align       = center,
    type     / align       = center,
    degree   / align       = center,
    title    / align       = center,
    title-en / align       = center,
    info     / align       = right,
    date     / align       = center,
  }
\DeclareInstance { YNU / cover } { cover-ii-default } { cover-ii }
  {
    table    / content =\__YNU_cover_table:,
    table     / format  = \zihao { -4 },
    table     / align   = center,
  }
\DeclareInstance { YNU / cover } { cover-iii-default } { cover-iii }
  {
    format                                = \__YNU_line_spread:n { 1.5 },
    orig-auth-decl-name   / content     = \c__YNU_name_orig_auth_tl,
    orig-auth-decl-text-a / content     = \c__YNU_orig_auth_text_a_tl,
    orig-auth-decl-text-b / content     = \c__YNU_name_orig_auth_text_b_tl,
    orig-auth-decl-sig    / content     =
      \__YNU_cover_signature:N \c__YNU_orig_auth_sign_clist,
    orig-auth-decl-name   / format      = \zihao { 2 } \sffamily,
    orig-auth-decl-text-b / format      = \sffamily,
    orig-auth-decl-name   / bottom-skip = 1 cm,
    orig-auth-decl-text-a / bottom-skip = 0 cm,
    orig-auth-decl-text-b / bottom-skip = 3 cm,
    orig-auth-decl-sig    / bottom-skip = 0 cm,
    orig-auth-decl-name   / align       = center,
    orig-auth-decl-sig    / align       = left,
  }
\bool_new:N \l__YNU_auto_make_cover_bool
\tl_new:N   \l__YNU_declaration_page_tl
\keys_define:nn { YNU / style }
  {
    auto-make-cover  .bool_set:N = \l__YNU_auto_make_cover_bool,
    auto-make-cover  .default:n  = true,
    declaration-page .code:n     =
      {
        \tl_set_eq:NN \l__YNU_declaration_page_tl \l_keys_value_tl
        \RequirePackage { pdfpages }
      },
  }
\ctex_after_end_preamble:n
  {
    \bool_if:NT \l__YNU_auto_make_cover_bool
      {
        \begin{titlepage}
          \makecoveri \newpage \makecoverii \newpage \makecoveriii
        \end{titlepage}
      }
  }
\keys_set:nn { ctex }
  {
    contentsname   = \c__YNU_name_toc_tl,
    listfigurename = \c__YNU_name_lof_tl,
    listtablename  = \c__YNU_name_lot_tl,
    tocdepth       = 3,
    secnumdepth    = 3,
    chapter / tocline =
      {
        \normalfont \sffamily
        \CTEXnumberline {#1} #2
      },
    section / tocline =
      {
        \CTEXnumberline {#1} #2
      },
    subsection / tocline =
      {
        \CTEXnumberline {#1} #2
      },
    subsubsection / tocline =
      {
        \CTEXnumberline {#1} #2
      }
  }
\__YNU_patch_cmd:Nnn \tableofcontents
  {
    \chapter*{\contentsname
      \@mkboth{\MakeUppercase\contentsname}
              {\MakeUppercase\contentsname}}
  }
  { \__YNU_chapter_no_toc:V \contentsname }
\__YNU_patch_cmd:Nnn \listoffigures
  {
    \chapter*{\listfigurename}
    \@mkboth{\MakeUppercase\listfigurename}
            {\MakeUppercase\listfigurename}
  }
  { \__YNU_chapter:V \listfigurename }
\__YNU_patch_cmd:Nnn \listoftables
  {
    \chapter*{\listtablename}
    \@mkboth{\MakeUppercase\listtablename}
            {\MakeUppercase\listtablename}
  }
  { \__YNU_chapter:V \listtablename }
\NewDocumentEnvironment { abstract  } { }
{ \__YNU_abstract_begin:    } { \__YNU_abstract_end:      }
\NewDocumentEnvironment { abstract* } { }
  { \__YNU_abstract_en_begin: } { \__YNU_abstract_en_end:   }
\cs_new_protected:Npn \__YNU_abstract_begin:
  { \__YNU_chapter:V \c__YNU_name_abstract_tl    }
  \cs_new_protected:Npn \__YNU_abstract_en_begin:
  { \__YNU_chapter:V \c__YNU_name_abstract_en_tl }
\cs_new_protected:Npn \__YNU_abstract_end:
  {
    \__YNU_keywords:nNn
      { \sffamily \c__YNU_name_keywords_tl \c__YNU_fwid_colon_tl }
      \l__YNU_info_keywords_clist { \c__YNU_fwid_semicolon_tl }
  }
\cs_new_protected:Npn \__YNU_abstract_en_end:
  {
    \__YNU_keywords:nNn
      { \bfseries \c__YNU_name_keywords_en_tl \__YNU_quad: }
      \l__YNU_info_keywords_en_clist { ; ~ }
  }
\cs_new_protected:Npn \__YNU_keywords:nNn #1#2#3
  {
    \par \mode_leave_vertical: \par \noindent
    \__YNU_get_text_width:Nn \l__YNU_tmpa_dim {#1}
    \group_begin: #1 \group_end:
    \parbox [t] { \dim_eval:n { \textwidth - \l__YNU_tmpa_dim } }
      {
        \clist_use:Nn #2 {#3} \par
        \cs_gset:Npx \__YNU_keywords_prevdepth: { \dim_use:N \tex_prevdepth:D }
      }
  }
\cs_new_protected:Npn \__YNU_clc_jel:nn #1#2
  {
    \group_begin: #1 \group_end:
    #2
  }
\NewDocumentEnvironment { notation } { O { l p { 7.5 cm } } }
  {
    \__YNU_notation_begin:
    \group_begin:
      \__YNU_notation_long_table_setup:
      \longtable {#1}
  }
  {
      \endlongtable
    \group_end:
  }
\cs_new_protected:Npn \__YNU_notation_begin:
  {
\__YNU_chapter:V \c__YNU_name_notation_tl
  }
\cs_new_protected:Npn \__YNU_notation_long_table_setup:
  {
    \tl_set:Nn \arraystretch { 1.3 }
    \dim_set_eq:NN \LTpre  \c_zero_dim
    \dim_set_eq:NN \LTpost \c_zero_dim
  }
\bool_new:N \l__YNU_bibtex_bool
\tl_new:N \l__YNU_bib_style_tl
\tl_new:N \l__YNU_bib_gb_style_tl
\tl_new:N \l__YNU_cite_style_tl
\clist_new:N \l__YNU_bib_resource_clist
\keys_define:nn { YNU / style }
  {
    bib-backend .choice:,
    bib-backend .value_required:n = true,
    bib-backend / bibtex   .code:n =
      { \bool_set_true:N  \l__YNU_bibtex_bool },
    bib-backend / biblatex .code:n =
      { \bool_set_false:N \l__YNU_bibtex_bool },
    bib-style .choice:,
    bib-style .value_required:n = true,
    bib-style / numerical    .code:n =
      {
        \tl_set:Nn  \l__YNU_bib_gb_style_tl { numerical  }
        \tl_clear:N \l__YNU_bib_style_tl
      },
    bib-style / author-year .code:n =
      {
        \tl_set:Nn  \l__YNU_bib_gb_style_tl { author-year }
        \tl_clear:N \l__YNU_bib_style_tl
      },
    bib-style / unknown     .code:n =
      {
        \tl_set_eq:NN \l__YNU_bib_style_tl \l_keys_value_tl
        \tl_clear:N   \l__YNU_bib_gb_style_tl
      },
    cite-style .tl_set:N = \l__YNU_cite_style_tl,
    bib-resource .clist_set:N = \l__YNU_bib_resource_clist
  }
\ctex_at_end_preamble:n
  {
    \bool_if:NT \l__YNU_bibtex_bool
      {
        \tl_if_empty:NTF \l__YNU_bib_style_tl
          {
            \RequirePackage [ sort & compress ] { gbt7714 }
            \exp_args:No \bibliographystyle { gbt7714- \l__YNU_bib_gb_style_tl }
          }
          {
            \RequirePackage [ sort & compress ] { natbib }
            \exp_args:NV \bibliographystyle \l__YNU_bib_style_tl
          }
        \__YNU_bibtex_setup:
      }
  }
\__YNU_gadd_ltxhook:nn { env/document/begin }
  {
    \bool_if:NF \l__YNU_bibtex_bool
      {
        \__YNU_biblatex_pre_setup:
        \RequirePackage { biblatex }
        \__YNU_biblatex_post_setup:
      }
  }
\cs_new_protected:Npn \__YNU_bibtex_setup:
  {
    \tl_if_eq:VnTF \l__YNU_bib_gb_style_tl { numerical }
      {
        \exp_args:NNx \DeclareRobustCommand \parencite
          { \exp_args:No \exp_not:o { \cs:w cite ~ \cs_end: } }
        \exp_args:Nc \ctex_patch_cmd:Nnn { parencite ~ }
          { \begingroup }
          { \begingroup \bibstyle@numbers }
      }
      { \cs_set_eq:NN \parencite \cite }
    \tl_if_empty:NF \l__YNU_cite_style_tl
      { \exp_args:NV \citestyle \l__YNU_cite_style_tl }
    \ctex_patch_cmd:Nnn \NAT@citexnum
      { - \NAT@penalty }
      { \textendash \NAT@penalty }
    \cs_set:Npn \bibsection { \__YNU_chapter:V \bibname }
    \NewDocumentCommand \printbibliography { o }
      {
        \exp_args:NV \bibliography \l__YNU_bib_resource_clist
        \IfValueT {##1}
          { \__YNU_warning:nn { invalid-option-in-bibtex } {##1} }
      }
  }
\__YNU_msg_new:nn { invalid-option-in-bibtex }
  { Option(s)~ "#1"~ are~ invalid~ in~ BibTeX. }
\bool_if:NF \l__YNU_bibtex_bool
  {
    \NewDocumentCommand \addbibresource { m }
      { \clist_gput_right:Nn \l__YNU_bib_resource_clist {#1} }
  }
\cs_new_protected:Npn \__YNU_biblatex_pre_setup:
  {
    \cs_undefine:N \addbibresource
    \clist_new:N \l__YNU_biblatex_options_clist
    \clist_put_right:Nn \l__YNU_biblatex_options_clist { hyperref = manual }
    \clist_put_right:Nx \l__YNU_biblatex_options_clist
      {
        style =
        \tl_if_empty:NTF \l__YNU_bib_style_tl
          {
            \str_if_eq:VnTF \l__YNU_bib_gb_style_tl { numerical }
              { gb7714-2015 } { gb7714-2015ay }
          }
          { \l__YNU_bib_style_tl }
      }
    \tl_if_empty:NF \l__YNU_cite_style_tl
      {
        \clist_put_right:Nx \l__YNU_biblatex_options_clist
          { citestyle = \l__YNU_cite_style_tl }
      }
    \exp_args:NV \PassOptionsToPackage \l__YNU_biblatex_options_clist
      { biblatex }
  }
\cs_new_protected:Npn \__YNU_biblatex_post_setup:
  {
    \clist_map_function:NN \l__YNU_bib_resource_clist \addbibresource
    \__YNU_biblatex_allow_url_break:
    \__YNU_biblatex_use_en_dash:
    \defbibheading { bibliography } [ \bibname ] { \__YNU_chapter:n {##1} }
  }
\cs_new:Npn \__YNU_biblatex_allow_url_break:
  {
    \int_set_eq:NN \c@biburlucpenalty  \c_one_int
    \int_set_eq:NN \c@biburlnumpenalty \c_one_int
    \int_set_eq:NN \c@biburllcpenalty  \c_one_int
  }
\cs_new:Npn \__YNU_biblatex_use_en_dash:
  {
    \DefineBibliographyExtras { english }
      {
        \cs_set_nopar:Npn \bibrangedash
          { \textendash \penalty \hyphenpenalty }
      }
    \DefineBibliographyExtras { russian }
      {
        \cs_set_nopar:Npn \bibrangedash
          { \textendash \penalty \hyphenpenalty }
      }
  }
\NewDocumentCommand \hypersetup { m }
  { \YNU_hyperref_setup:n {#1} }
\cs_new_protected:Npn \YNU_hyperref_setup:n #1
  { \clist_gput_right:Nn \g__YNU_to_hyperref_clist {#1} }
\cs_new:Npn \__YNU_set_hyperlink_color_key:n #1
  {
    hyperlink-color / \clist_item:nn {#1} {1} .code:n =
      {
        \__YNU_define_hyperlink_color:nnn
          { \clist_item:nn {#1} {2} }
          { \clist_item:nn {#1} {3} }
          { \clist_item:nn {#1} {4} }
        \YNU_hyperref_setup:n
          {
            linkcolor = YNU@link, linkbordercolor = YNU@link,
            urlcolor  = YNU@url,  urlbordercolor  = YNU@url,
            citecolor = YNU@cite, citebordercolor = YNU@cite
          }
      },
  }
\cs_new_protected:Npn \__YNU_define_hyperlink_color:nnn #1#2#3
  {
    \definecolorset { HTML } { YNU@ } { }
      { link, #1; url, #2; cite, #3 }
  }
\keys_define:nx { YNU / style }
  {
    hyperlink .choice:,
    hyperlink .value_required:n = true,
    hyperlink / border .code:n =
      { \YNU_hyperref_setup:n { colorlinks = false } },
    hyperlink / color  .code:n =
      { \YNU_hyperref_setup:n { colorlinks = true  } },
    hyperlink / none   .code:n =
      { \YNU_hyperref_setup:n { hidelinks } },
    hyperlink-color .choice:,
    hyperlink-color .value_required:n = true,
    \clist_map_function:nN
      {
        { classic,   FF0000, 0000FF, 00FF00 },
        { default,   990000, 0000B2, 007F00 },
        { material,  E91E63, 009688, 4CAF50 },
        { graylevel, 616161, 616161, 616161 },
        { prl,       2D3092, 2D3092, 2D3092 }
      }
      \__YNU_set_hyperlink_color_key:n
  }
\cs_new:Npn \YNU_allow_url_break:
  {
    \cs_new:Npn \__YNU_add_url_break_points:
      { \tl_map_function:NN \c__YNU_url_break_points_tl \do }
    \__YNU_appto_cmd:Nn \UrlBreaks
      { \UrlOrds \__YNU_add_url_break_points: }
  }
\tl_const:Nn \c__YNU_url_break_points_tl
  {
    abcdefghijklmnopqrstuvwxyz
    ABCDEFGHIJKLMNOPQRSTUVWXYZ
    0123456789
  }
\ctex_at_end_preamble:n
  {
    \RequirePackage { hyperref }
    \hypersetup
      {
        bookmarksnumbered = true,
        psdextra          = true,
        unicode           = true,

        pdftitle    = \l__YNU_info_title_tl,
        pdfauthor   = \l__YNU_info_author_tl,
        pdfkeywords = \l__YNU_info_keywords_clist,
        pdfcreator  = \c__YNU_name_pdf_creator_tl
      }
    \exp_args:NV \hypersetup \g__YNU_to_hyperref_clist
    \YNU_allow_url_break:
    \bool_if:NF \l__YNU_bibtex_bool { \BiblatexManualHyperrefOn }
  }
\ctex_at_end_package:nn { hyperref }
  {
    \pdfstringdefDisableCommands
      {
        \cs_set_eq:NN \YNU@kai \prg_do_nothing:
        \cs_set_eq:NN \quad    \c_space_tl
        \cs_set_eq:NN \qquad   \c_space_tl
      }
  }
\keys_define:nn { YNU }
  {
    info  .meta:nn = { YNU / info  } {#1},
    style .meta:nn = { YNU / style } {#1}
  }
\keys_set:nn { YNU }
  {
    style   / font            = times,
    style   / cjk-font        = fandol,
    style   / font-size       = -4,
    style   / fullwidth-stop  = false,
    style   / auto-make-cover = true,
    style   / logo            = { Yunnan-name.pdf },
    style   / logo-size       = { 0.5 \textwidth },
    style   / hyperlink       = color,
    style   / hyperlink-color = default,
    style   / bib-style       = numerical,
    info    / degree          = academic,
    info    / secret-level    = none,
    info    / school-id       = { 10246 },
    info    / date            = { \zhtoday },
    theorem / header-font     = { \sffamily },
    theorem / body-font       = { \YNU@kai },
    theorem / counter         = { chapter }
  }
\NewDocumentCommand \YNUsetup { m }
  { \keys_set:nn { YNU } {#1} }
\newtheorem* { proof       } { \c__YNU_name_proof_tl      }
\newtheorem  { axiom       } { \c__YNU_name_axiom_tl      }
\newtheorem  { corollary   } { \c__YNU_name_corollary_tl  }
\newtheorem  { definition  } { \c__YNU_name_definition_tl }
\newtheorem  { example     } { \c__YNU_name_example_tl    }
\newtheorem  { lemma       } { \c__YNU_name_lemma_tl      }
\newtheorem  { theorem     } { \c__YNU_name_theorem_tl    }
\endinput
%%
%% End of file `YNUthesis.cls'.
