//
//  ViewControllerSoluciones.swift
//  ProyectoFinalTSC
//
//  Created by user224015 on 11/23/22.
//

import UIKit

class ViewControllerSoluciones: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableSoluciones: UITableView!
    
    struct soluciones{
        var img: String
        var lbl: String
    }
    
    let dataSolutions: [soluciones] =
    [soluciones(img: "soluciones4", lbl: "Reduce los gases nocivos durante los procesos de producción."),
     soluciones(img: "soluciones5", lbl: "Realizar desplazamientos cortos a bicicleta o andando."),
    soluciones(img: "soluciones2", lbl: "Compatir coches privados entre varias personas para reducir el CO2."),
    soluciones(img: "soluciones3", lbl: "Tener plantas de interior para mejorar la calidad del aire en su hogar."),
    soluciones(img: "soluciones1", lbl: "Calcular la huella ambiental de su actividad e identificar los objetivos a mejorar.")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableSoluciones.dataSource = self
        tableSoluciones.delegate = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSolutions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let solucion = dataSolutions[indexPath.row]
        let cell = tableSoluciones.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        //let cell = tableSoluciones.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.label.text = solucion.lbl
        cell.iconImageView.image = UIImage(named: solucion.img)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
}
