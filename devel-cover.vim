" This file was generated by Devel::Cover Version $VERSION
" Devel::Cover is copyright 2001-2011, Paul Johnson (pjcj@cpan.org)
" Devel::Cover is free. It is licensed under the same terms as Perl itself.
" The latest version of Devel::Cover should be available from my homepage:
" http://www.pjcj.net


" Run:          tests/module1
" Perl version: 118.53.46.49.52.46.50
" OS:           linux
" Start:        Wed Nov 16 18:15:30 42249368
" Finish:       Wed Nov 16 18:24:00 42249368



"hi HitLine ctermbg=Cyan guibg=Cyan
"hi MissLine ctermbg=Magenta guibg=Magenta
hi HitSign ctermfg=Green cterm=bold gui=bold guifg=Green
hi MissSign ctermfg=Red cterm=bold gui=bold guifg=Red

sign define hit  linehl=HitLine  texthl=HitSign  text=>>
sign define miss linehl=MissLine texthl=MissSign text=:(

" let s:coverage = {<%
  " results.each_pair do |file, coverage|
  " %>'<%= file %>': [<%= coverage[:hits].inspect %>,<%= coverage[:misses].inspect%>], <%
  " end%> }
let s:coverage = { 'tests/Module1.pm': [ [ 33, 34 ], [ 28, 17, 15, 22, 16, 23 ] ], 'tests/module1': [ [ 27, 17, 12, 15, 24, 23, 19, 13, 29, 31 ], [ 35 ] ] }

let s:generatedTime = 1333199390

function! BestCoverage(coverageForName)
  let matchBadness = strlen(a:coverageForName)
  for filename in keys(s:coverage)
    let matchQuality = match(a:coverageForName, filename . "$")
    if (matchQuality >= 0 && matchQuality < matchBadness)
      let found = filename
    endif
  endfor

  if exists("found")
    return s:coverage[found]
  else
    echom "No coverage recorded for " . a:coverageForName
    return [[],[]]
  endif
endfunction

let s:signs = {}
let s:signIndex = 1

function! s:CoverageSigns(filename)
  let [hits,misses] = BestCoverage(a:filename)

  if (getftime(a:filename) > s:generatedTime)
    echom "File is newer than coverage report which was generated at " . strftime("%c", s:generatedTime)
  endif

  if (! exists("s:signs['".a:filename."']"))
    let s:signs[a:filename] = []
  endif

  for hit in hits
    let id = s:signIndex
    let s:signIndex += 1
    let s:signs[a:filename] += [id]
    exe ":sign place ". id ." line=".hit." name=hit  file=" . a:filename
  endfor

  for miss in misses
    let id = s:signIndex
    let s:signIndex += 1
    let s:signs[a:filename] += [id]
    exe ":sign place ".id." line=".miss." name=miss file=" . a:filename
  endfor
endfunction

function! s:ClearCoverageSigns(filename)
  if(exists("s:signs['". a:filename."']"))
    for signId in s:signs[a:filename]
      exe ":sign unplace ".signId
    endfor
    let s:signs[a:filename] = []
  endif
endfunction

let s:filename = expand("<sfile>")
function! s:AutocommandUncov(sourced)
  if(a:sourced == s:filename)
    call s:ClearCoverageSigns(expand("%:p"))
  endif
endfunction

command! -nargs=0 Cov call s:CoverageSigns(expand("%:p"))
command! -nargs=0 Uncov call s:ClearCoverageSigns(expand("%:p"))

augroup SimpleCov
  au!
  exe "au SourcePre ".expand("<sfile>:t")." call s:AutocommandUncov(expand('<afile>:p'))"
augroup end

Cov
