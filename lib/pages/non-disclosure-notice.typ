#import "../translations.typ": translations

#let non_disclosure_notice(company) = {
  heading(
    outlined: true,
    numbering: none,
    bookmarked: true,
    "Sperrvermerk",
  )

  text("Die vorliegende Arbeit kann interne, vertrauliche Informationen der " + company + " enthalten. Die Weitergabe des Inhalts der Arbeit im Gesamten oder in Teilen sowie das Anfertigen von Kopien oder Abschriften auch in digitaler Form sind grundsätzlich untersagt. Ausnahmen bedürfen der schriftlichen Genehmigung der Firma " + company + ".")

  v(40pt)

  grid(
    columns: 3,
    gutter: 10pt,
    line(length: 85pt, stroke: 1pt),
    line(length: 85pt, stroke: 1pt),
    line(length: 150pt, stroke: 1pt),
    align(center, text(translations.place, size: 9pt)),
    align(center, text(translations.date, size: 9pt)),
    align(center, text(translations.signature, size: 9pt)),
  )
}