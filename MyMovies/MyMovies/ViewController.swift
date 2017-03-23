//
//  ViewController.swift
//  MyMovies
//
//  Created by Student on 3/23/17.
//  Copyright © 2017 Arthur Sampaio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tittle: UITextField!
    
    
    @IBOutlet weak var diretorTextField: UITextField!
    
    @IBOutlet weak var yearTextField: UITextField!
    
    var ano : Int16 {
        
        if let text = yearTextField.text {
            if let intValue = Int16(text){
                return intValue
            }
        }
        return 0
    }
    
    @IBAction func addMovie(_ sender: Any) {
        
        let titulo = tittle.text
        let diretor = diretorTextField.text
    
        let newMovie = Movie()
        newMovie.tittle = titulo
        newMovie.director = diretor
        newMovie.ano = self.ano
        
        if MovieDAO.addMovie(newMovie){
            print ("Filme \(newMovie.tittle) foi adicionado com sucesso")
        }else{
            print ("Não foi possível adicionar o filme \(newMovie.tittle)")
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

