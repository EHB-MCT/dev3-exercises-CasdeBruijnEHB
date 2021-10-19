class Student (override val name:String): Person(name){

    override fun greet(){
        gossip();

    }
     fun gossip(){
        println("$name is aan het gossipen")
    }

}