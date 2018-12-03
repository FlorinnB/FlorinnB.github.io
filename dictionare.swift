import Foundation

class t_note_student {
    var note: [String: Int]
    
    init(){
    note = [:]
    
    }
    init(_ materie: String , _ nota: Int){
        note = [materie : nota]
    }
    deinit{
        note = [:]
    }
    func adauga(_ materie: String, _ nota: Int){
        note[materie] = nota
    }
     func actualizare(_ materie: String, _ nota: Int){
        note[materie] = nota
    }
    func sterge(_ materie:String){
        note[materie]=nil
    }
    func tipareste_carnet(){
    print("Notele sunt: ")
        for (materie , nota) in note {
            print("Nota la materia \(materie) este \(nota)")
        }
    }
    func tipareste_restante(){
        print("REstantele sunt: ")
        for (materie , nota) in note {
        if nota < 5{
            print("Nota la materia \(materie) este \(nota)")
            
        }
        }
    }
    func calculeaza_media()->Float{
        var media=Float(0.0)
        for nota in note.values{
            media += Float(nota)
        }
        media /= Float(note.count)
        return media
    }
    func gaseste_nota(_ materie:String)->Int{
        if let nota = note[materie] {
            return nota
        }
        return -1
    }
    subscript(index: String)->Int{
        get {
            return gaseste_nota(index)
        }
        set(nota){
            note[index] = nota
        }
    }
}
enum teste{
    case constructor
    case adauga
    case sterge
    case restanta
    case media
    case gaseste
    case index
}


let test=teste.index

switch test{
    case .constructor:
   let note_student = t_note_student("sport",10)
    note_student.tipareste_carnet()
        
    case .adauga:
    let note_student = t_note_student()
note_student.adauga("citire",5)
note_student.adauga("scriere",4)
note_student.tipareste_carnet()
case .sterge:
let note_student = t_note_student()
note_student.adauga("citire",5)
note_student.adauga("scriere",4)
note_student.sterge("citire")
note_student.tipareste_carnet()
case .restanta:
   let note_student = t_note_student()
note_student.adauga("citire",5)
note_student.adauga("scriere",4)
note_student.tipareste_restante()
case .media:
let note_student = t_note_student()
note_student.adauga("citire",5)
note_student.adauga("scriere",4)
let media = note_student.calculeaza_media()
print("media= \(media)")
case .gaseste:
let note_student = t_note_student()
note_student.adauga("citire",5)
note_student.adauga("scriere",4)
let materie = "citire"
let nota = note_student.gaseste_nota(materie)
if nota > -1 {
print("Nota la materia \(materie) este = \(nota)")
    
}
else{
    print("Nu avem nota la materia \(materie)")
}
case .index: 
let note_student = t_note_student()
note_student.adauga("citire",5)
print(note_student["citire"])

}


