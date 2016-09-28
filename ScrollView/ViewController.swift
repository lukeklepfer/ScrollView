//
//  ViewController.swift
//  ScrollView
//
//  Created by Luke Klepfer on 9/26/16.
//  Copyright © 2016 Luke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var images = [UIImageView]()
    
    @IBOutlet weak var scrollView: UIScrollView!


    override func viewDidAppear(_ animated: Bool) {
        
        var contentWidth: CGFloat = 0
        
        for x in 0...2 {
            
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image:image)
            images.append(UIImageView(image:image))
            
            var newX: CGFloat = 0.0
            newX = scrollView.frame.size.width / 2 + scrollView.frame.size.width * CGFloat(x)
            
            contentWidth += newX
            
            scrollView.addSubview(imageView)
            scrollView.clipsToBounds = false
            
            imageView.frame = CGRect(x: newX - 75, y: (scrollView.frame.size.height / 2) - 75, width: 150, height: 150) // we made up the width an height. and offset the x and y by half so it would show up correctly. 150 - 75
            
        }
        
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.height)
        
        
    }

}

