//
//  Person+CoreDataClass.swift
//  coredataPractice
//
//  Created by Yoni on 03/06/2020.
//  Copyright © 2020 Yoni. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Person)
public class Person: NSManagedObject {
    
    var fullName: String {
        "\(self.firstName ?? "") \(self.lastName ?? "")"
    }
    
    convenience init(firstName: String ,lastName: String ,gender: Bool ,createdAt:Date = Date()){
        self.init(context: DataBase.shared.context)
        self.firstName = firstName
        self.lastName = lastName
        self.gender = gender
        self.createdAt = createdAt
        
        
        
    }
    
}
