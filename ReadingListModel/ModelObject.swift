//
// Copyright (C) 2017 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this example's licensing information.
//
import Foundation

// this alias allows you to say JsonDictionary as a datatype rather than a dictionary of [String: Any]



public typealias JsonDictionary = [String: Any]

open class ModelObject: NSObject
{

    // defines which properties to be decode
    open class var keys: [String] { return [] }

    open var dictionaryRepresentation: JsonDictionary {

        //each model will call this and pass it's own "type" in order to get its own
        //specific keys that match the properties.
        return dictionaryWithValues(forKeys: type(of: self).keys) as JsonDictionary
    }

    //given the dictionary, set the values for the object properties that match the keys
    
    public required init(dictionary: JsonDictionary) {
        super.init()
        setValuesForKeys(dictionary)
    }


//    open func dictionaryRepresentation() -> JsonDictionary {
//        return dictionaryWithValues(forKeys: type(of: self).keys) as JsonDictionary
//    }
}
