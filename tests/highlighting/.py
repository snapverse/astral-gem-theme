import random
import time

computerwins = 0
playerwins = 0
ties = 0
end = 0

while True:

    choices = ["rock",
               "paper",
               "scissors"]

    userChoice = raw_input("Rock, Paper, Scissors, or End")

    computerChoice = (random.choice(choices))
    print(computerChoice)

    if userChoice == computerChoice:
        time.sleep(0.5)
        print("Tie!\n")
        ties += 1
        end += 1

    elif userChoice == "rock":
        if computerChoice == "paper":
            time.sleep(0.5)
            print("Computer Win!\n")
            computerwins +=1
            end += 1

        else:
            time.sleep(0.5)
            print("Player win!\n")
            playerwins += 1
            end += 1

    elif userChoice == "paper":
        if computerChoice == "rock":
            time.sleep(0.5)
            print("Player win!\n")
            playerwins += 1
            end += 1

        else:
            time.sleep(0.5)
            print("Computer win!\n")
            computerwins += 1
            end += 1

    elif userChoice == "scissors":
        if computerChoice == "rock":
            time.sleep(0.5)
            print("Computer win!\n")
            computerwins += 1
            end += 1

        else:
            time.sleep(0.5)
            print("Player win!\n")
            playerwins += 1
            end += 1

    elif userChoice == "end":
            choices.append("end")
            print("\nGreat game!\n")
            print("Total score for computer: ", computerwins, "wins!")
            print("Total score for player: ", playerwins, "wins!")
            print("Total ties: ", ties, "ties!")
            time.sleep(2)
            break