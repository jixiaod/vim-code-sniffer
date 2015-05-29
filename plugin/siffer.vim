" Common standard constants
let s:sniffer_brief_defalut_string       = "Description Words ..."
let s:sniffer_phpversion_default_string  = "PHP version 5"
let s:sniffer_category_default_string    = "PHP"
let s:sniffer_package_default_string     = "Moji"
let s:sniffer_version_default_string     = "Release: @package_version@"
let s:sniffer_author_default_string      = "Gang Ji <gang.ji@moji.com>"
let s:sniffer_copyright_defalut_string   = "2014-2016 Moji Fengyun Software Technology Development Co., Ltd."
let s:sniffer_license_defalut_string     = "license from Moji Fengyun Software Technology Development Co., Ltd."
let s:sniffer_link_default_string        = "http://www.moji.com"

if !exists("g:SnifferToolkit_brief_string")
  let g:SnifferToolkit_brief_string = s:sniffer_brief_defalut_string
endif
if !exists("g:SnifferToolkit_phpversion_string")
  let g:SnifferToolkit_phpversion_string = s:sniffer_phpversion_default_string
endif
if !exists("g:SnifferToolkit_category_string")
  let g:SnifferToolkit_category_string = s:sniffer_category_default_string
endif
if !exists("g:SnifferToolkit_package_string")
  let g:SnifferToolkit_package_string = s:sniffer_package_default_string
endif
if !exists("g:SnifferToolkit_version_string")
  let g:SnifferToolkit_version_string = s:sniffer_version_default_string
endif
if !exists("g:SnifferToolkit_author_string")
  let g:SnifferToolkit_author_string = s:sniffer_author_default_string
endif
if !exists("g:SnifferToolkit_copyright_string")
  let g:SnifferToolkit_copyright_string = s:sniffer_copyright_defalut_string
endif
if !exists("g:SnifferToolkit_license_string")
  let g:SnifferToolkit_license_string = s:sniffer_license_defalut_string
endif
if !exists("g:SnifferToolkit_link_string")
  let g:SnifferToolkit_link_string = s:sniffer_link_default_string
endif

if !exists("g:SnifferToolkit_categoryTag_pre")
    let g:SnifferToolkit_categoryTag_pre = "@category "
endif
if !exists("g:SnifferToolkit_packageTag_pre")
    let g:SnifferToolkit_packageTag_pre = "@package "
endif
if !exists("g:SnifferToolkit_versionTag_pre")
  let g:SnifferToolkit_versionTag_pre = "@version "
endif
if !exists("g:SnifferToolkit_authorTag_pre")
  let g:SnifferToolkit_authorTag_pre = "@author "
endif
if !exists("g:SnifferToolkit_copyrightTag_pre")
  let g:SnifferToolkit_copyrightTag_pre = "@copyright "
endif
if !exists("g:SnifferToolkit_licenseTag_pre")
  let g:SnifferToolkit_licenseTag_pre = "@license "
endif
if !exists("g:SnifferToolkit_linkTag_pre")
  let g:SnifferToolkit_linkTag_pre = "@link "
endif

if !exists("g:SnifferToolkit_blockTag")
  let g:SnifferToolkit_blockTag = "@name "
endif
if !exists("g:SnifferToolkit_briefTag_pre")
  let g:SnifferToolkit_briefTag_pre = "@brief "
endif
if !exists("g:SnifferToolkit_briefTag_post")
  let g:SnifferToolkit_briefTag_post = ""
endif
if !exists("g:SnifferToolkit_templateParamTag_pre")
  let g:SnifferToolkit_templateParamTag_pre = "@tparam "
endif
if !exists("g:SnifferToolkit_templateParamTag_post")
  let g:SnifferToolkit_templateParamTag_post = ""
endif
if !exists("g:SnifferToolkit_paramTag_pre")
  let g:SnifferToolkit_paramTag_pre = "@param "
endif
if !exists("g:SnifferToolkit_paramTag_post")
  let g:SnifferToolkit_paramTag_post = ""
endif
if !exists("g:SnifferToolkit_returnTag")
  let g:SnifferToolkit_returnTag = "@return "
endif
if !exists("g:SnifferToolkit_throwTag_pre")
  let g:SnifferToolkit_throwTag_pre = "@throw " " @exception is also valid
endif
if !exists("g:SnifferToolkit_throwTag_post")
  let g:SnifferToolkit_throwTag_post = ""
endif
if !exists("g:SnifferToolkit_blockHeader")
  let g:SnifferToolkit_blockHeader = ""
endif
if !exists("g:SnifferToolkit_blockFooter")
  let g:SnifferToolkit_blockFooter = ""
