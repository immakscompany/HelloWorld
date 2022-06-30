//
//  ViewController.swift
//  HelloWorld
//
//  Created  by MAXX on 26.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var greetingLable: UILabel!
    @IBOutlet var greetingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLable.isHidden = true
        greetingButton.layer.cornerRadius = 10
    }

    @IBAction func greetingButtonTapped() {
        greetingLable.isHidden.toggle()
        greetingButton.setTitle(
            greetingLable.isHidden ? "Show Greeting" : "Hide Greeting",
            for: .normal
        )
        
    }
    
}

 
