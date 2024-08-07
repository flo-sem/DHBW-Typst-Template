// Import dependencies such as glossaries etc.
#import "dependencies.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#import "template/main.typ": config
#show: config.with(
  title: "Universal Declaration of Human Rights",
  author: "United Nations",
  abstract: none,
  faculty: "Engineering and Computer Science",
  department: "Computer Science",
  document-type: none,
  supervisors: ("Prof. Dr. Example"),
  submission-date: datetime(year: 1948, month: 12, day: 10),
)

// Enable glossary
// Use: #gls("key") or #glspl("key") to reference and #print-glossary to print it
// More documentation: https://typst.app/universe/package/glossarium/
#show: make-glossary

// Include chapters of thesis
#include "chapters/01_preamble.typ"
#include "chapters/02_article_1.typ"

// Print glossary
#pagebreak()
#include "glossary.typ"

// Print bibliography
#pagebreak()
#bibliography("bibliography.bib")
