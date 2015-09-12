//
//  BillGroup.swift
//  BillBoard
//
//  Created by Kedan Li on 15/9/12.
//  Copyright (c) 2015年 Takefive Interactive. All rights reserved.
//

import Foundation
import CoreData

class BillGroup: NSManagedObject {

    @NSManaged var billNum: NSNumber
    @NSManaged var id: NSNumber
    @NSManaged var isActive: NSNumber
    @NSManaged var name: String
    @NSManaged var grantBillList: NSSet
    @NSManaged var peopleList: NSSet

    convenience init(entity: NSEntityDescription, context: NSManagedObjectContext, billNum: NSNumber, id: NSNumber, isActive: NSNumber, name: String, group: BillGroup, billList: [String: AnyObject], peopleList: [String: AnyObject]){
        self.init(entity: entity, insertIntoManagedObjectContext: context)
        self.billNum = billNum
        self.id = id
        self.isActive = isActive
        self.name = name
        
        for people in peopleList{
            //construct people
        }
        
    }
    
    func addPerson(){
        
    }
    
}
