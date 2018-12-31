//
//  SliderView.swift
//  SliderIntro
//
//  Created by dmorenoar on 30/12/18.
//  Copyright © 2018 dmorenoar. All rights reserved.
//

import UIKit

class SliderView: UIView {

    
    @IBOutlet var containerView: UIView!
    
    @IBOutlet weak var backgroundImg: UIImageView!
    
    @IBOutlet weak var imgSlider: UIImageView!
    
    @IBOutlet weak var titleSlider: UILabel!
    
    @IBOutlet weak var descSlider: UILabel!

    @IBOutlet weak var btnClick: UIButton!
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        print("entro al init normal")
    }
    
    convenience init(frame: CGRect, backgroundImg:UIImage, imgSlider:UIImage, titleSlider:String, descSlider:String) {
        self.init(frame: frame)
        
         print("entro al conveniecn")

        setupView(backgroundImg: backgroundImg, imgSlider: imgSlider, titleSlider: titleSlider, descSlider: descSlider)
      
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        print("entro al adecoder")
    }
    
    
    func setupView(backgroundImg: UIImage, imgSlider: UIImage, titleSlider: String, descSlider: String) {
        
        Bundle.main.loadNibNamed("UIViewSlider", owner: self, options: nil)
        
        self.backgroundImg.image =  backgroundImg
        self.imgSlider.image = imgSlider
        self.titleSlider.text = titleSlider
        self.descSlider.text = descSlider
        self.btnClick.isHidden = true
        self.btnClick.layer.cornerRadius = 20
        
        containerView.frame = self.bounds
        
        self.addSubview(containerView)
    }

}
