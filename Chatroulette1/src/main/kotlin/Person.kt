open class Person (open val name : String){
    open fun greet(){
        println("Hallo, ik ben $name")
    }
}