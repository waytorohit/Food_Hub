//
//  ReviewVC.swift
//  Food_Hub
//
//  Created by Rohit on 11/29/17.
//  Copyright © 2017 Rohit. All rights reserved.
//

import UIKit

class ReviewVC: UIViewController {
    
    @IBOutlet weak var backGround_ImgView: UIImageView!
    
    @IBOutlet weak var containerView: UIView!
    
    var restaurant: Restaurant!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // bLur and transform effetct on image view
        let blurEffect = UIBlurEffect(style:	UIBlurEffectStyle.dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backGround_ImgView.addSubview(blurEffectView)
        
        containerView.transform = CGAffineTransform.init(scaleX: 0, y: 0)
        let	scaleTransform = CGAffineTransform.init(scaleX:	0,y: 0)
        let	translateTransform = CGAffineTransform.init(translationX: 0,  y: -1000)
        let	combineTransform = scaleTransform.concatenating(translateTransform)
        containerView.transform	= combineTransform
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 0.3, animations: {self.containerView.transform = CGAffineTransform.identity})
        UIView.animate(withDuration: 0.4, delay: 0.0, usingSpringWithDamping: 0.3,
                       initialSpringVelocity: 0.2, options: .curveEaseInOut,	animations:	{
                        self.containerView.transform = CGAffineTransform.identity},	completion:	nil)
    }

    
   

    

}













