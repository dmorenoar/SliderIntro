//
//  ViewController.swift
//  SliderIntro
//
//  Created by dmorenoar on 30/12/18.
//  Copyright © 2018 dmorenoar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var pageController: UIPageControl!
    
    @IBOutlet weak var scrollView: UIScrollView!

    var sliders:[Slider] = [
    Slider(bgSlider: UIImage(named: "bg")!, imgSlider: UIImage(named: "0")!, titleSlider: "EAT", descSlider: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy"),
    Slider(bgSlider: UIImage(named: "bg")!, imgSlider: UIImage(named: "1")!, titleSlider: "SLEEP", descSlider: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout."),
    Slider(bgSlider: UIImage(named: "bg")!, imgSlider: UIImage(named: "2")!, titleSlider: "CODE", descSlider: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy"),
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.delegate = self
        pageController.numberOfPages = sliders.count
        scrollView.isPagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.contentSize = CGSize(width: self.view.bounds.width * CGFloat(sliders.count), height: self.view.bounds.height)

        loadSlider()
    }
    
    func loadSlider(){
        
        for index in 0..<sliders.count {

            let view:SliderView = SliderView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.size.width, height: self.view.bounds.size.height), backgroundImg: sliders[index].bgSlider, imgSlider: sliders[index].imgSlider, titleSlider: sliders[index].titleSlider , descSlider: sliders[index].descSlider)

            //Para un slider con diferentes tipos de acciones recordad que podríamos usar el tag del botón asociandolo al index y en la función showVc presentar el view que necesitasemos.
            
            view.btnClick.addTarget(self, action: #selector(self.showVc), for: .touchUpInside)
            
            view.btnClick.isHidden = index == sliders.count - 1 ? false : true
            
            scrollView.addSubview(view)
            view.frame.size.width = self.view.bounds.size.width
            view.frame.origin.x = CGFloat(index) * self.view.bounds.size.width
            
        }
        
    }

    @objc func showVc(){
  
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "home")
       self.present(vc, animated: true, completion: nil)
 
    }
    
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        var pageNumber = scrollView.contentOffset.x / scrollView.frame.size.width
        pageController.currentPage = Int(pageNumber)
        
       
        
        
    }

    
    
    
}

