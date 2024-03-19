/*
Your Goal: Create a Vote
Create a new struct called Vote that contains two properties: a Choices choice and an address voter.
Then create a public storage variable called vote which is of the Vote type.
Finally, in the createVote function create a new instance of Vote and store it in the storage variable vote. Use the choice passed in as an argument and the msg.sender for the vote properties.

*/

// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Contract {
	enum Choices { Yes, No }

	// TODO: create a vote struct and a public state variable
	struct Vote {
		Choices choice;
		address voter;
	}

	Vote public vote;

	function createVote(Choices choice) external {
		// TODO: create a new vote
		vote = Vote(choice, msg.sender);
	}
}


/*
Structs
With structs we can create custom types in Solidity that are essentially groupings of variables.

For instance:

enum Directions { Up, Down, Left, Right }

struct Hero {
    Directions facing;
    uint health;
    bool inAir;
}

With this struct we can create new heroes which contain just these three properties.

We can create a new Hero by invoking the struct with parenthesis:

Hero hero = Hero(Directions.Up, 100, true);
Then we can use the . operator to retrieve values from the hero:

console.log(hero.facing == Directions.Up); // true
console.log(hero.health); // 100
console.log(hero.inAir); // true

*/
