class Comedian (override val name:String): Person(name){
    override fun greet(){

        tellJoke();
    }
    fun tellJoke(){
        println("$name vertelt een mopje")
    }

}