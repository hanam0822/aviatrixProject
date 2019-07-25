//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class Aviatrix {
    
    var running = false
    var authors = ""
    var data = AviatrixData()
    var location = "St. Louis"
    var distanceTraveled = 0
    var maxFuel = 5000.0
    var fuelLevel = 5000.0
    var milesPerGallon = 0.4
    var fuelCost = 0.0
    
    init(authorNames: String) {
        authors = authorNames
    }
    
    func start() -> Bool {
        running = true
        return running
    }
    
    func refuel() -> Double {
        //var needed = (maxFuel - fuelLevel)
        fuelCost = (maxFuel - fuelLevel) * data.fuelPrices[location]!
        return fuelCost
    }
    
    func flyTo(destination : String) {
        distanceTraveled += distanceTo(target: destination)
        location = destination
        fuelLevel *= milesPerGallon
    }
    
    
    func distanceTo(target : String) -> Int {
       return data.knownDistances[location]![target]!
    }
    
    func knownDestinations() -> [String] {
       return ["St. Louis", "Phoenix", "Denver", "SLC"]
    }
}
