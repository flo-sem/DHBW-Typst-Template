#import "../translations.typ": translations

#let cover_page(
  is-thesis: true,
  is-master-thesis: false,
  is-bachelor-thesis: true,
  is-report: false,

  title: "",
  subtitle: "",
  author: "",
  course: "",
  professor: "",
  subject: "",
  study-course: "",

  duration: "",
  studentnumber: "",
  course-abreviation: "",
  company: "", 
  supervisor: "",
  logo_path: "",
  submission-date: none,
) = {
  // Set the document's basic properties.
  set page(
    margin: (left: 0mm, right: 0mm, top: 0mm, bottom: 0mm),
    numbering: none,
    number-align: center,
  )

  let path = "../" + logo_path

  // DHBW Logo
  place(
    top + right,
    dx: -13mm,
    dy: 10mm,
    image("../assets/dhbw_stuttgart.svg", width: 138pt)
  )

  //Firmenlogo
  place(
      top + left,
      dx: 13mm,
      dy: 10mm,
      image(path, width: 138pt)
    )
  // Title etc.
  pad(
    top: 66mm,
    align(
      center,
      stack(
        // Author
        // Title
        par(
          leading: 9pt,
          text(title, size: 31pt, weight: 500, font: "New Computer Modern"),
        ),
        v(15mm),
        text("Praxisdokumentation XYZ", size: 16pt, weight: "bold"),
        v(40mm),
        // Subtitle
        text("des Studiengangs " + course, size: 14pt), 
        v(5mm),
        text("An der Dualen Hochschule Baden-Württemberg " + "Stuttgart", size: 14pt), 
        v(20mm),
        text("von", size: 12pt),
        v(5mm),
        text(author, size: 16pt, weight: "bold"),
        v(10mm),
        //text(author),
        text(submission-date)

      )
    ),
    
  )

  place(
    bottom,
    dx: 5%,
    dy: -25mm,
    align(
      center,
      rect( // The rect() function creates a rectangle which can be used as a box around content
        width: 90%,
        stroke: 0pt,
        //fill: luma(235), // This sets the background color of abstract box
        table(
          columns: (1fr, 1fr),
          stroke: 0pt,
          inset: (left: 4.5em, top: 8pt),
          align: top + left,
          text("Bearbeitungszeitraum", size: 14pt, weight: "bold"), text(duration, size: 14pt), 
          text("Matrikelnummer, Kurs", size: 14pt, weight: "bold"), text(studentnumber + ", " + course-abreviation, size: 14pt),
          text("Ausbildungsfirma", size: 14pt, weight: "bold"),text(company, size: 14pt),
          text("Betreuer", size: 14pt, weight: "bold"), text(supervisor, size: 14pt)
        ),
      )

    )
       )

  

  if is-thesis {
    // Second cover page
    pagebreak()

    // Set the document's basic properties.
    set page(
      margin: (left: 31.5mm, right: 32mm, top: 55mm, bottom: 67mm),
      numbering: none,
      number-align: center,
    )

    // Title etc.
    stack(
      // Author
      align(
        center,
        text(author, size: 14pt, font: "Open Sans"),
      ),
      v(23mm),
      // Title
      align(
        center,
        par(
          leading: 13pt,
          text(title, size: 18pt, font: "Open Sans"),
        ),
      ),
      v(22mm),
    )

    v(1fr)

    stack(
      // Content
      stack(
        spacing: 3mm,
        if is-bachelor-thesis {
          text(translations.bachelor-thesis-submitted-for-examination-in-bachelors-degree)
        },
        if is-master-thesis {
          text(translations.master-thesis-submitted-for-examination-in-masters-degree)
        },
        text(translations.in-the-study-course + " " + text(study-course, style: "italic")),
        //text(translations.at-the-department + " " + department),
        //text(translations.at-the-faculty-of + " " + faculty),
        text(translations.at-university-of-applied-science-hamburg),
      ),

      v(4mm),
      line(start: (0pt, 0pt), length: 25pt, stroke: 1mm),
      v(4mm),

      // Supervision
      if supervisors.len() > 0 {
        if type(supervisors) != array {
          text(translations.supervising-examiner + ": " + text(upper(supervisors), weight: "bold"), size: 10pt)
        } else {
          text(translations.supervising-examiner + ": " + text(upper(supervisors.first()), weight: "bold"), size: 10pt)

          if supervisors.len() > 1 {
            linebreak()
            text(translations.second-examiner + ": " + text(upper(supervisors.at(1)), weight: "bold"), size: 10pt)
          }
        }
      },
    
      // Submission date
      if submission-date != none {
        stack(
          v(4mm),
          line(start: (0pt, 0pt), length: 25pt, stroke: 1mm),
          v(4mm),
          text(
            translations.submitted + ": " + submission-date.display("[day]. [month repr:long] [year]"),
            size: 10pt,
          ),
        )
      },
    )
  }
}
