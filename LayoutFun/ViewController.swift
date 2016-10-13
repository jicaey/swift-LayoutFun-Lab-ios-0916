//
//  ViewController.swift
//  LayoutFun
//
//  Created by James Campagno on 8/31/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    let redView = UIView(frame: CGRect.zero)
    let orangeView = UIView(frame: CGRect.zero)
    let yellowView = UIView(frame: CGRect.zero)
    let greenView = UIView(frame: CGRect.zero)
    let blueView = UIView(frame: CGRect.zero)
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.black
        
        turnOffAutoResizingOnAllViews()
        setupTheConstraints()
        
        setupColors()
        
        self.view.addSubview(redView)
        self.view.addSubview(orangeView)
        self.view.addSubview(yellowView)
        self.view.addSubview(greenView)
        self.view.addSubview(blueView)
     
        
        

    }
    
}

// MARK: Constraints
extension ViewController {
    
    func setupTheConstraints() {
        // TODO: Create all the constraints (in code) for the various views
        redView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        redView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        redView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        redView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        
        orangeView.widthAnchor.constraint(equalTo: redView.widthAnchor, multiplier: 0.75).isActive = true
        orangeView.heightAnchor.constraint(equalTo: redView.heightAnchor, multiplier: 0.75).isActive = true
        orangeView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        orangeView.bottomAnchor.constraint(equalTo: redView.topAnchor).isActive = true
        
        yellowView.widthAnchor.constraint(equalTo: orangeView.widthAnchor, multiplier: 0.75).isActive = true
        yellowView.heightAnchor.constraint(equalTo: orangeView.heightAnchor, multiplier: 0.75).isActive = true
        yellowView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        yellowView.bottomAnchor.constraint(equalTo: orangeView.topAnchor).isActive = true
        
        greenView.widthAnchor.constraint(equalTo: yellowView.widthAnchor, multiplier: 0.75).isActive = true
        greenView.heightAnchor.constraint(equalTo: yellowView.heightAnchor, multiplier: 0.75).isActive = true
        greenView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        greenView.bottomAnchor.constraint(equalTo: yellowView.topAnchor).isActive  = true
        
        blueView.widthAnchor.constraint(equalTo: greenView.widthAnchor, multiplier: 0.75).isActive = true
        blueView.heightAnchor.constraint(equalTo: greenView.heightAnchor, multiplier: 0.75).isActive = true
        blueView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        blueView.bottomAnchor.constraint(equalTo: greenView.topAnchor).isActive = true
        
    }
    
    
    
    func turnOffAutoResizingOnAllViews() {
        [redView, orangeView, yellowView, greenView, blueView].forEach { colorView in
            colorView.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(colorView)
        }
    }
    
}


// MARK: Setting up Views
extension ViewController {
    
    func setupColors() {
        redView.backgroundColor = UIColor(red: 0.3569, green: 0, blue: 0, alpha: 1.0)
        orangeView.backgroundColor = UIColor(red: 0.5294, green: 0.2824, blue: 0, alpha: 1.0)
        yellowView.backgroundColor = UIColor(red: 0.749, green: 0.698, blue: 0, alpha: 1.0)
        greenView.backgroundColor = UIColor(red: 0, green: 0.5294, blue: 0.4039, alpha: 1.0)
        blueView.backgroundColor = UIColor(red: 0, green: 0.4824, blue: 0.549, alpha: 1.0)
//        redView.backgroundColor = UIColor.red
//        orangeView.backgroundColor = UIColor.orange
//        yellowView.backgroundColor = UIColor.yellow
//        greenView.backgroundColor = UIColor.green
//        blueView.backgroundColor = UIColor.blue
    }
}
