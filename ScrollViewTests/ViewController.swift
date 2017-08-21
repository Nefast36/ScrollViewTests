//
//  ViewController.swift
//  ScrollViewTests
//
//  Created by Raphael Zaafrani on 8/20/17.
//  Copyright © 2017 Raphael Zaafrani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    var imageArr = [UIImageView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      }
    
    override func viewDidAppear(_ animated: Bool) {
        var scrollViewWidth: CGFloat = 0.0
        let scrollBaseWidth = scrollView.frame.size.width
        view.addGestureRecognizer(scrollView.panGestureRecognizer)
        for x in 0...2{
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            imageArr.append(imageView)
            
            var newX: CGFloat = 0.0
            
            newX = scrollBaseWidth/2 + scrollBaseWidth * CGFloat(x)
            
            scrollView.addSubview(imageView)
            imageView.frame = CGRect(x: newX - 75, y: scrollView.frame.midY - 75, width: 150, height: 150)
            scrollViewWidth += newX
        }
        scrollView.clipsToBounds = false
        scrollView.contentSize = CGSize(width: scrollViewWidth, height: scrollView.frame.size.height)
        
    }

}
