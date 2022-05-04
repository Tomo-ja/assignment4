//
//  DetailsViewController.swift
//  Assignment4
//
//  Created by Tomonao Hashiguchi on 2022-05-03.
//  Copyright © 2022 Derrick Park. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    // how to create a stack view
    // how to create a string label
    // create a function to create each label
    // display center
    // make it dainamik
    

    var propsContainerCountry = String()
    var propsContainerCity = String()
    var propsContainerTemperature = String()
    var propsContainerSummary = String()
    
    lazy var labelForCountry = createStaticLable(text: "Country")
    lazy var labelForCity = createStaticLable(text: "City")
    lazy var labelForTemperature = createStaticLable(text: "Temperature")
    lazy var labelForSummary = createStaticLable(text: "Summary")
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        // Do any additional setup after loading the view.
        setupLayout()
    }
    
    
    func setupLayout(){
        let targetCountry: UIImageView = {
            let img = UIImage(named: propsContainerCountry)
            let imgView = UIImageView(image: img)
            return imgView
        }()
        let targetCity: UILabel = {
            let label = UILabel()
            label.text = propsContainerCity
            label.textColor = .black
            label.font! = UIFont.boldSystemFont(ofSize: 14)
            label.font! = UIFont.systemFont(ofSize: 18)
            return label
        }()
        let targetTemperature: UILabel = {
            let label = UILabel()
            label.text = propsContainerTemperature
            label.textColor = .black
            label.font! = UIFont.boldSystemFont(ofSize: 14)
            label.font! = UIFont.systemFont(ofSize: 18)
            return label
        }()
        let targetSummary: UILabel = {
            let label = UILabel()
            label.text = propsContainerSummary
            label.textColor = .black
            label.font! = UIFont.boldSystemFont(ofSize: 14)
            label.font! = UIFont.systemFont(ofSize: 18)
            return label
        }()
        
        let stackView = UIStackView(arrangedSubviews: [
            UIView(),labelForCountry, targetCountry, labelForCity, targetCity, labelForTemperature, targetTemperature, labelForSummary, targetSummary, UIView()
        ])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .center
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        
        view.addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.7)
        ])
    }
    
    func createStaticLable(text: String)-> UILabel{
        let label = UILabel()
        label.text = text
        label.textColor = .black
        label.font! = UIFont.boldSystemFont(ofSize: 18)
        label.font! = UIFont.systemFont(ofSize: 14)
        return label
    }
    


}
