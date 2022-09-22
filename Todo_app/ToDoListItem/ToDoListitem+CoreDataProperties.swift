//
//  ToDoListitem+CoreDataProperties.swift
//  Todo_app
//
//  Created by ek-mac-02 on 21/09/2022.
//
//

import Foundation
import CoreData


extension ToDoListitem {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ToDoListitem> {
        return NSFetchRequest<ToDoListitem>(entityName: "ToDoListitem")
    }

    @NSManaged public var name: String?
    @NSManaged public var createdAt: Date?

}

extension ToDoListitem : Identifiable {

}
