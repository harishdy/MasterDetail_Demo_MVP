//
//  Presenter.swift
//  MasterDetail_Demo
//
//  Created by Harish on 12/2/18.
//  Copyright © 2018 Harish. All rights reserved.
//

import Foundation
class Presenter{
    private var myModel = Model<Obserable<Date>>()
    
    func addEntry(){
        let dateObserable = Obserable(Date())
        myModel.insert(dateObserable)
        dateObserable.bind = {_ in NotificationCenter.default.post(Notification(name: Notification.Name(rawValue: "updateUI")))}
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + .seconds(5)) {
            dateObserable.value = Date()
        }
    }
    var count :Int{
        return myModel.count
    }
    func remove(at index:Int){
        self.myModel.remove(at: index)
    }
    subscript(index :Int) -> String?{
        guard let date = myModel[index] else{
            return nil
        }
        return date.value.description
    }
}
