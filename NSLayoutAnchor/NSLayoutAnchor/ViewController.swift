//
//  ViewController.swift
//  AnchorDemo
//
//  Created by 益田英知 on 2019/01/30.
//  Copyright © 2019 Hidetomo Masuda. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
    
    // MARK: - Properties
    
    let buttonTitle = "Some action button."
    
    // MARK: - View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
    // MARK: - Actions
    
    @objc func tappedButton(_ sender: UIButton) {
        print("tapped")
    }
    
    // Private method
    
    private func setup() {
        createButton()
    }
    
    private func createButton() {
        
        // create instance
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(buttonTitle, for: .normal)
        button.titleLabel?.textColor = UIColor.white
        button.backgroundColor = UIColor.blue
        button.layer.cornerRadius = 20
        button.addTarget(self,
                         action: #selector(tappedButton(_:)),
                         for: .touchUpInside)
        
        // add to ViewController
        self.view.addSubview(button)
        self.view.bringSubviewToFront(button)
        
        // set button size
        button.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.9).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50.0).isActive = true
        
        // set button position
        button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        if #available(iOS 11.0, *) {
            button.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -20.0).isActive = true
        } else {
            button.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -20.0).isActive = true
        }
    }
    
}
