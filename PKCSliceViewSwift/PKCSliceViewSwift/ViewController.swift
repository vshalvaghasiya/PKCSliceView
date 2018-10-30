//
//  ViewController.swift
//  PKCSliceViewSwift
//
//  Created by vishal on 07/02/18.
//  Copyright © 2018 Vishal. All rights reserved.
//

import UIKit
import PKCSlice
class ViewController: UIViewController , PKCSliceDelegate {
    
    @IBOutlet var myview: UIView!
    @IBOutlet var mySliceView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        var views = [UIView]()
        views.append(myview)
        let view1 = UIView()
        views.append(view1)
        print(views.count)
        let sliceView = PKCSlice(self.mySliceView, views: views, inclination: -50)
        sliceView.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pkcSliceTouch(_ index: Int) {
        print(index)
    }
}
