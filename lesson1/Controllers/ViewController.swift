//
//  ViewController.swift
//  lesson1
//
//  Created by Gulzat Zheenbek kyzy on 9/2/24.
//

import UIKit

class ViewController: UIViewController {
    
    private let segueButton: UIButton = {
        let button = UIButton()
        button.setTitle("Show next view controller", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .cyan
        button.layer.cornerRadius = 16
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        configureSegueButton()
    }
    
    private func configureSegueButton() {
        
        view.addSubview(segueButton)
        
        NSLayoutConstraint.activate([
            segueButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            segueButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            segueButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            segueButton.heightAnchor.constraint(equalToConstant: 60)
        ])
        
        segueButton.addTarget(self, action: #selector(showNextVC), for: .touchUpInside)
    }
    
    @objc func showNextVC(_ sender: UIButton) {
        print("showNextVC")
        
        let vc = SecondViewController(data: "data")
        print("SecondViewController lesson1")
        navigationController?.pushViewController(vc, animated: true)
    }
}


