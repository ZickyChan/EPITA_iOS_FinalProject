//
//  ViewController.swift
//  FinalProject
//
//  Created by Zick on 12/30/17.
//  Copyright © 2017 EPITA. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    var passedValue: [String] = ["","","",""];
    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var titleRanger: UILabel!
    @IBOutlet weak var subtitle: UILabel!
    @IBOutlet weak var created_time: UILabel!
    
    @IBOutlet weak var descript: UILabel!
    
    @IBOutlet weak var img: UIImageView!
    
    override func viewDidLoad() {
        titleRanger.text = passedValue[0];
        subtitle.text = passedValue[1];
        created_time.text = passedValue[2];
        descript.text = passedValue[3];
        descript.sizeToFit()
        
        let imgSet = self.resizeImage(image: self.setImage(name: passedValue[0],type: "jpg"),targetWidth: img.frame.size.width)
        
        img.image = imgSet
        
        print("y: \(descript.frame.origin.y) height: \(descript.frame.size.height)")
        
        scrollView.contentSize = CGSize(width: contentView.frame.size.width , height: (descript.frame.origin.y + descript.frame.size.height + 35))
        scrollView.isScrollEnabled = true
        scrollView.isPagingEnabled = false
        scrollView.delegate = self
        scrollView.bounces = false
        scrollView.decelerationRate = UIScrollViewDecelerationRateFast
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.isUserInteractionEnabled = true
        
        print(" content size \(scrollView.contentSize.height)")
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //This function is used to set the image
    
    func setImage(name: String, type: String) -> UIImage{
        let imgURL = Bundle.main.path(forResource: name, ofType: type)
        let img = UIImage(contentsOfFile: imgURL!)
        return img!
    }
    
    //This function is used to resize the image
    func resizeImage(image: UIImage, targetWidth: CGFloat) -> UIImage {
        let size = image.size
        
        let targetHeight = targetWidth * size.height / size.width
        
        
        //This is the new size
        let newSize = CGSize(width: targetWidth,  height: targetHeight)
        
        // This is the rect that we've calculated out and this is what is actually used below
        let rect = CGRect(x: 0, y: 0, width: newSize.width, height: newSize.height)
        
        
        // Actually do the resizing to the rect using the ImageContext stuff
        UIGraphicsBeginImageContextWithOptions(newSize, false, 1.0)
        image.draw(in: rect)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return newImage!
    }

}

