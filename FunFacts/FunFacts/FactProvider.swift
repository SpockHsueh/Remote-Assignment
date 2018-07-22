//
//  FactProvider.swift
//  FunFacts
//
//  Created by Spoke on 2018/7/11.
//  Copyright © 2018年 Spoke. All rights reserved.
//

import Foundation

struct FactProvider {
    
    let facts = [
        "Ants stretch when they wake up in the morning.",
        "Ostriches can run faster than horses.",
        "Olympic gold medals are actually made mostly of silver.",
        "You are born with 300 bones; by the time you are an adult you will have 206.",
        "It takes about 8 minutes for light from the Sun to reach Earth.",
        "Some bamboo plants can grow almost a meter in just one day.",
        "The state of Florida is bigger than England.",
        "Some penguins can leap 2-3 meters out of the water.",
        "On average, it takes 66 days to form a new habit.",
        "Mammoths still walked the Earth when the Great Pyramid was being built."
    ]
    
    let text = [
        "Loremipsumdolorsitamet,consecteturadipiscingelit.Maecenastempus.",
        "Contrarytopopularbelief,LoremIpsumisnotsimplyrandomtext.",
        "Richard McClintock, a Latin professor at Hampden-Sydney College in ",
        "lookeduponeofthemoreobscureLatinwords,consectetur",
        "from a Lorem Ipsum passage, and goingthrough the cites of the word",
        "Thisbookisatreatiseonthetheoryofethics,verypopularduringthe.",
        "ThefirstlineofLoremIpsum,Loremipsumdolorsitamet..",
        "ThestandardchunkofLoremIpsumusedsincethe1500sisreproduced.",
        "TherearemanyvariationsofpassagesofLoremIpsumavailable.",
        "but the majority have suffered alteration in some form."
    ]
    
    func randomFact() -> String {
        let randomNum = Int(arc4random_uniform(UInt32(facts.count)))
        return facts[randomNum]
    }
    
    func randomText() -> String {
        let randomNum = Int(arc4random_uniform(UInt32(text.count)))
        return text[randomNum]
    }
}


