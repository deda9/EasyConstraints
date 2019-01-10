//
//  ViewController.swift
//  EasyCartography
//
//  Created by Bassem Qoulta on 10/22/18.
//  Copyright © 2018 Bassem Qoulta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var redView: UIView = UIView.redView
    private var greenView: UIView = UIView.greenView
    private var blackView: UIView = UIView.blackView
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(redView)
        self.view.addSubview(greenView)
        self.view.addSubview(blackView)
        
        self.setSubviewsConstraints()
    }
}

fileprivate extension ViewController {
    fileprivate func setSubviewsConstraints() {
        redView.setConstraint(.width(80) + .height(80) + .center(in: self.view))
        greenView.setConstraint(.width(200) + .height(20) + .right(of: redView) + .top(of: redView))
        blackView.setConstraint(.width(30) + .height(30) + .centerX(in: greenView) + .top(bottomOf: greenView, offset: -20))
    }
}

fileprivate extension UIView {
    static var redView: UIView {
        let view = UIView(frame: .zero)
        view.backgroundColor = UIColor.red
        return view
    }
    
    static var greenView: UIView {
        let view = UIView(frame: .zero)
        view.backgroundColor = UIColor.green
        return view
    }
    
    static var blackView: UIView {
        let view = UIView(frame: .zero)
        view.backgroundColor = UIColor.black
        return view
    }
}

