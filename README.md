# Using This Template
1. Replace this readme with a description of the paper
2. Rename the file `samplepaper.tex` to something more meaningful
3. Replace `samplepaper.pdf` in the `.gitignore` file so you don't end
   up checking in the built PDF file.
3. Edit the author section including emails, thanks, running header,
   and add orcid fields.	
4. Update the `bib` submodule and `sldg.bib` if needed.  Descend into
   the `bib` directory and pull to get latest entries.  Push back to
   the lab repo if you add or edit entries.
5. Some includes are commented out as they are not always needed.
   Uncomment what you need and add others as needed. 
6. If you do not want to use `natbib` remove `\usepackage{natbib}`,
   add `\usepackage{cite}`, and swap `bibliographystyle` commands at
   the end of the document.
   
There is currently no `Makefile` for this template because the build
is trivial.  Feel free to add one if you are so inclined.
	
