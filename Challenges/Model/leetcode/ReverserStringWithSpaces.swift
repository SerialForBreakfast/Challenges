import Foundation

func reverseWords(arr: [Character]) -> [Character] {
  var reversed: [String] = []
  var currentWord: String = ""
  var answer: [Character] = []
  for char in arr {
    if char == " " {
      reversed.insert(currentWord, at: 0)
      currentWord = ""
      reversed.insert(String(char), at: 0)
    } else {
      currentWord.append(char)
    }
  }
  if currentWord != "" {
    reversed.insert(currentWord, at: 0)
  }

  for letter in reversed.joined().characters {
    print(letter)
    answer.append(letter)
  }
  return answer
}