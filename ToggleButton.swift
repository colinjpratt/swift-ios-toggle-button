//
//  ToggleButton.swift
//
//  Created by Colin on 9/12/17.
//  Copyright © 2017 Colin Pratt. All rights reserved.
//

/**
 Copyright (c) 2017 Colin Pratt
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
 */

import UIKit

@IBDesignable
class ToggleButton: UIButton {
    
    @IBInspectable var isOn: Bool = false {
        didSet {
            if isOn {
                setImage(onImage, for: .normal)
            } else {
                setImage(offImage, for: .normal)
            }
        }
    }
    
    @IBInspectable var isOnTintColor: UIColor?
    @IBInspectable var isOffTintColor: UIColor?
    
    @IBInspectable var onImage: UIImage?
    @IBInspectable var offImage: UIImage?

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.addTarget(self, action: #selector(internalImagetoggle), for: .touchUpInside)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    @objc private func internalImagetoggle(sender: ToggleButton) {
        isOn = !isOn
        tintColor = isOn ? isOnTintColor : isOffTintColor
    }
    
}
