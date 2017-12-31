//
//  RangersBrain.swift
//  FinalProject
//
//  Created by Zick on 12/30/17.
//  Copyright © 2017 EPITA. All rights reserved.
//

import Foundation

struct rangersBrain {
    private let rangerName = ["Gaoranger","Hurricaneger","Abaranger","Dekaranger","Magiranger","Boukenger","Gekiranger","Go-onger","Shinkenger","Goseiger","Gokaiger","Go-Busters","Kyoryuger"]
    private let rangerSubtitle = ["Power Rangers Wild Force","Power Rangers Ninja Storm","Power Rangers Dino Thunder","Power Rangers S.P.D","Power Rangers Mystic Force","Power Rangers Operation Overdrive","Power Rangers Jungle Fury","Power Rangers RPM","Power Rangers Samurai","Power Rangers Megaforce","Power Rangers Super Megaforce","No American Version","Power Rangers Dino Charge"]
    private let time = ["2001-2002","2002-2003","2003-2004","2004-2005","2005-2006","2006-2007","2007-2008","2008-2009","2009-2010","2010-2011","2011-2012","2012-2013","2013-2014"]
    private let description = ["Power Rangers Wild Force, often abbreviated as \"PRWF\", was the tenth incarnation of the Power Rangers series, based on Hyakujuu Sentai Gaoranger. Wild Force, like Time Force, is very faithful to its Sentai counterpart, with nearly the exact same plot. It's also the first season to have the exact same morphing sequence as its Sentai counterpart."]
    
    let rangerLength = 13
    
    func getDetails(index : Int) ->[String]{
        return [rangerName[index],rangerSubtitle[index]]
    }
    
    func getFullDetails(index : Int) ->[String]{
        return [rangerName[index],rangerSubtitle[index],time[index],description[0]]
    }
}
