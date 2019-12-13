# _Anagrams and Antigrams_

#### _Enter a word and it will check to see if it is either a anagram or a antigram, December 13th, 2019_

#### By _**Judah Barton**_

## Description

_First, what are anagrams, they are two words if they contain the exact same letters in a different order. For example, "ruby" and "bury" are anagrams because they contain the same letters. Next what are antigrams, a word is an "antigram" of another word if no letters match. For example, "hi" has no matches with "bye". If your word is an anagram you will see something like this, "These words are anagrams.". But if your word is an antigram you will see something like this "These words have no letter matches and are antigrams." This program will also be able to tell you whether or not your word is legitmate or not based on whether it contains a vowel._

## Setup/Installation Requirements

* _Click the clone or download button and copy the link_
* _open your terminal and type "git clone (link)"_
* _Double click on the anagrams folder_
* __

## Behavior-Driven Development
|  Behavior | Input  | Output  |
|---|---|---|
| If the word is an anagram | User inputs: "ruby" and "bury" | Output: "These words are anagrams." |
| If the word has different casing it is still an anagram | User enters: "Tea" and "Eat" | Output: "These words are anagrams." |
| Check if the words they are comparing are real words containing (a, e, i, o, u, y) | User inputs: "yrrb" and "ruby" | Outputs: "These words have no letter matches and are antigrams." |
| If the word is not an anagram, program will check to see if it is an antigram | User inputs: "yrrb" and "ruby" | Outputs: "These words have no letter matches and are antigrams." |
| The program will acount for sentences and tell you whether or not they are anagrams or antigrams | User inputs: "Hello how are you" and "I am doing great" | Outputs: "You have 4 antigrams" |

## Known Bugs

_None_

## Support and contact details

_example@you.com_

## Technologies Used

* _Ruby_
* _Gem: rspec_
* _Gem: pry_

### License

*This software is licensed under the MIT license agreement*

Copyright (c) 2019 **_Judah Barton_**
