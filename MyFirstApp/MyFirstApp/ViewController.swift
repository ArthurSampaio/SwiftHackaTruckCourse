//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Student on 3/15/17.
//  Copyright © 2017 Arthur Sampaio. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    

//n adasda
    
    
    @IBOutlet weak var firstNameField: UITextField!
    
    @IBOutlet weak var middleNameField: UITextField!

    
    @IBOutlet weak var lastNameField: UITextField!
    
    
    @IBOutlet weak var fullNameLabel: UILabel!
    
    
    @IBAction func addUser() {
        
        let first = self.firstNameField.text
        let middle = self.middleNameField.text
        let last = self.middleNameField.text
        
        self.fullNameLabel.text = "\(first!) \(middle!) \(last!)"
        
        self.firstNameField.text = ""
        self.middleNameField.text = ""
        self.lastNameField.text = ""
        
        
    }
    
}

