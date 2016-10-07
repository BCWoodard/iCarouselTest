//
//  ViewController.swift
//  CarouselTest
//
//  Created by Brad Woodard on 10/7/16.
//  Copyright © 2016 elementC. All rights reserved.
//

import UIKit

class ViewController: UIViewController, iCarouselDataSource {
    
    var dashboardCarouselView: DashboardCarouselView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let carousel = iCarousel(frame: CGRect(x: 0, y: 84, width: view.frame.size.width, height: 200))
        carousel.dataSource = self
        carousel.delegate = self
        carousel.type = .linear
        carousel.isPagingEnabled = true
        carousel.centerItemWhenSelected = true
        
        view.addSubview(carousel)
    }
    
    func numberOfItems(in carousel: iCarousel) -> Int {
        return 3
    }
    
    func carousel(_ carousel: iCarousel, viewForItemAt index: Int, reusing view: UIView?) -> UIView {
        
        let imageView: UIImageView
        
        if view != nil {
            imageView = view as! UIImageView
        } else {
            imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 295, height: 180))
        }
        
        imageView.image = UIImage(named: "test")
        
        return imageView
    

    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController : iCarouselDelegate {
    
    func carousel(_ carousel: iCarousel, valueFor option: iCarouselOption, withDefault value: CGFloat) -> CGFloat {
        if option == .spacing {
            return value * 1.1
        }
        
        return value
        
    }
}
