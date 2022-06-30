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
        greetingButton.configuration = setupButton(with: "Show Greeting")
    }

    @IBAction func greetingButtonTapped() {
        greetingLable.isHidden.toggle()
        greetingButton.configuration = setupButton(
            with: greetingLable.isHidden ? "Show Greeting" : "Hide Greeting"
        )
        
    }
    private func setupButton(with title: String) -> UIButton.Configuration {
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.baseBackgroundColor = #colorLiteral(red: 0.4116370678, green: 0.2628445327, blue: 1, alpha: 1)
        buttonConfiguration.title = title
        buttonConfiguration.buttonSize = .large
        buttonConfiguration.cornerStyle = .large
        buttonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 31)
        return buttonConfiguration
    }
}

 
