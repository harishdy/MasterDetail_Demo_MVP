//
//  Model.swift
//  MasterDetail_Demo
//
//  Created by Harish on 12/2/18.
//  Copyright © 2018 Harish. All rights reserved.
//

import Foundation
struct Model<T> {
    private var objects = [T]()
    mutating func insert(_ element:T){
        self.objects.insert(element, at: 0)
    }
    mutating func remove(at index:Int){
        guard objects.indices.contains(index) else{
            return
        }
        objects.remove(at: index)
    }
    var count : Int{
        return objects.count
    }
    
    subscript(index:Int) -> T?{
        return objects.indices.contains(index) ? objects[index] : nil
    }
}
