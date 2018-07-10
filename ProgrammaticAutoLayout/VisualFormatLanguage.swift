//
//  VisualFormatLanguage.swift
//  ProgrammaticAutoLayout
//
//  Created by Thomas Dimnet on 10/07/2018.
//  Copyright © 2018 Thomas Dimnet. All rights reserved.
//

import UIKit

class VisualFormatController: UIViewController {
    
    let redView = UIView()
    let greenView = UIView()
    let blueView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.backgroundColor = .red
        greenView.backgroundColor = .green
        blueView.backgroundColor = .blue
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        redView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(redView)
        
        greenView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(greenView)
        
        blueView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(blueView)
        
        // Constraint Code
        
    }
}
