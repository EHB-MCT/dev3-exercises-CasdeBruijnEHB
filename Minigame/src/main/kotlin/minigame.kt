fun main(){

    println("You're the point guard of the LA Lakers, currently playing in the NBA Finals 2022. The game is tied, 10 seconds left on the clock and the ball is in your hands..")

    challengeOne();
}

fun challengeOne(){
    val options = listOf("shoot", "pass", "drive")
    println("Do you pass, shoot or drive it?")
    val enteredString= readLine()

    if(options.contains(enteredString)){
        when (enteredString) {
            "shoot" ->gameOver("shoot")
            "pass" ->gameOver("pass")
            "drive" ->succes()
        }
    }else{
        println("You didn't enter a correct option. Try again!")
        challengeOne()
    }
}

fun challengeTwo(){
    println("========================================================")
    println("On to the next challenge! This is the dice roll challenge, do you think it'll be a low score (1-3) or high (3-6)?")
    val diceResult = (1..6).random()
    val userAnswer = readLine()

    if (userAnswer =="Low"&& (1..3).contains(diceResult)){
        println("Congrats, the result was $diceResult so it indeed is low!")
    }else if( userAnswer=="High" && (4..8).contains(diceResult)){
        println("Congrats, the result was $diceResult so it indeed is high!")
    }else{
        println("Unfortunately, to result was a $diceResult so you are not right!")
    }
}

fun gameOver(option: String){
    when (option){
        "shoot" -> println("You call a screen. Davis sets the screen perfectly, you get an open look... Miss! You lost the game. Try again!")
        "pass" -> println("You drive to the right and spot Lebron James open on the left side of the rimb. He goes for the dunk but bam, blocked! You lose the game.")
    }

    challengeTwo()
}

fun succes(){
    println("You take on your defender one v one. A quick behind the back cross-over and your defender is behind you. You shoot the floater and score in the last minute. You win!")
    challengeTwo()
}