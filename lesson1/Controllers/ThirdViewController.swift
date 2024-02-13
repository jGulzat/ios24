//
//  ThirdViewController.swift
//  lesson1
//
//  Created by Gulzat Zheenbek kyzy on 9/2/24.
//

import UIKit

class ThirdViewController: UIViewController {
    
    private let segueButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 40, y: 100, width: 300, height: 60))
        button.setTitle("Show next view controller", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .cyan
        button.layer.cornerRadius = 16
    //    button.translatesAutoresizingMaskIntoConstraints = true
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .green
        
        view.addSubview(segueButton)
        
        segueButton.addTarget(self, action: #selector(showNextVC), for: .touchUpInside)
    }
    
    @objc func showNextVC(_ sender: UIButton) {
        print("showNextVC")
        
        navigationController?.popToRootViewController(animated: true)
        
     //   navigationController?.popViewController(animated: true)
        
//        let vc = ViewController()
//        navigationController?.pushViewController(vc, animated: true)
//
    }
}
