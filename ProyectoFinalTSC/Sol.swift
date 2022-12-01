import UIKit

class Sol: UITableViewController {
    
    // Modelo de datos que se van a mostrar en la tabla.
    let dataSolutions: [soluciones] =
    [soluciones(img: "soluciones4", lbl: "Reduce los gases nocivos durante los procesos de producción."),
     soluciones(img: "soluciones5", lbl: "Realizar desplazamientos cortos a bicicleta o andando."),
     soluciones(img: "soluciones2", lbl: "Compatir coches privados entre varias personas para reducir el CO2."),
     soluciones(img: "soluciones3", lbl: "Tener plantas de interior para mejorar la calidad del aire en su hogar."),
     soluciones(img: "soluciones1", lbl: "Calcular la huella ambiental de su actividad e identificar los objetivos a mejorar.")]

    // Identificador de la celda reutilizable
    let cell = "cell"
    
    struct soluciones{
        var img: String
        var lbl: String
    }
    
    @IBOutlet weak var tableSol: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // tableSol.register(Sol.self, forCellReuseIdentifier: cell)
        self.tableSol.register(UITableViewCell.self, forCellReuseIdentifier: cell)
        tableSol.delegate = self
        tableSol.dataSource = self
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSolutions.count
    }
    

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let solucion = dataSolutions[indexPath.row]
        // create a new cell if needed or reuse an old one
        let cell = tableSol.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel!.numberOfLines = 0
        cell.textLabel!.lineBreakMode = .byWordWrapping
        cell.textLabel?.text = "\(solucion.lbl)"
        cell.imageView?.image = UIImage(named: solucion.img)
        //cell.label.text = solucion.lbl
        //cell.iconImageView.image = UIImage(named: solucion.img)
                
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    



    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
