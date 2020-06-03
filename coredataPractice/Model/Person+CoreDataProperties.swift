//
//  Person+CoreDataProperties.swift
//  coredataPractice
//
//  Created by Yoni on 03/06/2020.
//  Copyright © 2020 Yoni. All rights reserved.
//
//

import Foundation
import CoreData


extension Person {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Person> {
        return NSFetchRequest<Person>(entityName: "Person")
    }

    @NSManaged public var firstName: String?
    @NSManaged public var lastName: String?
    @NSManaged public var gender: Bool
    @NSManaged public var createdAt: Date?

}
