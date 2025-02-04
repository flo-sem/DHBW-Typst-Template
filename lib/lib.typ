#let report(
  language: "en",
  title: "",
  author: "",
  course: "",
  professor: "",
  subject: "",
  department: "",
  include-declaration-of-independent-processing: false,
  body,
) = {
  import "template.typ": template
  template(
    is-thesis: false,
    is-master-thesis: false,
    is-bachelor-thesis: false,
    is-report: true,

    language: language,
    
    title: title, 
    author: author,
    course: course,
    professor: professor,
    subject: subject,
    department: department,
    study-course: none,
    supervisor: "",
    submission-date: none,
    include-declaration-of-independent-processing: include-declaration-of-independent-processing,
    body,
  )
}

#let praxisdokumentation(
  language: "en",
  title: "",
  number: "T2000",
  author: "",
  course: "",
  professor: "",
  subject: "",
  study-course: "",
  include-declaration-of-independent-processing: false,
  duration: "",
  studentnumber: "",
  course-abreviation: "",
  company: "", 
  supervisor: "",
  logo_path: "assets/dhbw_stuttgart.svg",
  submission-date: none,
  body,
) = {
  import "template.typ": template
  template(
    is-thesis: false,
    is-master-thesis: false,
    is-bachelor-thesis: false,
    is-report: false,

    language: language,
    
    title: title,
    author: author,
    course: course,
    professor: professor,
    subject: subject,
    study-course: study-course,
    supervisor: supervisor,
    duration: duration,
    studentnumber: studentnumber,
    course-abreviation: course-abreviation,
    company: company, 
    logo_path: logo_path,
    submission-date: submission-date,
    include-declaration-of-independent-processing: include-declaration-of-independent-processing,
    body,
  )
}

#let bachelor-thesis(
  language: "en",

  title-de: "",
  keywords-de: none,
  abstract-de: none,

  title-en: none,
  keywords-en: none,
  abstract-en: none,

  author: "",
  faculty: "",
  department: "",
  study-course: "",
  supervisor: "",
  submission-date: none,
  include-declaration-of-independent-processing: true,
  body,
) = {
  import "template.typ": template
  template(
    is-thesis: true,
    is-master-thesis: false,
    is-bachelor-thesis: true,
    is-report: false,

    language: language,

    title-de: title-de,
    keywords-de: keywords-de,
    abstract-de: abstract-de,

    title-en: title-en,
    keywords-en: keywords-en,
    abstract-en: abstract-en,

    author: author,
    department: department,
    study-course: study-course,
    supervisor: supervisor,
    submission-date: submission-date,
    include-declaration-of-independent-processing: include-declaration-of-independent-processing,
    body,
  )
}

