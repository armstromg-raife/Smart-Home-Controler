//
//  smart home setup.swift
//  Smart Home Controler
//
//  Created by Armstrong, Raife (SPH) on 28/11/2023.
//

import Foundation

class Device{
    var state:Bool = false
    var name :String = ""
    init(_ name : String) {
        self.name=name
    }
    func togleSwitch() {
        if state{
            state=false
        }else{
            state=true
        }
    }
    func nameing(_ name : String) {
        self.name=name
    }
}
class SmartHome{
    var Devices: [Device] = [Lights()]
    
    func addingDevices(_ device:Device){
        Devices.append(device)
    }
    func desplayDevices() -> [Device]{
        return Devices
    }
}

protocol Colours{
    var colour:String {get}

}

protocol Dimable{
    func dimming()
}

protocol Volume{
    var volume:Int {get set}
    var maxVolume:Int {get}
    func increasingVolume(_ change:Int)
    func decreasingVolume(_ change:Int)
}

class Lights: Device, Colours{
    
    var colour = "white"
    
    
}
//class Speaker: Device, Volume{
//    var volume: Int=0
//    
//    var maxVolume: Int
//    init(_ maxVolume: Int){
//        self.maxVolume = maxVolume
//        self.volume = maxVolume/2
//    }
//    
//    func increasingVolume(_ change:Int) {
//        volume+=change
//    }
//    
//    func decreasingVolume(_ change:Int) {
//        volume-=change
//    }
//    
//    
//    
//}
    
        


