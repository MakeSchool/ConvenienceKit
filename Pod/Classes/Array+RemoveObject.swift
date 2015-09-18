//
//  Array+RemoveObject.swift
//  ConvenienceKit
//
//  Created by Benjamin Encz on 4/17/15.
//  Copyright (c) 2015 Benjamin Encz. All rights reserved.
//

import Foundation

// Thanks to Martin R: http://stackoverflow.com/questions/24938948/array-extension-to-remove-object-by-value
extension RangeReplaceableCollectionType where Generator.Element : Equatable {
  // Remove first collection element that is equal to the given `object`:
  mutating func removeObject(object : Generator.Element) {
    if let index = self.indexOf(object) {
      self.removeAtIndex(index)
    }
  }
}