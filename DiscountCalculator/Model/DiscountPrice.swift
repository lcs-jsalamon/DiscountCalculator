//
//  DiscountPrice.swift
//  DiscountCalculator
//
//  Created by Josephine Salamon on 2025-02-27.
//

import Foundation

//Model

struct DiscountPrice {
    
    //MARK: Stored Properties
    var price: Double
    var discountPercent: Double
    
    //MARK: Computed Properties
    //calculate discountDecimal
    var discountDecimal: Double{
        
        discountPercent/100
    }
    
    var amountOff: Double{
        discountDecimal * price
    }
    
    var result: Double{
        //calculate
        var solution =  price - amountOff
        //return solution
        return solution
        
    }
}
