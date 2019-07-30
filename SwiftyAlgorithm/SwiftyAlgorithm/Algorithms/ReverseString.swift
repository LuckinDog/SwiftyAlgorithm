//
//  ReverseString.swift
//  SwiftyAlgorithm
//
//  Created by 陈玉国 on 2019/7/30.
//  Copyright © 2019 LuckinDog. All rights reserved.
//

import Foundation

extension String {
      var reversedString: String {
            var tempString = compactMap { $0 }
            var left: Int = 0
            var right: Int = self.count - 1
            while left < right {
                  let temp = tempString[left]
                  tempString[left] = tempString[right]
                  tempString[right] = temp
                  left += 1
                  right -= 1
            }
            return String(tempString)
      }
}
