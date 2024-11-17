# LaTeX
$latex = 'platex -synctex=1  -file-line-error -halt-on-error  %O %S';

# BibTeX
$bibtex = 'pbibtex  %O %B';
$bibtex_use = 2;

# PDF
$dvipdf = 'dvipdfmx %O -o %D %S';
$pdf_mode = 3;

# Mendex
$makeindex = 'upmendex %O -o %D %S';

# Output
$out_dir = 'dist';

# Previewer
if ($^O eq 'darwin') {
  $pvc_view_file_via_temporary = 0;
  $pdf_previewer = 'open -ga /Applications/Skim.app';
}

# Cleanup
$clean_ext .= "dvi synctex.gz";
