//
//  LayoutGuides.swift
//  ProgrammaticAutoLayout
//
//  Created by Thomas Dimnet on 13/07/2018.
//  Copyright © 2018 Thomas Dimnet. All rights reserved.
//

import Foundation
import UIKit

class LayoutGuidesController: UIViewController {
    
    let viewA = UIView()
    let viewB = UIView()
    let viewC = UIView()
    
    // Layout Guides
    let firstLayoutGuide = UILayoutGuide()
    let secondLayoutGuide = UILayoutGuide()
    let thirdLayoutGuide = UILayoutGuide()
    let fourthLayoutGuide = UILayoutGuide()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewA.backgroundColor = .green
        viewB.backgroundColor = .green
        viewC.backgroundColor = .green
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        view.addLayoutGuide(firstLayoutGuide)
        view.addLayoutGuide(secondLayoutGuide)
        view.addLayoutGuide(thirdLayoutGuide)
        view.addLayoutGuide(fourthLayoutGuide)
        
        viewA.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(viewA)
        
        viewB.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(viewB)
        
        viewC.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(viewC)
        
        NSLayoutConstraint.activate([
            viewA.widthAnchor.constraint(equalToConstant: 100),
            viewA.heightAnchor.constraint(equalToConstant: 100),
            viewA.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            viewB.widthAnchor.constraint(equalToConstant: 100),
            viewB.heightAnchor.constraint(equalToConstant: 100),
            viewB.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            viewC.widthAnchor.constraint(equalToConstant: 100),
            viewC.heightAnchor.constraint(equalToConstant: 100),
            viewC.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            firstLayoutGuide.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            firstLayoutGuide.bottomAnchor.constraint(equalTo: viewA.topAnchor),
            secondLayoutGuide.topAnchor.constraint(equalTo: viewA.bottomAnchor),
            secondLayoutGuide.bottomAnchor.constraint(equalTo: viewB.topAnchor),
            thirdLayoutGuide.topAnchor.constraint(equalTo: viewC.topAnchor),
            thirdLayoutGuide.bottomAnchor.constraint(equalTo: viewC.topAnchor),
            fourthLayoutGuide.topAnchor.constraint(equalTo: viewC.bottomAnchor),
            fourthLayoutGuide.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}


