endif

if !exists("g:SnifferToolkit_cinoptions")
    let g:SnifferToolkit_cinoptions = "c1C1"
endif
if !exists("g:SnifferToolkit_startCommentTag ")
  let g:SnifferToolkit_startCommentTag = "/** "
  let g:SnifferToolkit_startCommentBlock = "/* "
endif
if !exists("g:SnifferToolkit_interCommentTag ")
  let g:SnifferToolkit_interCommentTag = "* "
endif
if !exists("g:SnifferToolkit_interCommentBlock ")
  let g:SnifferToolkit_interCommentBlock = "* "
endif
if !exists("g:SnifferToolkit_endCommentTag ")
  let g:SnifferToolkit_endCommentTag = "*/"
  let g:SnifferToolkit_endCommentBlock = "*/"
endif
if exists("g:SnifferToolkit_commentType")
  if ( g:SnifferToolkit_commentType == "C++" )
    let g:SnifferToolkit_startCommentTag = "/// "
    let g:SnifferToolkit_interCommentTag = "/// "
    let g:SnifferToolkit_endCommentTag = ""
    let g:SnifferToolkit_startCommentBlock = "// "
    let g:SnifferToolkit_interCommentBlock = "// "
    let g:SnifferToolkit_endCommentBlock = ""
  else
    let g:SnifferToolkit_commentType = "C"
  endif
else
  let g:SnifferToolkit_commentType = "C"
endif

" Compact documentation
" /**
"  * \brief foo      --->    /** \brief foo */
"  */
if !exists("g:SnifferToolkit_compactOneLineDoc")
  let g:SnifferToolkit_compactOneLineDoc = "no"
endif
" /**
"  * \brief foo             /**
"  *                         * \brief foo
"  * \param bar      --->    * \param bar
"  *                         * \return
"  * \return                 */
"  */
if !exists("g:SnifferToolkit_compactDoc")
  let g:SnifferToolkit_compactDoc = "no"
endif

" Necessary '\<' and '\>' will be added to each item of the list.
let s:ignoreForReturn = ['template', 'explicit', 'inline', 'static', 'virtual', 'void\([[:blank:]]*\*\)\@!', 'const', 'volatile', 'struct', 'extern']
if !exists("g:SnifferToolkit_ignoreForReturn")
  let g:SnifferToolkit_ignoreForReturn = s:ignoreForReturn[:]
else
  let g:SnifferToolkit_ignoreForReturn += s:ignoreForReturn
endif
unlet s:ignoreForReturn

" Maximum number of lines to check for function parameters
if !exists("g:SnifferToolkit_maxFunctionProtoLines")
  let g:SnifferToolkit_maxFunctionProtoLines = 10
endif

" Add name of function/class/struct... after pre brief tag if you want
if !exists("g:SnifferToolkit_briefTag_className")
  let g:SnifferToolkit_briefTag_className = "no"
endif
if !exists("g:SnifferToolkit_briefTag_structName")
  let g:SnifferToolkit_briefTag_structName = "no"
endif
if !exists("g:SnifferToolkit_briefTag_enumName")
  let g:SnifferToolkit_briefTag_enumName = "no"
endif
if !exists("g:SnifferToolkit_briefTag_namespaceName")
  let g:SnifferToolkit_briefTag_namespaceName = "no"
endif
if !exists("g:SnifferToolkit_briefTag_funcName")
  let g:SnifferToolkit_briefTag_funcName = "no"
endif

" Keep empty line (if any) between comment and function/class/...
if !exists("g:SnifferToolkit_keepEmptyLineAfterComment")
  let g:SnifferToolkit_keepEmptyLineAfterComment = "no"
endif

