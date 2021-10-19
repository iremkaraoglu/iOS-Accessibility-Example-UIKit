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
        
//        view.backgroundColor = UIColor(red: 152, green: 251, blue: 152, alpha: 1)
        
        let pandaLabel = UILabel()
        pandaLabel.text = "Panda Bear"
        pandaLabel.textColor = .darkGray
        pandaLabel.font = .boldSystemFont(ofSize: 32)
        pandaLabel.frame = .init(x: 40, y: 40, width: 100, height: 100)
        pandaLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(pandaLabel)
        
        let pandaImageView = UIImageView()
        pandaImageView.image = UIImage(named: "panda")
        pandaImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(pandaImageView)
        
        let nextButton = UIButton()
        nextButton.setTitle("Next", for: .normal)
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.backgroundColor = .systemIndigo
        nextButton.layer.cornerRadius = 28
        view.addSubview(nextButton)
        
        NSLayoutConstraint.activate([
            pandaLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pandaLabel.centerYAnchor.constraint(equalTo: pandaImageView.topAnchor, constant: -80),
            pandaImageView.widthAnchor.constraint(equalToConstant: 300),
            pandaImageView.heightAnchor.constraint(equalToConstant: 400),
            pandaImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pandaImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            nextButton.widthAnchor.constraint(equalToConstant: 100),
            nextButton.heightAnchor.constraint(equalToConstant: 60),
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextButton.centerYAnchor.constraint(equalTo: pandaImageView.bottomAnchor, constant: 60),
            ])
        
        
        
    }


}

