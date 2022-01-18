//
//  ViewController.swift
//  NavBarItems
//
//  Created by Vanesa Korbenfeld on 11/01/2022.
//

import UIKit

class ViewController: UIViewController {
    let button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Bar Items"
        view.backgroundColor = .systemPink
        
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        button.setTitle("Go To The Second View Controller", for: .normal)
        //Constraints
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        button.addTarget(self, action: #selector(onTappedButton), for: .touchUpInside)
        
        configureItems()
        
    }
    
    @objc func onTappedButton(){
        let secondViewController = SecondViewController()
        let navController = UINavigationController(rootViewController: secondViewController)
        navController.modalPresentationStyle = .fullScreen
        present(navController, animated: true)
    }

    private func configureItems(){
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(
            barButtonSystemItem: .add,
            target: self,
            action: nil)
    }
}

