class Teacher (override val name:String): Person(name){
    override fun greet(){

        funFact();
    }
    fun funFact(){
        println("$name vertelt een fun fact")
    }

}