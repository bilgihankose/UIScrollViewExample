//
//  ViewController.swift
//  UIScrollViewExample
//
//  Created by Bilgihan Köse on 3.06.2020.
//  Copyright © 2020 Bilgihan Kose. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let labelOne: UILabel = {
        let label = UILabel()
        label.text = "Scroll Top"
        label.backgroundColor = .red
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let labelTwo: UILabel = {
        let label = UILabel()
        label.text = "Scroll Bottom"
        label.backgroundColor = .green
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        view.addSubview(labelOne)
        labelOne.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        labelOne.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        let screensize: CGRect = UIScreen.main.bounds
        let screenWidth = screensize.width
        let screenHeight = screensize.height
        var scrollView: UIScrollView!
        scrollView = UIScrollView(frame: CGRect(x: 0, y: 120, width: screenWidth, height: screenHeight))
        scrollView.showsVerticalScrollIndicator = false

        scrollView.addSubview(labelTwo)

        NSLayoutConstraint(item: labelTwo, attribute: .leading, relatedBy: .equal, toItem: scrollView, attribute: .leadingMargin, multiplier: 1, constant: 10).isActive = true
        NSLayoutConstraint(item: labelTwo, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 200).isActive = true
        NSLayoutConstraint(item: labelTwo, attribute: .top, relatedBy: .equal, toItem: scrollView, attribute: .topMargin, multiplier: 1, constant: 10).isActive = true
        NSLayoutConstraint(item: labelTwo, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 30).isActive = true

        scrollView.contentSize = CGSize(width: screenWidth, height: 2000)
        view.addSubview(scrollView)
    }


}

