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
    
    private let emailTF: UITextField = {
       let tf = UITextField()
        tf.layer.cornerRadius = 16
        tf.textColor = .black
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = .systemGray4
        
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 24, height: 8))
        tf.leftView = view
        tf.leftViewMode = .always
        return tf
    }()
    
//    private let emailTF = MakerView().makerTextField(backgroundColor: .systemGray4)
    
    private let emailLabel = MakerView().makerLabel(
        text: "Email labelbvh fbvhfbvhfbvhfbv hfbvhfbvhf bvhfbvhf_ios",
        size: 32,
        textAlignment: .left,
        numberOfLines: 0,
        lineBreakMode: .byWordWrapping
    )
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        configureSegueButton()
        configureEmailTF()
        configureEmailLabel()
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
    
    private func configureEmailTF() {
        view.addSubview(emailTF)
        
        NSLayoutConstraint.activate([
            emailTF.topAnchor.constraint(equalTo: segueButton.bottomAnchor, constant: 24),
            emailTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            emailTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            emailTF.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    
    private func configureEmailLabel() {
        view.addSubview(emailLabel)
        
        NSLayoutConstraint.activate([
            emailLabel.topAnchor.constraint(equalTo: emailTF.bottomAnchor, constant: 24),
            emailLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            emailLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
          //  emailLabel.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    
    @objc func showNextVC(_ sender: UIButton) {
        print("showNextVC")
        
        let email = emailTF.text
//        // init
//        let vc = SecondViewController(email: email ?? "default value")
//        
//        //
//        print("email: \(email)")
        
        let vc = SecondViewController()
        
        vc.email = email ?? "default value"
        
        print("SecondViewController lesson1")
        navigationController?.pushViewController(vc, animated: true)
    }
}


