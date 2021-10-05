fun main(){

    val options = arrayOf("rock","paper","scissors")
    println("Steen papier of schaar?")
    val inp = readLine();

    print("Computer: ");
    val rando=options.random();
    println(rando);

    when(inp){
        "steen"->if(inp=="papier"){println("lost!")}
        "schaar"->if(inp=="steen"){println("lost!")}
        "papier"->if(inp=="schaar"){println("lost!")}
    }
}

