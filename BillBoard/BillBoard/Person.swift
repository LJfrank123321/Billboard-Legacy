//
//  Person.swift
//  BillBoard
//
//  Created by Kedan Li on 15/9/12.
//  Copyright (c) 2015年 Takefive Interactive. All rights reserved.
//

import Foundation
import CoreData

class Person: NSManagedObject {

    @NSManaged var totalAmount: NSNumber
    @NSManaged var userId: NSNumber
    @NSManaged var userName: String
    @NSManaged var billList: NSSet
    @NSManaged var group: BillGroup
    
    convenience init(entity: NSEntityDescription, context: NSManagedObjectContext, userId: NSNumber, totalAmount: NSNumber, userName: String, group: BillGroup, billList: [String: AnyObject]){
        self.init(entity: entity, insertIntoManagedObjectContext: context)
        self.group = group
        self.userName = userName
        self.userId = userId
        self.totalAmount = totalAmount
        
        for bill in billList{
            //construct bill
        }
    }
    
    func addBill(){
        
    }
    
}
