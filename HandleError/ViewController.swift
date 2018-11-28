//
//  ViewController.swift
//  HandleError
//
//  Created by Anilkumar on 27/11/18.
//  Copyright © 2018 Anilkumar. All rights reserved.
//

import UIKit

enum StudentError: Error {
    case invalid(String)
    case tooShort
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        do{
            var s = try Student(name: nil)
        }
        catch let error
        {
            print(error)
        }
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    
    
    
}
class Student {
    var name: String?
    init(name: String?) throws {
        guard let name = name else{
            throw StudentError.invalid("Invalid")
        }
        self.name = name }
    
    func myName(str: String) throws -> String {
        
        guard str.count > 5
            else{
                throw StudentError.tooShort
        }
        
        return "My name is \(str)"
    }
}

