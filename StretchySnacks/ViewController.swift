//
//  ViewController.swift
//  StretchySnacks
//
//  Created by Shaun Campbell on 2016-10-13.
//  Copyright © 2016 Shaun Campbell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var navBarHeight: NSLayoutConstraint!
    @IBOutlet weak var navBar: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        let stackView = UIStackView(frame: self.view.frame)
        stackView.backgroundColor = .blue
//        stackView.axis = .horizontal
//        stackView.distribution = .fillEqually
//        stackView.alignment = .fill
//        stackView.spacing = 5
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//        stackView.widthAnchor.constraint(equalToConstant: view.frame.width)
//        stackView.heightAnchor.constraint(equalToConstant: view.frame.height)
//        stackView.topAnchor.constraint(equalTo: view.topAnchor)
//        stackView.rightAnchor.constraint(equalTo: view.rightAnchor)
        
        view.addSubview(stackView)
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addButtonPressed(_ sender: UIButton) {
        
        
        if navBarHeight.constant <= 64 {
            navBarHeight.constant = 200
        }else{
            navBarHeight.constant = 64
        }
        
        
            UIView.animate(withDuration: 1,
                                  delay: 0,
                 usingSpringWithDamping: 0.3,
                  initialSpringVelocity: 5,
                                options: [],
                             animations: {
                            
                self.view.layoutIfNeeded()
                            
            }, completion: nil)
        
    }
    
    lazy var snackViews:[UIImageView] = {
        let imageNames = ["oreos", "pop_tarts", "popsicle", "pizza_pockets", "ramen"]
        
        var imageViews = [UIImageView]()
        
//        var thisfucking = UIImageView()
//        
//        thisfucking
        
        for name in imageNames{
            var imageView = UIImageView()
            imageView.frame.size = CGSize(width: 50, height: 50)
            imageView.backgroundColor = .red
            imageView.translatesAutoresizingMaskIntoConstraints = false
            imageView.contentMode = .scaleAspectFill
            imageView.clipsToBounds = true
            imageView.heightAnchor.constraint(equalToConstant: self.navBar.frame.height - 20)
            imageView.widthAnchor.constraint(equalToConstant: self.navBar.frame.width/CGFloat(1+imageNames.count))
            
            imageViews.insert(imageView, at: 0)
        }
        return imageViews
    }()

}

