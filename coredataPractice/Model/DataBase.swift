//
//  DataBase.swift
//  coredataPractice
//
//  Created by Yoni on 03/06/2020.
//  Copyright © 2020 Yoni. All rights reserved.
//

import Foundation
import CoreData

class DataBase{
    static let shared: DataBase = DataBase()
    
    private init(){
        
    }
    
    var context:NSManagedObjectContext {
        persistentContainer.viewContext
    }
    
    lazy var persistentContainer: NSPersistentContainer = {
          
           let container = NSPersistentContainer(name: "coredataPractice")
           container.loadPersistentStores(completionHandler: { (storeDescription, error) in
               if let error = error as NSError? {
                   
                   fatalError("Unresolved error \(error), \(error.userInfo)")
               }
           })
           return container
       }()

       // MARK: - Core Data Saving support

       func saveContext () {
           let context = persistentContainer.viewContext
           if context.hasChanges {
               do {
                   try context.save()
               } catch {
                  
                   let nserror = error as NSError
                   fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
               }
           }
       }
    
    func loadPerson() -> [Person]{
        
        let request = NSFetchRequest<Person>(entityName: "Person")
        
        do{
            let people = try context.fetch(request)
            return people
        }catch{
            print(error.localizedDescription)
            return [Person]()
        }
        
    }
    
}
