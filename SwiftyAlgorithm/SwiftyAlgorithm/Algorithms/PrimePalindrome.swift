//
//  PrimePalindrome.swift
//  SwiftyAlgorithm
//
//  Created by 陈玉国 on 2019/7/30.
//  Copyright © 2019 LuckinDog. All rights reserved.
//

import Foundation

extension Int {

      var nextPrimePalindrome: Int? {
            var number: Int = self
            if number <= 11 {
                  if number <= 2 {
                        return 2
                  }
                  if number <= 3 {
                        return 3
                  }
                  if number <= 5 {
                        return 5
                  }
                  if number <= 7 {
                        return 7
                  }
                  return 11
            }
            for _ in 0...Int.max {
                  let mod = number % 6
                  let length = String(number).count
                  if length & 1 == 0 {
                        number = Int(pow(10, Double(length))) + 1
                        continue
                  }
                  if mod == 1 || mod == 5 {
                        if number.isPalindrome && number.isPrime {
                              return number
                        }
                        number = mod == 1 ? number + 4 : number + 2
                  } else {
                        number = mod == 0 ? number + 1 : number + (5 - mod)
                  }
            }
            return nil
      }
      var isPrime: Bool {
            if self < 5 {
                  return self == 2 || self == 3
            }
            for index in stride(from: 5, through: Int(sqrt(Double(self))), by: 6) {
                  if self % index == 0 || self % (index + 2) == 0 {
                        return false
                  }
            }
            return true
      }
}
