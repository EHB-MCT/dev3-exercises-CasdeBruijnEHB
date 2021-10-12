fun main(){

    println("You're the point guard of the LA Lakers, currently playing in the NBA Finals 2022. The game is tied, 10 seconds left on the clock and the ball is in your hands..")

    challengeOne();
}

fun challengeOne(){
    val options = listOf("Shoot", "Pass", "Drive")
    println("Do you pass, shoot or drive it?")
    val enteredString= readLine()
    //enteredString.lowercase()

    when (enteredString) {
        "shoot" ->gameOver("shoot")
        "pass" ->gameOver("pass")
        "drive" ->succes()
        else->{
            print("You didn't enter a correct string")
        }
    }
}

fun gameOver(option: String){
    when (option){
        "shoot" -> println("You call a screen. Davis sets the screen perfectly, you get an open look... Miss! You lost the game. Try again!")
        "pass" -> println("You drive to the right and spot Lebron James open on the left side of the rimb. He goes for the dunk but bam, blocked! You lose the game.")
    }
}

fun succes(){
    print("You take on your defender one v one. A quick behind the back cross-over and your defender is behind you. You shoot the floater and score in the last minute. You win!")
}