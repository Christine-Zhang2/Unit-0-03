// Created on: Jan-2018
// Created by: Christine Zhang
// Created for: ICS3U
// This program is the UIKit solution for the Address program
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let nameLabel = UILabel()
    let cityLabel = UILabel()
    let countryLabel = UILabel()
    let cityNameCountryButton = UIButton()
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        
        cityLabel.textColor =  #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(cityLabel)
        cityLabel.translatesAutoresizingMaskIntoConstraints = false
        cityLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        cityLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        nameLabel.textColor =  #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nameLabel.bottomAnchor.constraint(equalTo: cityLabel.topAnchor, constant: -20).isActive = true
        
        countryLabel.textColor =  #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(countryLabel)
        countryLabel.translatesAutoresizingMaskIntoConstraints = false
        countryLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        countryLabel.topAnchor.constraint(equalTo: cityLabel.bottomAnchor, constant: 20).isActive = true
        
        
        cityNameCountryButton.setTitle("Click me", for: UIControlState.normal)
        cityNameCountryButton.setTitleColor(.blue, for: .normal)
        cityNameCountryButton.addTarget(self, action: #selector(showText), for: .touchUpInside)
        view.addSubview(cityNameCountryButton)
        cityNameCountryButton.translatesAutoresizingMaskIntoConstraints = false
        cityNameCountryButton.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        cityNameCountryButton.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
    }
    
    @objc func showText() {
        // show text
        
        cityLabel.text = "Ottawa"
        nameLabel.text = "Christine Zhang"
        countryLabel.text = "Canada"
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
