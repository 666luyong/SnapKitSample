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
    
    //Login UI
    var brandicon = UIImageView()
    var brandDesc = UITextField()
    
    var username = UITextField()
    var password = UITextField()
    var loginbut = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Login UI
        //self.initElements()
        //self.layoutElements()
        
        //Base Sample
        //self.learnSnapKit()
        
        //Add Refenerce
        self.highleveloperator()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func initElements() {
        brandicon.image = UIImage.init(named: "Stork100")
        self.view.addSubview(brandicon)
        
        brandDesc.text = "design change the world"
        brandDesc.textColor = UIColor.grayColor() //#232f40
        brandDesc.font = UIFont.boldSystemFontOfSize(18.0)
        self.view.addSubview(brandDesc)
        
        username.placeholder = "username"
        username.layer.borderColor = UIColor.darkGrayColor().CGColor
        username.layer.borderWidth = 0.5
        username.layer.cornerRadius = 5
        username.leftView = UIView(frame:CGRectMake(0, 0, 12, 12))
        username.leftViewMode = UITextFieldViewMode.Always
        self.view.addSubview(username)
        
        password.placeholder = "password"
        password.layer.borderColor = UIColor.grayColor().CGColor
        password.layer.borderWidth = 0.5
        password.layer.cornerRadius = 5
        password.leftView = UIView(frame:CGRectMake(0, 0, 12, 12))
        password.leftViewMode = UITextFieldViewMode.Always
        self.view.addSubview(password)
        
        loginbut.setTitle("Login", forState: UIControlState.Normal)
        loginbut.setTitleColor(UIColor.darkGrayColor(), forState: UIControlState.Normal)
//        loginbut.titleLabel!.font = UIFont(name: "YourfontName", size: 20)
        loginbut.layer.borderColor = UIColor.grayColor().CGColor
        loginbut.layer.borderWidth = 0.5
        loginbut.layer.cornerRadius = 5
        self.view.addSubview(loginbut)

    }
    
    func layoutElements() {
        let superview = self.view
        brandicon.snp_makeConstraints { (make) in
            make.top.equalTo(superview).offset(120)
            make.width.height.equalTo(100)
            make.centerX.equalTo(superview)
        }
        
        brandDesc.snp_makeConstraints { (make) in
            make.top.equalTo(brandicon.snp_bottom).offset(25)
            make.centerX.equalTo(superview)
        }
        
        username.snp_makeConstraints { (make) in
            make.top.equalTo(brandDesc.snp_bottom).offset(60)
            make.width.equalTo(220)
            make.height.equalTo(35)
            make.centerX.equalTo(superview)
        }
        
        password.snp_makeConstraints { (make) in
            make.top.equalTo(username.snp_bottom).offset(25)
            make.width.equalTo(220)
            make.height.equalTo(35)
            make.centerX.equalTo(superview)
        }
        
        loginbut.snp_makeConstraints { (make) in
            make.top.equalTo(password.snp_bottom).offset(35)
            make.width.equalTo(220)
            make.height.equalTo(35)
            make.centerX.equalTo(superview)
        }
    }
    
    
    //Learn Snapkit With Document [基础用法]
    func learnSnapKit(){
        
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
    
    
    var orangeBox = UIView()
    var topConstraint:Constraint?
    var actionBut = UIButton()
    
    func highleveloperator() {
        orangeBox.backgroundColor = UIColor.orangeColor()
        self.view.addSubview(orangeBox)
        
        orangeBox.snp_makeConstraints { (make) in
            make.width.height.equalTo(100)
            make.centerX.equalTo(self.view)
            self.topConstraint = make.top.equalTo(self.view).offset(100).constraint
        }
        
        actionBut.backgroundColor = UIColor.brownColor()
        actionBut.layer.borderWidth = 1
        actionBut.layer.borderColor = UIColor.grayColor().CGColor
        actionBut.layer.cornerRadius = 0.5
        actionBut.setTitle("移除约束", forState: UIControlState.Normal)
        actionBut.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        actionBut.addTarget(self, action:#selector(ViewController.btnTouch), forControlEvents: .TouchUpInside)
        //actionBut.userInteractionEnabled = true
        //actionBut.targetForAction(#selector(btnTouch), withSender: self)
        self.view.addSubview(actionBut)
        
        actionBut.snp_makeConstraints { (make) in
            make.top.equalTo(orangeBox.snp_bottom).offset(30)
            make.width.equalTo(220)
            make.height.equalTo(35)
            make.centerX.equalTo(self.view)
        }
    }
    
    func btnTouch() {
        print("come in")
        if actionBut.titleLabel?.text == "移除约束" {
            self.topConstraint?.uninstall()
            actionBut.setTitle("更新约束", forState: .Normal)
        }else{
            self.topConstraint?.activate()//Don't miss when used the uninstall before
            self.topConstraint?.updateOffset(200)
            view.layoutIfNeeded()
            actionBut.setTitle("移除约束", forState: .Normal)
        }
    
    }
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
        self.orangeBox.snp_updateConstraints { (make) in
            make.width.equalTo(self.view)
        }
    }
}



























