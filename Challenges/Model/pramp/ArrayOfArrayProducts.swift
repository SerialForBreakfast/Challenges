import Foundation

func arrayOfArrayProducts(arr: [Int]) -> [Int] {
  var answerArr: [Int] = []
  var currentProduct = 1
  if arr.count <= 1 {
    return answerArr
  }
  for index in 0..<arr.count {
    for (i, value) in arr.enumerated() {
      print("\(i) \(value)")
      if index != i {
        currentProduct *= value
      }
    }
    answerArr.append(currentProduct)
    currentProduct = 1
  }
  return answerArr
}