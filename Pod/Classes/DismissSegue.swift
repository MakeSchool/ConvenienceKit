//
//  DismissSegue.swift
//  MakeSchoolNotes
//
//  Created by Benjamin Encz on 2/13/15.
//  Copyright (c) 2015 Make School. All rights reserved.
//

import UIKit

@objc(DismissSegue)
class DismissSegue: UIStoryboardSegue {

  override func perform() {
    sourceViewController.presentingViewController!.dismissViewControllerAnimated(true, completion: nil)
  }
  
}