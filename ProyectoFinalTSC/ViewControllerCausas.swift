//
//  ViewControllerCausas.swift
//  ProyectoFinalTSC
//
//  Created by user224015 on 11/24/22.
//
import UIKit
import AVFoundation

class ViewControllerCausas: UIViewController{
    
    var sonido: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reproducirSonido(name: "Talar")
    }
    
    func reproducirSonido(name: String) {
        let url = Bundle.main.url(forResource: name, withExtension: "wav")
        sonido = try! AVAudioPlayer(contentsOf: url!)
        
        sonido.play()
    }
}
