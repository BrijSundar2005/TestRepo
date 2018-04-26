//
//  ViewController.swift
//  closerDemo
//
//  Created by Mac on 02/04/18.
//  Copyright © 2018 WebITExpert. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
     
        onCloserCall(value: true, Sucess: {() -> Void in
            
            print("Sucess block call")
        }, fail: {() -> Void in
            
            print("fail block call")
            
        })
        
        let result = test(10, 20)
        print("Result=\(result)")
        
        
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
     
    }
    
    
    func onCloserCall(value: Bool , Sucess: () -> Void , fail: () -> Void)
    {
        if value
        {
            Sucess()
        }
        else{
            fail()
        }
    }
    
    var test  =  { (num1: Int, num2:Int) -> Int in
        
        
        return num1 * num2
        // test
    }

}

