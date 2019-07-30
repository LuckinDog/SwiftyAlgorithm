//
//  PalindromeNumber.swift
//  SwiftyAlgorithm
//
//  Created by 陈玉国 on 2019/7/30.
//  Copyright © 2019 LuckinDog. All rights reserved.
//

import Foundation

extension Int {
      var isPalindrome: Bool {
            var number: Int = self
            if number < 0 || (number % 10 == 0 && number != 0) {
                  return false
            }
            var revertedNum: Int = 0
            while number > revertedNum {
                  revertedNum = revertedNum * 10 + number % 10
                  number = number / 10
            }
            return number == revertedNum || number == revertedNum / 10
      }
}
