#import "/src/lib.typ": *

#set page(height: auto, width: 300pt)

#let whitespaces = (
  "\u{0009}", // Character Tabulation
  "\u{000B}", // Line Tabulation
  "\u{000C}", // Form Feed
  "\u{0020}", // Space
  "\u{00A0}", // No-Break Space
  "\u{FEFF}", // Byte order mark | Zero Width No-Break Space
)

#for ws in whitespaces {
  // Testing each whitespace with four normal spaces
  // Lang as "cs", as that could break zebraw, because of its highlighting
  let code = raw(ws * 2 + " " * 4 + "hi \u{1f44D} and a \u{feff} \u{2060} after", block: true, lang: "cs")
  // A comment, to check that those work correctly aswell
  zebraw(code, highlight-lines: ((1, [ Test comment ]),), indentation: 2)
}
