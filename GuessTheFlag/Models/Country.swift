//
//  Country.swift
//  GuessTheFlag
//
//  Created by murad on 23.05.2026.
//

import Foundation

struct Country {
    let name: String
    
    static let defaultList = [
        "Estonia", "France", "Germany", "Ireland",
        "Italy", "Nigeria", "Poland", "Spain", "UK", "US"
    ]
    
    static let labels = [
        "Estonia": "Flag with three horizontal stripes. Top stripe blue, middle stripe black, bottom stripe white.",
        "France": "Flag with three vertical stripes. Left stripe blue, middle stripe white, right stripe red.",
        "Germany": "Flag with three horizontal stripes. Top stripe black, middle stripe red, bottom stripe gold.",
        "Ireland": "Flag with three vertical stripes. Left stripe green, middle stripe white, right stripe orange.",
        "Italy": "Flag with three vertical stripes. Left stripe green, middle stripe white, right stripe red.",
        "Nigeria": "Flag with three vertical stripes. Left stripe green, middle stripe white, right stripe green.",
        "Poland": "Flag with two horizontal stripes. Top stripe white, bottom stripe red.",
        "Spain": "Flag with three horizontal stripes. Top thin stripe red, middle thick stripe gold with a crest on the left, bottom thin stripe red.",
        "UK": "Flag with overlapping red and white crosses, both straight and diagonally, on a blue background.",
        "US": "Flag with many red and white stripes, with white stars on a blue background in the top-left corner."
    ]
    
    static let nameMock = "Italy"
}
