# Ruby On Brailles

A student project by Daniel Frampton, implementing Turing's [Night Writer](https://backend.turing.io/module1/projects/night_writer) English-to-Braille project in Rails.

## Difference from Original Project

In the original [Night Writer](https://backend.turing.io/module1/projects/night_writer) project, Ruby was exclusively used to create a command-line interface for input/output, taking in strings of English and outputting lines of zeros and periods to a file to resemble Braille. In this adaptation of that project, Rails will be used to create a web interface to handle input/output; Unified English Braille will be the standard for translation; and Unicode symbols for Braille will be used to display the results.

## Goals for the Project

In addition to strengthening my Ruby and Rails skills, I hope to gain experience with translation/transliteration between languages and writing systems, which is an avid interest of mine. I also hope to use the website to draw attention to issues of accessibility and literacy as they pertain to to people with vision disabilities.

## Planned Features

The major features planned for this project are:

- A web interface for inputting text and seeing the transliterated results in Braille. 
- The ability to export the transliterated text to a file format that supports Unicode.
- 100% support for Grade I Braille.
- As much support as time allows for Grade II Braille (i.e., contractions) according to Unified English Braille rules.
