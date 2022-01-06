fun main(){
    var heightPerson1 :Int = 170
    var heightPerson2 :Int = 189

    if(heightPerson1 > heightPerson2){
        println("Person1 is taller")
    }else if(heightPerson1==heightPerson2){
        println("ummmmm")
    }else{
        println("Person2 is taller by ${heightPerson2 - heightPerson1}")
    }

    val age :Int = 17
    if(age >= 21){
        println("You may drink from US")
    }else if(age >= 18){
        println("You may vote")
    }else if(age >= 16){
        println("You can go on and drive")
    }else{
        println("Wait up to grow up")
    }

    var name = "Denis";
    if(name == "Denis"){
        println("welcome Home Denis")
    }else{
        println("Who are you?")
    }
}