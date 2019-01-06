//
//  Binding.swift
//  MasterDetail_Demo
//
//  Created by Harish on 12/2/18.
//  Copyright © 2018 Harish. All rights reserved.
//

import Foundation
class Obserable<T>{
    var bind: (T) -> () =  {_ in}
    var value :T{
        didSet{
            bind(value)
        }
    }
    init(_ value :T){
        self.value = value
    }
}
