//
//  ViewController.swift
//  Accessibility Example
//
//  Created by Irem Karaoglu on 15.10.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let textLabel = UILabel()
        textLabel.text = "Hey Listen!"
        textLabel.textColor = .systemPink
        textLabel.frame = .init(x: 40, y: 40, width: 100, height: 100)
        
        view.addSubview(textLabel)
        
        
        
    }


}

