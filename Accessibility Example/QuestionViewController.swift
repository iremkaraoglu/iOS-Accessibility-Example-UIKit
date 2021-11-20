//
//  QuestionViewController.swift
//  Accessibility Example
//
//  Created by Irem Karaoglu on 12.11.2021.
//

import Foundation
import UIKit

class QuestionViewController: UIViewController {
    let step:Float = 5 // If you want UISlider to snap to steps by 10
    let pandaLabel = UILabel()
    let loveCount = UILabel()
    let pandaImageView = UIImageView()
    
    override func viewDidLoad() {
        
        view.backgroundColor = UIColor(red: 173/255, green: 217/255, blue: 185/255, alpha: 1.0)
        
        pandaLabel.text = "How much do you love pandas?"
        pandaLabel.textColor = .black
        pandaLabel.textAlignment = .center
        pandaLabel.font = UIFont.preferredFont(forTextStyle: .body)
        pandaLabel.adjustsFontForContentSizeCategory = true
        pandaLabel.numberOfLines = 9
        pandaLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(pandaLabel)
        
        pandaImageView.layer.cornerRadius = 20
        pandaImageView.layer.borderWidth = 1
        pandaImageView.layer.masksToBounds = false
        pandaImageView.layer.cornerRadius = 20
        pandaImageView.clipsToBounds = true
        pandaImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(pandaImageView)
        
        let loveSlider = UISlider(frame:CGRect(x: 0, y: 0, width: 300, height: 20))
        loveSlider.minimumValue = 0
        loveSlider.maximumValue = 100
        loveSlider.value = 80
        loveSlider.isContinuous = true
        loveSlider.tintColor = UIColor.darkGray
        loveSlider.thumbTintColor = UIColor.systemPink
        loveSlider.translatesAutoresizingMaskIntoConstraints = false
        loveSlider.addTarget(self, action: #selector(self.sliderValueDidChange(_:)), for: .valueChanged)
        view.addSubview(loveSlider)
        
        UIView.animate(withDuration: 0.8) {
            loveSlider.setValue(80.0, animated: true)
        }
        
        
        loveCount.textColor = .black
        loveCount.text = String(Int(loveSlider.value))
        pandaLabel.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        pandaLabel.adjustsFontForContentSizeCategory = true
        loveCount.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loveCount)
        
        NSLayoutConstraint.activate([
            pandaLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            pandaLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            pandaLabel.centerYAnchor.constraint(equalTo: pandaImageView.topAnchor, constant: -80),
            pandaImageView.widthAnchor.constraint(equalToConstant: 300),
            pandaImageView.heightAnchor.constraint(equalToConstant: 400),
            pandaImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pandaImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            loveCount.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loveCount.centerYAnchor.constraint(equalTo: loveSlider.topAnchor, constant: -10),
            loveSlider.widthAnchor.constraint(equalToConstant: 300),
            loveSlider.heightAnchor.constraint(equalToConstant: 80),
            loveSlider.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loveSlider.centerYAnchor.constraint(equalTo: pandaImageView.bottomAnchor,constant: 90),
        ])
        
        if (UIAccessibility.isReduceMotionEnabled) {
            pandaImageView.image = UIImage(named: "panda2")
        } else {
            let animationImages = [UIImage(named: "panda.png")!, UIImage(named: "panda2.png")!, UIImage(named: "panda3.png")!, UIImage(named: "panda4.png")!]
            pandaImageView.animationImages = animationImages
            pandaImageView.animationDuration = 1.5
            pandaImageView.startAnimating()
        }
        
        
    }
    
    @objc func sliderValueDidChange(_ sender:UISlider!)
    {
        let roundedStepValue = round(sender.value / step) * step
        sender.value = roundedStepValue
        print("Slider step value \(Int(roundedStepValue))")
        loveCount.text = String(Int(roundedStepValue))
    }
}


