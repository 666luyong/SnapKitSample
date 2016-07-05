//
//  ViewController.swift
//  SnapkitSample
//
//  Created by chenkai on 16/7/3.
//  Copyright © 2016年 chenkai. All rights reserved.
//

import UIKit
import SnapKit


class ViewController: UIViewController {
    var graybox = UIView();
    var orangebox = UIView()
    
    var bluebox = UIView()
    var redbox = UIView()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let superview = self.view;
        graybox.backgroundColor = UIColor.grayColor();
        superview.addSubview(graybox);
        
        orangebox.backgroundColor = UIColor.orangeColor();
        superview.addSubview(orangebox);
        
        bluebox.backgroundColor = UIColor.blueColor();
        superview.addSubview(bluebox);
        
        redbox.backgroundColor = UIColor.redColor();
        superview.addSubview(redbox);
        
        
//        box.snp_makeConstraints { (make) in
//            make.top.equalTo(superview).offset(20)
//            make.left.equalTo(superview).offset(20)
//            make.width.equalTo(200)
//            make.height.equalTo(200)
//        }
        
        //Better Way
        graybox.snp_makeConstraints { (make) in
            make.width.height.equalTo(200)
            make.top.left.equalTo(superview).offset(20)
        }
        
        orangebox.snp_makeConstraints { (make) in
            make.width.height.equalTo(100)
            make.right.equalTo(graybox)
            make.bottom.equalTo(graybox)
        }
        
        bluebox.snp_makeConstraints { (make) in
            make.top.equalTo(orangebox.snp_bottom).offset(20)
            make.left.equalTo(superview).offset(20)
            make.right.equalTo(superview).offset(-20)
            make.height.equalTo(50)
        }
        
        redbox.snp_makeConstraints { (make) in
            make.top.equalTo(bluebox.snp_bottom)
            make.left.equalTo(superview).offset(20)
            make.right.equalTo(superview).offset(-20)
            make.height.equalTo(50)
        }
        
        //内位移修正
        orangebox.snp_remakeConstraints { (make) in
//            make.edges.equalTo(graybox).inset(UIEdgeInsetsMake(20, 20, 20, 20))
            make.center.equalTo(graybox);
            make.size.equalTo(graybox).multipliedBy(0.5)
        }
        
//        //外位移修正
//        orangebox.snp_remakeConstraints { (make) in
//            make.size.equalTo(graybox).offset(CGSizeMake(150, 50))
//        }
        
        
//        box.snp_makeConstraints { (make) in
//            make.width.height.equalTo(200)
//            make.edges.equalTo(superview).inset(UIEdgeInsetsMake(20, 20, 0, 0))
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

