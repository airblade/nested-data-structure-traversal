vim9script

final input = [
        {
          title: "Getting started",
          reset_lesson_position: false,
          lessons: [
            {name: "Welcome"},
            {name: "Installation"}
          ]
        },

        {
          title: "Basic operator",
          reset_lesson_position: false,
          lessons: [
            {name: "Addition / Subtraction"},
            {name: "Multiplication / Division"}
          ]
        },

        {
          title: "Advanced topics",
          reset_lesson_position: true,
          lessons: [
            {name: "Mutability"},
            {name: "Immutability"}
          ]
        }
      ]

var section_position = 0
var lesson_position = 0

for section in input
  section_position += 1
  section.position = section_position

  if section.reset_lesson_position
    lesson_position = 0
  endif

  for lesson in section.lessons
    lesson_position += 1
    section.lessons[index(section.lessons, lesson)] = extendnew(lesson, {position: lesson_position})
  endfor
endfor

echom json_encode(input)
