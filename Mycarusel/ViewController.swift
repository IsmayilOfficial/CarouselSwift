 //
//  ViewController.swift
//  Mycarusel
//
//  Created by Ismayil Tahmazov on 11.06.2020.
//  Copyright © 2020 Ismayil Tahmazov. All rights reserved.
//
import iCarousel
import UIKit

class ViewController: UIViewController, iCarouselDataSource {
    
    let myCarausel: iCarousel = {
        
        let view = iCarousel()
        
        view.type = .rotary
        
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myCarausel)
        myCarausel.dataSource = self
        myCarausel.autoscroll = -0.5
        myCarausel.frame = CGRect(x: 0,
                                  y: 200,
                                  width: view.frame.size.width,
                                  height: 400)
    }

    func numberOfItems(in carousel: iCarousel) -> Int {
        return 3
    }

    func carousel(_ carousel: iCarousel, viewForItemAt index: Int, reusing view: UIView?) -> UIView {
        let view = UIView(frame:CGRect(x: 0, y: 0, width: self.view.frame.size.width/1.4, height: 300))
        view.backgroundColor = .red
        
        let imageview = UIImageView(frame: view.bounds)
        view.addSubview(imageview)
        imageview.contentMode = .scaleAspectFit
        imageview.image = UIImage(named: "pic\(index+1)")
        return view
    }
}

