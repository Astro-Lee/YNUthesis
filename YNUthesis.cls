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
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either
%% version 1.3c of this license or (at your option) any later
%% version. This version of this license is in
%%    http://www.latex-project.org/lppl/lppl-1-3c.txt
%% and the latest version of this license is in
%%    http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of
%% LaTeX version 2005/12/01 or later.
%% 
%% This work has the LPPL maintenance status "maintained".
%% 
%% The Current Maintainer of this work is Rui-Zhi Li.
%% 
%% This work consists of the files YNUthesis.dtx,
%%           and the derived files YNUthesis.ins,
%%                                 YNUthesis.cls,
%%                             and README.md.
%% ---------------------------------------------------------------------
%% 
\NeedsTeXFormat{LaTeX2e}[2020/01/01]
\ProvidesExplClass{\ExplFileName}
\cs_if_exist:NF \NewDocumentCommand
  { \RequirePackage { xparse } }
\prop_gput:Nnn \g_msg_module_type_prop { ctex } { Class }
\msg_new:nnnn { ctex } { l3-too-old }
  { Support~package~`#1'~too~old. }
  {
    Please~update~an~up-to-date~version~of~the~bundles\\\\
    `l3kernel'~and~`l3packages'\\\\
    using~your~TeX~package~manager~or~from~CTAN.
  }
\@ifpackagelater { expl3 } { 2021/02/10 } { }
  { \msg_error:nnn { ctex } { l3-too-old } { expl3 } }
\str_const:Nx \c__ctex_engine_str
  { \cs_if_exist:NTF \ngostype { aptex } { \c_sys_engine_str } }
\msg_new:nnnn { ctex } { engine-not-supported }
  { Engine~`#1'~is~not~yet~supported,~ctex~will~abort! }
  { You~can~switch~to~xelatex,~lualatex,~pdflatex,~uplatex,~or~aplatex. }
\file_if_exist:nTF { ctex-engine- \c__ctex_engine_str .def }
  {
    \str_const:Nx \c__ctex_engine_file_str
      { ctex-engine- \c__ctex_engine_str .def }
  }
  { \msg_critical:nnx { ctex } { engine-not-supported } { \c__ctex_engine_str } }
\RequirePackage { ctexhook , ctexpatch }
\RequirePackage { fix-cm }
\endinput
%%
%% End of file `YNUthesis.cls'.
