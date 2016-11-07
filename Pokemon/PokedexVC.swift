//
//  PokedexVC.swift
//  Pokemon
//
//  Created by YAUHENI IVANIUK on 11/7/16.
//  Copyright © 2016 be connected club. All rights reserved.
//

import UIKit

class PokedexVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var caughtPokemons: [Pokemon] = []
    var uncaughtPokemons: [Pokemon] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        caughtPokemons = getAllCaughtPokemons()
        uncaughtPokemons = getAllUncaughtPokemons()

        // Do any additional setup after loading the view.
    }

    @IBAction func mapBtn(_ sender: Any) {
    
    dismiss(animated: true, completion: nil)
    
    }
    
}
