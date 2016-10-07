//
//  DashboardCarouselView.swift
//  CarouselTest
//
//  Created by Brad Woodard on 10/7/16.
//  Copyright © 2016 elementC. All rights reserved.
//

import UIKit

class DashboardCarouselView: UIView {
    
    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var headlineBackgroundView: UIView!
    
    class func instanceFromNib() -> UIView {
        return UINib(nibName: "DashboardCarouselView", bundle: nil).instantiate(withOwner: nil, options: nil).first as! UIView
    }
    
//    private func loadXIB() {
//        let view = Bundle.main.loadNibNamed("DashboardCarouselView", owner: self, options: nil)?.first as! UIView
//        //let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView//nib.instantiate(withOwner: self, options: nil)[0] as! UIView
//        view.frame = bounds
//        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
//        setupView()
//        self.addSubview(view);
//    }

    
    func setupView() {
        let view = DashboardCarouselView.instanceFromNib()
        self.addSubview(view)
        contentView.backgroundColor = UIColor.lightGray
        headlineBackgroundView.layer.shadowOpacity = 0.7
        headlineBackgroundView.layer.shadowOffset = CGSize(width: 0.0, height: 10.0)
        
        
    }
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
