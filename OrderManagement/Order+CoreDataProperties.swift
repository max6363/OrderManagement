//
//  Order+CoreDataProperties.swift
//  OrderManagement
//
//  Created by Minhaz on 28/11/21.
//
//

import Foundation
import CoreData

enum Status: String {
    case pending = "Pending"
    case preparing = "Preparing"
    case completed = "Completed"
}

extension Order {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Order> {
        return NSFetchRequest<Order>(entityName: "Order")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var numberOfSlices: Int16
    @NSManaged public var pizzaType: String
    @NSManaged public var status: String
    var orderStatus: Status {
        set {
            status = newValue.rawValue
        }
        get {
            Status(rawValue: status) ?? .pending
        }
    }
    
    @NSManaged public var tableNumber: String

}

extension Order : Identifiable {

}
