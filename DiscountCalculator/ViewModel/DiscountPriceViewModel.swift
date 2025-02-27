//
//  DiscountPriceViewModel.swift
//  DiscountCalculator
//
//  Created by Josephine Salamon on 2025-02-27.
//

import Foundation

//View Model

class DiscountPriceViewModel{
    
    //MARK: Stored Properties
    var providedPrice: String = ""
    var providedDiscountPercent: String = ""
    
    //if invalid input
    var recoverySuggestion: String = ""
    
    //MARK: Computed Properties
    //evaluates if inputs are valid
    var discountPrice: DiscountPrice? {
        //price guard
        guard let price = Double(providedPrice), price > 0 else{
            recoverySuggestion = "Please provide a numerical value that is more than 0."
            
            return nil
        }
        //dicount guard
        guard let discountPercent = Double(providedDiscountPercent), discountPercent > 0 else{
            recoverySuggestion = "Please provide a numerical percent value that is more than 0."
            
            return nil
        }
        
        //All values are vaild
        recoverySuggestion = "" // No error message
        return DiscountPrice(price: price, discountPercent: discountPercent)
    }
    
    
    //MARK: Initializer(s)
    init(
        providedPrice: String = "",
        providedDiscountPercent: String = "",
        recoverySuggestion: String = ""
    ) {
        self.providedPrice = providedPrice
        self.providedDiscountPercent = providedDiscountPercent
        self.recoverySuggestion = recoverySuggestion
    }
    
    
}


