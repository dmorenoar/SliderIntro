//
//  Slider.swift
//  SliderIntro
//
//  Created by dmorenoar on 30/12/18.
//  Copyright © 2018 dmorenoar. All rights reserved.
//

import Foundation
import UIKit

class Slider {
    var bgSlider:UIImage = UIImage()
    var imgSlider:UIImage = UIImage()
    var titleSlider:String
    var descSlider:String
    
    init(bgSlider:UIImage, imgSlider:UIImage, titleSlider:String, descSlider:String) {
        self.bgSlider = bgSlider
        self.imgSlider = imgSlider
        self.titleSlider = titleSlider
        self.descSlider = descSlider
    }
    
}
