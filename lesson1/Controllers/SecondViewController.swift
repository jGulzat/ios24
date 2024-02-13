//
//  SecondViewController.swift
//  lesson1
//
//  Created by Gulzat Zheenbek kyzy on 9/2/24.
//

import UIKit

class SecondViewController: UIViewController {

    private let segueButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 40, y: 100, width: 300, height: 60))
        button.setTitle("Show next view controller", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .cyan
        button.layer.cornerRadius = 16
    //    button.translatesAutoresizingMaskIntoConstraints = true
        return button
    }()
    
    private let emailLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    /// first
//    private let email: String
//
//    init(email: String) {
//
//        self.email = email
//
//        super.init(nibName: nil, bundle: nil)
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    /// second
    var email: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        view.addSubview(segueButton)
        
        segueButton.addTarget(self, action: #selector(showNextVC), for: .touchUpInside)
        
        view.addSubview(emailLabel)
        NSLayoutConstraint.activate([
            emailLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            emailLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        emailLabel.text = email
    }
    
    @objc func showNextVC(_ sender: UIButton) {
        print("showNextVC")
        
        let vc = ThirdViewController()
        navigationController?.pushViewController(vc, animated: true)
    }

}
