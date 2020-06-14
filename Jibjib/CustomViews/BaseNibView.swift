//
//  BaseNibView.swift
//  Jibjib
//
//  Created by sorawit on 6/13/2020 BE.
//  Copyright © 2020 sorawit. All rights reserved.
//

import UIKit

public protocol UseNibView {
    var nibName: String { get }
}

extension UseNibView where Self: UIView {
    func registerNib() {
        if let view = Bundle(for: type(of: self)).loadNibNamed(nibName, owner: self, options: nil)?.first as? UIView {
            view.frame = bounds
            view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            addSubview(view)
        } else {
            fatalError("""
                Couldn't find Your Custom view for \(String(describing: self)),
                make sure the view is invalid nib name
                """)
        }
    }
}

open class BaseNibView: UIView, UseNibView {
    public var nibName: String { type(of: self).description().components(separatedBy: ".").last ?? "" }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        registerNib()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        registerNib()
    }
}
