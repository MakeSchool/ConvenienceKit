//
//  KeyboardNotificationHandler.swift
//  MakeSchoolNotes
//
//  Created by Benjamin Encz on 2/23/15.
//  Copyright (c) 2015 Make School. All rights reserved.
//

import UIKit

@objc(KeyboardNotificationHandler)
public class KeyboardNotificationHandler {
  
  public typealias KeyboardHandlerCallback = (CGFloat) -> ()
  
  public var keyboardWillBeHiddenHandler: KeyboardHandlerCallback?
  public var keyboardWillBeShownHandler:  KeyboardHandlerCallback?
  
  public required init() {
    NSNotificationCenter.defaultCenter().addObserver(self,
      selector: "keyboardWillBeShown:",
      name: "UIKeyboardWillShowNotification",
      object: nil
    )
    
    NSNotificationCenter.defaultCenter().addObserver(self,
      selector: "keyboardWillBeHidden:",
      name: "UIKeyboardWillHideNotification",
      object: nil
    )
  }
  
  deinit {
    NSNotificationCenter.defaultCenter().removeObserver(self)
  }
  
  public func keyboardWillBeShown(notification: NSNotification) {
    invokeHandler(notification, callback: keyboardWillBeShownHandler)
  }
  
  public func keyboardWillBeHidden(notification: NSNotification) {
    invokeHandler(notification, callback: keyboardWillBeHiddenHandler)
  }
  
  private func invokeHandler(notification: NSNotification, callback: KeyboardHandlerCallback?) {
    if let info = notification.userInfo, callback = callback {
      var keyboardFrame: CGRect = (info[UIKeyboardFrameEndUserInfoKey] as! NSValue).CGRectValue()
        callback(keyboardFrame.height)
    }
  }
  
}