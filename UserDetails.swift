//
//  UserDetails.swift
//  NorthGate
//
//  Created by Siddhant jain on 09/01/17.
//  Copyright © 2017 OSS Cube. All rights reserved.
//

import UIKit

class UserDetails: NSObject, NSCoding {
    
    var strFirstName: String?
    var strLastName: String?
    var strPrefLanguage: String?
    var strPrefStoreLocation: String?
    var strStoreId: String?
    var countNotification: Int?
    var strCartItem: String?
    var strToken: String?
    
   init(fromDictionary dictionary: NSDictionary) {
        
        if let dataData = dictionary["data"] as? NSDictionary {
            strFirstName =  dataData["first_name"] as? String ?? ""
            strLastName = dataData["last_name"] as? String ?? ""
            strPrefLanguage = dataData["pref_language"] as? String ?? ""
            strPrefStoreLocation = dataData["pref_storelocation"] as? String ?? ""
            strStoreId = dataData["store_id"] as? String
            countNotification = dataData["notification_count"] as? Int ?? 0
            strCartItem = dataData["cartItem"] as? String
            strToken = dataData["token"] as? String
        }
    }
    
    // MARK: - Encode & Decode
     required init(coder aDecoder: NSCoder) {
       
        self.strFirstName = aDecoder.decodeObject(forKey: "FirstName") as? String
        self.strLastName = aDecoder.decodeObject(forKey: "LastName") as? String
        self.strPrefLanguage = aDecoder.decodeObject(forKey: "PrefLanguage") as? String
        self.strPrefStoreLocation = aDecoder.decodeObject(forKey: "PrefStoreLocation") as? String
        self.strStoreId = aDecoder.decodeObject(forKey: "StoreId") as? String
        countNotification = aDecoder.decodeObject(forKey: "Notification") as? Int
        self.strCartItem = aDecoder.decodeObject(forKey: "CartItem") as? String
        self.strToken = aDecoder.decodeObject(forKey: "Token") as? String
        
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(strFirstName, forKey: "FirstName")
        aCoder.encode(strLastName, forKey: "LastName")
        aCoder.encode(strPrefLanguage, forKey: "PrefLanguage")
        aCoder.encode(strPrefStoreLocation, forKey: "PrefStoreLocation")
        aCoder.encode(strStoreId, forKey: "StoreId")
        aCoder.encode(countNotification, forKey: "Notification")
        aCoder.encode(strCartItem, forKey: "CartItem")
        aCoder.encode(strToken, forKey: "Token")
        
    }
}
