//
//  HammingWeight.swift
//  SwiftyAlgorithm
//
//  Created by 陈玉国 on 2019/7/30.
//  Copyright © 2019 LuckinDog. All rights reserved.
//

import Foundation

extension Int {
      var hammingWeight: Int {
            var number = self
            var weight: Int = 0
            while number != 0 {
                  weight += 1
                  number &= (number - 1)
            }
            return weight
      }
}
