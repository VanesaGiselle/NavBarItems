//
//  SecondViewController.swift
//  NavBarItems
//
//  Created by Vanesa Korbenfeld on 11/01/2022.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    var button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        button.setTitle("Go To The First View Controller", for: .normal)
        
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        button.addTarget(self, action: #selector(onTappedButton), for: .touchUpInside)
 
        createNavigationBar()
    }
    
    @objc private func onTappedButton(){
        //Presentando sin navigation bar.
        let vc = ViewController()
        vc.button.setTitle("Second View Controller me cambio el valor", for: .normal)
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    func createNavigationBar(){
        self.title = "Second Nav"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(
            barButtonSystemItem: .cancel,
            target: self,
            action: #selector(onTappedItem))
    }
    
    @objc func onTappedItem(){
        dismiss(animated: true)
    }
}


