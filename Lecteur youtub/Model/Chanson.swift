//
//  Chanson.swift
//  Lecteur youtub
//
//  Created by mac on 30/05/2018.
//  Copyright © 2018 mac. All rights reserved.
//

import Foundation
import UIKit

class Chanson {
    private var _artiste : String
    private var _titre:String
    private var _code:String
    private var _baseUrlVideo:String = "https://www.youtube.com/embed/"
    private var _baseUrlMiniature:String = "https://i.ytimg.com/vi/"
    private var _finUrlMiniature:String = "/maxresdefault.jpg" 
    
    var artiste:String {
        return _artiste
    }
    
    var titre:String {
        return _titre
    }
    
    var code:String {
        return _code
    }
    
    var videoUrl:String {
        return _baseUrlVideo + _code
    }
    
    var minuatureUrl:String {
        return _baseUrlMiniature + _code + _finUrlMiniature
    }
    
    init(artiste:String,titre:String,code:String) {
        self._artiste = artiste
        self._titre = titre
        self._code = code
    }
    
}