" PYTHON specific
"""""""""""""""""
" Remove automatically self parameter from function to avoid its documantation
if !exists("g:SnifferToolkit_python_autoRemoveSelfParam")
  let g:SnifferToolkit_python_autoRemoveSelfParam = "yes"
endif
" Consider functions as if they always return something (default: yes)
if !exists("g:SnifferToolkit_python_autoFunctionReturn")
  let g:SnifferToolkit_python_autoFunctionReturn = "yes"
endif


""""""""""""""""""""""""""
" Sniffer file comment
""""""""""""""""""""""""""
function! <SID>SnifferFileFunc()
  call s:InitializeParameters()

  " Begin to write skeleton
  let l:insertionMode = s:StartDocumentationBlock()
  exec "normal ".l:insertionMode." ".s:interCommentTag.g:SnifferToolkit_brief_string
  mark d
  exec "normal o".s:interCommentTag
  exec "normal o".s:interCommentTag.g:SnifferToolkit_phpversion_string
  exec "normal o".s:interCommentTag
  exec "normal o".s:interCommentTag.g:SnifferToolkit_categoryTag_pre.g:SnifferToolkit_category_string
  exec "normal o".s:interCommentTag.g:SnifferToolkit_packageTag_pre.g:SnifferToolkit_package_string
  exec "normal o".s:interCommentTag.g:SnifferToolkit_authorTag_pre.g:SnifferToolkit_author_string
  exec "normal o".s:interCommentTag.g:SnifferToolkit_copyrightTag_pre.g:SnifferToolkit_copyright_string
  exec "normal o".s:interCommentTag.g:SnifferToolkit_licenseTag_pre.g:SnifferToolkit_license_string
  exec "normal o".s:interCommentTag.g:SnifferToolkit_linkTag_pre.g:SnifferToolkit_link_string
  if ( g:SnifferToolkit_endCommentTag != "" )
    exec "normal o".s:endCommentTag
  endif

  " Move the cursor to the rigth position
  exec "normal `d"

  call s:RestoreParameters()
  startinsert!
endfunction

""""""""""""""""""""""""""
" Sniffer class comment
""""""""""""""""""""""""""
function! <SID>SnifferClassFunc()
  call s:InitializeParameters()

  " Begin to write skeleton
  let l:insertionMode = s:StartDocumentationBlock()
  exec "normal ".l:insertionMode." ".s:interCommentTag.g:SnifferToolkit_brief_string
  mark d
  exec "normal o".s:interCommentTag
  exec "normal o".s:interCommentTag.g:SnifferToolkit_phpversion_string
  exec "normal o".s:interCommentTag
  exec "normal o".s:interCommentTag.g:SnifferToolkit_categoryTag_pre.g:SnifferToolkit_category_string
  exec "normal o".s:interCommentTag.g:SnifferToolkit_packageTag_pre.g:SnifferToolkit_package_string
  exec "normal o".s:interCommentTag.g:SnifferToolkit_authorTag_pre.g:SnifferToolkit_author_string
  exec "normal o".s:interCommentTag.g:SnifferToolkit_copyrightTag_pre.g:SnifferToolkit_copyright_string
  exec "normal o".s:interCommentTag.g:SnifferToolkit_licenseTag_pre.g:SnifferToolkit_copyright_string
  exec "normal o".s:interCommentTag.g:SnifferToolkit_versionTag_pre.g:SnifferToolkit_version_string
  exec "normal o".s:interCommentTag.g:SnifferToolkit_linkTag_pre.g:SnifferToolkit_link_string
  if ( g:SnifferToolkit_endCommentTag != "" )
    exec "normal o".s:endCommentTag
  endif

  " Move the cursor to the rigth position
  exec "normal `d"

  call s:RestoreParameters()
  startinsert!
endfunction


""""""""""""""""""""""""""
" SnifferBlockFunc
""""""""""""""""""""""""""
function! <SID>SnifferBlockFunc()
  call s:InitializeParameters()

  let l:insertionMode = s:StartDocumentationBlock()
  exec "normal ".l:insertionMode.s:interCommentTag.g:SnifferToolkit_blockTag
  mark d
  exec "normal o".s:interCommentTag."@{ ".s:endCommentTag
  exec "normal o".strpart( s:startCommentTag, 0, 1 )
  exec "normal A".strpart( s:startCommentTag, 1 )." @} ".s:endCommentTag
  exec "normal `d"

  call s:RestoreParameters()
  startinsert!
endfunction


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Main comment function for class, attribute, function...
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! <SID>SnifferCommentFunc()

  " Initialize default templates.
  " Assure compatibility with Python for classes (cf. endDocPattern).
  let l:emptyLinePattern = '^[[:blank:]]*$'
  let l:someNamePattern  = '[_[:alpha:]][_[:alnum:]]*'

  if( s:CheckFileType() == "cpp" )
    let l:someNameWithNamespacePattern  = l:someNamePattern.'\%(::'.l:someNamePattern.'\)*'
    let l:endDocPattern    = ';\|{\|\%([^:]\zs:\ze\%([^:]\|$\)\)'
    let l:commentPattern   = '\%(/*\)\|\%(//\)\'
    let l:templateParameterPattern = "<[^<>]*>"
    let l:throwPattern = '.*\<throw\>[[:blank:]]*(\([^()]*\)).*' "available only for 'cpp' type

    let l:classPattern     = '\<class\>[[:blank:]]\+\zs'.l:someNameWithNamespacePattern.'\ze.*\%('.l:endDocPattern.'\)'
    let l:structPattern    = '\<struct\>[[:blank:]]\+\zs'.l:someNameWithNamespacePattern.'\ze[^(),]*\%('.l:endDocPattern.'\)'
    let l:enumPattern      = '\<enum\>\%(\%([[:blank:]]\+\zs'.l:someNamePattern.'\ze[[:blank:]]*\)\|\%(\zs\ze[[:blank:]]*\)\)\%('.l:endDocPattern.'\)'
    let l:namespacePattern = '\<namespace\>[[:blank:]]\+\zs'.l:someNamePattern.'\ze[[:blank:]]*\%('.l:endDocPattern.'\)'

    let l:types = { "class": l:classPattern, "struct": l:structPattern, "enum": l:enumPattern, "namespace": l:namespacePattern }
  else
    let l:commentPattern   = '#\|^[[:blank:]]*"""'

    let l:classPattern     = '\<class\>[[:blank:]]\+\zs'.l:someNamePattern.'\ze.*:'
    let l:functionPattern  = '\<def\>[[:blank:]]\+\zs'.l:someNamePattern.'\ze.*:'

    let l:endDocPattern    = '\%(\<class\>\|\<def\>[^:]*\)\@<!$'

    let l:types = { "class": l:classPattern, "function": l:functionPattern }
  endif

  let l:lineBuffer       = getline( line( "." ) )
  let l:count            = 1
  let l:endDocFound      = 0

  let l:doc = { "type": "", "name": "None", "params": [], "returns": "" , "templates": [], "throws": [] }

  " Mark current line for future use
  mark d

  " Look for function/method/... to document
  " We look only on the first three lines!
  while( match( l:lineBuffer, l:emptyLinePattern ) != -1 && l:count < 4 )
    exec "normal j"
    let l:lineBuffer = l:lineBuffer.' '.getline( line( "." ) )
    let l:count = l:count + 1
  endwhile
  " Error message when the buffer is still empty.
  if( match( l:lineBuffer, l:emptyLinePattern ) != -1 )
    call s:WarnMsg( "Nothing to document here!" )
    exec "normal `d" 
    return
  endif

  " Remove unwanted lines (ie: jump to the first significant line)
  if( g:SnifferToolkit_keepEmptyLineAfterComment == "no" )
    " This erase previous mark
    mark d
  endif

  " Look for the end of the function/class/... to document
  " TODO does not work when function/class/... is commented out!
  let l:readError = "Cannot reach end of function/class/... declaration!"
  let l:count = 0
  let l:throwCompleted = 0
  let l:endReadPattern = l:endDocPattern
  while( l:endDocFound == 0 && l:count < g:SnifferToolkit_maxFunctionProtoLines )
    let l:lineBuffer = s:RemoveComments( l:lineBuffer )
    " Valid only for cpp. For Python it must be 'class ...:' or 'def ...:' or
    " '... EOL'.
    if( match( l:lineBuffer, l:endReadPattern ) != -1 )
      " Look for throw statement at the end
      if( s:CheckFileType() == "cpp" && l:throwCompleted == 0 )
        " throw statement can have already been read or can be on next line
        if( match( l:lineBuffer.' '.getline( line ( "." ) + 1 ), '.*\<throw\>.*' ) != -1 )
          let l:endReadPattern = l:throwPattern
          let l:throwCompleted = 1
          let l:readError = "Cannot reach end of throw statement"
        else
          let l:endDocFound = 1
        endif
      else
        let l:endDocFound = 1
      endif
      continue
    endif
    exec "normal j"
    let l:lineBuffer = l:lineBuffer.' '.getline( line( "." ))
    let l:count = l:count + 1
  endwhile
  " Error message when the end of the function(/...) has not been found
  if( l:endDocFound == 0 )
    if( match( l:lineBuffer, l:emptyLinePattern ) != -1 )
      " Fall here when only comments have been found.
      call s:WarnMsg( "Nothing to document here!" )
    else
      call s:WarnMsg( l:readError )
    endif
    exec "normal `d" 
    return
  endif

  " Trim the buffer
  let l:lineBuffer = substitute( l:lineBuffer, "^[[:blank:]]*\|[[:blank:]]*$", "", "g" )

  " Check whether it is a template definition
  call s:ParseFunctionTemplateParameters( l:lineBuffer, l:doc )
  " Remove any template parameter.
  if( s:CheckFileType() == "cpp" )
    while( match( l:lineBuffer, l:templateParameterPattern ) != -1 )
      let l:lineBuffer = substitute( l:lineBuffer, l:templateParameterPattern, "", "g" )
    endwhile
  endif

  " Look for the type
  for key in keys( l:types )
    "call s:WarnMsg( "[DEBUG] buffer:_".l:lineBuffer."_, test:_".l:types[key] )
    let l:name = matchstr( l:lineBuffer, l:types[key] )
    if( l:name != "" )
      let l:doc.type = key
      let l:doc.name = l:name

      " Python only. Functions are detected differently for C/C++.
      if( key == "function" )
        "call s:WarnMsg( "HERE !!!".l:lineBuffer )
        call s:ParseFunctionParameters( l:lineBuffer, l:doc )
      endif
      break
    endif
  endfor

  if( l:doc.type == "" )
    " Should be a function/method (cpp only) or an attribute.
    " (cpp only) Can also be an unnamed enum/namespace... (or something else ?)
    if( s:CheckFileType() == "cpp" )
      if( match( l:lineBuffer, '(' ) == -1 )
        if( match( l:lineBuffer, '\<enum\>' ) != -1 )
          let l:doc.type = 'enum'
        elseif( match( l:lineBuffer, '\<namespace\>' ) != -1 )
          let l:doc.type = 'namespace'
        else
          " TODO here we get a class attribute of something like that.
          "      We probably just need a \brief statement...
          let l:doc.type = 'attribute'
          " TODO Retrieve the name of the attribute.
          "      Do we really need it? I'm not sure for the moment.
        endif
      else
        let l:doc.type = 'function'
        call s:ParseFunctionParameters( l:lineBuffer, l:doc )
        if( l:throwCompleted == 1 )
          call s:ParseThrowParameters( l:lineBuffer, l:doc, l:throwPattern )
        endif
      endif
 
    " This is an attribute for Python
    else
      let l:doc.type = 'attribute'
    endif
  endif

  " Remove the function/class/... name when it is not necessary
  if( ( l:doc.type == "class" && g:SnifferToolkit_briefTag_className != "yes" ) || ( l:doc.type == "struct" && g:SnifferToolkit_briefTag_structName != "yes" ) || ( l:doc.type == "enum" && g:SnifferToolkit_briefTag_enumName != "yes" ) || ( l:doc.type == "namespace" && g:SnifferToolkit_briefTag_namespaceName != "yes" ) || ( l:doc.type == "function" && g:SnifferToolkit_briefTag_funcName != "yes" ) )
    let l:doc.name = "None"

  " Remove namespace from the name of the class/function...
  elseif( s:CheckFileType() == "cpp" )
    let l:doc.name = substitute( l:doc.name, '\%('.l:someNamePattern.'::\)', '', 'g' )
  endif

  " Below, write what we have found
  """""""""""""""""""""""""""""""""

  call s:InitializeParameters()
  if( s:CheckFileType() == "python" && l:doc.type == "function" && g:SnifferToolkit_python_autoFunctionReturn == "yes" )
    let l:doc.returns = "yes"
  endif

  " Header
  exec "normal `d" 
  if( g:SnifferToolkit_blockHeader != "" )
    exec "normal O".strpart( s:startCommentBlock, 0, 1 )
    exec "normal A".strpart( s:startCommentBlock, 1 ).g:SnifferToolkit_blockHeader.s:endCommentBlock
    exec "normal `d" 
  endif
 
  " Brief
  if( g:SnifferToolkit_compactOneLineDoc =~ "yes" && l:doc.returns != "yes" && len( l:doc.params ) == 0 )
    let s:compactOneLineDoc = "yes"
    exec "normal O".strpart( s:startCommentTag, 0, 1 )
    exec "normal A".strpart( s:startCommentTag, 1 ).g:SnifferToolkit_briefTag_pre
  else
    let s:compactOneLineDoc = "no"
    let l:insertionMode = s:StartDocumentationBlock()
    exec "normal ".l:insertionMode.s:interCommentTag.g:SnifferToolkit_briefTag_pre
  endif
  if( l:doc.name != "None" )
    exec "normal A".l:doc.name." "
  endif
  exec "normal A".g:SnifferToolkit_briefTag_post

  " Mark the line where the cursor will be positionned.
  mark d

  " Arguments/parameters
  if( g:SnifferToolkit_compactDoc =~ "yes" )
    let s:insertEmptyLine = 0
  else
    let s:insertEmptyLine = 1
  endif
  for param in l:doc.templates
    if( s:insertEmptyLine == 1 )
      exec "normal o".substitute( s:interCommentTag, "[[:blank:]]*$", "", "" )
      let s:insertEmptyLine = 0
    endif
    exec "normal o".s:interCommentTag.g:SnifferToolkit_templateParamTag_pre.param.g:SnifferToolkit_templateParamTag_post
  endfor
  for param in l:doc.params
    if( s:insertEmptyLine == 1 )
      exec "normal o".substitute( s:interCommentTag, "[[:blank:]]*$", "", "" )
      let s:insertEmptyLine = 0
    endif
    exec "normal o".s:interCommentTag.g:SnifferToolkit_paramTag_pre.param.g:SnifferToolkit_paramTag_post
  endfor

  " Returned value
  if( l:doc.returns == "yes" )
    if( g:SnifferToolkit_compactDoc != "yes" )
      exec "normal o".substitute( s:interCommentTag, "[[:blank:]]*$", "", "" )
    endif
    exec "normal o".s:interCommentTag.g:SnifferToolkit_returnTag
  endif

  " Exception (throw) values (cpp only)
  if( len( l:doc.throws ) > 0 )
    if( g:SnifferToolkit_compactDoc =~ "yes" )
      let s:insertEmptyLine = 0
    else
      let s:insertEmptyLine = 1
    endif
    for param in l:doc.throws
      if( s:insertEmptyLine == 1 )
        exec "normal o".substitute( s:interCommentTag, "[[:blank:]]*$", "", "" )
        let s:insertEmptyLine = 0
      endif
      exec "normal o".s:interCommentTag.g:SnifferToolkit_throwTag_pre.param.g:SnifferToolkit_throwTag_post
    endfor
  endif

  " End (if any) of documentation block.
  if( s:endCommentTag != "" )
    if( s:compactOneLineDoc =~ "yes" )
      let s:execCommand = "A"
      exec "normal A "
      exec "normal $md"
    else
      let s:execCommand = "o"
    endif
    exec "normal ".s:execCommand.s:endCommentTag
  endif

  " Footer
  if ( g:SnifferToolkit_blockFooter != "" )
    exec "normal o".strpart( s:startCommentBlock, 0, 1 )
    exec "normal A".strpart( s:startCommentBlock, 1 ).g:SnifferToolkit_blockFooter.s:endCommentBlock
  endif
  exec "normal `d"

  call s:RestoreParameters()
  if( s:compactOneLineDoc =~ "yes" && s:endCommentTag != "" )
    startinsert
  else
    startinsert!
  endif

endfunction


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Write the beginning of the documentation block:
" - C and Python format: insert '/**' and '##' respectively then a linefeed,
" - C++ insert '///' and continue on the same line
"
" This function return the insertion mode which should be used for the next
" call to 'normal'.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! s:StartDocumentationBlock()
  " For C++ documentation format we do not need first empty line
  if( s:startCommentTag != s:interCommentTag )
    "exec "normal O".s:startCommentTag
    exec "normal O".strpart( s:startCommentTag, 0, 1 )
    exec "normal A".substitute( strpart( s:startCommentTag, 1 ), "[[:blank:]]*$", "", "" )
    let l:insertionMode = "o"
  else
    let l:insertionMode = "O"
  endif
  return l:insertionMode
endfunction


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove comments from the given buffer.
" - Remove everything after '//' or '#'.
" - Remove everything between '/*' and '*/' or keep '/*' if '*/' is not present.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! s:RemoveComments( lineBuffer )
  if( s:CheckFileType() == "cpp" )
    " Remove C++ (//) comment.
    let l:lineBuffer = substitute( a:lineBuffer, '[[:blank:]]*\/\/.*$', '', '')
    " Remove partial C (/* ...) comment: /* foo bar   -->   /*
    " '/*' is preserved until corresponding '*/' is found. Other part of the
    " comment is discarded to prevent the case where it contains characters
    " corresponding to the endDoc string.
    let l:lineBuffer = substitute( l:lineBuffer, '\%(\/\*\zs.*\ze\)\&\%(\%(\/\*.*\*\/\)\@!\)', '', '')
    " Remove C (/* ... */) comment.
    let l:lineBuffer = substitute( l:lineBuffer, '\/\*.\{-}\*\/', '', 'g')
  else
    let l:lineBuffer = substitute( a:lineBuffer, '[[:blank:]]*#.*$', '', '')
  endif
  return l:lineBuffer
endfunction


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Retrieve file type.
" - Default type is still 'cpp'.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! s:CheckFileType()
  if( &filetype == "python" )
    let l:fileType       = "python"
  else
    let l:fileType       = "cpp"
  endif
  return l:fileType
endfunction


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Parse the buffer and set the doc parameter.
" - Functions which return pointer to function are not supported.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! s:ParseFunctionParameters( lineBuffer, doc )
  "call s:WarnMsg( 'IN__'.a:lineBuffer )
  let l:paramPosition = matchend( a:lineBuffer, 'operator[[:blank:]]*([[:blank:]]*)' )
  if ( l:paramPosition == -1 )
    let l:paramPosition = stridx( a:lineBuffer, '(' )
  else
    let l:paramPosition = stridx( a:lineBuffer, '(', l:paramPosition )
  endif


  " (cpp only) First deal with function name and returned value.
  " Function name has already been retrieved for Python and we need to parse
  " all the function definition to know whether a value is returned or not.
  if( s:CheckFileType() == "cpp" )
    let l:functionBuffer = strpart( a:lineBuffer, 0, l:paramPosition )
    " Remove unnecessary elements
    for ignored in g:SnifferToolkit_ignoreForReturn
      let l:functionBuffer = substitute( l:functionBuffer, '\<'.ignored.'\>', '', 'g' )
    endfor
    let l:functionReturnAndName = split( l:functionBuffer, '[[:blank:]*]' )
    if( len( l:functionReturnAndName ) > 1 )
      let a:doc.returns = 'yes'
    endif
    let a:doc.name = l:functionReturnAndName[-1]
  endif

  " Work on parameters.
  let l:parametersBuffer = strpart( a:lineBuffer, l:paramPosition + 1 )
  " Remove trailing closing bracket and everything that follows and trim.
  if( s:CheckFileType() == "cpp" )
    let l:parametersBuffer = substitute( l:parametersBuffer, ')[^)]*\%(;\|{\|\%([^:]:\%([^:]\|$\)\)\|\%(\<throw\>\)\).*', '', '' )
  else
    let l:parametersBuffer = substitute( l:parametersBuffer, ')[^)]*:.*', '', '' )
  endif
  let l:parametersBuffer = substitute( l:parametersBuffer, '^[[:blank:]]*\|[[:blank:]]*$', '', '' )

  " Remove default parameter values (if any).
  let l:index = stridx( l:parametersBuffer, '=' )
  let l:startIndex = l:index
  while( l:index != -1 )
    " Look for the next colon...
    let l:colonIndex = stridx( l:parametersBuffer, ',', l:startIndex )
    if( l:colonIndex == -1 )
      let l:colonIndex = strlen( l:parametersBuffer )
    endif
    let l:paramBuffer = strpart( l:parametersBuffer, l:index, l:colonIndex - l:index )
    if( s:CountBrackets( l:paramBuffer ) == 0 )
      " Everything in [l:index, l:colonIndex[ can be removed.
      let l:parametersBuffer = substitute( l:parametersBuffer, l:paramBuffer, '', '' )
      let l:index = stridx( l:parametersBuffer, '=' )
      let l:startIndex = l:index
    else
      " Parameter initialization contains brakets and colons...
      let l:startIndex = l:colonIndex + 1
    endif
  endwhile

  "call s:WarnMsg( "[DEBUG]: ".l:parametersBuffer )
  " Now, work on each parameter.
  let l:params = []
  let l:index = stridx( l:parametersBuffer, ',' )
  while( l:index != -1 )
    let l:paramBuffer = strpart( l:parametersBuffer, 0, l:index )
    if( s:CountBrackets( l:paramBuffer ) == 0 )
      let l:params = add( l:params, s:ParseParameter( l:paramBuffer ) )
      let l:parametersBuffer = strpart( l:parametersBuffer, l:index + 1 )
      let l:index = stridx( l:parametersBuffer, ',' )
    else
      let l:index = stridx( l:parametersBuffer, ',', l:index + 1 )
    endif
  endwhile
  if( strlen( l:parametersBuffer ) != 0 )
    let l:params = add( l:params, s:ParseParameter( l:parametersBuffer ) )
  endif

  if( s:CheckFileType() == "cpp" )
    call filter( l:params, 'v:val !~ "void"' )
  else
    if( g:SnifferToolkit_python_autoRemoveSelfParam == "yes" )
      call filter( l:params, 'v:val !~ "self"' )
    endif
  endif

  for param in l:params
    call add( a:doc.params, param )
    "call s:WarnMsg( '[DEBUG]:OUT_'.param )
  endfor
endfunction


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Parse given parameter and return its name.
" It is easy to do unless you use function's pointers...
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! s:ParseParameter( param )
  let l:paramName = "Unknown"
  let l:firstIndex = stridx( a:param, '(' )

  if( l:firstIndex == -1 )
    let l:paramName =  split( a:param, '[[:blank:]*&]' )[-1]
  else
    if( l:firstIndex != 0 )
      let l:startIndex = 0
    else
      let l:startIndex = stridx( a:param, ')' )
      if( l:startIndex == -1 ) " Argggg...
        let l:paramName =  a:param
      else
        let l:startIndex += 1
        while( s:CountBrackets( strpart( a:param, 0, l:startIndex ) ) != 0 )
          let l:startIndex = stridx( a:param, ')', l:startIndex + 1 ) + 1
          if( l:startIndex == -1) " Argggg...
            let l:paramName =  a:param
          endif
        endwhile
      endif
    endif

    if( l:startIndex != -1 )
      let l:startIndex = stridx( a:param, '(', l:startIndex ) + 1
      let l:endIndex = stridx( a:param, ')', l:startIndex + 1 )
      let l:param = strpart( a:param, l:startIndex, l:endIndex - l:startIndex )
      let l:paramName =  substitute( l:param, '^[[:blank:]*]*\|[[:blank:]*]*$', '', '' )
    else
      " Something really wrong has happened.
      let l:paramName =  a:param
    endif
  endif

  return l:paramName
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Extract template parameter name for function/class/method
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! s:ParseFunctionTemplateParameters( lineBuffer, doc )
  if( match( a:lineBuffer, '^[[:blank:]]*template' ) == 0 )
    let l:firstIndex = stridx( a:lineBuffer, '<' )
    if( l:firstIndex != -1 )
      let l:lastIndex = stridx( a:lineBuffer, '>', l:firstIndex + 1 )
      if( l:lastIndex != -1 )
        " Keep only template parameters
        let l:parameters = strpart( a:lineBuffer, l:firstIndex + 1, l:lastIndex - l:firstIndex - 1)
        " Split on separator (,)
        let l:params = split( l:parameters, '\,' )
        for param in l:params
          " Extract template parameter name
          let l:paramName = split( split( param, '=' )[0], '[[:blank:]]' )[-1]
          call add( a:doc.templates, l:paramName )
        endfor
      endif
    endif
  endif
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Extract throw parameter name
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! s:ParseThrowParameters( lineBuffer, doc, throwPattern )
  let l:throwParams = substitute( a:lineBuffer, a:throwPattern, '\1', "" )
  for param in split( l:throwParams, "," )
    call add( a:doc.throws, substitute( param, '[[:blank:]]', '', "" ) )
  endfor
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Define start/end documentation format and backup generic parameters.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! s:InitializeParameters()
  if( s:CheckFileType() == "cpp" )
    let s:startCommentTag   = g:SnifferToolkit_startCommentTag
    let s:interCommentTag   = g:SnifferToolkit_interCommentTag
    let s:endCommentTag     = g:SnifferToolkit_endCommentTag
    let s:startCommentBlock = g:SnifferToolkit_startCommentBlock
    let s:interCommentBlock = g:SnifferToolkit_interCommentBlock
    let s:endCommentBlock   = g:SnifferToolkit_endCommentBlock
  else
    let s:startCommentTag   = "## "
    let s:interCommentTag   = "# "
    let s:endCommentTag     = ""
    let s:startCommentBlock = "# "
    let s:interCommentBlock = "# "
    let s:endCommentBlock   = ""
  endif

  " Backup standard comment expension and indentation
  let s:commentsBackup = &comments
  let &comments        = ""
  let s:cinoptionsBackup = &cinoptions
  let &cinoptions        = g:SnifferToolkit_cinoptions
  " Compatibility with c/c++ IDE plugin
  let s:timeoutlenBackup = &timeoutlen
  let &timeoutlen = 0
endfunction


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Restore previously backuped parameters.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! s:RestoreParameters()
  " Restore standard comment expension and indentation
  let &comments = s:commentsBackup
  let &cinoptions = s:cinoptionsBackup
  " Compatibility with c/c++ IDE plugin
  let &timeoutlen = s:timeoutlenBackup
endfunction


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Count opened/closed brackets in the given buffer.
" Each opened bracket increase the counter by 1.
" Each closed bracket decrease the counter by 1.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! s:CountBrackets( buffer )
  let l:count =  len( split( a:buffer, '(', 1 ) )
  let l:count -= len( split( a:buffer, ')', 1 ) )
  return l:count
endfunction


"""""""""""""""""""""""""""""""""""
" Simple warning message function
"""""""""""""""""""""""""""""""""""
function! s:WarnMsg( msg )
  echohl WarningMsg
  echo a:msg
  echohl None
  return
endfunction

""""""""""""""""""""""""""
" Shortcuts...
""""""""""""""""""""""""""
command! -nargs=0 Sni :call <SID>SnifferCommentFunc()
command! -nargs=0 SniFl :call <SID>SnifferFileFunc()
command! -nargs=0 SniCls :call <SID>SnifferClassFunc()
command! -nargs=0 SniBlock :call <SID>SnifferBlockFunc()



