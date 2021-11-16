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
        
        view.backgroundColor = UIColor(red: 173/255, green: 217/255, blue: 185/255, alpha: 1.0)
        
        let pandaLabel = UILabel()
        pandaLabel.text = "Welcome"
        pandaLabel.textColor = .black
        pandaLabel.font = .boldSystemFont(ofSize: 32)
        pandaLabel.frame = .init(x: 40, y: 40, width: 100, height: 100)
        pandaLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(pandaLabel)
        
        let pandaImageView = UIImageView()
        pandaImageView.image = UIImage(named: "panda")
        pandaImageView.layer.cornerRadius = 20
        pandaImageView.layer.borderWidth = 1
        pandaImageView.layer.masksToBounds = false
        pandaImageView.layer.cornerRadius = 20
        pandaImageView.clipsToBounds = true
        pandaImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(pandaImageView)
        
        let nextButton = UIButton()
        nextButton.setTitle("Next", for: .normal)
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.backgroundColor = .black
        nextButton.layer.cornerRadius = 28
        nextButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        view.addSubview(nextButton)
        
        NSLayoutConstraint.activate([
            pandaLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pandaLabel.centerYAnchor.constraint(equalTo: pandaImageView.topAnchor, constant: -80),
            pandaImageView.widthAnchor.constraint(equalToConstant: 300),
            pandaImageView.heightAnchor.constraint(equalToConstant: 400),
            pandaImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pandaImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            nextButton.widthAnchor.constraint(equalToConstant: 180),
            nextButton.heightAnchor.constraint(equalToConstant: 60),
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextButton.centerYAnchor.constraint(equalTo: pandaImageView.bottomAnchor, constant: 90),
            ])
    }
    
    @objc private func didTapButton() {
        let secondVC = QuestionViewController()
        navigationController?.pushViewController(secondVC, animated: true)
    }
}

