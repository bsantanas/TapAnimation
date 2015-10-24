//
//  ViewController.swift
//  TapTutorial
//
//  Created by Bernardo Santana on 10/23/15.
//  Copyright (c) 2015 Bernardo Santana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var tapView:TapView?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tapView = TapView(frame: randomPosition())
        tapView?.reveal()
        view.addSubview(tapView!)
        let tap = UITapGestureRecognizer(target: self, action: "moveTap")
        view.addGestureRecognizer(tap)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func moveTap() {
        tapView?.frame = randomPosition()
    }
    
    func randomPosition() -> CGRect {
        let x = min(CGFloat(arc4random_uniform(UInt32(view.frame.width))),view.frame.width - 40)
        let y = min(CGFloat(arc4random_uniform(UInt32(view.frame.height))),view.frame.height - 40)
        return CGRectMake(x, y, 40, 40)
    }

}

